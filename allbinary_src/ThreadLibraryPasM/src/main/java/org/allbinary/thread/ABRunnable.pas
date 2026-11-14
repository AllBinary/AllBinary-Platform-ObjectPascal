{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.thread
unit ABRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RunnableInterface;

type
  {AB:TYPES}
  TABRunnable = class(TInterfacedObject, IRunnableInterface, IRunnable)
  public
    running: Boolean;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        procedure setThread(thread: TThread); virtual;
        function isRunning: Boolean; virtual;
        procedure setRunning(running: Boolean); virtual;
        procedure run; virtual;
        function getType: Integer; virtual;
  end;

implementation

{AB:CODE}

procedure TABRunnable.InitFields;
begin
  Self.running := False;
end;

function TABRunnable.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TABRunnable.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TABRunnable.setThread(thread: TThread);
begin
end;
    

function TABRunnable.isRunning: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.running);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TABRunnable.setRunning(running: Boolean);
begin
    TJava.MonitorEnter(Self);
    try
        Self.running := running;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TABRunnable.run;
begin
end;
    

function TABRunnable.getType: Integer;
begin
        Exit(-1);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

