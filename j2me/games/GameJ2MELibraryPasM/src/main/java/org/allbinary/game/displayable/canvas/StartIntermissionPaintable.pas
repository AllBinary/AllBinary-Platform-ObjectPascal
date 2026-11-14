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
// package org.allbinary.game.displayable.canvas
unit StartIntermissionPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Font, Graphics, BasicColor, BasicColorSetUtil, FontDebugFactory, MyFontProcessor, UpdateMyFontInterface, InitUpdatePaintable, AllBinaryGameCanvas;

type
  {AB:TYPES}
  TStartIntermissionPaintable = class(TInitUpdatePaintable, IUpdateMyFontInterface)
  public
    fontDebugFactory: TFontDebugFactory;
    basicSetColorUtil: TBasicColorSetUtil;
    gameCanvas: TAllBinaryGameCanvas;
    stringArray: TArray<string>;
    fontSize: Integer;
    font: TFont;
    lastWidth: TArray<Integer>;
    updateMyFontProcessor: TMyFontProcessor;
    myFontProcessor: TMyFontProcessor;
    basicColor: TBasicColor;
    color: Integer;
    lineYOffsetArray: TArray<Integer>;
    hasChanged: Boolean;
    anchor: Integer;
    fontHeightP: Integer;
    BEGIN_LEVEL: string;
    EMPTY_STRING: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(gameCanvas: TAllBinaryGameCanvas; stringArray: TArray<string>; basicColor_: TBasicColor; font_: TFont);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure update; virtual;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
        function getBasicColorP: TBasicColor; virtual;
  end;

implementation
uses
  Anchor, BasicColorFactory, DisplayInfoSingleton, UpdateMyFontProcessor, NullUtil, StringMaker, StringUtil;


{AB:CODE}

procedure TStartIntermissionPaintable.InitFields;
begin
  Self.fontDebugFactory := TFontDebugFactory.getInstance();
  Self.basicSetColorUtil := TBasicColorSetUtil.getInstance();
  
  
  
  
  
  Self.updateMyFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.myFontProcessor := Self.updateMyFontProcessor;
  Self.basicColor := TBasicColorFactory.getInstance().BLACK;
  
  Self.lineYOffsetArray := TNullUtil.getInstance().NULL_INT_ARRAY;
  Self.hasChanged := True;
  Self.anchor := TAnchor.TOP_LEFT;
  
  Self.BEGIN_LEVEL := 'Begin Level ';
  Self.EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
end;

function TStartIntermissionPaintable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStartIntermissionPaintable.Create(gameCanvas: TAllBinaryGameCanvas; stringArray: TArray<string>; basicColor_: TBasicColor; font_: TFont);
begin
    inherited Create;
    InitFields;
        Self.gameCanvas := gameCanvas;
        Self.stringArray := stringArray;
        Self.lastWidth := TJava.NewArray<Integer>(System.Length(Self.stringArray));
        Self.setBasicColorP(basicColor_);
        Self.color := basicColor_.intValue();
        Self.fontSize := font_.getSize();
        Self.font := font_;
end;
    

procedure TStartIntermissionPaintable.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.fontHeightP := font_.getHeight();
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TStartIntermissionPaintable.paint(graphics_: TGraphics);
var
  existingFont: TFont;
  displayInfo: TDisplayInfoSingleton;
  beginWidth: Integer;
  index: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        existingFont := graphics_.getFont();
        Self.fontDebugFactory.setFont(Self.font, graphics_);
        displayInfo := TDisplayInfoSingleton.getInstance();
        Self.basicSetColorUtil.setBasicColorP3(graphics_, Self.basicColor, Self.color);
        
        for index := (System.Length(Self.lineYOffsetArray)) - (1) downto 0 do begin
            if Self.hasChanged then begin
                Self.lastWidth[index] := (TJava.SignedRightShift(graphics_.getFont().stringWidth(Self.stringArray[index]), 1));
            end;
            beginWidth := Self.lastWidth[index];
            graphics_.drawString(Self.stringArray[index], (displayInfo.getLastHalfWidth()) - (beginWidth), (displayInfo.getLastHalfHeight()) - (Self.lineYOffsetArray[index]), Self.anchor);
        end;
        Self.hasChanged := False;
        Self.fontDebugFactory.setFont(existingFont, graphics_);
end;
    

procedure TStartIntermissionPaintable.update;
var
  level: Integer;
  index: Integer;
begin
        level := Self.gameCanvas.getLayerManager().getGameInfo().getCurrentLevel();
        Self.stringArray[0] := TStringMaker.Create().append(Self.BEGIN_LEVEL).appendint(level).toString();
        for index := (System.Length(Self.stringArray)) - (1) downto 1 do begin
            Self.stringArray[index] := Self.EMPTY_STRING;
        end;
end;
    

procedure TStartIntermissionPaintable.setBasicColorP(basicColor_: TBasicColor);
begin
        Self.basicColor := basicColor_;
end;
    

function TStartIntermissionPaintable.getBasicColorP: TBasicColor;
begin
        Exit(Self.basicColor);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

