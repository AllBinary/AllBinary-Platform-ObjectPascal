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
// package org.allbinary.game.ag.ai.scroller
unit PacePatrolAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Direction, GameInput, TrackingEvent, TrackingEventListenerInterface, AllBinaryLayer, AllBinaryLayerManager, AllBinaryEventObject, ABHashtable, BasicArrayList, BasePatrolAI, EventListenerInterface;

type
  {AB:TYPES}
  TPacePatrolAI = class(TBasePatrolAI, ITrackingEventListenerInterface, IEventListenerInterface)
  public
    trackingList: TBasicArrayList;
    firingDistance: Integer;
    isFollowLimitedByTerrain: Boolean;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); virtual;
        function setFiringDirectionForTargetIfInRange: TDirection;
        procedure disable; virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onMovement(trackingEvent_: TTrackingEvent); virtual;
        function getFiringDistance: Integer; virtual;
        procedure setFiringDistance(firingDistance: Integer); virtual;
  end;

implementation
uses
  Canvas, DirectionCompositeInterface, DirectionFactory, TrackingEventHandler, LayerInterface, ForcedLogUtil, EventStrings, BasicArrayListD;


{AB:CODE}

procedure TPacePatrolAI.InitFields;
begin
  
  
  Self.isFollowLimitedByTerrain := False;
end;

function TPacePatrolAI.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPacePatrolAI.Create(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
        inherited Create(hashtable, ownerLayerInterface, gameInput_);
        InitFields;
        TTrackingEventHandler.getInstance().addListenerInterface(Self);
        Self.trackingList := TBasicArrayListD.Create();
end;
    

// throws Exception
procedure TPacePatrolAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  direction_: TDirection;
  directionFactory_: TDirectionFactory;
begin
        Self.update();
        direction_ := Self.setFiringDirectionForTargetIfInRange();
        directionFactory_ := TDirectionFactory.getInstance();
        if (direction_) = (directionFactory_.LEFT) then begin
            if ((Self.lastKeyDirection) <> (Self.keyDirection)) or (not (Self.isFollowLimitedByTerrain)) then begin
                inherited processKeyAI(TCanvas.LEFT);
            end;
            Self.keyDirection := TCanvas.LEFT;
            Self.lastKeyDirection := Self.keyDirection;
            Self.xTotalDistance := 0;
            inherited processKeyAI(TCanvas.KEY_NUM1);
        end else if (direction_) = (directionFactory_.RIGHT) then begin
            if ((Self.lastKeyDirection) <> (Self.keyDirection)) or (not (Self.isFollowLimitedByTerrain)) then begin
                inherited processKeyAI(TCanvas.RIGHT);
            end;
            Self.keyDirection := TCanvas.RIGHT;
            Self.lastKeyDirection := Self.keyDirection;
            Self.xTotalDistance := 0;
            inherited processKeyAI(TCanvas.KEY_NUM1);
        end else begin
            inherited processKeyAI(Self.keyDirection);
        end;
end;
    

function TPacePatrolAI.setFiringDirectionForTargetIfInRange: TDirection;
var
  directionFactory_: TDirectionFactory;
  ownerLayerInterface: TAllBinaryLayer;
  direction_: TDirection;
  lastTrackingEvent: TTrackingEvent;
  lastTrackingLayerInterface: ILayerInterface;
  directionCompositeInterface_: IDirectionCompositeInterface;
  size: Integer;
  x: Integer;
  y: Integer;
  yDistance: Integer;
  xDistance: Integer;
  absXDistance: Integer;
  absYDistance: Integer;
  index: Integer;
begin
        directionFactory_ := TDirectionFactory.getInstance();
        ownerLayerInterface := Self.getOwnerLayerInterface();
        direction_ := directionFactory_.NOT_BORDERED_WITH;
        
        
        
        size := Self.trackingList.size();
        for index := 0 to size - 1 do begin
            lastTrackingEvent := TTrackingEvent(TJava.ToObject(Self.trackingList.get(0)));
            lastTrackingLayerInterface := lastTrackingEvent.getLayerInterface();
            x := lastTrackingLayerInterface.getXP();
            y := lastTrackingLayerInterface.getYP();
            yDistance := ((ownerLayerInterface.getYP()) - (y)) - (ownerLayerInterface.getHeight());
            xDistance := ((ownerLayerInterface.getXP()) - (x)) - (ownerLayerInterface.getWidth());
            absXDistance := Abs(xDistance);
            absYDistance := Abs(yDistance);
            if (absYDistance) <= (100) then begin
                if (absXDistance) < ((Self.getFiringDistance()) div (2)) then begin
                    directionCompositeInterface_ := (TJava.ToObject(Self.getOwnerLayerInterface()) as IDirectionCompositeInterface);
                    if ((xDistance) < (0)) and ((directionCompositeInterface_.getDirection()) = (directionFactory_.RIGHT)) then begin
                        direction_ := directionFactory_.RIGHT;
                    end else if ((xDistance) > (0)) and ((directionCompositeInterface_.getDirection()) = (directionFactory_.LEFT)) then begin
                        direction_ := directionFactory_.LEFT;
                    end;
                end;
            end;
        end;
        Exit(direction_);
end;
    

procedure TPacePatrolAI.disable;
begin
end;
    

procedure TPacePatrolAI.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

procedure TPacePatrolAI.onMovement(trackingEvent_: TTrackingEvent);
begin
        Self.trackingList.clear();
        Self.trackingList.add(TJava.Box(trackingEvent_));
end;
    

function TPacePatrolAI.getFiringDistance: Integer;
begin
        Exit(Self.firingDistance);
end;
    

procedure TPacePatrolAI.setFiringDistance(firingDistance: Integer);
begin
        Self.firingDistance := firingDistance;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

