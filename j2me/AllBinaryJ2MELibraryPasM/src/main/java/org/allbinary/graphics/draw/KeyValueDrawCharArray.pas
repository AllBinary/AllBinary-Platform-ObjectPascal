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
unit KeyValueDrawCharArray;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, MyFontProcessor, UpdateMyFontInterface;

type
  {AB:TYPES}
  TKeyValueDrawCharArray = class(TInterfacedObject, IUpdateMyFontInterface)
  public
    myFontProcessor: TMyFontProcessor;
    LABEL_: string;
    labelX: Integer;
    valueX: Integer;
    value: TArray<WideChar>;
    len: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(label_: string; x: Integer);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure paint(graphics_: TGraphics; y: Integer); virtual;
        procedure update(value: TArray<WideChar>; len: Integer); virtual;
  end;

implementation
uses
  CharArrayFactory, UpdateMyFontProcessor;


{AB:CODE}

procedure TKeyValueDrawCharArray.InitFields;
begin
  Self.myFontProcessor := TUpdateMyFontProcessor.Create(Self);
  
  
  
  Self.value := TCharArrayFactory.getInstance().getZeroCharArray();
  
end;

function TKeyValueDrawCharArray.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TKeyValueDrawCharArray.Create(label_: string; x: Integer);
begin
    inherited Create;
    InitFields;
        Self.LABEL_ := label_;
        Self.labelX := x;
end;
    

procedure TKeyValueDrawCharArray.updateMeasurement(graphics_: TGraphics);
var
  labelWidth: Integer;
begin
        labelWidth := (graphics_.getFont().stringWidth(Self.LABEL_)) - (System.Length(Self.LABEL_));
        Self.valueX := (labelWidth) + (Self.labelX);
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TKeyValueDrawCharArray.paint(graphics_: TGraphics; y: Integer);
begin
        Self.myFontProcessor.process(graphics_);
        graphics_.drawString(Self.LABEL_, Self.labelX, y, 0);
        graphics_.drawChars(Self.value, 0, Self.len, Self.valueX, y, 0);
end;
    

procedure TKeyValueDrawCharArray.update(value: TArray<WideChar>; len: Integer);
begin
        Self.value := value;
        Self.len := len;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

