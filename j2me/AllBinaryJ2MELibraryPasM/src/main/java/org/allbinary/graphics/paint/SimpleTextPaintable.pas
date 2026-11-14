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
// package org.allbinary.graphics.paint
unit SimpleTextPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, DisplayInfoSingleton, MyFontProcessor, UpdateMyFontInterface, Paintable;

type
  {AB:TYPES}
  TSimpleTextPaintable = class(TPaintable, IUpdateMyFontInterface)
  public
    displayInfoSingleton: TDisplayInfoSingleton;
    updateMyFontProcessor: TMyFontProcessor;
    myFontProcessor: TMyFontProcessor;
    text: string;
    basicColor: TBasicColor;
    topScoresWidth: Integer;
    fontHeight: Integer;
    anchor: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(text: string; basicColor_: TBasicColor);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
        function getBasicColorP: TBasicColor;
        procedure setText(text: string); virtual;
        function getText: string; virtual;
  end;

implementation
uses
  Font, Anchor, UpdateMyFontProcessor;


{AB:CODE}

procedure TSimpleTextPaintable.InitFields;
begin
  Self.displayInfoSingleton := TDisplayInfoSingleton.getInstance();
  Self.updateMyFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.myFontProcessor := Self.updateMyFontProcessor;
  
  
  Self.topScoresWidth := 0;
  Self.fontHeight := 0;
  Self.anchor := TAnchor.TOP_LEFT;
end;

function TSimpleTextPaintable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TSimpleTextPaintable.Create(text: string; basicColor_: TBasicColor);
begin
    inherited Create;
    InitFields;
        Self.text := text;
        Self.basicColor := basicColor_;
end;
    

procedure TSimpleTextPaintable.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.topScoresWidth := (TJava.SignedRightShift(font_.stringWidth(Self.text), 1));
        Self.fontHeight := font_.getHeight();
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TSimpleTextPaintable.paint(graphics_: TGraphics);
var
  width: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        width := Self.displayInfoSingleton.getLast()[Self.displayInfoSingleton.WIDTH];
        graphics_.setColor(Self.getBasicColorP().intValue());
        graphics_.drawString(Self.text, ((TJava.SignedRightShift(width, 1))) - (Self.topScoresWidth), Self.fontHeight, Self.anchor);
end;
    

procedure TSimpleTextPaintable.setBasicColorP(basicColor_: TBasicColor);
begin
        Self.basicColor := basicColor_;
end;
    

function TSimpleTextPaintable.getBasicColorP: TBasicColor;
begin
        Exit(Self.basicColor);
end;
    

procedure TSimpleTextPaintable.setText(text: string);
begin
        Self.text := text;
        Self.myFontProcessor := Self.updateMyFontProcessor;
end;
    

function TSimpleTextPaintable.getText: string;
begin
        Exit(Self.text);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

