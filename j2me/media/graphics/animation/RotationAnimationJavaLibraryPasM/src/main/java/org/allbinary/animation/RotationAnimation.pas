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
// package org.allbinary.animation
unit RotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Direction, DirectionUtil, Angle, AngleInfo, FrameUtil, CircularIndexUtil, AnimationBehavior, IndexedAnimation, RotationAnimationInterface, AnimationInterface, DirectionalInterface, IndexedAnimationInterface, LocationPaintableInterface, SequenceInterface, SequentialAnimationInterface;

type
  {AB:TYPES}
  TRotationAnimation = class(TIndexedAnimation, IRotationAnimationInterface, IAnimationInterface, IDirectionalInterface, IIndexedAnimationInterface, ILocationPaintableInterface, ISequenceInterface, ISequentialAnimationInterface)
  public
    frameUtil: TFrameUtil;
    directionUtil: TDirectionUtil;
    angleInfo: TAngleInfo;
    circularIndexUtil: TCircularIndexUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(angleInfo_: TAngleInfo; circularIndexUtil_: TCircularIndexUtil; animationBehavior_: TAnimationBehavior);
        procedure nextRotationX; virtual;
        procedure previousRotationX; virtual;
        procedure nextRotation; virtual;
        procedure previousRotation; virtual;
        procedure nextRotationZ; virtual;
        procedure previousRotationZ; virtual;
        procedure setFrame(index: Integer); virtual;
        procedure setFrameByDirection(direction_: TDirection); virtual;
        procedure setFrameToAngle(angle_: TAngle); virtual;
        procedure adjustFrameToAngle(angle_: TAngle); virtual;
        procedure adjustFrame(angle_: SmallInt); virtual;
        function getFrame: Integer; virtual;
        function getSize: Integer; virtual;
        function getAngleInfoP: TAngleInfo; virtual;
        function toString: string; override;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TRotationAnimation.InitFields;
begin
  Self.frameUtil := TFrameUtil.getInstance();
  Self.directionUtil := TDirectionUtil.getInstance();
  
  
end;

function TRotationAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TRotationAnimation.Create(angleInfo_: TAngleInfo; circularIndexUtil_: TCircularIndexUtil; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(animationBehavior_);
        InitFields;
        Self.angleInfo := angleInfo_;
        Self.circularIndexUtil := circularIndexUtil_;
end;
    

procedure TRotationAnimation.nextRotationX;
begin
end;
    

procedure TRotationAnimation.previousRotationX;
begin
end;
    

procedure TRotationAnimation.nextRotation;
begin
        Self.angleInfo.adjustAngle(Self.circularIndexUtil.next());
end;
    

procedure TRotationAnimation.previousRotation;
begin
        Self.angleInfo.adjustAngle(Self.circularIndexUtil.previous());
end;
    

procedure TRotationAnimation.nextRotationZ;
begin
end;
    

procedure TRotationAnimation.previousRotationZ;
begin
end;
    

procedure TRotationAnimation.setFrame(index: Integer);
var
  newFrame: Integer;
begin
        Self.circularIndexUtil.setIndex(index);
        newFrame := Self.circularIndexUtil.getIndex();
        Self.angleInfo.adjustAngle(newFrame);
end;
    

procedure TRotationAnimation.setFrameByDirection(direction_: TDirection);
var
  angle_: TAngle;
begin
        angle_ := Self.directionUtil.getFrameAngle(direction_);
        Self.adjustFrameToAngle(angle_);
end;
    

procedure TRotationAnimation.setFrameToAngle(angle_: TAngle);
begin
        Self.adjustFrameToAngle(angle_);
end;
    

procedure TRotationAnimation.adjustFrameToAngle(angle_: TAngle);
begin
        Self.adjustFrame(angle_.getValue());
end;
    

procedure TRotationAnimation.adjustFrame(angle_: SmallInt);
begin
        Self.setFrame(Self.frameUtil.getFrameForAngle(angle_, Integer(Trunc(Self.angleInfo.getAngleIncrementInfo().getAngleIncrement()))));
end;
    

function TRotationAnimation.getFrame: Integer;
begin
        Exit(Self.circularIndexUtil.getIndex());
end;
    

function TRotationAnimation.getSize: Integer;
begin
        Exit(Self.circularIndexUtil.getSize());
end;
    

function TRotationAnimation.getAngleInfoP: TAngleInfo;
begin
        Exit(Self.angleInfo);
end;
    

function TRotationAnimation.toString: string;
begin
        Exit(TStringMaker.Create().append(inherited toString()).append('circularIndexUtil: ').append(Self.circularIndexUtil.toString()).append('angleInfo: ').append(Self.angleInfo.toString()).toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

