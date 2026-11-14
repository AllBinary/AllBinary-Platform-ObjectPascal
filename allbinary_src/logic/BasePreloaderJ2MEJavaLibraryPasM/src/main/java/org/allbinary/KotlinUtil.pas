// Generated Code Do Not Modify
// package org.allbinary
unit KotlinUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TKotlinUtil = class(TObject)
  public
    constructor Create;
        class function isKotlin: Boolean; static;
        class function getShortName: string; static;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

constructor TKotlinUtil.Create;
begin
  inherited Create;
end;
    

class function TKotlinUtil.isKotlin: Boolean;
begin
        Exit(False);
end;
    

class function TKotlinUtil.getShortName: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

