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
unit VectorAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, CircularIndexUtil, AnimationBehavior, IndexedAnimation, VectorAnimationInterface, AnimationInterface, BasicColorCompositeSetterInterface, ColorCompositeInterface, IndexedAnimationInterface, LocationPaintableInterface, SequenceInterface, SequentialAnimationInterface;

type
  {AB:TYPES}
  TVectorAnimation = class(TIndexedAnimation, IVectorAnimationInterface, IAnimationInterface, IBasicColorCompositeSetterInterface, IColorCompositeInterface, IIndexedAnimationInterface, ILocationPaintableInterface, ISequenceInterface, ISequentialAnimationInterface)
  public
    currentPoints: TArray<TArray<TArray<Integer>>>;
    circularIndexUtil: TCircularIndexUtil;
    procedure InitFields;
    function JavaObject: TObject;
        class function createVectorAnimation(currentPoints2: TArray<TArray<Integer>>; basicColor_: TBasicColor; animationBehavior_: TAnimationBehavior): TVectorAnimation; static;
        constructor Create(currentPoints: TArray<TArray<TArray<Integer>>>; basicColor_: TBasicColor; animationBehavior_: TAnimationBehavior);
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
        procedure changeBasicColor(basicColor_: TBasicColor); virtual;
        procedure setAlpha(alpha: Integer); virtual;
        procedure setScale(scaleX: Single; scaleY: Single); virtual;
        procedure setMaxScale(maxScaleX: Single; maxScaleY: Single); virtual;
        procedure updateModifiers;
        function getAnimationSize: Integer; virtual;
        function getSize: Integer; virtual;
        procedure setSequence(sequence: TArray<Integer>); virtual;
        function getSequence: TArray<Integer>; virtual;
        procedure nextFrame; virtual;
        procedure previousFrame; virtual;
        procedure paintVectors(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        function getFrame: Integer; virtual;
        procedure setFrame(index: Integer); virtual;
        function getPoints(frame: Integer): TArray<TArray<Integer>>; virtual;
        procedure setPoints(currentPoints: TArray<TArray<TArray<Integer>>>); virtual;
        function getBasicColorP: TBasicColor; virtual;
  end;

implementation
uses
  NullImage, NullUtil, PrimitiveIntUtil;


{AB:CODE}

procedure TVectorAnimation.InitFields;
begin
  Self.currentPoints := TNullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
  Self.circularIndexUtil := TCircularIndexUtil.createInstance(0);
end;

function TVectorAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TVectorAnimation.createVectorAnimation(currentPoints2: TArray<TArray<Integer>>; basicColor_: TBasicColor; animationBehavior_: TAnimationBehavior): TVectorAnimation;
var
  currentPoints: TArray<TArray<TArray<Integer>>>;
  size: Integer;
  index: Integer;
begin
        currentPoints := TJava.NewArray3<Integer>(1, System.Length(currentPoints2), 2);
        size := System.Length(currentPoints2);
        for index := 0 to size - 1 do begin
            currentPoints[0][index][0] := currentPoints2[index][0];
            currentPoints[0][index][1] := currentPoints2[index][1];
        end;
        Exit(TVectorAnimation.Create(currentPoints, basicColor_, animationBehavior_));
end;
    

constructor TVectorAnimation.Create(currentPoints: TArray<TArray<TArray<Integer>>>; basicColor_: TBasicColor; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(animationBehavior_);
        InitFields;
        Self.setPoints(currentPoints);
        Self.setBasicColorP(basicColor_);
end;
    

procedure TVectorAnimation.setBasicColorP(basicColor_: TBasicColor);
var
  changed: Boolean;
begin
        changed := False;
        if ((Self.getBasicColorP()) = (nil)) or ((Self.getBasicColorP().intValue()) <> (basicColor_.intValue())) then begin
            changed := True;
        end;
        inherited setBasicColorP(basicColor_);
        if changed then begin
            Self.updateModifiers();
        end;
end;
    

procedure TVectorAnimation.changeBasicColor(basicColor_: TBasicColor);
var
  changed: Boolean;
begin
        changed := False;
        if (TJava.IsNull(Self.getChangeBasicColor())) or ((Self.getChangeBasicColor().intValue()) <> (basicColor_.intValue())) then begin
            changed := True;
        end;
        inherited changeBasicColor(basicColor_);
        if changed then begin
            Self.updateModifiers();
        end;
end;
    

procedure TVectorAnimation.setAlpha(alpha: Integer);
var
  changed: Boolean;
begin
        changed := False;
        if (Self.alphaP) <> (alpha) then begin
            changed := True;
        end;
        inherited setAlpha(alpha);
        if changed then begin
            Self.updateModifiers();
        end;
end;
    

procedure TVectorAnimation.setScale(scaleX: Single; scaleY: Single);
begin
end;
    

procedure TVectorAnimation.setMaxScale(maxScaleX: Single; maxScaleY: Single);
begin
end;
    

procedure TVectorAnimation.updateModifiers;
begin
end;
    

// throws Exception
function TVectorAnimation.getAnimationSize: Integer;
begin
        Exit(Self.getSize());
end;
    

function TVectorAnimation.getSize: Integer;
begin
        Exit(System.Length(Self.currentPoints));
end;
    

procedure TVectorAnimation.setSequence(sequence: TArray<Integer>);
begin
end;
    

function TVectorAnimation.getSequence: TArray<Integer>;
begin
        Exit(TPrimitiveIntUtil.getArrayInstance());
end;
    

procedure TVectorAnimation.nextFrame;
begin
        Self.circularIndexUtil.next();
end;
    

procedure TVectorAnimation.previousFrame;
begin
        Self.circularIndexUtil.previous();
end;
    

procedure TVectorAnimation.paintVectors(graphics_: TGraphics; x: Integer; y: Integer);
var
  nextPointX: Integer;
  nextPointY: Integer;
  nextPoint: TArray<Integer>;
  point: TArray<Integer>;
  currentPointsFrame: TArray<TArray<Integer>>;
  size: Integer;
  index: Integer;
begin
        try
            nextPointX := 0;
            nextPointY := 0;
            
            
            currentPointsFrame := Self.currentPoints[Self.circularIndexUtil.getIndex()];
            size := System.Length(currentPointsFrame);
            index := (size) - (2);
            while (TJava.PreDec(index)) >= (0) do begin
                nextPoint := currentPointsFrame[index];
                point := currentPointsFrame[(index) + (1)];
                nextPointX := nextPoint[0];
                nextPointY := nextPoint[1];
                if (nextPointX) <> (1000) then begin
                    graphics_.drawLine((point[0]) + (x), (point[1]) + (y), (nextPointX) + (x), (nextPointY) + (y));
                end else begin
                    Dec(index);
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'paintVectors', TJava.Box(e));
            end;
        end;
end;
    

procedure TVectorAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.basicSetColorUtil.setBasicColorP(graphics_, Self.basicColor);
        Self.paintVectors(graphics_, x, y);
end;
    

function TVectorAnimation.getFrame: Integer;
begin
        Exit(Self.circularIndexUtil.getIndex());
end;
    

procedure TVectorAnimation.setFrame(index: Integer);
begin
        Self.circularIndexUtil.setIndex(index);
end;
    

function TVectorAnimation.getPoints(frame: Integer): TArray<TArray<Integer>>;
begin
        Exit(Self.currentPoints[frame]);
end;
    

procedure TVectorAnimation.setPoints(currentPoints: TArray<TArray<TArray<Integer>>>);
begin
        Self.currentPoints := currentPoints;
        Self.circularIndexUtil := TCircularIndexUtil.createInstance(System.Length(currentPoints));
end;
    

function TVectorAnimation.getBasicColorP: TBasicColor;
begin
        Exit(inherited getBasicColorP());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

