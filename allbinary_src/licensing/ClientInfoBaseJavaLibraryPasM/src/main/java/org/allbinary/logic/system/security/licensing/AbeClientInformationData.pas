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
unit AbeClientInformationData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAbeClientInformationData = class(TObject)
  public
    KEY: string;
    NAME: string;
    VERSION: string;
    SPECIALNAME: string;
    LICENSEID: string;
    LICENSE_TYPE: string;
    PREVIOUSLICENSEID: string;
    OSNAME: string;
    OSARCH: string;
    OSVERSION: string;
    OS: string;
    HARDWARE: string;
    LICENSESERVERS: string;
    NEWLICENSE: string;
    ISNEW: string;
    SPECIAL: string;
    class var instance: TAbeClientInformationData;
    procedure InitFields;
        class function getInstance: TAbeClientInformationData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TAbeClientInformationData.InitFields;
begin
  Self.KEY := 'KEY';
  Self.NAME := 'NAME';
  Self.VERSION := 'VERSION';
  Self.SPECIALNAME := 'SPECIALNAME';
  Self.LICENSEID := 'LICENSEID';
  Self.LICENSE_TYPE := 'LICENSETYPE';
  Self.PREVIOUSLICENSEID := 'PREVIOUSLICENSEID';
  Self.OSNAME := 'OSNAME';
  Self.OSARCH := 'OSARCH';
  Self.OSVERSION := 'OSVERSION';
  Self.OS := 'OS';
  Self.HARDWARE := 'HARDWARE';
  Self.LICENSESERVERS := 'LICENSESERVERS';
  Self.NEWLICENSE := 'NEWLICENSE';
  Self.ISNEW := 'ISNEW';
  Self.SPECIAL := 'SPECIAL';
end;
    

class function TAbeClientInformationData.getInstance: TAbeClientInformationData;
begin
        Exit(TAbeClientInformationData.instance);
end;
    

constructor TAbeClientInformationData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TAbeClientInformationData.instance := TAbeClientInformationData.Create();
  {AB:END}

end.

