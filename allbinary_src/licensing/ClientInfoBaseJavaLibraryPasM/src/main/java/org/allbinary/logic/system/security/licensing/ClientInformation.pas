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
unit ClientInformation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TsUtil, GenericOperatingSystem, BasicArrayList, ABHashtable, AbeClientInformationInterface;

type
  {AB:TYPES}
  //  This is the information sent to the license server
  TClientInformation = class(TInterfacedObject, IAbeClientInformationInterface)
  public
    operatingSystemInterface: TGenericOperatingSystem;
    tsUtil: TTsUtil;
    name: string;
    shortName: string;
    version: string;
    specialName: string;
    hardSale: Boolean;
    licenseId: string;
    licenseServers: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(name: string; version: string; specialName: string; shortName: string);
        procedure init; virtual;
        function getOperatingSystemInterface: TGenericOperatingSystem; virtual;
        function getName: string; virtual;
        function getSpecialName: string; virtual;
        function getVersion: string; virtual;
        function getLicenseId: string; virtual;
        function getLicenseServers: TBasicArrayList; virtual;
        function getLicenseServer(index: Integer): string; virtual;
        function getNumberOfLicenseServers: Integer; virtual;
        function toHashtable: TABHashtable<TObject, TObject>; virtual;
        function isSameId(alicenseId: string): Boolean; virtual;
        function isLargerOrDifferentServerList(list: TBasicArrayList): Boolean; virtual;
        procedure setHardSale(hardSale: Boolean); virtual;
        function isHardSale: Boolean; virtual;
        procedure setOperatingSystemInterface(operatingSystemInterface: TGenericOperatingSystem); virtual;
        procedure setLicenseId(licenseId: string); virtual;
        procedure setLicenseServers(licenseServers: TBasicArrayList); virtual;
        function toShortString: string; virtual;
  end;

implementation
uses
  AbeClientInformationData, StringMaker, StringUtil, HardwareInterface, SystemHardwareFactory, NoOperatingSystem, CommonSeps, BasicArrayListUtil, StdUtil;


{AB:CODE}

procedure TClientInformation.InitFields;
begin
  Self.operatingSystemInterface := TNoOperatingSystem.NO_OPERATING_SYSTEM;
  Self.tsUtil := TTsUtil.getInstance();
  
  
  
  
  Self.hardSale := True;
  Self.licenseId := TStringUtil.getInstance().EMPTY_STRING;
  Self.licenseServers := TBasicArrayListUtil.getInstance().getImmutableInstance();
end;

function TClientInformation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TClientInformation.Create(name: string; version: string; specialName: string; shortName: string);
begin
    inherited Create;
    InitFields;
        Self.name := name;
        Self.version := version;
        Self.specialName := specialName;
        Self.shortName := TStringMaker.Create().append(shortName).append(TCommonSeps.getInstance().UNDERSCORE).append(version).toString();
        Self.init();
end;
    

procedure TClientInformation.init;
begin
end;
    

function TClientInformation.getOperatingSystemInterface: TGenericOperatingSystem;
begin
        Exit(Self.operatingSystemInterface);
end;
    

function TClientInformation.getName: string;
begin
        Exit(Self.name);
end;
    

function TClientInformation.getSpecialName: string;
begin
        Exit(Self.specialName);
end;
    

function TClientInformation.getVersion: string;
begin
        Exit(Self.version);
end;
    

function TClientInformation.getLicenseId: string;
begin
        Exit(Self.licenseId);
end;
    

function TClientInformation.getLicenseServers: TBasicArrayList;
begin
        Exit(Self.licenseServers);
end;
    

function TClientInformation.getLicenseServer(index: Integer): string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.licenseServers.objectArray[index])));
end;
    

function TClientInformation.getNumberOfLicenseServers: Integer;
begin
        Exit(Self.licenseServers.size());
end;
    

function TClientInformation.toHashtable: TABHashtable<TObject, TObject>;
var
  abeClientInformationData_: TAbeClientInformationData;
  genericOperatingSystem_: TGenericOperatingSystem;
  clientInfoHashtable: TABHashtable<TObject, TObject>;
  hardwareInterface_: IHardwareInterface;
  hardwareString: string;
begin
        abeClientInformationData_ := TAbeClientInformationData.getInstance();
        genericOperatingSystem_ := Self.getOperatingSystemInterface();
        clientInfoHashtable := TStdUtil.getInstance().createHashtable();
        clientInfoHashtable.put(TJava.Box(abeClientInformationData_.NAME), TJava.Box(Self.name));
        clientInfoHashtable.put(TJava.Box(abeClientInformationData_.VERSION), TJava.Box(Self.version));
        clientInfoHashtable.put(TJava.Box(abeClientInformationData_.SPECIALNAME), TJava.Box(Self.specialName));
        clientInfoHashtable.put(TJava.Box(abeClientInformationData_.LICENSEID), TJava.Box(Self.getLicenseId()));
        clientInfoHashtable.put(TJava.Box(abeClientInformationData_.OSNAME), TJava.Box(genericOperatingSystem_.getName()));
        clientInfoHashtable.put(TJava.Box(abeClientInformationData_.OSARCH), TJava.Box(genericOperatingSystem_.getArch()));
        clientInfoHashtable.put(TJava.Box(abeClientInformationData_.OSVERSION), TJava.Box(genericOperatingSystem_.getVersion()));
        clientInfoHashtable.put(TJava.Box(abeClientInformationData_.OS), TJava.Box(genericOperatingSystem_.toString()));
        hardwareInterface_ := TSystemHardwareFactory.getInstance().getInstance(genericOperatingSystem_);
        hardwareString := TJava.ToString(TJava.ToObject(hardwareInterface_));
        clientInfoHashtable.put(TJava.Box(abeClientInformationData_.HARDWARE), TJava.Box(hardwareString));
        Exit(clientInfoHashtable);
end;
    

function TClientInformation.isSameId(alicenseId: string): Boolean;
begin
        if (Self.tsUtil.compareTo(Self.getLicenseId(), alicenseId)) = (0) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TClientInformation.isLargerOrDifferentServerList(list: TBasicArrayList): Boolean;
var
  size: Integer;
  currentSize: Integer;
  newServerName: string;
  nextOldServerName: string;
  index2: Integer;
  index: Integer;
begin
        size := (list.size()) - (1);
        currentSize := (Self.licenseServers.size()) - (1);
        if (size) > (currentSize) then begin
            Exit(True);
        end;
        for index := size downto 0 do begin
            newServerName := TJava.UnboxString(TJava.ToObject(list.objectArray[index]));
            for index2 := currentSize downto 0 do begin
                nextOldServerName := TJava.UnboxString(TJava.ToObject(Self.licenseServers.objectArray[index]));
                if (Self.tsUtil.compareTo(newServerName, nextOldServerName)) <> (0) then begin
                    Exit(True);
                end;
            end;
        end;
        Exit(False);
end;
    

procedure TClientInformation.setHardSale(hardSale: Boolean);
begin
        Self.hardSale := hardSale;
end;
    

function TClientInformation.isHardSale: Boolean;
begin
        Exit(Self.hardSale);
end;
    

procedure TClientInformation.setOperatingSystemInterface(operatingSystemInterface: TGenericOperatingSystem);
begin
        Self.operatingSystemInterface := operatingSystemInterface;
end;
    

procedure TClientInformation.setLicenseId(licenseId: string);
begin
        Self.licenseId := licenseId;
end;
    

procedure TClientInformation.setLicenseServers(licenseServers: TBasicArrayList);
begin
        Self.licenseServers := licenseServers;
end;
    

function TClientInformation.toShortString: string;
begin
        Exit(Self.shortName);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

