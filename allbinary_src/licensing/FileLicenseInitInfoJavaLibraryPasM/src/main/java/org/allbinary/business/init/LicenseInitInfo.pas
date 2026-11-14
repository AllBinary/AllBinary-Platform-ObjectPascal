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
unit LicenseInitInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TLicenseInitInfo = class(TObject)
  public
    id: string;
    serverVector: TBasicArrayList;
    procedure InitFields;
        constructor Create;
        function getLicenseId: string; virtual;
        function getServer(index: Integer): string; virtual;
        function getNumberOfServers: Integer; virtual;
        procedure setLicenseId(value: string); virtual;
        procedure clearServers; virtual;
        procedure setServer(value: string; index: Integer); virtual;
        procedure addServer(value: string); virtual;
        function getServerList: TBasicArrayList; virtual;
        procedure setServerList(servers: TBasicArrayList); virtual;
  end;

implementation
uses
  DebugFactory, NoDebug, StringUtil, BasicArrayListD;


{AB:CODE}

procedure TLicenseInitInfo.InitFields;
begin
  Self.id := TStringUtil.getInstance().EMPTY_STRING;
  Self.serverVector := TBasicArrayListD.Create();
end;
    

constructor TLicenseInitInfo.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TLicenseInitInfo.getLicenseId: string;
begin
        Exit(Self.id);
end;
    

function TLicenseInitInfo.getServer(index: Integer): string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.serverVector.objectArray[index])));
end;
    

function TLicenseInitInfo.getNumberOfServers: Integer;
begin
        Exit(Self.serverVector.size());
end;
    

procedure TLicenseInitInfo.setLicenseId(value: string);
begin
        Self.id := value;
end;
    

procedure TLicenseInitInfo.clearServers;
begin
        Self.serverVector := TBasicArrayListD.Create();
end;
    

procedure TLicenseInitInfo.setServer(value: string; index: Integer);
begin
        Self.serverVector.addAt(index, TJava.Box(value));
end;
    

procedure TLicenseInitInfo.addServer(value: string);
begin
        Self.serverVector.add(TJava.Box(value));
end;
    

function TLicenseInitInfo.getServerList: TBasicArrayList;
begin
        Exit(Self.serverVector);
end;
    

procedure TLicenseInitInfo.setServerList(servers: TBasicArrayList);
begin
        if (TDebugFactory.getInstance()) = (TNoDebug.getInstance()) then begin
            Self.serverVector := servers;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

