// Generated Code Do Not Modify
// package org.allbinary.graphics.form
unit ScreenInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TScreenInfo = class(TObject)
  public
    SMALL_WIDTH: Integer;
    SMALL_HEIGHT: Integer;
    MEDIUM_WIDTH: Integer;
    MEDIUM_HEIGHT: Integer;
    class var instance: TScreenInfo;
    procedure InitFields;
    constructor Create;
        class function getInstance: TScreenInfo; static;
  end;

implementation

{AB:CODE}

procedure TScreenInfo.InitFields;
begin
  Self.SMALL_WIDTH := 320;
  Self.SMALL_HEIGHT := 240;
  Self.MEDIUM_WIDTH := 800;
  Self.MEDIUM_HEIGHT := 600;
end;

constructor TScreenInfo.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TScreenInfo.getInstance: TScreenInfo;
begin
        Exit(TScreenInfo.instance);
end;

initialization
  {AB:INITIALIZATION}
  TScreenInfo.instance := TScreenInfo.Create();
  {AB:END}

end.

