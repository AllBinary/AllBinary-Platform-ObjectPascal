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
// package org.allbinary.input.motion.button
unit TouchButton;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, CellPosition, Rectangle, Paintable, LogUtil, CommonStrings, TouchButtonInput, TouchButtonResource;

type
  {AB:TYPES}
  TTouchButton = class(TPaintable)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    touchButtonInput: TTouchButtonInput;
    animationInterface: TAnimation;
    hintAnimationInterface: TAnimation;
    rawRectangle: TRectangle;
    xBorder: Integer;
    yBorder: Integer;
    rectangleP: TRectangle;
    cellPositionP: TCellPosition;
    animationX: Integer;
    animationY: Integer;
    hintAnimationY: Integer;
    procedure InitFields;
        class function createButton(touchButtonInput_: TTouchButtonInput; touchButtonResource_: TTouchButtonResource; rawRectangle: TRectangle; cellPosition_: TCellPosition; xBorder: Integer; yBorder: Integer): TTouchButton; static;
        constructor Create(touchButtonInput_: TTouchButtonInput; animationInterface: TAnimation; hintAnimationInterface: TAnimation; rawRectangle: TRectangle; cellPosition_: TCellPosition; xBorder: Integer; yBorder: Integer);
        procedure paintHint(graphics_: TGraphics); virtual;
        procedure paint(graphics_: TGraphics); override;
        procedure updateRectangle; virtual;
        function getCellPosition: TCellPosition; virtual;
        function getRectangle: TRectangle; virtual;
        function getTouchButtonInput: TTouchButtonInput; virtual;
        function toString: string; override;
  end;

implementation
uses
  FeaturedAnimationInterfaceFactoryInterfaceFactory, GPoint, PointFactory, RectangleFactory, StringMaker, StringUtil;


{AB:CODE}

procedure TTouchButton.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  Self.rectangleP := TRectangleFactory.SINGLETON;
  
  
  
  
end;
    

// throws Exception
class function TTouchButton.createButton(touchButtonInput_: TTouchButtonInput; touchButtonResource_: TTouchButtonResource; rawRectangle: TRectangle; cellPosition_: TCellPosition; xBorder: Integer; yBorder: Integer): TTouchButton;
begin
        Exit(TTouchButton.Create(touchButtonInput_, TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource_.RESOURCE).getInstance(0), TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource_.HINT).getInstance(0), rawRectangle, cellPosition_, xBorder, yBorder));
end;
    

constructor TTouchButton.Create(touchButtonInput_: TTouchButtonInput; animationInterface: TAnimation; hintAnimationInterface: TAnimation; rawRectangle: TRectangle; cellPosition_: TCellPosition; xBorder: Integer; yBorder: Integer);
begin
    inherited Create;
    InitFields;
        Self.touchButtonInput := touchButtonInput_;
        Self.animationInterface := animationInterface;
        Self.hintAnimationInterface := hintAnimationInterface;
        Self.rawRectangle := rawRectangle;
        Self.cellPositionP := cellPosition_;
        Self.xBorder := xBorder;
        Self.yBorder := yBorder;
        Self.updateRectangle();
        Self.logUtil.putF(TStringMaker.Create().append('Created: ').append(Self.toString()).toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
end;
    

procedure TTouchButton.paintHint(graphics_: TGraphics);
begin
        Self.hintAnimationInterface.paintXY(graphics_, Self.animationX, Self.hintAnimationY);
end;
    

procedure TTouchButton.paint(graphics_: TGraphics);
begin
        Self.animationInterface.paintXY(graphics_, Self.animationX, Self.animationY);
end;
    

procedure TTouchButton.updateRectangle;
var
  pointFactory_: TPointFactory;
  x: Integer;
  y: Integer;
  point: TGPoint;
begin
        try
            pointFactory_ := TPointFactory.getInstance();
            x := (Self.rawRectangle.getWidth()) * (Self.cellPositionP.getColumn());
            y := (Self.rawRectangle.getHeight()) * (Self.cellPositionP.getRow());
            Self.rectangleP := TRectangle.Create(pointFactory_.createXY((x) + (Self.xBorder), (y) + (Self.yBorder)), Self.rawRectangle.getWidth(), Self.rawRectangle.getHeight());
            point := Self.rectangleP.getPoint();
            Self.animationX := point.getX();
            Self.animationY := point.getY();
            Self.hintAnimationY := (Self.animationY) - (32);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'updateRectangle', TJava.Box(e));
            end;
        end;
end;
    

function TTouchButton.getCellPosition: TCellPosition;
begin
        Exit(Self.cellPositionP);
end;
    

function TTouchButton.getRectangle: TRectangle;
begin
        Exit(Self.rectangleP);
end;
    

function TTouchButton.getTouchButtonInput: TTouchButtonInput;
begin
        Exit(Self.touchButtonInput);
end;
    

function TTouchButton.toString: string;
var
  stringBuffer: TStringMaker;
  stringUtil_: TStringUtil;
begin
        stringBuffer := TStringMaker.Create();
        stringUtil_ := TStringUtil.getInstance();
        stringBuffer.append('TouchButton: ');
        stringBuffer.append(stringUtil_.toString(Self.getRectangle()));
        stringBuffer.append(' CellPosition: ');
        stringBuffer.append(stringUtil_.toString(Self.cellPositionP));
        stringBuffer.append(' xBorder: ');
        stringBuffer.appendint(Self.xBorder);
        stringBuffer.append(' yBorder: ');
        stringBuffer.appendint(Self.yBorder);
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

