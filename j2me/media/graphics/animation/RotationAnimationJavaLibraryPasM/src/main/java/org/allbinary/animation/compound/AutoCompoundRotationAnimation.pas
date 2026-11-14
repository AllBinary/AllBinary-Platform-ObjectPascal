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
// package org.allbinary.animation.compound
unit AutoCompoundRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL, Graphics, AnimationBehavior, IndexedAnimation, RotationAnimation, Direction, Angle, AngleInfo, CompoundAnimationInterface, AnimationInterface, LocationPaintableInterface;

type
  {AB:TYPES}
  TAutoCompoundRotationAnimation = class(TRotationAnimation, ICompoundAnimationInterface, IAnimationInterface, ILocationPaintableInterface)
  public
    animationInterfaceArray: TArray<TRotationAnimation>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(animationInterfaceArray: TArray<TRotationAnimation>; animationBehavior_: TAnimationBehavior);
        procedure setFrame(index: Integer); virtual;
        function getFrame: Integer; virtual;
        function getAnimationSize: Integer; virtual;
        function getSize: Integer; virtual;
        procedure previousFrame; virtual;
        procedure nextFrame; virtual;
        procedure previousRotation; virtual;
        procedure nextRotation; virtual;
        procedure setSequence(sequence: TArray<Integer>); virtual;
        function getSequence: TArray<Integer>; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        procedure paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer); virtual;
        function getCurrentAnimation: TIndexedAnimation; virtual;
        procedure nextAnimation; virtual;
        procedure previousAnimation; virtual;
        procedure setAnimation(index: Integer); virtual;
        procedure setFrameByDirection(direction_: TDirection); virtual;
        procedure setFrameToAngle(angle_: TAngle); virtual;
        procedure adjustFrameToAngle(newAngle: TAngle); virtual;
        procedure adjustFrame(angle_: SmallInt); virtual;
        function getAngleInfoP: TAngleInfo; virtual;
        function getAnimationInterfaceArray: TArray<TRotationAnimation>; virtual;
        procedure setAnimationInterfaceArray(animationInterfaceArray: TArray<TRotationAnimation>); virtual;
        procedure set_(gl_: IGL); virtual;
  end;

implementation
uses
  PrimitiveIntUtil, AngleFactory, CircularIndexUtil;


{AB:CODE}

procedure TAutoCompoundRotationAnimation.InitFields;
begin
  
end;

function TAutoCompoundRotationAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAutoCompoundRotationAnimation.Create(animationInterfaceArray: TArray<TRotationAnimation>; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(TAngleInfo.getInstance(TAngleFactory.getInstance().QUARTER_TOTAL_ANGLE), TCircularIndexUtil.createInstance(4), animationBehavior_);
        InitFields;
        Self.animationInterfaceArray := animationInterfaceArray;
        Self.circularIndexUtil := TCircularIndexUtil.createInstance(System.Length(Self.animationInterfaceArray));
end;
    

procedure TAutoCompoundRotationAnimation.setFrame(index: Integer);
begin
        Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()].setFrame(index);
end;
    

function TAutoCompoundRotationAnimation.getFrame: Integer;
begin
        Exit(Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()].getFrame());
end;
    

// throws Exception
function TAutoCompoundRotationAnimation.getAnimationSize: Integer;
begin
        Exit(Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()].getAnimationSize());
end;
    

function TAutoCompoundRotationAnimation.getSize: Integer;
begin
        Exit(Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()].getSize());
end;
    

procedure TAutoCompoundRotationAnimation.previousFrame;
begin
        Self.circularIndexUtil.previous();
        Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()].previousFrame();
end;
    

// throws Exception
procedure TAutoCompoundRotationAnimation.nextFrame;
begin
        Self.circularIndexUtil.next();
        Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()].nextFrame();
end;
    

procedure TAutoCompoundRotationAnimation.previousRotation;
begin
        Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()].previousRotation();
end;
    

procedure TAutoCompoundRotationAnimation.nextRotation;
begin
        Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()].nextRotation();
end;
    

procedure TAutoCompoundRotationAnimation.setSequence(sequence: TArray<Integer>);
begin
end;
    

function TAutoCompoundRotationAnimation.getSequence: TArray<Integer>;
begin
        Exit(TPrimitiveIntUtil.getArrayInstance());
end;
    

procedure TAutoCompoundRotationAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()].paintXY(graphics_, x, y);
end;
    

procedure TAutoCompoundRotationAnimation.paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer);
begin
        Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()].paintThreedXYZ(graphics_, x, y, z);
end;
    

function TAutoCompoundRotationAnimation.getCurrentAnimation: TIndexedAnimation;
begin
        Exit(Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()]);
end;
    

procedure TAutoCompoundRotationAnimation.nextAnimation;
var
  frame: Integer;
begin
        frame := Self.getFrame();
        Self.circularIndexUtil.next();
        Self.setFrame(frame);
end;
    

procedure TAutoCompoundRotationAnimation.previousAnimation;
var
  frame: Integer;
begin
        frame := Self.getFrame();
        Self.circularIndexUtil.previous();
        Self.setFrame(frame);
end;
    

procedure TAutoCompoundRotationAnimation.setAnimation(index: Integer);
var
  frame: Integer;
begin
        frame := Self.getFrame();
        Self.circularIndexUtil.setIndex(index);
        Self.setFrame(frame);
end;
    

procedure TAutoCompoundRotationAnimation.setFrameByDirection(direction_: TDirection);
begin
        Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()].setFrameByDirection(direction_);
end;
    

procedure TAutoCompoundRotationAnimation.setFrameToAngle(angle_: TAngle);
begin
        Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()].setFrameToAngle(angle_);
end;
    

procedure TAutoCompoundRotationAnimation.adjustFrameToAngle(newAngle: TAngle);
begin
        Self.adjustFrame(newAngle.getValue());
end;
    

procedure TAutoCompoundRotationAnimation.adjustFrame(angle_: SmallInt);
begin
        Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()].adjustFrame(angle_);
end;
    

function TAutoCompoundRotationAnimation.getAngleInfoP: TAngleInfo;
begin
        Exit(Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()].getAngleInfoP());
end;
    

function TAutoCompoundRotationAnimation.getAnimationInterfaceArray: TArray<TRotationAnimation>;
begin
        Exit(Self.animationInterfaceArray);
end;
    

procedure TAutoCompoundRotationAnimation.setAnimationInterfaceArray(animationInterfaceArray: TArray<TRotationAnimation>);
begin
        Self.animationInterfaceArray := animationInterfaceArray;
end;
    

// throws Exception
procedure TAutoCompoundRotationAnimation.set_(gl_: IGL);
var
  index: Integer;
begin
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterfaceArray[index].set_(gl_);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

