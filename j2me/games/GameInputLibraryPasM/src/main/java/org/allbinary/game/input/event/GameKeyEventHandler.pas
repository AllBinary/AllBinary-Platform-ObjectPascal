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
// package org.allbinary.game.input.event
unit GameKeyEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, EventListenerInterface, CommonStrings, PressGameKeyEventHandler, UpGameKeyEventHandler, DownGameKeyEventHandler;

type
  {AB:TYPES}
  TGameKeyEventHandler = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    pressGameKeyEventHandler: TPressGameKeyEventHandler;
    upGameKeyEventHandler: TUpGameKeyEventHandler;
    downGameKeyEventHandler: TDownGameKeyEventHandler;
    class var instance: TGameKeyEventHandler;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGameKeyEventHandler; static;
        procedure removeAllListeners; virtual;
        procedure addListenerForPlayer(eventListenerInterface_: IEventListenerInterface; playerInputId: Integer); virtual;
        procedure addListener(eventListenerInterface_: IEventListenerInterface); virtual;
        procedure removeListener(eventListenerInterface_: IEventListenerInterface); virtual;
  end;

implementation

{AB:CODE}

procedure TGameKeyEventHandler.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.pressGameKeyEventHandler := TPressGameKeyEventHandler.getInstance();
  Self.upGameKeyEventHandler := TUpGameKeyEventHandler.getInstance();
  Self.downGameKeyEventHandler := TDownGameKeyEventHandler.getInstance();
end;

constructor TGameKeyEventHandler.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGameKeyEventHandler.getInstance: TGameKeyEventHandler;
begin
        Exit(TGameKeyEventHandler.instance);
end;
    

procedure TGameKeyEventHandler.removeAllListeners;
begin
    TJava.MonitorEnter(Self);
    try
        Self.pressGameKeyEventHandler.removeAllListeners();
        Self.upGameKeyEventHandler.removeAllListeners();
        Self.downGameKeyEventHandler.removeAllListeners();
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TGameKeyEventHandler.addListenerForPlayer(eventListenerInterface_: IEventListenerInterface; playerInputId: Integer);
begin
        Self.logUtil.putF(TJava.ToString(TJava.ToObject(eventListenerInterface_)), TJava.Box(Self), Self.commonStrings.ADD_LISTENER);
        Self.pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface_);
        Self.upGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface_);
        Self.downGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface_);
end;
    

procedure TGameKeyEventHandler.addListener(eventListenerInterface_: IEventListenerInterface);
begin
        Self.logUtil.putF(TJava.ToString(TJava.ToObject(eventListenerInterface_)), TJava.Box(Self), Self.commonStrings.ADD_LISTENER);
        Self.pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface_);
        Self.upGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface_);
        Self.downGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface_);
end;
    

procedure TGameKeyEventHandler.removeListener(eventListenerInterface_: IEventListenerInterface);
begin
        Self.logUtil.putF(TJava.ToString(TJava.ToObject(eventListenerInterface_)), TJava.Box(Self), Self.commonStrings.REMOVE_LISTENER);
        Self.pressGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface_);
        Self.upGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface_);
        Self.downGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface_);
end;

initialization
  {AB:INITIALIZATION}
  TGameKeyEventHandler.instance := TGameKeyEventHandler.Create();
  {AB:END}

end.

