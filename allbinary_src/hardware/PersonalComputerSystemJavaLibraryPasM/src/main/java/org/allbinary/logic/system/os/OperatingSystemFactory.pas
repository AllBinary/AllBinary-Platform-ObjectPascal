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
// package org.allbinary.logic.system.os
unit OperatingSystemFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, GenericOperatingSystem;

type
  {AB:TYPES}
  TOperatingSystemFactory = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    genericOperatingSystem: TGenericOperatingSystem;
    hasDetected: Boolean;
    class var instance: TOperatingSystemFactory;
    procedure InitFields;
        class function getInstance: TOperatingSystemFactory; static;
        constructor Create;
        function getOperatingSystemInstance: TGenericOperatingSystem; virtual;
  end;

implementation
uses
  NoOperatingSystem, OperatingSystems, SystemProperties, Log, LogFactory, LogConfigTypeFactory, LogConfigTypes, StringMaker, StringUtil, LinuxOperatingSystemFactory, SolarisOperatingSystemFactory, WindowsOperatingSystemFactory;


{AB:CODE}

procedure TOperatingSystemFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.genericOperatingSystem := TNoOperatingSystem.NO_OPERATING_SYSTEM;
  Self.hasDetected := False;
end;
    

class function TOperatingSystemFactory.getInstance: TOperatingSystemFactory;
begin
        Exit(TOperatingSystemFactory.instance);
end;
    

constructor TOperatingSystemFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TOperatingSystemFactory.getOperatingSystemInstance: TGenericOperatingSystem;
var
  operatingSystems_: TOperatingSystems;
  systemProperties_: TSystemProperties;
  osName: string;
  osArch: string;
  osVersion: string;
  log_: TLog;
begin
    TJava.MonitorEnter(Self);
    try
        try
            operatingSystems_ := TOperatingSystems.getInstance();
            systemProperties_ := TSystemProperties.getInstance();
            osName := systemProperties_.getName();
            osArch := systemProperties_.getArch();
            osVersion := systemProperties_.getVersion();
            if not (Self.hasDetected) then begin
                Self.logUtil.putF('osName: ' + osName, TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
                Self.hasDetected := True;
                if ((Pos(TJava.ToString(operatingSystems_.LINUX), osName) - 1)) >= (0) then begin
                    if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().FACTORYERROR) then begin
                        Self.logUtil.putF('Found a Linux OS', TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
                    end;
                    Self.genericOperatingSystem := TLinuxOperatingSystemFactory.getInstance().getOperatingSystemInstance();
                end else if ((Pos(TJava.ToString(operatingSystems_.WINDOWS), osName) - 1)) >= (0) then begin
                    if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().FACTORYERROR) then begin
                        Self.logUtil.putF('Found a Windows OS', TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
                    end;
                    Self.genericOperatingSystem := TWindowsOperatingSystemFactory.getInstance().getOperatingSystemInstance();
                end else if ((Pos(TJava.ToString(operatingSystems_.SOLARIS), osName) - 1)) >= (0) then begin
                    if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().FACTORYERROR) then begin
                        Self.logUtil.putF('Found a Solaris OS', TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
                    end;
                    Self.genericOperatingSystem := TSolarisOperatingSystemFactory.getInstance().getOperatingSystemInstance();
                end else begin
                    raise SysUtils.Exception.Create(TStringMaker.Create().append('OS Not Supported: ').append(osName).toString());
                end;
                log_ := TLogFactory.getInstanceF(TStringMaker.Create().append('OperatingSystem Info: ').append(TStringUtil.getInstance().toString(Self.genericOperatingSystem)).toString(), TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
                WriteLn(log_.toString());
                Self.logUtil.putL(log_);
            end;
            Exit(Self.genericOperatingSystem);
        except
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().FACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.GET_INSTANCE, TJava.Box(e));
            end;
            Exit(TNoOperatingSystem.NO_OPERATING_SYSTEM);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TOperatingSystemFactory.instance := TOperatingSystemFactory.Create();
  {AB:END}

end.

