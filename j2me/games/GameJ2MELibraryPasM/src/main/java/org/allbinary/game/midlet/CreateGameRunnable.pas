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
unit CreateGameRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, ABHashtable, DemoGameMidlet, DemoGameMidletEvent;

type
  {AB:TYPES}
  TCreateGameRunnable = class(TInterfacedObject, IRunnable)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    demoGameMidlet: TDemoGameMidlet;
    hashtable: TABHashtable<TObject, TObject>;
    startGameMidletEvent: TDemoGameMidletEvent;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(demoGameMidlet_: TDemoGameMidlet; hashtable: TABHashtable<TObject, TObject>);
        procedure run; virtual;
  end;

implementation
uses
  DemoGameMidletStateFactory, DemoGameMidletEventHandler, ProgressCanvas, ProgressCanvasFactory, MyCommandsFactory;


{AB:CODE}

procedure TCreateGameRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
end;

function TCreateGameRunnable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCreateGameRunnable.Create(demoGameMidlet_: TDemoGameMidlet; hashtable: TABHashtable<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.demoGameMidlet := demoGameMidlet_;
        Self.hashtable := hashtable;
        Self.startGameMidletEvent := TDemoGameMidletEvent.Create(TJava.Box(Self), TDemoGameMidletStateFactory.getInstance().START_GAME);
end;
    

procedure TCreateGameRunnable.run;
var
  progressCanvas_: TProgressCanvas;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START_RUNNABLE, TJava.Box(Self), Self.commonStrings.RUN);
            progressCanvas_ := TProgressCanvasFactory.getInstance();
            Self.demoGameMidlet.commandAction(TMyCommandsFactory.getInstance().SET_DISPLAYABLE, progressCanvas_);
            Self.demoGameMidlet.stopGameCanvasRunnableInterface();
            Self.demoGameMidlet.setGameCanvasRunnableInterface(Self.demoGameMidlet.createGameCanvasRunnableInterface());
            Self.demoGameMidlet.getGameCanvasRunnableInterface().setLoadStateHashtable(Self.hashtable);
            Self.demoGameMidlet.startGameCanvasRunnableInterface();
            TDemoGameMidletEventHandler.getInstance().fireEvent(Self.startGameMidletEvent);
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

