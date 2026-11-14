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
unit MusicThreadPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ThreadPool;

type
  {AB:TYPES}
  TMusicThreadPool = class(TThreadPool)
  public
    class var THREAD_POOL: TThreadPool;
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
    

class function TMusicThreadPool.getInstance: TThreadPool;
begin
        Exit(TMusicThreadPool.THREAD_POOL);
end;
    

constructor TMusicThreadPool.Create(poolName: string; numThreads: Integer; priority: Integer);
begin
        inherited Create(poolName, numThreads, priority);
end;
    

procedure TMusicThreadPool.runTask(task: IRunnable);
begin
        Self.logUtil.putF(TStringMaker.Create().append(TStringUtil.getInstance().toString(TJava.ToObject(task))).appendlong(Int64(Trunc(DateTimeToUnix(Now) * 1000))).toString(), TJava.Box(Self), Self.threadPoolStrings.ADD_TASK);
        inherited runTask(task);
end;
    

procedure TMusicThreadPool.startTask(task: IRunnable);
begin
        Self.logUtil.putF(TStringMaker.Create().append(Self.threadPoolStrings.START_TASK).append(TStringUtil.getInstance().toString(TJava.ToObject(task))).appendlong(Int64(Trunc(DateTimeToUnix(Now) * 1000))).toString(), TJava.Box(Self), Self.commonStrings.RUN);
end;
    

procedure TMusicThreadPool.completedTask(task: IRunnable);
begin
        Self.logUtil.putF(TStringMaker.Create().append(Self.threadPoolStrings.COMPLETE_TASK).append(TStringUtil.getInstance().toString(TJava.ToObject(task))).appendlong(Int64(Trunc(DateTimeToUnix(Now) * 1000))).toString(), TJava.Box(Self), Self.commonStrings.RUN);
end;

initialization
  {AB:INITIALIZATION}
  TMusicThreadPool.THREAD_POOL := TThreadPool.Create('Music', 2, TThreadPool.NORMAL_PRIORITY);
  {AB:END}

end.

