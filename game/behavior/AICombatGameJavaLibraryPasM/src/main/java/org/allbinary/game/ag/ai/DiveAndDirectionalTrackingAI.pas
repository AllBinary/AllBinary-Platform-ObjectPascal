{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.game.ag.ai
unit DiveAndDirectionalTrackingAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligenceInterface, Direction, DirectionFactory, DirectionalInterface, BasicAI, DestroyedEvent, DestroyedEventListenerInterface, GameInput, BasicVelocityProperties, TrackingEvent, TrackingEventListenerInterface, AllBinaryLayer, AllBinaryLayerManager, MathUtil, AllBinaryEventObject, Visitor, GameTickTimeDelayHelper, TimeDelayHelper, BasicArrayList, EventListenerInterface;

type
  {AB:TYPES}
  TDiveAndDirectionalTrackingAI = class(TBasicAI, ITrackingEventListenerInterface, IDestroyedEventListenerInterface, IEventListenerInterface)
  public
    mathUtil: TMathUtil;
    directionFactory: TDirectionFactory;
    gameTickTimeDelayHelper: TGameTickTimeDelayHelper;
    timeDelayHelper: TTimeDelayHelper;
    list: TBasicArrayList;
    directionalInterface: IDirectionalInterface;
    velocityInterface: TBasicVelocityProperties;
    directionToKeyMap: TArray<Integer>;
    initialDropped: Boolean;
    diveP: Boolean;
    directionOfTarget: TDirection;
    MIN_DISTANCE: Integer;
    lastTrackingLayerInterface: TAllBinaryLayer;
    artificialIntelligenceInterface: IArtificialIntelligenceInterface;
    aiVistor: TVisitor;
    lastDirection: TDirection;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(ownerLayerInterface: TAllBinaryLayer; artificialIntelligenceInterface_: IArtificialIntelligenceInterface; gameInput_: TGameInput; visitor_: TVisitor);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); virtual;
        procedure init;
        procedure target(allBinaryLayerManager_: TAllBinaryLayerManager);
        procedure verticalTargeting(x: Integer);
        procedure horizontalTargeting(y: Integer);
        procedure setDive;
        procedure moveRight;
        procedure moveLeft;
        procedure moveDown;
        procedure moveUp;
        procedure dive;
        procedure attack;
        procedure drop;
        function isBeyondTarget: Boolean;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onMovement(trackingEvent_: TTrackingEvent); virtual;
        procedure onDestroyed(destroyedEvent_: TDestroyedEvent); virtual;
        procedure setLastDirection(lastDirection: TDirection); virtual;
        procedure setLastKey(lastKey: Integer); virtual;
        function getLastDirection: TDirection; virtual;
        function toString: string; override;
  end;

implementation
uses
  Canvas, DirectionalCompositeInterface, DestroyedEventHandler, Group, VelocityInterfaceCompositeInterface, TrackingEventHandler, ForcedLogUtil, StringMaker, StringUtil, EventStrings, GameTickTimeDelayHelperFactory, BasicArrayListD;


{AB:CODE}

procedure TDiveAndDirectionalTrackingAI.InitFields;
begin
  Self.mathUtil := TMathUtil.getInstance();
  Self.directionFactory := TDirectionFactory.getInstance();
  Self.gameTickTimeDelayHelper := TGameTickTimeDelayHelperFactory.getInstance();
  Self.timeDelayHelper := TTimeDelayHelper.Create(500);
  Self.list := TBasicArrayListD.Create();
  
  
  Self.directionToKeyMap := TArray<Integer>.Create(TCanvas.LEFT, TCanvas.DOWN, TCanvas.UP, TCanvas.RIGHT);
  
  
  Self.directionOfTarget := TDirection.getInstance(0);
  Self.MIN_DISTANCE := 40;
  Self.lastTrackingLayerInterface := TAllBinaryLayer.NULL_ALLBINARY_LAYER;
  
  
  Self.lastDirection := TDirectionFactory.getInstance().NO_DIRECTION;
end;

function TDiveAndDirectionalTrackingAI.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TDiveAndDirectionalTrackingAI.Create(ownerLayerInterface: TAllBinaryLayer; artificialIntelligenceInterface_: IArtificialIntelligenceInterface; gameInput_: TGameInput; visitor_: TVisitor);
var
  directionalCompositeInterface_: IDirectionalCompositeInterface;
  velocityInterfaceCompositeInterface_: IVelocityInterfaceCompositeInterface;
begin
        inherited Create(ownerLayerInterface, gameInput_);
        InitFields;
        Self.aiVistor := visitor_;
        Self.artificialIntelligenceInterface := artificialIntelligenceInterface_;
        directionalCompositeInterface_ := (TJava.ToObject(Self.getOwnerLayerInterface()) as IDirectionalCompositeInterface);
        Self.directionalInterface := directionalCompositeInterface_.getDirectionalInterface();
        velocityInterfaceCompositeInterface_ := (TJava.ToObject(Self.getOwnerLayerInterface()) as IVelocityInterfaceCompositeInterface);
        Self.velocityInterface := velocityInterfaceCompositeInterface_.getVelocityProperties();
        TDestroyedEventHandler.getInstance().addListenerInterface(Self);
        Self.init();
end;
    

// throws Exception
procedure TDiveAndDirectionalTrackingAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
        if Self.isBeyondTarget() then begin
            Self.init();
            Self.velocityInterface.zero();
        end;
        if not (Self.diveP) then begin
            Self.target(allBinaryLayerManager_);
        end else begin
            Self.dive();
            Self.attack();
        end;
        Self.list.clear();
end;
    

procedure TDiveAndDirectionalTrackingAI.init;
begin
        Self.diveP := False;
        Self.directionOfTarget := TDirectionFactory.getInstance().NOT_BORDERED_WITH;
        TTrackingEventHandler.getInstance().addListenerInterface(Self);
end;
    

// throws Exception
procedure TDiveAndDirectionalTrackingAI.target(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  lastTrackingEvent: TTrackingEvent;
  layerInterface: TAllBinaryLayer;
  ownerLayerInterface: TAllBinaryLayer;
  groupArray: TArray<TGroup>;
  ownerGroupArray: TArray<TGroup>;
  x: Integer;
  y: Integer;
  yDistance: Integer;
  xDistance: Integer;
  directionFactory_: TDirectionFactory;
begin
        if (Self.list.size()) = (0) then begin
            Exit;
        end;
        lastTrackingEvent := TTrackingEvent(TJava.ToObject(Self.list.removeAt(0)));
        Self.lastTrackingLayerInterface := lastTrackingEvent.getLayerInterface();
        layerInterface := Self.lastTrackingLayerInterface;
        ownerLayerInterface := Self.getOwnerLayerInterface();
        groupArray := layerInterface.getGroupInterface();
        ownerGroupArray := ownerLayerInterface.getGroupInterface();
        if (groupArray) = (ownerGroupArray) then begin
            Exit;
        end;
        x := Self.lastTrackingLayerInterface.getXP();
        y := Self.lastTrackingLayerInterface.getYP();
        yDistance := ((ownerLayerInterface.getYP()) - (y)) - (ownerLayerInterface.getHeight());
        xDistance := ((ownerLayerInterface.getXP()) - (x)) - (ownerLayerInterface.getWidth());
        directionFactory_ := TDirectionFactory.getInstance();
        if (Self.mathUtil.abs(yDistance)) > (Self.mathUtil.abs(xDistance)) then begin
            if (yDistance) > (Self.MIN_DISTANCE) then begin
                Self.directionOfTarget := directionFactory_.UP;
            end else if (yDistance) < (-Self.MIN_DISTANCE) then begin
                Self.directionOfTarget := directionFactory_.DOWN;
            end;
        end else begin
            if (xDistance) > (Self.MIN_DISTANCE) then begin
                Self.directionOfTarget := directionFactory_.LEFT;
            end else if (xDistance) < (-Self.MIN_DISTANCE) then begin
                Self.directionOfTarget := directionFactory_.RIGHT;
            end;
        end;
        if (not (Self.initialDropped)) and ((Self.directionOfTarget) <> (directionFactory_.NOT_BORDERED_WITH)) then begin
            Self.drop();
        end;
        if Self.initialDropped then begin
            if ((Self.directionOfTarget) = (directionFactory_.UP)) or ((Self.directionOfTarget) = (directionFactory_.DOWN)) then begin
                Self.verticalTargeting(x);
            end else if ((Self.directionOfTarget) = (directionFactory_.LEFT)) or ((Self.directionOfTarget) = (directionFactory_.RIGHT)) then begin
                Self.horizontalTargeting(y);
            end else begin
                Self.artificialIntelligenceInterface.processAI(allBinaryLayerManager_);
            end;
        end;
end;
    

// throws Exception
procedure TDiveAndDirectionalTrackingAI.verticalTargeting(x: Integer);
var
  ownerLayerInterface: TAllBinaryLayer;
begin
        ownerLayerInterface := Self.getOwnerLayerInterface();
        if (ownerLayerInterface.getXP()) < (x) then begin
            Self.moveRight();
        end;
        if (ownerLayerInterface.getXP()) > (x) then begin
            Self.moveLeft();
        end;
        if ((ownerLayerInterface.getXP()) > ((x) - (3))) and ((ownerLayerInterface.getXP()) < ((x) + (3))) then begin
            Self.setDive();
        end;
end;
    

// throws Exception
procedure TDiveAndDirectionalTrackingAI.horizontalTargeting(y: Integer);
var
  ownerLayerInterface: TAllBinaryLayer;
begin
        ownerLayerInterface := Self.getOwnerLayerInterface();
        if (ownerLayerInterface.getYP()) < (y) then begin
            Self.moveDown();
        end;
        if (ownerLayerInterface.getYP()) > (y) then begin
            Self.moveUp();
        end;
        if ((ownerLayerInterface.getYP()) > ((y) - (3))) and ((ownerLayerInterface.getYP()) < ((y) + (3))) then begin
            Self.setDive();
        end;
end;
    

procedure TDiveAndDirectionalTrackingAI.setDive;
begin
        Self.diveP := True;
        Self.velocityInterface.zero();
        TTrackingEventHandler.getInstance().removeListener(Self);
end;
    

// throws Exception
procedure TDiveAndDirectionalTrackingAI.moveRight;
begin
        Self.setLastDirection(Self.directionFactory.RIGHT);
        Self.directionalInterface.setFrameByDirection(Self.lastDirection);
        Self.aiVistor.visit(Self);
end;
    

// throws Exception
procedure TDiveAndDirectionalTrackingAI.moveLeft;
begin
        Self.setLastDirection(Self.directionFactory.LEFT);
        Self.directionalInterface.setFrameByDirection(Self.lastDirection);
        Self.aiVistor.visit(Self);
end;
    

// throws Exception
procedure TDiveAndDirectionalTrackingAI.moveDown;
begin
        Self.setLastDirection(Self.directionFactory.DOWN);
        Self.directionalInterface.setFrameByDirection(Self.lastDirection);
        Self.aiVistor.visit(Self);
end;
    

// throws Exception
procedure TDiveAndDirectionalTrackingAI.moveUp;
begin
        Self.setLastDirection(Self.directionFactory.UP);
        Self.directionalInterface.setFrameByDirection(Self.lastDirection);
        Self.aiVistor.visit(Self);
end;
    

// throws Exception
procedure TDiveAndDirectionalTrackingAI.dive;
begin
        Self.directionalInterface.setFrameByDirection(Self.directionOfTarget);
        Self.aiVistor.visit(Self);
end;
    

// throws Exception
procedure TDiveAndDirectionalTrackingAI.attack;
begin
        inherited processKeyAI(TCanvas.KEY_NUM1);
end;
    

// throws Exception
procedure TDiveAndDirectionalTrackingAI.drop;
begin
        if Self.timeDelayHelper.isTime(Self.gameTickTimeDelayHelper.startTime) then begin
            Self.initialDropped := True;
            Self.aiVistor.visit(Self);
        end;
end;
    

function TDiveAndDirectionalTrackingAI.isBeyondTarget: Boolean;
begin
        if (Self.directionOfTarget) = (Self.directionFactory.DOWN) then begin
            if (Self.getOwnerLayerInterface().getYP()) > ((Self.lastTrackingLayerInterface.getYP()) + (Self.MIN_DISTANCE)) then begin
                Exit(True);
            end else begin
                Exit(False);
            end;
        end else if (Self.directionOfTarget) = (Self.directionFactory.UP) then begin
            if (Self.getOwnerLayerInterface().getYP()) < ((Self.lastTrackingLayerInterface.getYP()) + (Self.MIN_DISTANCE)) then begin
                Exit(True);
            end else begin
                Exit(False);
            end;
        end else if (Self.directionOfTarget) = (Self.directionFactory.RIGHT) then begin
            if (Self.getOwnerLayerInterface().getXP()) > ((Self.lastTrackingLayerInterface.getXP()) + (Self.MIN_DISTANCE)) then begin
                Exit(True);
            end else begin
                Exit(False);
            end;
        end else if (Self.directionOfTarget) = (Self.directionFactory.LEFT) then begin
            if (Self.getOwnerLayerInterface().getXP()) < ((Self.lastTrackingLayerInterface.getXP()) + (Self.MIN_DISTANCE)) then begin
                Exit(True);
            end else begin
                Exit(False);
            end;
        end else begin
            Exit(False);
        end;
end;
    

procedure TDiveAndDirectionalTrackingAI.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

procedure TDiveAndDirectionalTrackingAI.onMovement(trackingEvent_: TTrackingEvent);
begin
        Self.list.add(TJava.Box(trackingEvent_));
end;
    

procedure TDiveAndDirectionalTrackingAI.onDestroyed(destroyedEvent_: TDestroyedEvent);
begin
        if (Self.getOwnerLayerInterface()) = (destroyedEvent_.getLayerInterface()) then begin
            TTrackingEventHandler.getInstance().removeListener(Self);
            TDestroyedEventHandler.getInstance().removeListener(Self);
        end;
end;
    

procedure TDiveAndDirectionalTrackingAI.setLastDirection(lastDirection: TDirection);
var
  value: Integer;
begin
        Self.lastDirection := lastDirection;
        value := Self.getLastDirection().getValue();
        if (value) < (4) then begin
            inherited setLastKey(Self.directionToKeyMap[value]);
        end;
end;
    

procedure TDiveAndDirectionalTrackingAI.setLastKey(lastKey: Integer);
begin
        inherited setLastKey(lastKey);
        if (Self.getLastKey()) = (TCanvas.LEFT) then begin
            Self.lastDirection := TDirectionFactory.getInstance().LEFT;
        end else if (Self.getLastKey()) = (TCanvas.DOWN) then begin
            Self.lastDirection := TDirectionFactory.getInstance().DOWN;
        end else if (Self.getLastKey()) = (TCanvas.UP) then begin
            Self.lastDirection := TDirectionFactory.getInstance().UP;
        end else if (Self.getLastKey()) = (TCanvas.RIGHT) then begin
            Self.lastDirection := TDirectionFactory.getInstance().RIGHT;
        end;
end;
    

function TDiveAndDirectionalTrackingAI.getLastDirection: TDirection;
begin
        Exit(Self.lastDirection);
end;
    

function TDiveAndDirectionalTrackingAI.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(inherited toString());
        stringBuffer.append(' LastDirection: ');
        stringBuffer.append(TStringUtil.getInstance().toString(Self.getLastDirection()));
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

