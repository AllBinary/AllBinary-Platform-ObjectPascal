// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
unit PoolTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PoolType;

type
  {AB:TYPES}
  TPoolTypeFactory = class(TObject)
  public
    VECTOR_POOL: TPoolType;
    class var instance: TPoolTypeFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TPoolTypeFactory; static;
  end;

implementation
uses
  CacheTypeFactory;


{AB:CODE}

procedure TPoolTypeFactory.InitFields;
begin
  Self.VECTOR_POOL := TPoolType.Create(TCacheTypeFactory.getInstance().NO_CACHE);
end;

constructor TPoolTypeFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TPoolTypeFactory.getInstance: TPoolTypeFactory;
begin
        Exit(TPoolTypeFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TPoolTypeFactory.instance := TPoolTypeFactory.Create();
  {AB:END}

end.

