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
// package org.allbinary.logic.system.hardware.linux
unit LinuxHardware;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HardwareInterface, BridgeInterface, CpuInterface, EthernetInterface, FireWireInterface, HardDriveControllerInterface, HardDriveInterface, HardwareComponentInterface, MachineAccessControlAddressInterface, MediaInterface, MonitorInterface, UsbInterface, VideoInterface, ABHashtable;

type
  {AB:TYPES}
  TLinuxHardware = class(TInterfacedObject, IHardwareInterface)
  public
    function JavaObject: TObject;
        constructor Create;
        function getMultimedia(index: Integer): IMediaInterface; virtual;
        function getBridge(index: Integer): IBridgeInterface; virtual;
        function getCpu(index: Integer): ICpuInterface; virtual;
        function getEthernet(index: Integer): IEthernetInterface; virtual;
        function getFireWire(index: Integer): IFireWireInterface; virtual;
        function getHardDriveController(index: Integer): IHardDriveControllerInterface; virtual;
        function getHardDrive(index: Integer): IHardDriveInterface; virtual;
        function getMachineAccessControlAddress(index: Integer): IMachineAccessControlAddressInterface; virtual;
        function getMonitor(index: Integer): IMonitorInterface; virtual;
        function getUsb(index: Integer): IUsbInterface; virtual;
        function getVideo(index: Integer): IVideoInterface; virtual;
        function getComponent(index: Integer): IHardwareComponentInterface; virtual;
        function toString: string; virtual;
        function compareTo(hardwareInterface_: IHardwareInterface): Boolean; virtual;
        function difference(hardwareInterface_: IHardwareInterface): TABHashtable<TObject, TObject>; virtual;
        function isNextHardware(nextLine: string): Boolean; virtual;
  end;

implementation
uses
  StdUtil, StringUtil;


{AB:CODE}

function TLinuxHardware.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TLinuxHardware.Create;
begin
    inherited Create;
end;
    

function TLinuxHardware.getMultimedia(index: Integer): IMediaInterface;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TLinuxHardware.getBridge(index: Integer): IBridgeInterface;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TLinuxHardware.getCpu(index: Integer): ICpuInterface;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TLinuxHardware.getEthernet(index: Integer): IEthernetInterface;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TLinuxHardware.getFireWire(index: Integer): IFireWireInterface;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TLinuxHardware.getHardDriveController(index: Integer): IHardDriveControllerInterface;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TLinuxHardware.getHardDrive(index: Integer): IHardDriveInterface;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TLinuxHardware.getMachineAccessControlAddress(index: Integer): IMachineAccessControlAddressInterface;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TLinuxHardware.getMonitor(index: Integer): IMonitorInterface;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TLinuxHardware.getUsb(index: Integer): IUsbInterface;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TLinuxHardware.getVideo(index: Integer): IVideoInterface;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TLinuxHardware.getComponent(index: Integer): IHardwareComponentInterface;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TLinuxHardware.toString: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

function TLinuxHardware.compareTo(hardwareInterface_: IHardwareInterface): Boolean;
begin
        Exit(True);
end;
    

function TLinuxHardware.difference(hardwareInterface_: IHardwareInterface): TABHashtable<TObject, TObject>;
begin
        Exit(TStdUtil.getInstance().NULL_TABLE);
end;
    

function TLinuxHardware.isNextHardware(nextLine: string): Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

