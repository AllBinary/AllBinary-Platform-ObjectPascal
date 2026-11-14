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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, AnimationInterface, CellPosition, Rectangle, Paintable, LogUtil, CommonStrings, TouchButtonInput;

type
  {AB:TYPES}
  TTouchButton = class(TPaintable)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    touchButtonInput: TTouchButtonInput;
    animationInterface: TAnimation;
    rawRectangle: TRectangle;
    xBorder: Integer;
    yBorder: Integer;
    rectangle: TRectangle;
    cellPosition: TCellPosition;
    animationX: Integer;
    animationY: Integer;
    procedure InitFields;
        constructor Create(touchButtonInput_: TTouchButtonInput; animationInterface_: IAnimationInterface; rawRectangle: TRectangle; cellPosition_: TCellPosition; xBorder: Integer; yBorder: Integer);
        procedure paint(graphics_: TGraphics); override;
        procedure updateRectangle; virtual;
        function getCellPositionP: TCellPosition; virtual;
        function getRectangleP: TRectangle; virtual;
        function getTouchButtonInput: TTouchButtonInput; virtual;
        function toString: string; override;
  end;

implementation
uses
  GPoint, PointFactory, RectangleFactory, StringMaker, StringUtil;


{AB:CODE}

procedure TTouchButton.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  Self.rectangle := TRectangleFactory.SINGLETON;
  
  
  
end;
    

constructor TTouchButton.Create(touchButtonInput_: TTouchButtonInput; animationInterface_: IAnimationInterface; rawRectangle: TRectangle; cellPosition_: TCellPosition; xBorder: Integer; yBorder: Integer);
begin
    inherited Create;
    InitFields;
        Self.touchButtonInput := touchButtonInput_;
        Self.animationInterface := TAnimation(TJava.ToObject(animationInterface_));
        Self.rawRectangle := rawRectangle;
        Self.cellPosition := cellPosition_;
        Self.xBorder := xBorder;
        Self.yBorder := yBorder;
        Self.updateRectangle();
        Self.logUtil.putF(TStringMaker.Create().append('Created: ').append(Self.toString()).toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
end;
    

procedure TTouchButton.paint(graphics_: TGraphics);
begin
        Self.animationInterface.paintXY(graphics_, Self.animationX, Self.animationY);
end;
    

procedure TTouchButton.updateRectangle;
var
  x: Integer;
  y: Integer;
  pointFactory_: TPointFactory;
  point: TGPoint;
begin
        try
            x := (Self.rawRectangle.getWidth()) * (Self.cellPosition.getColumn());
            y := (Self.rawRectangle.getHeight()) * (Self.cellPosition.getRow());
            pointFactory_ := TPointFactory.getInstance();
            Self.rectangle := TRectangle.Create(pointFactory_.createXY((x) + (Self.xBorder), (y) + (Self.yBorder)), Self.rawRectangle.getWidth(), Self.rawRectangle.getHeight());
            point := Self.rectangle.getPoint();
            Self.animationX := point.getX();
            Self.animationY := point.getY();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'updateRectangle', TJava.Box(e));
            end;
        end;
end;
    

function TTouchButton.getCellPositionP: TCellPosition;
begin
        Exit(Self.cellPosition);
end;
    

function TTouchButton.getRectangleP: TRectangle;
begin
        Exit(Self.rectangle);
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
        stringBuffer.append(stringUtil_.toString(Self.rectangle));
        stringBuffer.append(' CellPosition: ');
        stringBuffer.append(stringUtil_.toString(Self.cellPosition));
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

