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
// package org.allbinary.graphics.draw
unit CanvasDrawLineString;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, MyFontProcessor, UpdateMyFontInterface, DrawStringUtil;

type
  {AB:TYPES}
  TCanvasDrawLineString = class(TInterfacedObject, IUpdateMyFontInterface)
  public
    drawStringUtil: TDrawStringUtil;
    myFontProcessor: TMyFontProcessor;
    x: Integer;
    y: Integer;
    fontHeight: Integer;
    class var NULL_CANVAS_DRAW_LINE_STRING: TCanvasDrawLineString;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(x: Integer; y: Integer);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure paint(graphics_: TGraphics; string_: string; line: Integer); virtual;
  end;

implementation
uses
  Font, UpdateMyFontProcessor;


{AB:CODE}

procedure TCanvasDrawLineString.InitFields;
begin
  Self.drawStringUtil := TDrawStringUtil.getInstance();
  Self.myFontProcessor := TUpdateMyFontProcessor.Create(Self);
  
  
  Self.fontHeight := 0;
end;

function TCanvasDrawLineString.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCanvasDrawLineString.Create(x: Integer; y: Integer);
begin
    inherited Create;
    InitFields;
        Self.x := x;
        Self.y := y;
end;
    

procedure TCanvasDrawLineString.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.fontHeight := font_.getHeight();
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TCanvasDrawLineString.paint(graphics_: TGraphics; string_: string; line: Integer);
begin
        Self.myFontProcessor.process(graphics_);
        Self.drawStringUtil.drawCenterString(graphics_, string_, 0, System.Length(string_), Self.x, (Self.y) + (((line) * (Self.fontHeight))));
end;

initialization
  {AB:INITIALIZATION}
  TCanvasDrawLineString.NULL_CANVAS_DRAW_LINE_STRING := TCanvasDrawLineString.Create(0, 0);
  {AB:END}

end.

