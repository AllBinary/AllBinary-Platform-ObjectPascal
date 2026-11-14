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
// package org.allbinary.game.paint.help
unit HelpPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, DisplayInfoSingleton, MyFontProcessor, UpdateMyFontInterface, Paintable;

type
  {AB:TYPES}
  THelpPaintable = class(TPaintable, IUpdateMyFontInterface)
  public
    displayInfo: TDisplayInfoSingleton;
    updateMyFontProcessor: TMyFontProcessor;
    myFontProcessor: TMyFontProcessor;
    anchor: Integer;
    title: string;
    inputInfo: TArray<string>;
    basicColor: TBasicColor;
    titleBeginWidth: Integer;
    beginWidthArray: TArray<Integer>;
    charHeight: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(title: string; backgroundBasicColor: TBasicColor; basicColor_: TBasicColor);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure setInputInfoP(inputInfo: TArray<string>); virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  Font, Anchor, UpdateMyFontProcessor, NullUtil, StringUtil;


{AB:CODE}

procedure THelpPaintable.InitFields;
begin
  Self.displayInfo := TDisplayInfoSingleton.getInstance();
  Self.updateMyFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.myFontProcessor := Self.updateMyFontProcessor;
  Self.anchor := TAnchor.TOP_LEFT;
  
  Self.inputInfo := TStringUtil.getInstance().getArrayInstance();
  
  
  Self.beginWidthArray := TNullUtil.getInstance().NULL_INT_ARRAY;
  
end;

function THelpPaintable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor THelpPaintable.Create(title: string; backgroundBasicColor: TBasicColor; basicColor_: TBasicColor);
begin
    inherited Create;
    InitFields;
        Self.title := title;
        Self.basicColor := basicColor_;
end;
    

procedure THelpPaintable.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
  size: Integer;
  index: Integer;
begin
        font_ := graphics_.getFont();
        Self.titleBeginWidth := (TJava.SignedRightShift(font_.stringWidth(Self.title), 1));
        Self.charHeight := font_.getHeight();
        size := System.Length(Self.inputInfo);
        for index := 0 to size - 1 do begin
            Self.beginWidthArray[index] := (TJava.SignedRightShift(font_.stringWidth(Self.inputInfo[index]), 1));
        end;
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure THelpPaintable.setInputInfoP(inputInfo: TArray<string>);
begin
        Self.inputInfo := inputInfo;
        Self.beginWidthArray := TJava.NewArray<Integer>(System.Length(Self.inputInfo));
        Self.myFontProcessor := Self.updateMyFontProcessor;
end;
    

procedure THelpPaintable.paint(graphics_: TGraphics);
var
  halfWidth: Integer;
  size: Integer;
  index: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        halfWidth := Self.displayInfo.getLastHalfWidth();
        graphics_.setColor(Self.basicColor.intValue());
        graphics_.drawString(Self.title, (halfWidth) - (Self.titleBeginWidth), Self.charHeight, Self.anchor);
        size := System.Length(Self.inputInfo);
        for index := 0 to size - 1 do begin
            graphics_.drawString(Self.inputInfo[index], (halfWidth) - (Self.beginWidthArray[index]), (((index) + (3))) * (Self.charHeight), Self.anchor);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

