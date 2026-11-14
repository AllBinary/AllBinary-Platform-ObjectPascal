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
// package org.allbinary.animation.special
unit TitleAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, AnimationBehavior, IndexedAnimation, BasicColor, DisplayInfoSingleton, ABSystemWrapper, SpecialAnimation;

type
  {AB:TYPES}
  TTitleAnimation = class(TSpecialAnimation)
  public
    systemWrapper: TABSystemWrapper;
    deltaX: Single;
    deltaY: Single;
    deltaZ: Single;
    basicColorArray: TArray<TBasicColor>;
    dxArray: TArray<Integer>;
    dyArray: TArray<Integer>;
    widthP: Integer;
    animationInterfaceArray: TArray<TIndexedAnimation>;
    sizeP: Integer;
    y: Integer;
    lastFrameStartTime: Int64;
    displayInfoSingleton: TDisplayInfoSingleton;
    CLEAR_COLOR: TBasicColor;
    procedure InitFields;
        class function createAnimation(animationInterfaceArray: TArray<TIndexedAnimation>; basicColorArray: TArray<TBasicColor>; dxArray: TArray<Integer>; dyArray: TArray<Integer>; y: Integer; width: Integer): TTitleAnimation; static;
        constructor Create(animationInterfaceArray: TArray<TIndexedAnimation>; basicColorArray: TArray<TBasicColor>; dxArray: TArray<Integer>; dyArray: TArray<Integer>; y: Integer; width: Integer; animationBehavior_: TAnimationBehavior);
        procedure nextFrame; override;
        function isComplete: Boolean; override;
        procedure setSequence(sequence: TArray<Integer>); override;
        function getSequence: TArray<Integer>; override;
        function getSize: Integer; override;
        function getFrame: Integer; override;
        procedure setFrame(frame: Integer); override;
        procedure setLastFrame; override;
        procedure reset; override;
        procedure previousFrame; override;
        procedure paintFrameXY(graphics_: TGraphics; frame: Integer; x: Integer; y: Integer); virtual;
        procedure paintXY(graphics_: TGraphics; ax: Integer; ay: Integer); override;
  end;

implementation
uses
  IndexedAnimationBehavior, BasicColorFactory, PrimitiveIntUtil;


{AB:CODE}

procedure TTitleAnimation.InitFields;
begin
  Self.systemWrapper := TABSystemWrapper.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  Self.displayInfoSingleton := TDisplayInfoSingleton.getInstance();
  Self.CLEAR_COLOR := TBasicColorFactory.getInstance().CLEAR_COLOR;
end;
    

class function TTitleAnimation.createAnimation(animationInterfaceArray: TArray<TIndexedAnimation>; basicColorArray: TArray<TBasicColor>; dxArray: TArray<Integer>; dyArray: TArray<Integer>; y: Integer; width: Integer): TTitleAnimation;
begin
        Exit(TTitleAnimation.Create(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, TIndexedAnimationBehavior.Create(1, 250)));
end;
    

constructor TTitleAnimation.Create(animationInterfaceArray: TArray<TIndexedAnimation>; basicColorArray: TArray<TBasicColor>; dxArray: TArray<Integer>; dyArray: TArray<Integer>; y: Integer; width: Integer; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(animationBehavior_);
        InitFields;
        Self.lastFrameStartTime := Self.systemWrapper.currentTimeMillis();
        Self.animationInterfaceArray := animationInterfaceArray;
        Self.sizeP := System.Length(Self.animationInterfaceArray);
        Self.basicColorArray := basicColorArray;
        Self.dxArray := dxArray;
        Self.dyArray := dyArray;
        Self.y := y;
        Self.widthP := width;
        Self.reset();
end;
    

procedure TTitleAnimation.nextFrame;
var
  currentTime: Int64;
  totalTimeElapsed: Int64;
  indexedAnimationBehavior_: TIndexedAnimationBehavior;
begin
        currentTime := Self.systemWrapper.currentTimeMillis();
        totalTimeElapsed := (currentTime) - (Self.lastFrameStartTime);
        indexedAnimationBehavior_ := TIndexedAnimationBehavior(TJava.ToObject(Self.getAnimationBehavior()));
        if (totalTimeElapsed) > (indexedAnimationBehavior_.frameDelayTime) then begin
            Self.previousFrame();
            Self.lastFrameStartTime := currentTime;
        end;
        if (Self.animationInterfaceArray[0].getFrame()) = (0) then begin
            Inc(indexedAnimationBehavior_.loopIndex);
        end;
end;
    

function TTitleAnimation.isComplete: Boolean;
var
  indexedAnimationBehavior_: TIndexedAnimationBehavior;
begin
        indexedAnimationBehavior_ := TIndexedAnimationBehavior(TJava.ToObject(Self.getAnimationBehavior()));
        if (((indexedAnimationBehavior_.loopTotal) = (-1)) or ((indexedAnimationBehavior_.loopIndex) < (indexedAnimationBehavior_.loopTotal))) or ((Self.getFrame()) <> (0)) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;
    

procedure TTitleAnimation.setSequence(sequence: TArray<Integer>);
begin
end;
    

function TTitleAnimation.getSequence: TArray<Integer>;
begin
        Exit(TPrimitiveIntUtil.getArrayInstance());
end;
    

function TTitleAnimation.getSize: Integer;
begin
        Exit(Self.animationInterfaceArray[0].getSize());
end;
    

function TTitleAnimation.getFrame: Integer;
begin
        Exit(Self.animationInterfaceArray[0].getFrame());
end;
    

procedure TTitleAnimation.setFrame(frame: Integer);
var
  index: Integer;
begin
        for index := 0 to Self.sizeP - 1 do begin
            Self.animationInterfaceArray[index].setFrame(frame);
        end;
end;
    

procedure TTitleAnimation.setLastFrame;
begin
        Self.setFrame((Self.getSize()) - (1));
end;
    

procedure TTitleAnimation.reset;
var
  indexedAnimationBehavior_: TIndexedAnimationBehavior;
begin
        Self.setLastFrame();
        indexedAnimationBehavior_ := (TIndexedAnimationBehavior(TJava.ToObject(Self.getAnimationBehavior())));
        indexedAnimationBehavior_.reset();
end;
    

procedure TTitleAnimation.previousFrame;
var
  index: Integer;
begin
        for index := 0 to Self.sizeP - 1 do begin
            Self.animationInterfaceArray[index].previousFrame();
        end;
end;
    

procedure TTitleAnimation.paintFrameXY(graphics_: TGraphics; frame: Integer; x: Integer; y: Integer);
begin
        Self.setFrame(frame);
        Self.paintXY(graphics_, x, y);
end;
    

procedure TTitleAnimation.paintXY(graphics_: TGraphics; ax: Integer; ay: Integer);
var
  x: Integer;
  deltaX: Integer;
  deltaY: Integer;
  index: Integer;
begin
        x := 0;
        if (Self.widthP) <> (Low(Integer)) then begin
            x := (TJava.Divide(((Self.displayInfoSingleton.getLastWidth()) - (Self.widthP)), 2));
        end;
        
        
        for index := 0 to Self.sizeP - 1 do begin
            deltaX := (Self.dxArray[index]) + (x);
            deltaY := (Self.dyArray[index]) + (Self.y);
            if (Self.basicColorArray[index]) <> (Self.CLEAR_COLOR) then begin
                Self.basicSetColorUtil.setBasicColorP(graphics_, Self.basicColorArray[index]);
            end;
            Self.animationInterfaceArray[index].paintXY(graphics_, deltaX, deltaY);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

