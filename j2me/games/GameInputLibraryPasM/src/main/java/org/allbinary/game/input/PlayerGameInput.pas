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
// package org.allbinary.game.input
unit PlayerGameInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyEvent, GameKeyEventListenerInterface, AllBinaryEventObject, BasicArrayList, GameInputStrings, GameInput, DownGameKeyEventListenerInterface, EventListenerInterface, PressGameKeyEventListenerInterface, UpGameKeyEventListenerInterface;

type
  {AB:TYPES}
  TPlayerGameInput = class(TGameInput, IGameKeyEventListenerInterface, IDownGameKeyEventListenerInterface, IEventListenerInterface, IPressGameKeyEventListenerInterface, IUpGameKeyEventListenerInterface)
  public
    gameInputStrings: TGameInputStrings;
    playerInputId: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(gameKeyEventList: TBasicArrayList; removalGameKeyEventList: TBasicArrayList; playerInputId: Integer);
        procedure onPressGameKeyEvent(gameKeyEvent_: TGameKeyEvent); virtual;
        procedure onDownGameKeyEvent(gameKeyEvent_: TGameKeyEvent); virtual;
        procedure onDownKeyEvent(gameKeyEvent_: TGameKeyEvent); virtual;
        procedure onDownKey(gameKeyEvent_: Integer); virtual;
        procedure onUpGameKeyEvent(gameKeyEvent_: TGameKeyEvent); virtual;
        procedure onUpKeyEvent(gameKeyEvent_: Integer); virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        function getPlayerInputId: Integer; virtual;
  end;

implementation
uses
  ForcedLogUtil, PreLogUtil, StringMaker, EventStrings, CommonLabels;


{AB:CODE}

procedure TPlayerGameInput.InitFields;
begin
  Self.gameInputStrings := TGameInputStrings.getInstance();
  
end;

function TPlayerGameInput.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPlayerGameInput.Create(gameKeyEventList: TBasicArrayList; removalGameKeyEventList: TBasicArrayList; playerInputId: Integer);
begin
        inherited Create(gameKeyEventList, removalGameKeyEventList);
        InitFields;
        Self.playerInputId := playerInputId;
end;
    

procedure TPlayerGameInput.onPressGameKeyEvent(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
        Self.add(gameKeyEvent_);
        Self.addForRemoval(gameKeyEvent_);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TPlayerGameInput.onDownGameKeyEvent(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
        Self.add(gameKeyEvent_);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TPlayerGameInput.onDownKeyEvent(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
        Self.add(gameKeyEvent_);
        Self.addForRemoval(gameKeyEvent_);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TPlayerGameInput.onDownKey(gameKeyEvent_: Integer);
begin
    TJava.MonitorEnter(Self);
    try
        TPreLogUtil.put(TStringMaker.Create().append(TCommonLabels.getInstance().START_LABEL).append(gameKeyEvent_.toString()).toString(), TJava.Box(Self), Self.gameInputStrings.ON_DOWN_GAME_KEY);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TPlayerGameInput.onUpGameKeyEvent(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
        Self.addForRemoval(gameKeyEvent_);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TPlayerGameInput.onUpKeyEvent(gameKeyEvent_: Integer);
begin
    TJava.MonitorEnter(Self);
    try
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TPlayerGameInput.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

function TPlayerGameInput.getPlayerInputId: Integer;
begin
        Exit(Self.playerInputId);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

