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
unit AboutPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, DisplayInfoSingleton, MyFontProcessor, UpdateMyFontInterface, Paintable;

type
  {AB:TYPES}
  // J2SEForJ2ME
  TAboutPaintable = class(TPaintable, IUpdateMyFontInterface)
  public
    displayInfoSingleton: TDisplayInfoSingleton;
    ABOUT: string;
    info: TArray<string>;
    developers: TArray<string>;
    paintableArray: TArray<TPaintable>;
    myFontProcessor: TMyFontProcessor;
    charHeight: Integer;
    aboutBeginWidth: Integer;
    infoBeginWidth: TArray<Integer>;
    developersBeginWidth: TArray<Integer>;
    anchor: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        class function getInstance(info: TArray<string>; developers: TArray<string>): TAboutPaintable; static;
        constructor Create(info: TArray<string>; developers: TArray<string>);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        function getPaintableArrayInstance: TArray<TPaintable>; virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  Font, Anchor, CanvasStrings, UpdateMyFontProcessor;


{AB:CODE}

procedure TAboutPaintable.InitFields;
begin
  Self.displayInfoSingleton := TDisplayInfoSingleton.getInstance();
  Self.ABOUT := TCanvasStrings.getInstance().ABOUT;
  
  
  Self.paintableArray := TArray<TPaintable>.Create(Self);
  Self.myFontProcessor := TUpdateMyFontProcessor.Create(Self);
  
  
  
  
  Self.anchor := TAnchor.TOP_LEFT;
end;

function TAboutPaintable.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TAboutPaintable.getInstance(info: TArray<string>; developers: TArray<string>): TAboutPaintable;
begin
        Exit(TAboutPaintable.Create(info, developers));
end;
    

constructor TAboutPaintable.Create(info: TArray<string>; developers: TArray<string>);
begin
    inherited Create;
    InitFields;
        Self.info := info;
        Self.infoBeginWidth := TJava.NewArray<Integer>(System.Length(Self.info));
        Self.developers := developers;
        Self.developersBeginWidth := TJava.NewArray<Integer>(System.Length(Self.developers));
end;
    

procedure TAboutPaintable.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
  infoSize: Integer;
  index: Integer;
  size: Integer;
begin
        font_ := graphics_.getFont();
        Self.charHeight := font_.getHeight();
        Self.aboutBeginWidth := (TJava.SignedRightShift(font_.stringWidth(Self.ABOUT), 1));
        infoSize := System.Length(Self.info);
        for index := 0 to infoSize - 1 do begin
            Self.infoBeginWidth[index] := (TJava.SignedRightShift(font_.stringWidth(Self.info[index]), 1));
        end;
        size := System.Length(Self.developers);
        for index := 0 to size - 1 do begin
            Self.developersBeginWidth[index] := (TJava.SignedRightShift(font_.stringWidth(Self.developers[index]), 1));
        end;
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

function TAboutPaintable.getPaintableArrayInstance: TArray<TPaintable>;
begin
        Exit(Self.paintableArray);
end;
    

procedure TAboutPaintable.paint(graphics_: TGraphics);
var
  halfWidth: Integer;
  infoSize: Integer;
  index: Integer;
  size: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        halfWidth := Self.displayInfoSingleton.getLastHalfWidth();
        graphics_.drawString(Self.ABOUT, (halfWidth) - (Self.aboutBeginWidth), (2) * (Self.charHeight), Self.anchor);
        infoSize := System.Length(Self.info);
        for index := 0 to infoSize - 1 do begin
            graphics_.drawString(Self.info[index], (halfWidth) - (Self.infoBeginWidth[index]), (((4) + (index))) * (Self.charHeight), Self.anchor);
        end;
        size := System.Length(Self.developers);
        for index := 0 to size - 1 do begin
            graphics_.drawString(Self.developers[index], (halfWidth) - (Self.developersBeginWidth[index]), ((((5) + (infoSize)) + (index))) * (Self.charHeight), Self.anchor);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

