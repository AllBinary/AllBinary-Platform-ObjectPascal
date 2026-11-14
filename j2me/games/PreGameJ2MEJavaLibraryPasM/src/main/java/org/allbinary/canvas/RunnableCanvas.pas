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
// package org.allbinary.canvas
unit RunnableCanvas;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, TsUtil, MyCanvas, ABSystemWrapper, NullUtil, StdUtil, CommonLabels, RunnableInterface, ThreadObjectUtil, TimeDelayHelper, BasicArrayList, Processor;

type
  {AB:TYPES}
  TRunnableCanvas = class(TMyCanvas, IRunnableInterface, IRunnable)
  public
    nullUtil: TNullUtil;
    stdUtil: TStdUtil;
    systemWrapper: TABSystemWrapper;
    tsUtil: TTsUtil;
    thread: TThread;
    currentThread: TThread;
    running: Boolean;
    loopTimeHelper: TTimeDelayHelper;
    runnableCanvasRefreshHelper: TProcessor;
    commonLabels: TCommonLabels;
    threadObjectUtil: TThreadObjectUtil;
    SET_RUNNING: string;
    IS_RUNNING: string;
    THREAD_: string;
    NOT_EQUAL: string;
    PAUSE_SLEEP: string;
    START_PAUSE: string;
    END_PAUSE: string;
    PROCESS_LOOP_SLEEP: string;
    pauseWait: Int64;
    notified: Boolean;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(commandListener_: ICommandListener; childNameList: TBasicArrayList; hasParam: Boolean);
        procedure initCommands(cmdListener: ICommandListener); virtual;
        function isMainCanvas: Boolean; virtual;
        procedure setThread(thread: TThread); virtual;
        procedure setRunning(running: Boolean); virtual;
        function isRunning: Boolean; virtual;
        function getLoopTimeHelperP: TTimeDelayHelper; virtual;
        procedure setWait(wait: Integer); virtual;
        function getWait: Integer; virtual;
        procedure setCurrentThread; virtual;
        procedure setCurrentThreadFake; virtual;
        procedure showNotify; virtual;
        procedure stopWaiting;
        procedure waitOnNotify(wait: Int64); virtual;
        procedure processSleep; virtual;
        function isPausable: Boolean; virtual;
        procedure processGameSleep(sleep: Int64); virtual;
        procedure processLoopSleep; virtual;
        function isSingleThread: Boolean; virtual;
        procedure run; virtual;
        procedure end2; virtual;
        function getType: Integer; virtual;
  end;

implementation
uses
  RunnableCanvasRefreshHelper, NullWaitGameRunnable, StringMaker, StringUtil, CommonStrings, NullThread;


{AB:CODE}

procedure TRunnableCanvas.InitFields;
begin
  Self.nullUtil := TNullUtil.getInstance();
  Self.stdUtil := TStdUtil.getInstance();
  Self.systemWrapper := TABSystemWrapper.getInstance();
  Self.tsUtil := TTsUtil.getInstance();
  Self.thread := TNullThread.NULL_THREAD;
  Self.currentThread := TNullThread.NULL_THREAD;
  
  Self.loopTimeHelper := TTimeDelayHelper.Create(TNullWaitGameRunnable.getInstance().WAIT);
  Self.runnableCanvasRefreshHelper := TProcessor.getInstance();
  Self.commonLabels := TCommonLabels.getInstance();
  Self.threadObjectUtil := TThreadObjectUtil.getInstance();
  Self.SET_RUNNING := 'setRunning';
  Self.IS_RUNNING := 'isRunning';
  Self.THREAD_ := 'Thread: ';
  Self.NOT_EQUAL := ' != ';
  Self.PAUSE_SLEEP := 'pause sleep';
  Self.START_PAUSE := 'start pause - game thread sleep at: ';
  Self.END_PAUSE := 'end pause - game thread sleep at: ';
  Self.PROCESS_LOOP_SLEEP := 'processLoopSleep';
  Self.pauseWait := 0;
  Self.notified := False;
end;

function TRunnableCanvas.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TRunnableCanvas.Create(commandListener_: ICommandListener; childNameList: TBasicArrayList; hasParam: Boolean);
begin
        inherited Create(TCommonStrings.getInstance().UNKNOWN, childNameList);
        InitFields;
        Self.logUtil.putF(TStringMaker.Create().append('RunnableCanvas delay: ').appendint(Integer(Trunc(Self.loopTimeHelper.delay))).toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.runnableCanvasRefreshHelper := TRunnableCanvasRefreshHelper.Create(Self);
        if (commandListener_) <> (nil) then begin
            Self.initCommands(commandListener_);
        end else if hasParam then begin
            Self.logUtil.putF('commandListener was null', TJava.Box(Self), 'initCommands');
        end;
end;
    

procedure TRunnableCanvas.initCommands(cmdListener: ICommandListener);
begin
        Self.logUtil.putF(Self.commonStrings.NOT_IMPLEMENTED, TJava.Box(Self), 'initCommands');
end;
    

function TRunnableCanvas.isMainCanvas: Boolean;
begin
        if not TJava.IsNull(Self.getCustomCommandListener()) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

procedure TRunnableCanvas.setThread(thread: TThread);
begin
        Self.thread := thread;
end;
    

procedure TRunnableCanvas.setRunning(running: Boolean);
begin
        Self.running := running;
        if not (Self.running) then begin
            Self.thread := TNullThread.NULL_THREAD;
            TJava.MonitorEnter(Self);
            try
                Self.threadObjectUtil.notifyObject(TJava.Box(Self));
            finally
                TJava.MonitorExit(Self);
            end;
        end;
        Self.logUtil.putF(TStringMaker.Create().append(Self.IS_RUNNING).appendboolean(Self.running).toString(), TJava.Box(Self), Self.SET_RUNNING);
end;
    

function TRunnableCanvas.isRunning: Boolean;
var
  stringBuffer: TStringMaker;
begin
    TJava.MonitorEnter(Self);
    try
        if (Self.thread) = (Self.currentThread) then begin
            Exit(Self.running);
        end else begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.THREAD_);
            if (Self.thread) <> (nil) then begin
                stringBuffer.append(Self.thread.toString());
            end;
            stringBuffer.append(Self.NOT_EQUAL);
            if (Self.currentThread) <> (nil) then begin
                stringBuffer.append(TStringUtil.getInstance().toString(Self.currentThread));
            end;
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.IS_RUNNING);
            Exit(False);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TRunnableCanvas.getLoopTimeHelperP: TTimeDelayHelper;
begin
        Exit(Self.loopTimeHelper);
end;
    

procedure TRunnableCanvas.setWait(wait: Integer);
begin
        Self.loopTimeHelper.delay := wait;
        Self.pauseWait := (Int64(wait)) * (3);
        Self.logUtil.putF(TStringMaker.Create().append('setWait - delay: ').appendint(Integer(Trunc(Self.loopTimeHelper.delay))).toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
end;
    

function TRunnableCanvas.getWait: Integer;
begin
        Exit(Self.loopTimeHelper.delay);
end;
    

procedure TRunnableCanvas.setCurrentThread;
begin
        Self.currentThread := TThread.CurrentThread;
end;
    

procedure TRunnableCanvas.setCurrentThreadFake;
begin
        Self.currentThread := Self.thread;
end;
    

procedure TRunnableCanvas.showNotify;
begin
        try
            Self.stopWaiting();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'showNotify', TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TRunnableCanvas.stopWaiting;
begin
        Self.notified := True;
        TJava.MonitorEnter(Self);
        try
            Self.threadObjectUtil.notifyObject(TJava.Box(Self));
        finally
            TJava.MonitorExit(Self);
        end;
        Self.repaint();
end;
    

// throws Exception
procedure TRunnableCanvas.waitOnNotify(wait: Int64);
begin
    TJava.MonitorEnter(Self);
    try
        if not (Self.notified) then begin
            if (wait) > (0) then begin
                Self.threadObjectUtil.waitObjectFor(TJava.Box(Self), wait);
            end else begin
                Self.threadObjectUtil.waitObject(TJava.Box(Self));
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TRunnableCanvas.processSleep;
begin
        SysUtils.Sleep(Self.pauseWait);
end;
    

function TRunnableCanvas.isPausable: Boolean;
begin
        Exit(False);
end;
    

// throws Exception
procedure TRunnableCanvas.processGameSleep(sleep: Int64);
begin
        SysUtils.Sleep(sleep);
end;
    

// throws Exception
procedure TRunnableCanvas.processLoopSleep;
var
  stringMaker_: TStringMaker;
  currentTimeMillis: Int64;
  elapsedTime: Int64;
  wait: Int64;
begin
        Self.runnableCanvasRefreshHelper.process();
        if Self.isPaused() then begin
            stringMaker_ := TStringMaker.Create();
            if (Self.isRunning()) and (not (Self.isSingleThread())) then begin
                stringMaker_.delete_(0, stringMaker_.length());
                currentTimeMillis := Self.systemWrapper.currentTimeMillis();
                Self.logUtil.putF(stringMaker_.append(Self.START_PAUSE).appendlong(currentTimeMillis).append(Self.PAUSE_SLEEP).appendlong(Self.pauseWait).toString(), TJava.Box(Self), Self.PROCESS_LOOP_SLEEP);
                while ((Self.isPaused()) and (Self.isRunning())) and (not (Self.isSingleThread())) do begin
                    Self.processSleep();
                    if not (Self.isPausable()) then begin
                        stringMaker_.delete_(0, stringMaker_.length());
                        Self.logUtil.putF(stringMaker_.append(Self.END_PAUSE).appendlong(currentTimeMillis).toString(), TJava.Box(Self), Self.PROCESS_LOOP_SLEEP);
                        Exit;
                    end;
                end;
            end;
        end;
        elapsedTime := Self.loopTimeHelper.getElapsedTNT();
        wait := Int64(Trunc(Self.loopTimeHelper.delay));
        if (elapsedTime) > (wait) then begin
            elapsedTime := wait;
        end else begin
            Self.processGameSleep((wait) - (elapsedTime));
        end;
end;
    

function TRunnableCanvas.isSingleThread: Boolean;
begin
        Exit(False);
end;
    

procedure TRunnableCanvas.run;
begin
        Self.setCurrentThread();
end;
    

// throws Exception
procedure TRunnableCanvas.end2;
begin
end;
    

function TRunnableCanvas.getType: Integer;
begin
        Exit(-1);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

