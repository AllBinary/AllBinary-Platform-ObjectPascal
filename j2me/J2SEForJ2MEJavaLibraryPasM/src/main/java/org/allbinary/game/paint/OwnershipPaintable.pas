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
// package org.allbinary.game.paint
unit OwnershipPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, DisplayInfoSingleton, MyFontProcessor, UpdateMyFontInterface, Paintable, LogUtil;

type
  {AB:TYPES}
  // J2SEForJ2ME
  TOwnershipPaintable = class(TPaintable, IUpdateMyFontInterface)
  public
    logUtil: TLogUtil;
    displayInfo: TDisplayInfoSingleton;
    myFontProcessor: TMyFontProcessor;
    COPYRIGHT: string;
    basicColor: TBasicColor;
    color: Integer;
    anchor: Integer;
    COPYRIGHT_Y: Integer;
    beginWidth: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        class function getInstance: TOwnershipPaintable; static;
        constructor Create;
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
        function getBasicColorP: TBasicColor; virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  Font, Anchor, BasicColorFactory, UpdateMyFontProcessor;


{AB:CODE}

procedure TOwnershipPaintable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.displayInfo := TDisplayInfoSingleton.getInstance();
  Self.myFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.COPYRIGHT := 'AllBinary Copyright (c) 2011';
  Self.basicColor := TBasicColorFactory.getInstance().WHITE;
  Self.color := Self.basicColor.intValue();
  Self.anchor := TAnchor.TOP_LEFT;
  
  
end;

function TOwnershipPaintable.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TOwnershipPaintable.getInstance: TOwnershipPaintable;
begin
        Exit(TOwnershipPaintable.Create());
end;
    

constructor TOwnershipPaintable.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TOwnershipPaintable.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.COPYRIGHT_Y := (2) * (font_.getHeight());
        Self.beginWidth := (TJava.SignedRightShift(font_.stringWidth(Self.COPYRIGHT), 1));
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TOwnershipPaintable.setBasicColorP(basicColor_: TBasicColor);
begin
        Self.basicColor := basicColor_;
        Self.color := basicColor_.intValue();
end;
    

function TOwnershipPaintable.getBasicColorP: TBasicColor;
begin
        Exit(Self.basicColor);
end;
    

procedure TOwnershipPaintable.paint(graphics_: TGraphics);
var
  halfWidth: Integer;
  height: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        graphics_.setColor(Self.color);
        halfWidth := Self.displayInfo.getLastHalfWidth();
        height := Self.displayInfo.getLastHeight();
        graphics_.drawString(Self.COPYRIGHT, (halfWidth) - (Self.beginWidth), (height) - (Self.COPYRIGHT_Y), Self.anchor);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

