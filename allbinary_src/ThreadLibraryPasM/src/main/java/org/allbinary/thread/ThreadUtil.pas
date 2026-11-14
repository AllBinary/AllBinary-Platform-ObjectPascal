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
// package org.allbinary.thread
unit ThreadUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TThreadUtil = class(TObject)
  public
    logUtil: TLogUtil;
    JOIN_: string;
    class var instance: TThreadUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TThreadUtil; static;
        function isRunning(thread: TThread): Boolean; virtual;
        procedure join(thread: TThread); virtual;
  end;

implementation

{AB:CODE}

procedure TThreadUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.JOIN_ := 'join';
end;

constructor TThreadUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TThreadUtil.getInstance: TThreadUtil;
begin
        Exit(TThreadUtil.instance);
end;
    

function TThreadUtil.isRunning(thread: TThread): Boolean;
begin
        if ((thread) <> (nil)) and (not (thread.Finished)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

// throws Exception
procedure TThreadUtil.join(thread: TThread);
begin
        if TThreadUtil.getInstance().isRunning(thread) then begin
            Self.logUtil.putF('Waiting for Thread To Join/End', Self, Self.JOIN_);
            thread.WaitFor;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TThreadUtil.instance := TThreadUtil.Create();
  {AB:END}

end.

