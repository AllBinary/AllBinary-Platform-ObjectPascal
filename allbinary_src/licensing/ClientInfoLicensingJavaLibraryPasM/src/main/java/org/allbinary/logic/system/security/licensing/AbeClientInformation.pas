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
unit AbeClientInformation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ClientInformation;

type
  {AB:TYPES}
  //  This is the information sent to the license server
  TAbeClientInformation = class(TClientInformation)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create(name: string; version: string; specialName: string; shortName: string);
        procedure init; override;
  end;

implementation
uses
  LicenseInitInfo, LicenseInitInfoUtil, PreLogUtil, StringMaker, OperatingSystemFactory, CommonStrings;


{AB:CODE}

procedure TAbeClientInformation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TAbeClientInformation.Create(name: string; version: string; specialName: string; shortName: string);
begin
        inherited Create(name, version, specialName, shortName);
        InitFields;
end;
    

procedure TAbeClientInformation.init;
var
  licenseInitInfo_: TLicenseInitInfo;
  stringValidationUtil_: TObject;
  NONE: string;
  commonStrings_: TCommonStrings;
  logUtil_: TLogUtil;
begin
        try
            Self.setOperatingSystemInterface(TOperatingSystemFactory.getInstance().getOperatingSystemInstance());
            licenseInitInfo_ := TLicenseInitInfoUtil.getInstance().read();
            Self.setLicenseId(licenseInitInfo_.getLicenseId());
            Self.setLicenseServers(licenseInitInfo_.getServerList());
            stringValidationUtil_ := nil;
            if (Self.getLicenseId() = '') then begin
                NONE := 'No License Id';
                Self.setLicenseId(NONE);
            end;
            commonStrings_ := TCommonStrings.getInstance();
            TPreLogUtil.put(TStringMaker.Create().append('Special Name: ').append(Self.getSpecialName()).toString(), TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
        except
            on e: SysUtils.Exception do begin
            logUtil_ := TLogUtil.getInstance();
            commonStrings_ := TCommonStrings.getInstance();
            logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.CONSTRUCTOR_, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

