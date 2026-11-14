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
unit ThreadFactoryUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameCanvasRunnableInterface, LogUtil, ABRunnable;

type
  {AB:TYPES}
  TThreadFactoryUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TThreadFactoryUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TThreadFactoryUtil; static;
        function getInstanceGameCanvasRunnable(runnable: IGameCanvasRunnableInterface): TThread; virtual;
        function getInstanceForRunnable(runnable: TABRunnable): TThread; virtual;
        function getInstanceType(runnable: IRunnable; type_: Integer): TThread;
        procedure start(thread: TThread); virtual;
  end;

implementation
uses
  PrimaryThreadPool, ThreadPool, J2MEUtil, RunnableCanvas, AllBinaryGameCanvas, DemoCanvas, RunnableCanvasSingleThreadStartRunnable, PreLogUtil, StringMaker, StringUtil, CommonStrings;


{AB:CODE}

procedure TThreadFactoryUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TThreadFactoryUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TThreadFactoryUtil.getInstance: TThreadFactoryUtil;
begin
        Exit(TThreadFactoryUtil.instance);
end;
    

function TThreadFactoryUtil.getInstanceGameCanvasRunnable(runnable: IGameCanvasRunnableInterface): TThread;
begin
        Exit(Self.getInstanceType(runnable, runnable.getType()));
end;
    

function TThreadFactoryUtil.getInstanceForRunnable(runnable: TABRunnable): TThread;
begin
        Exit(Self.getInstanceType(runnable, runnable.getType()));
end;
    

function TThreadFactoryUtil.getInstanceType(runnable: IRunnable; type_: Integer): TThread;
var
  commonStrings_: TCommonStrings;
  primaryThreadPool_: TThreadPool;
  demoGameSingleThreadStartRunnable: TRunnableCanvasSingleThreadStartRunnable;
  thread: TThread;
begin
        commonStrings_ := TCommonStrings.getInstance();
        if TJ2MEUtil.isHTML() then begin
            if ((type_) = (TDemoCanvas.TYPE_)) or ((type_) = (TAllBinaryGameCanvas.TYPE_)) then begin
                demoGameSingleThreadStartRunnable := TRunnableCanvasSingleThreadStartRunnable.Create(TRunnableCanvas(TJava.ToObject(runnable)));
                TPreLogUtil.put(TStringMaker.Create().append('Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ').append(TStringUtil.getInstance().toString(TJava.ToObject(runnable))).toString(), TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
                primaryThreadPool_ := TPrimaryThreadPool.getInstance();
                primaryThreadPool_.runTask(demoGameSingleThreadStartRunnable);
            end else begin
                TPreLogUtil.put(TStringMaker.Create().append('Using Pseudo Thread for Runnable under PlayN/HTML5: ').append(TStringUtil.getInstance().toString(TJava.ToObject(runnable))).toString(), TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
                primaryThreadPool_ := TPrimaryThreadPool.getInstance();
                primaryThreadPool_.runTask(runnable);
            end;
        end;
        thread := TThread.Create(True);
        Self.logUtil.putF(thread.toString(), TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
        Exit(thread);
end;
    

procedure TThreadFactoryUtil.start(thread: TThread);
begin
        thread.start();
end;

initialization
  {AB:INITIALIZATION}
  TThreadFactoryUtil.instance := TThreadFactoryUtil.Create();
  {AB:END}

end.

