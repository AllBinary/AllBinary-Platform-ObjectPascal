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
// package org.allbinary.business.init
unit LicenseInitInfoUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LicenseInitInfo;

type
  {AB:TYPES}
  TLicenseInitInfoUtil = class(TObject)
  public
    INITFILENAME: string;
    ABOUT: string;
    PRIVACY_POLICY: string;
    OFFICIAL_ALLBINARY_SERVICES_SERVER: string;
    class var instance: TLicenseInitInfoUtil;
    procedure InitFields;
        class function getInstance: TLicenseInitInfoUtil; static;
        procedure setFilePath(filePath: string); virtual;
        constructor Create;
        procedure write(initData: TLicenseInitInfo); virtual;
        function read: TLicenseInitInfo; virtual;
        function readAgain(initializeCounter: Integer): TLicenseInitInfo; virtual;
  end;

implementation

{AB:CODE}

procedure TLicenseInitInfoUtil.InitFields;
begin
  Self.INITFILENAME := 'licenseinitdata.dat';
  Self.ABOUT := 'about';
  Self.PRIVACY_POLICY := 'privacy_policy';
  Self.OFFICIAL_ALLBINARY_SERVICES_SERVER := 'https://services.allbinary.com/LicServ/serverssl.php';
end;
    

class function TLicenseInitInfoUtil.getInstance: TLicenseInitInfoUtil;
begin
        Exit(TLicenseInitInfoUtil.instance);
end;
    

procedure TLicenseInitInfoUtil.setFilePath(filePath: string);
begin
    TJava.MonitorEnter(Self);
    try
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

constructor TLicenseInitInfoUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TLicenseInitInfoUtil.write(initData: TLicenseInitInfo);
begin
    TJava.MonitorEnter(Self);
    try
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
function TLicenseInitInfoUtil.read: TLicenseInitInfo;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.readAgain(0));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
function TLicenseInitInfoUtil.readAgain(initializeCounter: Integer): TLicenseInitInfo;
var
  licenseInitInfo_: TLicenseInitInfo;
begin
    TJava.MonitorEnter(Self);
    try
        licenseInitInfo_ := TLicenseInitInfo.Create();
        licenseInitInfo_.clearServers();
        licenseInitInfo_.addServer(Self.OFFICIAL_ALLBINARY_SERVICES_SERVER);
        Exit(licenseInitInfo_);
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TLicenseInitInfoUtil.instance := TLicenseInitInfoUtil.Create();
  {AB:END}

end.

