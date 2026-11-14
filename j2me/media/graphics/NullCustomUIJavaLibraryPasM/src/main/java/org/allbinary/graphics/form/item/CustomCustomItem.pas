// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
unit CustomCustomItem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, MyFontProcessor, UpdateMyFontInterface, ABCustomItem;

type
  {AB:TYPES}
  TCustomCustomItem = class(TABCustomItem, IUpdateMyFontInterface)
  public
    updateMyFontProcessor: TMyFontProcessor;
    myFontProcessor: TMyFontProcessor;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(label_: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
  end;

implementation
uses
  UpdateMyFontProcessor;


{AB:CODE}

procedure TCustomCustomItem.InitFields;
begin
  Self.updateMyFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.myFontProcessor := Self.updateMyFontProcessor;
end;

function TCustomCustomItem.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCustomCustomItem.Create(label_: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(label_, backgroundBasicColor, foregroundBasicColor);
        InitFields;
end;
    

procedure TCustomCustomItem.updateMeasurement(graphics_: TGraphics);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

