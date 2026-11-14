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
// package org.allbinary.logic.system.security.licensing.registration
unit RegistrationConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TRegistrationConfiguration = class(TObject)
  public
    registrationCode: string;
    NAME: string;
    class var SINGLETON: TRegistrationConfiguration;
    procedure InitFields;
        constructor Create;
        class function getInstance: TRegistrationConfiguration; static;
        procedure read;
        procedure write; virtual;
        function toString: string; virtual;
        procedure setRegistrationCode(registrationCode: string); virtual;
        function getRegistrationCode: string; virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TRegistrationConfiguration.InitFields;
begin
  Self.registrationCode := 'No Registration Code';
  Self.NAME := 'registrationid';
end;
    

constructor TRegistrationConfiguration.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TRegistrationConfiguration.getInstance: TRegistrationConfiguration;
begin
        Exit(TRegistrationConfiguration.SINGLETON);
end;
    

// throws Exception
procedure TRegistrationConfiguration.read;
begin
end;
    

// throws Exception
procedure TRegistrationConfiguration.write;
begin
end;
    

function TRegistrationConfiguration.toString: string;
begin
        Exit(TStringMaker.Create().append('Registration Code: ').append(Self.getRegistrationCode()).toString());
end;
    

procedure TRegistrationConfiguration.setRegistrationCode(registrationCode: string);
begin
        Self.registrationCode := registrationCode;
end;
    

function TRegistrationConfiguration.getRegistrationCode: string;
begin
        Exit(Self.registrationCode);
end;

initialization
  {AB:INITIALIZATION}
  TRegistrationConfiguration.SINGLETON := TRegistrationConfiguration.Create();
  {AB:END}

end.

