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
unit VectorBaseRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, AngleInfo, AnimationBehavior, RotationAnimation, VectorAnimationInterface, AnimationInterface, BasicColorCompositeSetterInterface, ColorCompositeInterface, IndexedAnimationInterface, LocationPaintableInterface, SequenceInterface, SequentialAnimationInterface;

type
  {AB:TYPES}
  TVectorBaseRotationAnimation = class(TRotationAnimation, IVectorAnimationInterface, IAnimationInterface, IBasicColorCompositeSetterInterface, IColorCompositeInterface, IIndexedAnimationInterface, ILocationPaintableInterface, ISequenceInterface, ISequentialAnimationInterface)
  public
    currentPoints: TArray<TArray<TArray<Integer>>>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(angleInfo_: TAngleInfo; currentPoints: TArray<TArray<TArray<Integer>>>; basicColor_: TBasicColor; animationBehavior_: TAnimationBehavior);
        function getAnimationSize: Integer; virtual;
        function getFrame: Integer; virtual;
        procedure setFrame(index: Integer); virtual;
        procedure nextFrame; virtual;
        procedure previousFrame; virtual;
        function getSize: Integer; virtual;
        procedure setSequence(sequence: TArray<Integer>); virtual;
        function getSequence: TArray<Integer>; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        function getPoints(frame: Integer): TArray<TArray<Integer>>; virtual;
        procedure setPoints(currentPoints: TArray<TArray<TArray<Integer>>>); virtual;
        function getBasicColorP: TBasicColor; virtual;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
  end;

implementation
uses
  NullUtil, PrimitiveIntUtil, CircularIndexUtil;


{AB:CODE}

procedure TVectorBaseRotationAnimation.InitFields;
begin
  Self.currentPoints := TNullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
end;

function TVectorBaseRotationAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TVectorBaseRotationAnimation.Create(angleInfo_: TAngleInfo; currentPoints: TArray<TArray<TArray<Integer>>>; basicColor_: TBasicColor; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(angleInfo_, TCircularIndexUtil.createInstance(TJava.Divide(360, angleInfo_.getAngleIncrementInfo().getAngleIncrement())), animationBehavior_);
        InitFields;
        Self.setPoints(currentPoints);
        Self.setBasicColorP(basicColor_);
end;
    

// throws Exception
function TVectorBaseRotationAnimation.getAnimationSize: Integer;
begin
        Exit(Self.getSize());
end;
    

function TVectorBaseRotationAnimation.getFrame: Integer;
begin
        Exit(Self.circularIndexUtil.getIndex());
end;
    

procedure TVectorBaseRotationAnimation.setFrame(index: Integer);
begin
        Self.circularIndexUtil.setIndex(index);
end;
    

procedure TVectorBaseRotationAnimation.nextFrame;
begin
        Self.circularIndexUtil.next();
end;
    

procedure TVectorBaseRotationAnimation.previousFrame;
begin
        Self.circularIndexUtil.previous();
end;
    

function TVectorBaseRotationAnimation.getSize: Integer;
begin
        Exit(System.Length(Self.currentPoints));
end;
    

procedure TVectorBaseRotationAnimation.setSequence(sequence: TArray<Integer>);
begin
end;
    

function TVectorBaseRotationAnimation.getSequence: TArray<Integer>;
begin
        Exit(TPrimitiveIntUtil.getArrayInstance());
end;
    

procedure TVectorBaseRotationAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
var
  nextPointX: Integer;
  nextPointY: Integer;
  nextPoint: TArray<Integer>;
  point: TArray<Integer>;
  currentPointsFrame: TArray<TArray<Integer>>;
  size: Integer;
  index: Integer;
begin
        Self.basicSetColorUtil.setBasicColorP(graphics_, Self.basicColor);
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
    

function TVectorBaseRotationAnimation.getPoints(frame: Integer): TArray<TArray<Integer>>;
begin
        Exit(Self.currentPoints[frame]);
end;
    

procedure TVectorBaseRotationAnimation.setPoints(currentPoints: TArray<TArray<TArray<Integer>>>);
begin
        Self.currentPoints := currentPoints;
        Self.circularIndexUtil := TCircularIndexUtil.createInstance(System.Length(Self.currentPoints));
end;
    

function TVectorBaseRotationAnimation.getBasicColorP: TBasicColor;
begin
        Exit(inherited getBasicColorP());
end;
    

procedure TVectorBaseRotationAnimation.setBasicColorP(basicColor_: TBasicColor);
begin
        inherited setBasicColorP(basicColor_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

