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
unit SystemProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // ActualPlatform
  TSystemProperties = class(TObject)
  public
    OS_NAME: string;
    OS_ARCH: string;
    OS_VERSION: string;
    USER_HOME: string;
    class var instance: TSystemProperties;
    procedure InitFields;
        class function getInstance: TSystemProperties; static;
        constructor Create;
        function getName: string; virtual;
        function getArch: string; virtual;
        function getVersion: string; virtual;
        function getUserHomePath: string; virtual;
  end;

implementation

{AB:CODE}

procedure TSystemProperties.InitFields;
begin
  Self.OS_NAME := 'os.name';
  Self.OS_ARCH := 'os.arch';
  Self.OS_VERSION := 'os.version';
  Self.USER_HOME := 'user.home';
end;
    

class function TSystemProperties.getInstance: TSystemProperties;
begin
        Exit(TSystemProperties.instance);
end;
    

constructor TSystemProperties.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TSystemProperties.getName: string;
begin
        Exit(TJava.GetProperty(Self.OS_NAME));
end;
    

function TSystemProperties.getArch: string;
begin
        Exit(TJava.GetProperty(Self.OS_ARCH));
end;
    

function TSystemProperties.getVersion: string;
begin
        Exit(TJava.GetProperty(Self.OS_VERSION));
end;
    

function TSystemProperties.getUserHomePath: string;
begin
        Exit(TJava.GetProperty(Self.USER_HOME));
end;

initialization
  {AB:INITIALIZATION}
  TSystemProperties.instance := TSystemProperties.Create();
  {AB:END}

end.

