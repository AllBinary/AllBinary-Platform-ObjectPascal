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
// package org.allbinary.game.midlet
unit DemoRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, DemoGameMidlet, DemoGameMidletEvent;

type
  {AB:TYPES}
  TDemoRunnable = class(TInterfacedObject, IRunnable)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    demoGameMidlet: TDemoGameMidlet;
    startDemoGameMidletEvent: TDemoGameMidletEvent;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(demoGameMidlet_: TDemoGameMidlet);
        procedure run; virtual;
  end;

implementation
uses
  DemoGameMidletStateFactory, DemoGameMidletEventHandler, ProgressCanvasFactory, MyCommandsFactory, StringMaker, CommonLabels;


{AB:CODE}

procedure TDemoRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;

function TDemoRunnable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TDemoRunnable.Create(demoGameMidlet_: TDemoGameMidlet);
begin
    inherited Create;
    InitFields;
        Self.demoGameMidlet := demoGameMidlet_;
        Self.startDemoGameMidletEvent := TDemoGameMidletEvent.Create(TJava.Box(Self.demoGameMidlet), TDemoGameMidletStateFactory.getInstance().START_DEMO);
end;
    

procedure TDemoRunnable.run;
begin
        try
            Self.logUtil.putF(TStringMaker.Create().append(TCommonLabels.getInstance().START_LABEL).append('GameCanvasRunnableInterface').toString(), TJava.Box(Self), Self.commonStrings.RUN);
            Self.demoGameMidlet.commandAction(TMyCommandsFactory.getInstance().SET_DISPLAYABLE, TProgressCanvasFactory.getInstance());
            Self.demoGameMidlet.setGameCanvasRunnableInterface(Self.demoGameMidlet.createDemoGameCanvasRunnableInterface());
            Self.demoGameMidlet.demoSetup();
            TDemoGameMidletEventHandler.getInstance().fireEvent(Self.startDemoGameMidletEvent);
            Self.demoGameMidlet.startGameCanvasRunnableInterface();
            Self.demoGameMidlet.postDemoSetup();
            Self.logUtil.putF(Self.commonStrings.END_RUNNABLE, TJava.Box(Self), Self.commonStrings.RUN);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.RUN, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

