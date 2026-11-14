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
unit KeyValueDrawString;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, MyFontProcessor, UpdateMyFontInterface;

type
  {AB:TYPES}
  TKeyValueDrawString = class(TInterfacedObject, IUpdateMyFontInterface)
  public
    myFontProcessor: TMyFontProcessor;
    LABEL_: string;
    labelX: Integer;
    valueX: Integer;
    value: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(label_: string; x: Integer);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure paint(graphics_: TGraphics; y: Integer); virtual;
        procedure update(value: string); virtual;
  end;

implementation
uses
  UpdateMyFontProcessor, StringUtil;


{AB:CODE}

procedure TKeyValueDrawString.InitFields;
begin
  Self.myFontProcessor := TUpdateMyFontProcessor.Create(Self);
  
  
  
  Self.value := TStringUtil.getInstance().EMPTY_STRING;
end;

function TKeyValueDrawString.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TKeyValueDrawString.Create(label_: string; x: Integer);
begin
    inherited Create;
    InitFields;
        Self.LABEL_ := label_;
        Self.labelX := x;
end;
    

procedure TKeyValueDrawString.updateMeasurement(graphics_: TGraphics);
var
  labelWidth: Integer;
begin
        labelWidth := (graphics_.getFont().stringWidth(Self.LABEL_)) - (System.Length(Self.LABEL_));
        Self.valueX := (labelWidth) + (Self.labelX);
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TKeyValueDrawString.paint(graphics_: TGraphics; y: Integer);
begin
        Self.myFontProcessor.process(graphics_);
        graphics_.drawString(Self.LABEL_, Self.labelX, y, 0);
        graphics_.drawString(Self.value, Self.valueX, y, 0);
end;
    

procedure TKeyValueDrawString.update(value: string);
begin
        Self.value := value;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

