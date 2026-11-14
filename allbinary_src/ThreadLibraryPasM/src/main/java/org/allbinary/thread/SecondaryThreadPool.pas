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
unit SecondaryThreadPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ThreadPool;

type
  {AB:TYPES}
  // This is mainly for network communications.
  TSecondaryThreadPool = class(TThreadPool)
  public
    class var instance: TThreadPool;
        class function getInstance: TThreadPool; static;
        constructor Create(poolName: string; numThreads: Integer; priority: Integer);
        procedure runTask(task: IRunnable); override;
        procedure startTask(task: IRunnable); override;
        procedure completedTask(task: IRunnable); override;
  end;

implementation
uses
  LogUtil, StringMaker, StringUtil;


{AB:CODE}
    

class function TSecondaryThreadPool.getInstance: TThreadPool;
begin
        Exit(TSecondaryThreadPool.instance);
end;
    

constructor TSecondaryThreadPool.Create(poolName: string; numThreads: Integer; priority: Integer);
begin
        inherited Create(poolName, numThreads, priority);
end;
    

procedure TSecondaryThreadPool.runTask(task: IRunnable);
begin
        Self.logUtil.putF(TStringMaker.Create().append(TStringUtil.getInstance().toString(TJava.ToObject(task))).appendlong(Int64(Trunc(DateTimeToUnix(Now) * 1000))).toString(), TJava.Box(Self), Self.threadPoolStrings.ADD_TASK);
        inherited runTask(task);
end;
    

procedure TSecondaryThreadPool.startTask(task: IRunnable);
begin
        Self.logUtil.putF(TStringMaker.Create().append(Self.threadPoolStrings.START_TASK).append(TStringUtil.getInstance().toString(TJava.ToObject(task))).appendlong(Int64(Trunc(DateTimeToUnix(Now) * 1000))).toString(), TJava.Box(Self), Self.commonStrings.RUN);
end;
    

procedure TSecondaryThreadPool.completedTask(task: IRunnable);
begin
        Self.logUtil.putF(TStringMaker.Create().append(Self.threadPoolStrings.COMPLETE_TASK).append(TStringUtil.getInstance().toString(TJava.ToObject(task))).appendlong(Int64(Trunc(DateTimeToUnix(Now) * 1000))).toString(), TJava.Box(Self), Self.commonStrings.RUN);
end;

initialization
  {AB:INITIALIZATION}
  TSecondaryThreadPool.instance := TSecondaryThreadPool.Create('Secondary', 1, TThreadPool.NORMAL_PRIORITY);
  {AB:END}

end.

