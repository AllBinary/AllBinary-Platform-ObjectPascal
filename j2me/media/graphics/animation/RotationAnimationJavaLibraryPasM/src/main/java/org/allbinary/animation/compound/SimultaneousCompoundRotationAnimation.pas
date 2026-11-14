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
unit SimultaneousCompoundRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL, Graphics, AnimationBehavior, RotationAnimation, Direction, Angle, AngleInfo;

type
  {AB:TYPES}
  TSimultaneousCompoundRotationAnimation = class(TRotationAnimation)
  public
    animationInterfaceArray: TArray<TRotationAnimation>;
    procedure InitFields;
        constructor Create(animationInterfaceArray: TArray<TRotationAnimation>; animationBehavior_: TAnimationBehavior);
        procedure setFrame(frameIndex: Integer); override;
        function getFrame: Integer; override;
        function getAnimationSize: Integer; override;
        function getSize: Integer; override;
        procedure previousFrame; override;
        procedure nextFrame; override;
        procedure previousRotation; override;
        procedure nextRotation; override;
        procedure setSequence(sequence: TArray<Integer>); override;
        function getSequence: TArray<Integer>; override;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
        procedure paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer); override;
        procedure setFrameByDirection(direction_: TDirection); override;
        procedure setFrameToAngle(angle_: TAngle); override;
        procedure adjustFrameToAngle(newAngle: TAngle); override;
        procedure adjustFrame(angle_: SmallInt); override;
        function getAngleInfoP: TAngleInfo; override;
        function getAnimationInterfaceArray: TArray<TRotationAnimation>; virtual;
        procedure setAnimationInterfaceArray(animationInterfaceArray: TArray<TRotationAnimation>); virtual;
        procedure set_(gl_: IGL); override;
  end;

implementation
uses
  PrimitiveIntUtil, AngleFactory, CircularIndexUtil;


{AB:CODE}

procedure TSimultaneousCompoundRotationAnimation.InitFields;
begin
  
end;
    

constructor TSimultaneousCompoundRotationAnimation.Create(animationInterfaceArray: TArray<TRotationAnimation>; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(TAngleInfo.getInstance(TAngleFactory.getInstance().QUARTER_TOTAL_ANGLE), TCircularIndexUtil.createInstance(4), animationBehavior_);
        InitFields;
        Self.animationInterfaceArray := animationInterfaceArray;
end;
    

procedure TSimultaneousCompoundRotationAnimation.setFrame(frameIndex: Integer);
var
  index: Integer;
begin
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterfaceArray[index].setFrame(frameIndex);
        end;
end;
    

function TSimultaneousCompoundRotationAnimation.getFrame: Integer;
begin
        Exit(Self.animationInterfaceArray[0].getFrame());
end;
    

// throws Exception
function TSimultaneousCompoundRotationAnimation.getAnimationSize: Integer;
begin
        Exit(Self.animationInterfaceArray[0].getAnimationSize());
end;
    

function TSimultaneousCompoundRotationAnimation.getSize: Integer;
begin
        Exit(Self.animationInterfaceArray[0].getSize());
end;
    

procedure TSimultaneousCompoundRotationAnimation.previousFrame;
var
  index: Integer;
begin
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterfaceArray[index].previousFrame();
        end;
end;
    

// throws Exception
procedure TSimultaneousCompoundRotationAnimation.nextFrame;
var
  index: Integer;
begin
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterfaceArray[index].nextFrame();
        end;
end;
    

procedure TSimultaneousCompoundRotationAnimation.previousRotation;
var
  index: Integer;
begin
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterfaceArray[index].previousRotation();
        end;
end;
    

procedure TSimultaneousCompoundRotationAnimation.nextRotation;
var
  index: Integer;
begin
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterfaceArray[index].nextRotation();
        end;
end;
    

procedure TSimultaneousCompoundRotationAnimation.setSequence(sequence: TArray<Integer>);
begin
end;
    

function TSimultaneousCompoundRotationAnimation.getSequence: TArray<Integer>;
begin
        Exit(TPrimitiveIntUtil.getArrayInstance());
end;
    

procedure TSimultaneousCompoundRotationAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
var
  index: Integer;
begin
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterfaceArray[index].paintXY(graphics_, x, y);
        end;
end;
    

procedure TSimultaneousCompoundRotationAnimation.paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer);
var
  index: Integer;
begin
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterfaceArray[index].paintThreedXYZ(graphics_, x, y, z);
        end;
end;
    

procedure TSimultaneousCompoundRotationAnimation.setFrameByDirection(direction_: TDirection);
var
  index: Integer;
begin
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterfaceArray[index].setFrameByDirection(direction_);
        end;
end;
    

procedure TSimultaneousCompoundRotationAnimation.setFrameToAngle(angle_: TAngle);
var
  index: Integer;
begin
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterfaceArray[index].setFrameToAngle(angle_);
        end;
end;
    

procedure TSimultaneousCompoundRotationAnimation.adjustFrameToAngle(newAngle: TAngle);
begin
        Self.adjustFrame(newAngle.getValue());
end;
    

procedure TSimultaneousCompoundRotationAnimation.adjustFrame(angle_: SmallInt);
var
  index: Integer;
begin
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterfaceArray[index].adjustFrame(angle_);
        end;
end;
    

function TSimultaneousCompoundRotationAnimation.getAngleInfoP: TAngleInfo;
begin
        Exit(Self.animationInterfaceArray[0].getAngleInfoP());
end;
    

function TSimultaneousCompoundRotationAnimation.getAnimationInterfaceArray: TArray<TRotationAnimation>;
begin
        Exit(Self.animationInterfaceArray);
end;
    

procedure TSimultaneousCompoundRotationAnimation.setAnimationInterfaceArray(animationInterfaceArray: TArray<TRotationAnimation>);
begin
        Self.animationInterfaceArray := animationInterfaceArray;
end;
    

// throws Exception
procedure TSimultaneousCompoundRotationAnimation.set_(gl_: IGL);
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

