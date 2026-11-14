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
unit UpKeyEventHandlerBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PlayerGameInput, EventListenerInterface, BasicEventHandler, BasicArrayList;

type
  {AB:TYPES}
  TUpKeyEventHandlerBase = class(TBasicEventHandler)
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
        procedure fireEventForInteger(eventObject: Integer); virtual;
        procedure processForInteger(eventObject: Integer; eventListenerInterface_: IEventListenerInterface); virtual;
        function toString: string; override;
  end;

implementation
uses
  UpKeyEventListenerInterface, StringMaker, EventStrings, BasicArrayListD;


{AB:CODE}

procedure TUpKeyEventHandlerBase.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;
    

constructor TUpKeyEventHandlerBase.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TUpKeyEventHandlerBase.addListener(playerGameInput_: TPlayerGameInput);
begin
        if not (Self.list.contains(TJava.Box(playerGameInput_))) then begin
            Self.list.add(TJava.Box(playerGameInput_));
        end;
end;
    

procedure TUpKeyEventHandlerBase.removeAllListeners;
begin
        Self.list.clear();
        inherited removeAllListeners();
end;
    

procedure TUpKeyEventHandlerBase.removeListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface);
begin
        Self.list.remove(TJava.ToObject(eventListenerInterface_));
        inherited removeListenerSingleThreaded(eventListenerInterface_);
end;
    

procedure TUpKeyEventHandlerBase.removeListener(eventListenerInterface_: IEventListenerInterface);
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
procedure TUpKeyEventHandlerBase.fireEventForInteger(eventObject: Integer);
var
  playerGameInput_: TPlayerGameInput;
  index: Integer;
  eventListenerInterface_: IEventListenerInterface;
begin
        index := Self.list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            try
                playerGameInput_ := TPlayerGameInput(TJava.ToObject(Self.list.objectArray[index]));
                playerGameInput_.onUpKeyEvent(eventObject);
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
                Self.processForInteger(eventObject, eventListenerInterface_);
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
            Inc(index);
        end;
end;
    

// throws Exception
procedure TUpKeyEventHandlerBase.processForInteger(eventObject: Integer; eventListenerInterface_: IEventListenerInterface);
var
  upKeyEventListenerInterface_: IUpKeyEventListenerInterface;
begin
        upKeyEventListenerInterface_ := (TJava.ToObject(eventListenerInterface_) as IUpKeyEventListenerInterface);
        upKeyEventListenerInterface_.onUpKeyEvent(eventObject);
end;
    

function TUpKeyEventHandlerBase.toString: string;
var
  stringBuffer: TStringMaker;
  eventListenerInterface_: IEventListenerInterface;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(inherited toString());
        stringBuffer.append(TUpKeyEventHandlerBase.TOTAL_LISTENERS);
        stringBuffer.appendint(Self.list.size());
        for index := 0 to Self.list.size() - 1 do begin
            try
                eventListenerInterface_ := (TJava.ToObject(Self.list.get(index)) as IEventListenerInterface);
                stringBuffer.append(TUpKeyEventHandlerBase.LISTENER_LABEL);
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
  TUpKeyEventHandlerBase.TOTAL_LISTENERS := ' Total PlayerGameInput Listeners: ';
  TUpKeyEventHandlerBase.LISTENER_LABEL := ' PlayerGameInput Listener: ';
  {AB:END}

end.

