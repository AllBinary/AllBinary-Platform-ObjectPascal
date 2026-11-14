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
// package org.allbinary.logic.system.os.solaris
unit SolarisOperatingSystemFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, GenericOperatingSystem;

type
  {AB:TYPES}
  TSolarisOperatingSystemFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TSolarisOperatingSystemFactory;
    procedure InitFields;
        class function getInstance: TSolarisOperatingSystemFactory; static;
        constructor Create;
        function getOperatingSystemInstance: TGenericOperatingSystem; virtual;
  end;

implementation
uses
  SolarisOS, LogConfigTypeFactory, LogConfigTypes, NoOperatingSystem, OperatingSystems, SystemProperties, CommonStrings;


{AB:CODE}

procedure TSolarisOperatingSystemFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TSolarisOperatingSystemFactory.getInstance: TSolarisOperatingSystemFactory;
begin
        Exit(TSolarisOperatingSystemFactory.instance);
end;
    

constructor TSolarisOperatingSystemFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TSolarisOperatingSystemFactory.getOperatingSystemInstance: TGenericOperatingSystem;
var
  operatingSystems_: TOperatingSystems;
  osName: string;
  operatingSystemInterface: TGenericOperatingSystem;
  commonStrings_: TCommonStrings;
begin
        try
            operatingSystems_ := TOperatingSystems.getInstance();
            osName := TSystemProperties.getInstance().getName();
            
            if (CompareStr(osName, operatingSystems_.SOLARIS)) = (0) then begin
                operatingSystemInterface := TSolarisOS.Create();
            end else begin
                if operatingSystems_.isUnknownSpecificOSAllowed() then begin
                    operatingSystemInterface := TSolarisOS.Create();
                end else begin
                    raise SysUtils.Exception.Create('Specific Solaris OS Not Supported: ' + osName);
                end;
            end;
            Exit(operatingSystemInterface);
        except
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().FACTORYERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            Exit(TNoOperatingSystem.NO_OPERATING_SYSTEM);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TSolarisOperatingSystemFactory.instance := TSolarisOperatingSystemFactory.Create();
  {AB:END}

end.

