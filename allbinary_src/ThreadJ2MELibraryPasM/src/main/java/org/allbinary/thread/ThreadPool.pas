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
unit ThreadPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, BasicArrayList, NullRunnable, ThreadPoolStrings, ThreadObjectUtil, PriorityRunnable;

type
  {AB:TYPES}
  TThreadPool = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    NULL_RUNNABLE: TNullRunnable;
    threadPoolStrings: TThreadPoolStrings;
    threadObjectUtil: TThreadObjectUtil;
    poolName: string;
    priority: Integer;
    isAlive: Boolean;
    taskQueue: TBasicArrayList;
    threadID: Integer;
    numThreads: Integer;
    runningTask: Boolean;
    class var ROOT_NAME: string;
    class var NORMAL_PRIORITY: Integer;
    procedure InitFields;
        constructor Create(poolName: string; numThreads: Integer; priority: Integer);
        procedure init; virtual;
        procedure runAPriorityTask; virtual;
        procedure runTaskWithPriority(task: IPriorityRunnable); virtual;
        procedure runTask(task: IRunnable); virtual;
        function getTask: IRunnable; virtual;
        procedure clear; virtual;
        procedure close; virtual;
        procedure join; virtual;
        function isBusy: Boolean; virtual;
        procedure threadStarted; virtual;
        procedure threadStopped; virtual;
        procedure startTask(task: IRunnable); virtual;
        procedure completedTask(task: IRunnable); virtual;
        function createName: string; virtual;
  end;

implementation
uses
  PooledThread, StringMaker, BasicArrayListD, BasicArrayListUtil;


{AB:CODE}

procedure TThreadPool.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.NULL_RUNNABLE := TNullRunnable.getInstance();
  Self.threadPoolStrings := TThreadPoolStrings.getInstance();
  Self.threadObjectUtil := TThreadObjectUtil.getInstance();
  
  
  Self.isAlive := False;
  Self.taskQueue := TBasicArrayListUtil.getInstance().getImmutableInstance();
  
  
  
end;
    

constructor TThreadPool.Create(poolName: string; numThreads: Integer; priority: Integer);
begin
    inherited Create;
    InitFields;
        Self.poolName := poolName;
        Self.priority := priority;
        Self.numThreads := numThreads;
end;
    

procedure TThreadPool.init;
var
  pooledThread_: TPooledThread;
  i: Integer;
begin
        if not (Self.isAlive) then begin
            Self.isAlive := True;
            Self.taskQueue := TBasicArrayListD.Create();
            
            for i := 0 to Self.numThreads - 1 do begin
                pooledThread_ := TPooledThread.Create(Self);
                TJava.Nothing;
                pooledThread_.start();
            end;
        end;
end;
    

// throws Exception
procedure TThreadPool.runAPriorityTask;
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TThreadPool.runTaskWithPriority(task: IPriorityRunnable);
var
  size: Integer;
  runnable: IPriorityRunnable;
  lowerPriorityRunnable: IPriorityRunnable;
  index: Integer;
begin
        TJava.MonitorEnter(Self);
        try
            if not (Self.isAlive) then begin
                Self.init();
            end;
            if (task) <> (nil) then begin
                size := Self.taskQueue.size();
                
                lowerPriorityRunnable := Self.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
                for index := 0 to size - 1 do begin
                    runnable := (TJava.ToObject(Self.taskQueue.get(index)) as IPriorityRunnable);
                    if (runnable.getPriority()) > (task.getPriority()) then begin
                        lowerPriorityRunnable := runnable;
                        Break;
                    end;
                end;
                if (lowerPriorityRunnable) = (Self.threadObjectUtil.NULL_PRIORITY_RUNNABLE) then begin
                    Self.taskQueue.add(TJava.Box(task));
                end else begin
                    index := Self.taskQueue.indexOf(TJava.Box(lowerPriorityRunnable));
                    Self.taskQueue.addAt(index, TJava.Box(task));
                end;
                TJava.Nothing;
            end;
        finally
            TJava.MonitorExit(Self);
        end;
end;
    

procedure TThreadPool.runTask(task: IRunnable);
begin
        TJava.MonitorEnter(Self);
        try
            if not (Self.isAlive) then begin
                Self.init();
            end;
            if (task) <> (nil) then begin
                Self.taskQueue.add(TJava.Box(task));
                TJava.Nothing;
            end;
        finally
            TJava.MonitorExit(Self);
        end;
end;
    

// throws InterruptedException
function TThreadPool.getTask: IRunnable;
var
  runnable: IRunnable;
begin
        TJava.MonitorEnter(Self);
        try
            while (Self.taskQueue.size()) = (0) do begin
                if not (Self.isAlive) then begin
                    Exit(Self.NULL_RUNNABLE);
                end;
                TJava.Wait(Self, 0);
            end;
            runnable := (TJava.ToObject(Self.taskQueue.removeAt(0)) as IRunnable);
            Exit(runnable);
        finally
            TJava.MonitorExit(Self);
        end;
end;
    

procedure TThreadPool.clear;
begin
        TJava.MonitorEnter(Self);
        try
            if Self.isAlive then begin
                Self.taskQueue.clear();
            end;
        finally
            TJava.MonitorExit(Self);
        end;
end;
    

procedure TThreadPool.close;
begin
        TJava.MonitorEnter(Self);
        try
            if Self.isAlive then begin
                Self.isAlive := False;
                Self.taskQueue.clear();
            end;
        finally
            TJava.MonitorExit(Self);
        end;
end;
    

procedure TThreadPool.join;
begin
        TJava.MonitorEnter(Self);
        try
            Self.isAlive := False;
            Self.taskQueue.clear();
            TJava.Nothing;
        finally
            TJava.MonitorExit(Self);
        end;
end;
    

function TThreadPool.isBusy: Boolean;
begin
        if not (Self.isAlive) then begin
            Exit(False);
        end;
        if (Self.taskQueue.size()) > (0) then begin
            Exit(True);
        end;
        if Self.runningTask then begin
            Exit(True);
        end;
        Exit(False);
end;
    

procedure TThreadPool.threadStarted;
begin
end;
    

procedure TThreadPool.threadStopped;
begin
        if (Self.numThreads) = (1) then begin
            Self.isAlive := False;
            Self.taskQueue.clear();
        end;
end;
    

procedure TThreadPool.startTask(task: IRunnable);
begin
end;
    

procedure TThreadPool.completedTask(task: IRunnable);
begin
end;
    

function TThreadPool.createName: string;
begin
        Exit(TStringMaker.Create().append(Self.poolName).append(TThreadPool.ROOT_NAME).appendint(TJava.PostInc(Self.threadID)).toString());
end;

initialization
  {AB:INITIALIZATION}
  TThreadPool.ROOT_NAME := '-PooledThread-';
  TThreadPool.NORMAL_PRIORITY := 5;
  {AB:END}

end.

