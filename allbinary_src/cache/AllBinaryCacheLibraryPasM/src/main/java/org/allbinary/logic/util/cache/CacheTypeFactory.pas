// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
unit CacheTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CacheType;

type
  {AB:TYPES}
  TCacheTypeFactory = class(TObject)
  public
    NO_CACHE: TCacheType;
    CACHE: TCacheType;
    SET_: TCacheType;
    CACHE_VECTOR: TCacheType;
    class var instance: TCacheTypeFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCacheTypeFactory; static;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure TCacheTypeFactory.InitFields;
begin
  Self.NO_CACHE := TCacheType.Create(TStringUtil.getInstance().EMPTY_STRING, TStringUtil.getInstance().EMPTY_STRING);
  Self.CACHE := TCacheType.Create(TStringUtil.getInstance().EMPTY_STRING, TStringUtil.getInstance().EMPTY_STRING);
  Self.SET_ := TCacheType.Create(TStringUtil.getInstance().EMPTY_STRING, 'Set');
  Self.CACHE_VECTOR := TCacheType.Create(TStringUtil.getInstance().EMPTY_STRING, TStringUtil.getInstance().EMPTY_STRING);
end;

constructor TCacheTypeFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCacheTypeFactory.getInstance: TCacheTypeFactory;
begin
        Exit(TCacheTypeFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TCacheTypeFactory.instance := TCacheTypeFactory.Create();
  {AB:END}

end.

