// Generated Code Do Not Modify
// package org.bouncycastle.jce.provider
unit BouncyCastleProvider;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TBouncyCastleProvider = class(TProvider)
  public
    class var info: string;
    class var PROVIDER_NAME: string;
        constructor Create;
        procedure setParameter(parameterName: string; parameter: TObject); virtual;
  end;

implementation

{AB:CODE}
    

constructor TBouncyCastleProvider.Create;
begin
        inherited Create(TBouncyCastleProvider.PROVIDER_NAME, 1.41, TBouncyCastleProvider.info);
end;
    

procedure TBouncyCastleProvider.setParameter(parameterName: string; parameter: TObject);
begin
end;

initialization
  {AB:INITIALIZATION}
  TBouncyCastleProvider.info := 'BouncyCastle Security Provider v1.41';
  TBouncyCastleProvider.PROVIDER_NAME := 'BC';
  {AB:END}

end.

