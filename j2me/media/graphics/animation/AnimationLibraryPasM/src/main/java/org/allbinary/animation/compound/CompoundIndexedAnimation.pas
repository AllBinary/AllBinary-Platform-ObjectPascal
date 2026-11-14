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
unit CompoundIndexedAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL, Graphics, Animation, AnimationBehavior, IndexedAnimation, CircularIndexUtil, CompoundAnimationInterface, AnimationInterface, LocationPaintableInterface;

type
  {AB:TYPES}
  TCompoundIndexedAnimation = class(TIndexedAnimation, ICompoundAnimationInterface, IAnimationInterface, ILocationPaintableInterface)
  public
    circularIndexUtil: TCircularIndexUtil;
    animationInterfaceArray: TArray<TAnimation>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(animationInterfaceArray: TArray<TAnimation>; animationBehavior_: TAnimationBehavior);
        procedure setFrame(index: Integer); virtual;
        function getFrame: Integer; virtual;
        function getSize: Integer; virtual;
        procedure previousFrame; virtual;
        procedure setSequence(sequence: TArray<Integer>); virtual;
        function getSequence: TArray<Integer>; virtual;
        procedure nextFrame; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        procedure paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer); virtual;
        function getCurrentAnimation: TIndexedAnimation; virtual;
        procedure nextAnimation; virtual;
        procedure previousAnimation; virtual;
        procedure setAnimation(index: Integer); virtual;
        function getAnimationInterfaceArray: TArray<TAnimation>; virtual;
        procedure setAnimationInterfaceArray(animationInterfaceArray: TArray<TAnimation>); virtual;
        procedure set_(gl_: IGL); virtual;
  end;

implementation
uses
  PrimitiveIntUtil;


{AB:CODE}

procedure TCompoundIndexedAnimation.InitFields;
begin
  
  
end;

function TCompoundIndexedAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCompoundIndexedAnimation.Create(animationInterfaceArray: TArray<TAnimation>; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(animationBehavior_);
        InitFields;
        Self.animationInterfaceArray := animationInterfaceArray;
        Self.circularIndexUtil := TCircularIndexUtil.createInstance(System.Length(Self.animationInterfaceArray));
end;
    

procedure TCompoundIndexedAnimation.setFrame(index: Integer);
var
  indexedAnimation_: TIndexedAnimation;
begin
        indexedAnimation_ := TIndexedAnimation(TJava.ToObject(Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()]));
        indexedAnimation_.setFrame(index);
end;
    

function TCompoundIndexedAnimation.getFrame: Integer;
var
  indexedAnimation_: TIndexedAnimation;
begin
        indexedAnimation_ := TIndexedAnimation(TJava.ToObject(Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()]));
        Exit(indexedAnimation_.getFrame());
end;
    

function TCompoundIndexedAnimation.getSize: Integer;
var
  indexedAnimation_: TIndexedAnimation;
begin
        indexedAnimation_ := TIndexedAnimation(TJava.ToObject(Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()]));
        Exit(indexedAnimation_.getSize());
end;
    

procedure TCompoundIndexedAnimation.previousFrame;
var
  indexedAnimation_: TIndexedAnimation;
begin
        indexedAnimation_ := TIndexedAnimation(TJava.ToObject(Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()]));
        indexedAnimation_.previousFrame();
end;
    

procedure TCompoundIndexedAnimation.setSequence(sequence: TArray<Integer>);
begin
end;
    

function TCompoundIndexedAnimation.getSequence: TArray<Integer>;
begin
        Exit(TPrimitiveIntUtil.getArrayInstance());
end;
    

// throws Exception
procedure TCompoundIndexedAnimation.nextFrame;
begin
        Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()].nextFrame();
end;
    

procedure TCompoundIndexedAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()].paintXY(graphics_, x, y);
end;
    

procedure TCompoundIndexedAnimation.paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer);
begin
        Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()].paintThreedXYZ(graphics_, x, y, z);
end;
    

function TCompoundIndexedAnimation.getCurrentAnimation: TIndexedAnimation;
begin
        Exit(TIndexedAnimation(TJava.ToObject(Self.animationInterfaceArray[Self.circularIndexUtil.getIndex()])));
end;
    

procedure TCompoundIndexedAnimation.nextAnimation;
var
  frame: Integer;
begin
        frame := Self.getFrame();
        Self.circularIndexUtil.next();
        Self.setFrame(frame);
end;
    

procedure TCompoundIndexedAnimation.previousAnimation;
var
  frame: Integer;
begin
        frame := Self.getFrame();
        Self.circularIndexUtil.previous();
        Self.setFrame(frame);
end;
    

procedure TCompoundIndexedAnimation.setAnimation(index: Integer);
var
  frame: Integer;
begin
        frame := Self.getFrame();
        Self.circularIndexUtil.setIndex(index);
        Self.setFrame(frame);
end;
    

function TCompoundIndexedAnimation.getAnimationInterfaceArray: TArray<TAnimation>;
begin
        Exit(Self.animationInterfaceArray);
end;
    

procedure TCompoundIndexedAnimation.setAnimationInterfaceArray(animationInterfaceArray: TArray<TAnimation>);
begin
        Self.animationInterfaceArray := animationInterfaceArray;
end;
    

// throws Exception
procedure TCompoundIndexedAnimation.set_(gl_: IGL);
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

