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
// package org.allbinary.midlet
unit ProgressMidlet;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbeClientInformationInterface, ClientInformationFactory, AllBinaryMidlet;

type
  {AB:TYPES}
  // J2SEForJ2ME
  TProgressMidlet = class(TAllBinaryMidlet)
  public
    abeClientInformation: IAbeClientInformationInterface;
    procedure InitFields;
        constructor Create(clientInformationFactory_: TClientInformationFactory);
        procedure preInit; virtual;
        procedure exitProgress(isProgress: Boolean); virtual;
  end;

implementation
uses
  MidletExitProcessorFactory, ExitRunnable, Processor, PrimaryThreadPool, ThreadPool;


{AB:CODE}

procedure TProgressMidlet.InitFields;
begin
  
end;
    

constructor TProgressMidlet.Create(clientInformationFactory_: TClientInformationFactory);
begin
    inherited Create;
    InitFields;
        Self.preInit();
        Self.abeClientInformation := clientInformationFactory_.getInstance();
end;
    

procedure TProgressMidlet.preInit;
begin
end;
    

procedure TProgressMidlet.exitProgress(isProgress: Boolean);
var
  processor_: TProcessor;
  primaryThreadPool_: TThreadPool;
  runnable: IRunnable;
begin
        processor_ := TMidletExitProcessorFactory.getInstance().getExitInstance(Self);
        try
            primaryThreadPool_ := TPrimaryThreadPool.getInstance();
            runnable := TExitRunnable.Create(Self, processor_, isProgress);
            primaryThreadPool_.runTask(runnable);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'exit', TJava.Box(e));
            try
                processor_.process();
            except
                on e2: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'exit', TJava.Box(e));
                end;
            end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

