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
// package org.allbinary.logic.system.hardware
unit SystemHardwareFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, GenericOperatingSystem, CommonStrings, HardwareInterface;

type
  {AB:TYPES}
  TSystemHardwareFactory = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    hardwareInterface: IHardwareInterface;
    class var instance: TSystemHardwareFactory;
    procedure InitFields;
        class function getInstance: TSystemHardwareFactory; overload; static;
        constructor Create;
        function getInstance(operatingSystemInterface: TGenericOperatingSystem): IHardwareInterface; overload; virtual;
        class function static_toString: string; static;
  end;

implementation
uses
  NoHardware, StringMaker, StringUtil;


{AB:CODE}

procedure TSystemHardwareFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.hardwareInterface := TNoHardware.getInstance();
end;
    

class function TSystemHardwareFactory.getInstance: TSystemHardwareFactory;
begin
        Exit(TSystemHardwareFactory.instance);
end;
    

constructor TSystemHardwareFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TSystemHardwareFactory.getInstance(operatingSystemInterface: TGenericOperatingSystem): IHardwareInterface;
begin
        try
            if (Self.hardwareInterface) = (TNoHardware.getInstance()) then begin
                Self.hardwareInterface := TNoHardware.getInstance();
            end;
            Self.logUtil.putF('Found Hardware', Self, Self.commonStrings.CONSTRUCTOR_);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.CONSTRUCTOR_, e);
            end;
        end;
        Exit(Self.hardwareInterface);
end;
    

class function TSystemHardwareFactory.static_toString: string;
var
  systemHardwareFactory_: TSystemHardwareFactory;
  osBuffer: TStringMaker;
begin
        systemHardwareFactory_ := TSystemHardwareFactory.getInstance();
        osBuffer := TStringMaker.Create();
        osBuffer.append('Hardware Info: '#10'');
        if (systemHardwareFactory_.hardwareInterface) <> (nil) then begin
            osBuffer.append(systemHardwareFactory_.hardwareInterface.toString());
        end else begin
            osBuffer.append(TStringUtil.getInstance().NULL_STRING);
        end;
        Exit(osBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TSystemHardwareFactory.instance := TSystemHardwareFactory.Create();
  {AB:END}

end.

