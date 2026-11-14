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
// package org.allbinary.logic.system.os.windows
unit WindowsOperatingSystemFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, GenericOperatingSystem;

type
  {AB:TYPES}
  TWindowsOperatingSystemFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TWindowsOperatingSystemFactory;
    procedure InitFields;
        class function getInstance: TWindowsOperatingSystemFactory; static;
        constructor Create;
        function getOperatingSystemInstance: TGenericOperatingSystem; virtual;
  end;

implementation
uses
  WindowsOS, LogConfigTypeFactory, LogConfigTypes, NoOperatingSystem, OperatingSystems, SystemProperties, CommonStrings;


{AB:CODE}

procedure TWindowsOperatingSystemFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TWindowsOperatingSystemFactory.getInstance: TWindowsOperatingSystemFactory;
begin
        Exit(TWindowsOperatingSystemFactory.instance);
end;
    

constructor TWindowsOperatingSystemFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TWindowsOperatingSystemFactory.getOperatingSystemInstance: TGenericOperatingSystem;
var
  operatingSystems_: TOperatingSystems;
  osName: string;
  operatingSystemInterface: TGenericOperatingSystem;
  commonStrings_: TCommonStrings;
begin
        try
            operatingSystems_ := TOperatingSystems.getInstance();
            osName := TSystemProperties.getInstance().getName();
            
            if (CompareStr(osName, operatingSystems_.WINDOWS_NT)) = (0) then begin
                operatingSystemInterface := TWindowsOS.Create();
            end else if (CompareStr(osName, operatingSystems_.WINDOWS_10)) = (0) then begin
                operatingSystemInterface := TWindowsOS.Create();
            end else if (CompareStr(osName, operatingSystems_.WINDOWS_11)) = (0) then begin
                operatingSystemInterface := TWindowsOS.Create();
            end else if (CompareStr(osName, operatingSystems_.WINDOWS2000)) = (0) then begin
                operatingSystemInterface := TWindowsOS.Create();
            end else if (CompareStr(osName, operatingSystems_.WINDOWS_XP)) = (0) then begin
                operatingSystemInterface := TWindowsOS.Create();
            end else if (CompareStr(osName, operatingSystems_.WINDOWS_VISTA)) = (0) then begin
                operatingSystemInterface := TWindowsOS.Create();
            end else begin
                if operatingSystems_.isUnknownSpecificOSAllowed() then begin
                    operatingSystemInterface := TWindowsOS.Create();
                end else begin
                    raise SysUtils.Exception.Create('Specific Windows OS Not Supported: ' + osName);
                end;
            end;
            Exit(operatingSystemInterface);
        except
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().FACTORYERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, Self, commonStrings_.GET_INSTANCE, e);
            end;
            Exit(TNoOperatingSystem.NO_OPERATING_SYSTEM);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TWindowsOperatingSystemFactory.instance := TWindowsOperatingSystemFactory.Create();
  {AB:END}

end.

