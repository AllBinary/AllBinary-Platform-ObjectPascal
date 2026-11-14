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
unit LicenseUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener;

type
  {AB:TYPES}
  TLicenseUtil = class(TObject)
  public
    class var instance: TLicenseUtil;
    constructor Create;
        class function getInstance: TLicenseUtil; static;
        procedure init; virtual;
        function isRunning: Boolean; virtual;
        procedure setRunning(running: Boolean); virtual;
        function shouldWait(commandListener_: ICommandListener): Boolean; virtual;
  end;

implementation

{AB:CODE}

constructor TLicenseUtil.Create;
begin
  inherited Create;
end;
    

class function TLicenseUtil.getInstance: TLicenseUtil;
begin
        Exit(TLicenseUtil.instance);
end;
    

procedure TLicenseUtil.init;
begin
end;
    

function TLicenseUtil.isRunning: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(False);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TLicenseUtil.setRunning(running: Boolean);
begin
    TJava.MonitorEnter(Self);
    try
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TLicenseUtil.shouldWait(commandListener_: ICommandListener): Boolean;
begin
        Exit(Self.isRunning());
end;

initialization
  {AB:INITIALIZATION}
  TLicenseUtil.instance := TLicenseUtil.Create();
  {AB:END}

end.

