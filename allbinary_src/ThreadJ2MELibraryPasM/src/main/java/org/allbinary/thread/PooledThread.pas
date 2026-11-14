{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.thread
unit PooledThread;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, ThreadObjectUtil, ThreadPool;

type
  {AB:TYPES}
  TPooledThread = class(TThread)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    threadObjectUtil: TThreadObjectUtil;
    threadPool: TThreadPool;
    INTERRUPT_EXCEPTION: string;
    procedure InitFields;
        constructor Create(threadPool_: TThreadPool);
        procedure Execute; override;
  end;

implementation
uses
  StringMaker, StringUtil;


{AB:CODE}

procedure TPooledThread.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.threadObjectUtil := TThreadObjectUtil.getInstance();
  
  Self.INTERRUPT_EXCEPTION := 'Exit InterruptedException';
end;
    

constructor TPooledThread.Create(threadPool_: TThreadPool);
begin
        inherited Create(True);
        InitFields;
        Self.logUtil.putF(Self.commonStrings.CONSTRUCTOR_, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.threadPool := threadPool_;
end;
    

procedure TPooledThread.Execute;
var
  task2: IRunnable;
  logUtil_: TLogUtil;
begin
        Self.threadPool.threadStarted();
        while True do begin
            task2 := Self.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
            try
                task2 := Self.threadPool.getTask();
                Self.threadPool.runningTask := True;
                Self.threadPool.startTask(task2);
            except
                on ex: SysUtils.Exception do begin
                logUtil_ := TLogUtil.getInstance();
                logUtil_.putF(Self.INTERRUPT_EXCEPTION, TJava.Box(Self), Self.commonStrings.RUN);
                Break;
                end;
            end;
            if TJava.ToObject(task2) = TJava.ToObject(Self.threadObjectUtil.NULL_PRIORITY_RUNNABLE) then begin
                Break;
            end;
            try
                task2.run();
                Self.threadPool.completedTask(task2);
                Self.threadPool.runningTask := False;
            except
                on e: SysUtils.Exception do begin
                logUtil_ := TLogUtil.getInstance();
                logUtil_.put(TStringMaker.Create().append(Self.commonStrings.EXCEPTION_LABEL).append(TStringUtil.getInstance().toString(TJava.ToObject(task2))).toString(), TJava.Box(Self), Self.commonStrings.RUN, TJava.Box(e));
                end;
            end;
        end;
        Self.threadPool.threadStopped();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

