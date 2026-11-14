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
// package org.allbinary.emulator
unit InitEmulatorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TInitEmulatorFactory = class(TObject)
  public
    initEmulator: Boolean;
    class var instance: TInitEmulatorFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TInitEmulatorFactory; static;
        procedure setInitEmulator(initEmulator: Boolean); virtual;
        function isInitEmulator: Boolean; virtual;
  end;

implementation

{AB:CODE}

procedure TInitEmulatorFactory.InitFields;
begin
  Self.initEmulator := False;
end;

constructor TInitEmulatorFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TInitEmulatorFactory.getInstance: TInitEmulatorFactory;
begin
        Exit(TInitEmulatorFactory.instance);
end;
    

procedure TInitEmulatorFactory.setInitEmulator(initEmulator: Boolean);
begin
        Self.initEmulator := initEmulator;
end;
    

function TInitEmulatorFactory.isInitEmulator: Boolean;
begin
        Exit(Self.initEmulator);
end;

initialization
  {AB:INITIALIZATION}
  TInitEmulatorFactory.instance := TInitEmulatorFactory.Create();
  {AB:END}

end.

