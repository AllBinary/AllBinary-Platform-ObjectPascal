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
unit DownKeyEventHandlerBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PlayerGameInput, EventListenerInterface, BasicEventHandler, BasicArrayList, GameKeyEvent;

type
  {AB:TYPES}
  TDownKeyEventHandlerBase = class(TBasicEventHandler)
  public
    list: TBasicArrayList;
    class var TOTAL_LISTENERS: string;
    class var LISTENER_LABEL: string;
    procedure InitFields;
        constructor Create;
        procedure addListener(playerGameInput_: TPlayerGameInput); virtual;
        procedure removeAllListeners; override;
        procedure removeListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface); override;
        procedure removeListener(eventListenerInterface_: IEventListenerInterface); override;
        procedure fireEventI(eventObject: Integer); virtual;
        procedure fireEventForGameKeyEvent(eventObject: TGameKeyEvent); virtual;
        procedure processI(eventObject: Integer; eventListenerInterface_: IEventListenerInterface); virtual;
        procedure processEvent(eventObject: TGameKeyEvent; eventListenerInterface_: IEventListenerInterface); virtual;
        function toString: string; override;
  end;

implementation
uses
  DownKeyEventListenerInterface, StringMaker, EventStrings, BasicArrayListD;


{AB:CODE}

procedure TDownKeyEventHandlerBase.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;
    

constructor TDownKeyEventHandlerBase.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TDownKeyEventHandlerBase.addListener(playerGameInput_: TPlayerGameInput);
begin
        if not (Self.list.contains(TJava.Box(playerGameInput_))) then begin
            Self.list.add(TJava.Box(playerGameInput_));
        end;
end;
    

procedure TDownKeyEventHandlerBase.removeAllListeners;
begin
        Self.list.clear();
        inherited removeAllListeners();
end;
    

procedure TDownKeyEventHandlerBase.removeListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface);
begin
        Self.list.remove(TJava.ToObject(eventListenerInterface_));
        inherited removeListenerSingleThreaded(eventListenerInterface_);
end;
    

procedure TDownKeyEventHandlerBase.removeListener(eventListenerInterface_: IEventListenerInterface);
begin
    TJava.MonitorEnter(Self);
    try
        Self.list.remove(TJava.ToObject(eventListenerInterface_));
        inherited removeListener(eventListenerInterface_);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TDownKeyEventHandlerBase.fireEventI(eventObject: Integer);
var
  playerGameInput_: TPlayerGameInput;
  index: Integer;
  eventListenerInterface_: IEventListenerInterface;
begin
        index := Self.list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            try
                playerGameInput_ := TPlayerGameInput(TJava.ToObject(Self.list.objectArray[index]));
                playerGameInput_.onDownKey(eventObject);
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
        end;
        index := 0;
        
        while (index) < (Self.eventListenerInterfaceList.size()) do begin
            try
                eventListenerInterface_ := (TJava.ToObject(Self.eventListenerInterfaceList.get(index)) as IEventListenerInterface);
                Self.processI(eventObject, eventListenerInterface_);
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
            Inc(index);
        end;
end;
    

// throws Exception
procedure TDownKeyEventHandlerBase.fireEventForGameKeyEvent(eventObject: TGameKeyEvent);
var
  size: Integer;
  playerGameInput_: TPlayerGameInput;
  index: Integer;
  eventListenerInterface_: IEventListenerInterface;
begin
        size := Self.list.size();
        index := size;
        while (TJava.PreDec(index)) >= (0) do begin
            try
                playerGameInput_ := TPlayerGameInput(TJava.ToObject(Self.list.objectArray[index]));
                playerGameInput_.onDownKeyEvent(eventObject);
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
        end;
        index := 0;
        
        while (index) < (Self.eventListenerInterfaceList.size()) do begin
            try
                eventListenerInterface_ := (TJava.ToObject(Self.eventListenerInterfaceList.get(index)) as IEventListenerInterface);
                Self.processEvent(eventObject, eventListenerInterface_);
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
            Inc(index);
        end;
end;
    

// throws Exception
procedure TDownKeyEventHandlerBase.processI(eventObject: Integer; eventListenerInterface_: IEventListenerInterface);
var
  downKeyEventListenerInterface_: IDownKeyEventListenerInterface;
begin
        downKeyEventListenerInterface_ := (TJava.ToObject(eventListenerInterface_) as IDownKeyEventListenerInterface);
        downKeyEventListenerInterface_.onDownKey(eventObject);
end;
    

// throws Exception
procedure TDownKeyEventHandlerBase.processEvent(eventObject: TGameKeyEvent; eventListenerInterface_: IEventListenerInterface);
var
  downKeyEventListenerInterface_: IDownKeyEventListenerInterface;
begin
        downKeyEventListenerInterface_ := (TJava.ToObject(eventListenerInterface_) as IDownKeyEventListenerInterface);
        downKeyEventListenerInterface_.onDownKeyEvent(eventObject);
end;
    

function TDownKeyEventHandlerBase.toString: string;
var
  stringBuffer: TStringMaker;
  eventListenerInterface_: IEventListenerInterface;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(inherited toString());
        stringBuffer.append(TDownKeyEventHandlerBase.TOTAL_LISTENERS);
        stringBuffer.appendint(Self.list.size());
        
        for index := 0 to Self.list.size() - 1 do begin
            try
                eventListenerInterface_ := (TJava.ToObject(Self.list.get(index)) as IEventListenerInterface);
                stringBuffer.append(TDownKeyEventHandlerBase.LISTENER_LABEL);
                stringBuffer.append(TJava.ToString(TJava.ToObject(eventListenerInterface_)));
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.TOSTRING, TJava.Box(e));
                end;
            end;
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TDownKeyEventHandlerBase.TOTAL_LISTENERS := ' Total PlayerGameInput Listeners: ';
  TDownKeyEventHandlerBase.LISTENER_LABEL := ' PlayerGameInput Listener: ';
  {AB:END}

end.

