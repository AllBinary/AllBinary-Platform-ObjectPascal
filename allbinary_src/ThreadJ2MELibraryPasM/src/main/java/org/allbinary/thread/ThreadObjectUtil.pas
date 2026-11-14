// Generated Code Do Not Modify
// package org.allbinary.thread
unit ThreadObjectUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PriorityRunnable;

type
  {AB:TYPES}
  TThreadObjectUtil = class(TObject)
  public
    NULL_PRIORITY_RUNNABLE: IPriorityRunnable;
    class var instance: TThreadObjectUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TThreadObjectUtil; static;
        procedure notifyObject(anyType: TObject); virtual;
        procedure waitObject(anyType: TObject); virtual;
        procedure waitObjectFor(anyType: TObject; delay: Int64); virtual;
        procedure processThread(runnable: IRunnable); virtual;
  end;

implementation
uses
  NullPriorityRunnable, TsUtil;


{AB:CODE}

procedure TThreadObjectUtil.InitFields;
begin
  Self.NULL_PRIORITY_RUNNABLE := TNullPriorityRunnable.Create();
end;

constructor TThreadObjectUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TThreadObjectUtil.getInstance: TThreadObjectUtil;
begin
        Exit(TThreadObjectUtil.instance);
end;
    

procedure TThreadObjectUtil.notifyObject(anyType: TObject);
begin
        TJava.Nothing;
end;
    

// throws Exception
procedure TThreadObjectUtil.waitObject(anyType: TObject);
begin
        TJava.Wait(anyType, 0);
end;
    

// throws Exception
procedure TThreadObjectUtil.waitObjectFor(anyType: TObject; delay: Int64);
begin
        TTsUtil.getInstance().waitFor(TJava.Box(anyType), delay);
end;
    

procedure TThreadObjectUtil.processThread(runnable: IRunnable);
var
  thread: TThread;
begin
        thread := TThread.Create(True);
        thread.start();
end;

initialization
  {AB:INITIALIZATION}
  TThreadObjectUtil.instance := TThreadObjectUtil.Create();
  {AB:END}

end.

