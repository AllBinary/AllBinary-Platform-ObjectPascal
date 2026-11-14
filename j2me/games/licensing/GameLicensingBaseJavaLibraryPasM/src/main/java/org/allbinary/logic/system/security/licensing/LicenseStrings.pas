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
// package org.allbinary.logic.system.security.licensing
unit LicenseStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TLicenseStrings = class(TObject)
  public
    LOCKED: string;
    class var instance: TLicenseStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TLicenseStrings; static;
  end;

implementation

{AB:CODE}

procedure TLicenseStrings.InitFields;
begin
  Self.LOCKED := 'Demo Locked Feature';
end;

constructor TLicenseStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TLicenseStrings.getInstance: TLicenseStrings;
begin
        Exit(TLicenseStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TLicenseStrings.instance := TLicenseStrings.Create();
  {AB:END}

end.

