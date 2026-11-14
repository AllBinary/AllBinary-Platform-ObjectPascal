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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, GenericOperatingSystem;

type
  {AB:TYPES}
  TOperatingSystemFactory = class(TObject)
  public
    logUtil: TLogUtil;
    genericOperatingSystem: TGenericOperatingSystem;
    class var instance: TOperatingSystemFactory;
    procedure InitFields;
        class function getInstance: TOperatingSystemFactory; static;
        constructor Create;
        function getOperatingSystemInstance: TGenericOperatingSystem; virtual;
  end;

implementation
uses
  NoOperatingSystem, StringMaker, CommonStrings;


{AB:CODE}

procedure TOperatingSystemFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.genericOperatingSystem := TNoOperatingSystem.NO_OPERATING_SYSTEM;
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
  commonStrings_: TCommonStrings;
  osString: string;
begin
    TJava.MonitorEnter(Self);
    try
        commonStrings_ := TCommonStrings.getInstance();
        try
            osString := TStringMaker.Create().append('OperatingSystem Info: ').append(Self.genericOperatingSystem.toString()).toString();
            WriteLn(osString);
            Self.logUtil.putF(osString, TJava.Box(Self), commonStrings_.GET_INSTANCE);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
        end;
        Exit(Self.genericOperatingSystem);
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TOperatingSystemFactory.instance := TOperatingSystemFactory.Create();
  {AB:END}

end.

