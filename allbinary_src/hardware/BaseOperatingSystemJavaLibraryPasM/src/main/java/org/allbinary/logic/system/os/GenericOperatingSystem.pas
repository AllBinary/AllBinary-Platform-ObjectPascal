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
unit GenericOperatingSystem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OperatingSystemInterface;

type
  {AB:TYPES}
  TGenericOperatingSystem = class(TInterfacedObject, IOperatingSystemInterface)
  public
    osName: string;
    osArch: string;
    osVersion: string;
    characterSet: TObject;
    scalable: Boolean;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getName: string; virtual;
        function getVersion: string; virtual;
        function getArch: string; virtual;
        function getCharacterSet: TObject; virtual;
        function isOverScan: Boolean; virtual;
        function getOverScanXPercent: Integer; virtual;
        function getOverScanYPercent: Integer; virtual;
        function isScalable: Boolean; virtual;
        function isAutoHide: Boolean; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  SystemProperties, StringMaker, StringUtil, CommonSeps;


{AB:CODE}

procedure TGenericOperatingSystem.InitFields;
begin
  
  
  
  Self.characterSet := TObject.Create();
  Self.scalable := False;
end;

function TGenericOperatingSystem.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGenericOperatingSystem.Create;
var
  systemProperties_: TSystemProperties;
  stringValidationUtil_: TObject;
  EMPTY_STRING: string;
begin
    inherited Create;
    InitFields;
        systemProperties_ := TSystemProperties.getInstance();
        stringValidationUtil_ := nil;
        EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
        if (systemProperties_.getName() = '') then begin
            Self.osName := EMPTY_STRING;
        end else begin
            Self.osName := systemProperties_.getName();
        end;
        if (systemProperties_.getArch() = '') then begin
            Self.osArch := EMPTY_STRING;
        end else begin
            Self.osArch := systemProperties_.getArch();
        end;
        if (systemProperties_.getVersion() = '') then begin
            Self.osVersion := EMPTY_STRING;
        end else begin
            Self.osVersion := systemProperties_.getVersion();
        end;
end;
    

function TGenericOperatingSystem.getName: string;
begin
        Exit(Self.osName);
end;
    

function TGenericOperatingSystem.getVersion: string;
begin
        Exit(Self.osVersion);
end;
    

function TGenericOperatingSystem.getArch: string;
begin
        Exit(Self.osArch);
end;
    

function TGenericOperatingSystem.getCharacterSet: TObject;
begin
        Exit(Self.characterSet);
end;
    

function TGenericOperatingSystem.isOverScan: Boolean;
begin
        Exit(False);
end;
    

function TGenericOperatingSystem.getOverScanXPercent: Integer;
begin
        Exit(100);
end;
    

function TGenericOperatingSystem.getOverScanYPercent: Integer;
begin
        Exit(100);
end;
    

function TGenericOperatingSystem.isScalable: Boolean;
begin
        Exit(Self.scalable);
end;
    

function TGenericOperatingSystem.isAutoHide: Boolean;
begin
        Exit(False);
end;
    

function TGenericOperatingSystem.toString: string;
var
  NEW_LINE: string;
  osBuffer: TStringMaker;
begin
        NEW_LINE := TCommonSeps.getInstance().NEW_LINE;
        osBuffer := TStringMaker.Create();
        osBuffer.append('Operating System Info: '#10'');
        osBuffer.append(Self.getName());
        osBuffer.append(NEW_LINE);
        osBuffer.append(Self.getArch());
        osBuffer.append(NEW_LINE);
        osBuffer.append(Self.getVersion());
        osBuffer.append(NEW_LINE);
        osBuffer.append(TStringUtil.getInstance().toString(Self.getCharacterSet()));
        osBuffer.append(NEW_LINE);
        Exit(osBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

