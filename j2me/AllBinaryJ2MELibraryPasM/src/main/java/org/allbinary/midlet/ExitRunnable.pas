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
unit ExitRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Processor, LogUtil, CommonStrings, AllBinaryMidlet;

type
  {AB:TYPES}
  TExitRunnable = class(TInterfacedObject, IRunnable)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    midlet: TAllBinaryMidlet;
    processor: TProcessor;
    isProgress: Boolean;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(midlet: TAllBinaryMidlet; processor_: TProcessor; isProgress: Boolean);
        procedure run; virtual;
  end;

implementation
uses
  NullCanvas;


{AB:CODE}

procedure TExitRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
end;

function TExitRunnable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TExitRunnable.Create(midlet: TAllBinaryMidlet; processor_: TProcessor; isProgress: Boolean);
begin
    inherited Create;
    InitFields;
        Self.midlet := midlet;
        Self.isProgress := isProgress;
        Self.processor := processor_;
end;
    

procedure TExitRunnable.run;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START_RUNNABLE, TJava.Box(Self), Self.commonStrings.RUN);
            Self.midlet.destroyAppInRunnable(False, Self.isProgress);
            Self.midlet.setDisplay(TNullCanvas.NULL_CANVAS);
            Self.midlet.notifyDestroyed();
            Self.logUtil.putF(Self.commonStrings.END_RUNNABLE, TJava.Box(Self), Self.commonStrings.RUN);
            Self.processor.process();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.RUN, TJava.Box(e));
            try
                Self.processor.process();
            except
                on e2: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.RUN, TJava.Box(e));
                end;
            end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

