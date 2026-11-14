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
// package org.allbinary.game.init
unit DefaultGameInitializationListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInitializedEvent, GameInitializedListenerInterface, SWTJOGLProcessor, LogUtil, AllBinaryEventObject, EventListenerInterface;

type
  {AB:TYPES}
  TDefaultGameInitializationListener = class(TInterfacedObject, IGameInitializedListenerInterface, IEventListenerInterface)
  public
    logUtil: TLogUtil;
    swtJOGLProcessor: TSWTJOGLProcessor;
    firstTime: Boolean;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onGameInitialized(gameInitializedEvent_: TGameInitializedEvent); virtual;
  end;

implementation
uses
  GameInitializedEventHandler, FeatureResourceInitializationUtil, ForcedLogUtil, EventStrings, CommonStrings;


{AB:CODE}

procedure TDefaultGameInitializationListener.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.swtJOGLProcessor := TSWTJOGLProcessor.getInstance();
  Self.firstTime := True;
end;

function TDefaultGameInitializationListener.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TDefaultGameInitializationListener.Create;
var
  gameInitializedEventHandler_: TGameInitializedEventHandler;
begin
    inherited Create;
    InitFields;
        gameInitializedEventHandler_ := TGameInitializedEventHandler.getInstance();
        gameInitializedEventHandler_.removeAllListeners();
        gameInitializedEventHandler_.addListenerInterface((TJava.ToObject(Self) as IGameInitializedListenerInterface));
end;
    

procedure TDefaultGameInitializationListener.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

procedure TDefaultGameInitializationListener.onGameInitialized(gameInitializedEvent_: TGameInitializedEvent);
var
  ON_GAME_INITIALIZED: string;
  commonStrings_: TCommonStrings;
begin
        ON_GAME_INITIALIZED := 'onGameInitialized';
        commonStrings_ := TCommonStrings.getInstance();
        try
            Self.logUtil.putF(commonStrings_.START, TJava.Box(Self), ON_GAME_INITIALIZED);
            while not (Self.swtJOGLProcessor.isHolderCreated()) do begin
                Self.logUtil.putF(commonStrings_.UPDATE, TJava.Box(Self), ON_GAME_INITIALIZED);
                SysUtils.Sleep(20);
            end;
            TFeatureResourceInitializationUtil.getInstance().init(gameInitializedEvent_.getLevel());
            if Self.firstTime then begin
                Self.firstTime := False;
            end else begin
                Self.swtJOGLProcessor.onSurfaceChanged();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), ON_GAME_INITIALIZED, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

