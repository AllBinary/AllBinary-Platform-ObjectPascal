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
unit PathFindingThreadPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ThreadPool, PriorityRunnable;

type
  {AB:TYPES}
  // This is mainly for network communications.
  TPathFindingThreadPool = class(TThreadPool)
  public
    class var instance: TThreadPool;
        class function getInstance: TThreadPool; static;
        constructor Create(poolName: string; numThreads: Integer; priority: Integer);
        procedure runTaskWithPriority(task: IPriorityRunnable); override;
        procedure runTask(task: IRunnable); override;
        procedure startTask(task: IRunnable); override;
        procedure completedTask(task: IRunnable); override;
  end;

implementation

{AB:CODE}
    

class function TPathFindingThreadPool.getInstance: TThreadPool;
begin
        Exit(TPathFindingThreadPool.instance);
end;
    

constructor TPathFindingThreadPool.Create(poolName: string; numThreads: Integer; priority: Integer);
begin
        inherited Create(poolName, numThreads, TThreadPool.NORMAL_PRIORITY);
end;
    

procedure TPathFindingThreadPool.runTaskWithPriority(task: IPriorityRunnable);
begin
        inherited runTaskWithPriority(task);
end;
    

procedure TPathFindingThreadPool.runTask(task: IRunnable);
begin
        inherited runTask(task);
end;
    

procedure TPathFindingThreadPool.startTask(task: IRunnable);
begin
end;
    

procedure TPathFindingThreadPool.completedTask(task: IRunnable);
begin
end;

initialization
  {AB:INITIALIZATION}
  TPathFindingThreadPool.instance := TPathFindingThreadPool.Create('PathFinding', 1, 1);
  {AB:END}

end.

