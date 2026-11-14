// Generated Code Do Not Modify
// package org.allbinary.graphics.font
unit FontDebugBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Font, StringMaker;

type
  {AB:TYPES}
  // OpenGLNoneOther2JavaLibrary
  TFontDebugBase = class(TObject)
  public
    SET_FONT: string;
    class var instanceBase: TFontDebugBase;
    procedure InitFields;
    constructor Create;
        class function getInstance: TFontDebugBase; static;
        procedure debugMetrics(currentFont: TFont; convertedTextSize: Single; displayMetrics: TObject; stringBuffer: TStringMaker); virtual;
        procedure debugDpi(densityDpi: Integer; stringBuffer: TStringMaker); virtual;
        procedure debugDimension(currentFont: TFont; convertedTextSize: Single; longestDimensionTotalPixels: Integer; stringBuffer: TStringMaker); virtual;
  end;

implementation

{AB:CODE}

procedure TFontDebugBase.InitFields;
begin
  Self.SET_FONT := 'setFont';
end;

constructor TFontDebugBase.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TFontDebugBase.getInstance: TFontDebugBase;
begin
        Exit(TFontDebugBase.instanceBase);
end;
    

procedure TFontDebugBase.debugMetrics(currentFont: TFont; convertedTextSize: Single; displayMetrics: TObject; stringBuffer: TStringMaker);
begin
end;
    

procedure TFontDebugBase.debugDpi(densityDpi: Integer; stringBuffer: TStringMaker);
begin
end;
    

procedure TFontDebugBase.debugDimension(currentFont: TFont; convertedTextSize: Single; longestDimensionTotalPixels: Integer; stringBuffer: TStringMaker);
begin
end;

initialization
  {AB:INITIALIZATION}
  TFontDebugBase.instanceBase := TFontDebugBase.Create();
  {AB:END}

end.

