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
unit BasePatrolAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicAI, GameInput, AllBinaryLayer, ABHashtable;

type
  {AB:TYPES}
  TBasePatrolAI = class(TBasicAI)
  public
    maxDistance: Integer;
    currentDistance: Integer;
    xTotalDistance: Integer;
    lastKeyDirection: Integer;
    keyDirection: Integer;
    class var MAX_DISTANCE: Integer;
    class var DIRECTION_ARRAY: Integer;
    class var FIRING_DISTANCE: Integer;
    class var SPEED: Integer;
    procedure InitFields;
        constructor Create(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure update; virtual;
        procedure updateTotalDistance;
        procedure changeDirectionIfReachedPacingAreaMax;
        procedure nextDirection; virtual;
        procedure disable; virtual;
  end;

implementation
uses
  Canvas, BasicVelocityProperties, VelocityInterfaceCompositeInterface, MathUtil, SmallIntegerSingletonFactory;


{AB:CODE}

procedure TBasePatrolAI.InitFields;
begin
  
  
  
  Self.lastKeyDirection := TCanvas.RIGHT;
  Self.keyDirection := TCanvas.RIGHT;
end;
    

constructor TBasePatrolAI.Create(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
        inherited Create(ownerLayerInterface, gameInput_);
        InitFields;
        Self.maxDistance := Integer(hashtable.get(TJava.Box(TBasePatrolAI.MAX_DISTANCE)));
        Self.currentDistance := (Self.maxDistance);
end;
    

procedure TBasePatrolAI.update;
begin
        Self.updateTotalDistance();
        Self.changeDirectionIfReachedPacingAreaMax();
end;
    

procedure TBasePatrolAI.updateTotalDistance;
var
  velocityInterfaceCompositeInterface_: IVelocityInterfaceCompositeInterface;
  velocityProperties: TBasicVelocityProperties;
begin
        velocityInterfaceCompositeInterface_ := (TJava.ToObject(Self.getOwnerLayerInterface()) as IVelocityInterfaceCompositeInterface);
        velocityProperties := velocityInterfaceCompositeInterface_.getVelocityProperties();
        Self.xTotalDistance := (Self.xTotalDistance) + (velocityProperties.getVelocityXBasicDecimalP().getScaled());
end;
    

procedure TBasePatrolAI.changeDirectionIfReachedPacingAreaMax;
var
  mathUtil_: TMathUtil;
  totalDistance: Integer;
begin
        mathUtil_ := TMathUtil.getInstance();
        totalDistance := mathUtil_.abs(Self.xTotalDistance);
        if (totalDistance) > (Self.currentDistance) then begin
            Self.nextDirection();
        end;
end;
    

procedure TBasePatrolAI.nextDirection;
begin
        if (Self.lastKeyDirection) = (TCanvas.LEFT) then begin
            Self.keyDirection := TCanvas.RIGHT;
            Self.lastKeyDirection := Self.keyDirection;
            Self.xTotalDistance := 0;
        end else if (Self.lastKeyDirection) = (TCanvas.RIGHT) then begin
            Self.keyDirection := TCanvas.LEFT;
            Self.lastKeyDirection := Self.keyDirection;
            Self.xTotalDistance := 0;
        end;
end;
    

procedure TBasePatrolAI.disable;
begin
end;

initialization
  {AB:INITIALIZATION}
  TBasePatrolAI.MAX_DISTANCE := TSmallIntegerSingletonFactory.getInstance().getAt(2);
  TBasePatrolAI.DIRECTION_ARRAY := TSmallIntegerSingletonFactory.getInstance().getAt(3);
  TBasePatrolAI.FIRING_DISTANCE := TSmallIntegerSingletonFactory.getInstance().getAt(4);
  TBasePatrolAI.SPEED := TSmallIntegerSingletonFactory.getInstance().getAt(5);
  {AB:END}

end.

