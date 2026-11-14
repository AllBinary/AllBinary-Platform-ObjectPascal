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
unit DownGameKeyEventHandlerBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PlayerGameInput, AllBinaryEventObject, EventListenerInterface, BasicEventHandler, BasicArrayList;

type
  {AB:TYPES}
  TDownGameKeyEventHandlerBase = class(TBasicEventHandler)
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
        procedure fireEvent(eventObject: TAllBinaryEventObject); override;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
        function toString: string; override;
  end;

implementation
uses
  GameKeyEvent, DownGameKeyEventListenerInterface, StringMaker, EventStrings, BasicArrayListD;


{AB:CODE}

procedure TDownGameKeyEventHandlerBase.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;
    

constructor TDownGameKeyEventHandlerBase.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TDownGameKeyEventHandlerBase.addListener(playerGameInput_: TPlayerGameInput);
begin
        if not (Self.list.contains(TJava.Box(playerGameInput_))) then begin
            Self.list.add(TJava.Box(playerGameInput_));
        end;
end;
    

procedure TDownGameKeyEventHandlerBase.removeAllListeners;
begin
        Self.list.clear();
        inherited removeAllListeners();
end;
    

procedure TDownGameKeyEventHandlerBase.removeListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface);
begin
        Self.list.remove(TJava.ToObject(eventListenerInterface_));
        inherited removeListenerSingleThreaded(eventListenerInterface_);
end;
    

procedure TDownGameKeyEventHandlerBase.removeListener(eventListenerInterface_: IEventListenerInterface);
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
procedure TDownGameKeyEventHandlerBase.fireEvent(eventObject: TAllBinaryEventObject);
var
  playerGameInput_: TPlayerGameInput;
  index: Integer;
begin
        index := Self.list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            try
                playerGameInput_ := TPlayerGameInput(TJava.ToObject(Self.list.objectArray[index]));
                playerGameInput_.onDownGameKeyEvent(TGameKeyEvent(TJava.ToObject(eventObject)));
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
        end;
        inherited fireEvent(eventObject);
end;
    

// throws Exception
procedure TDownGameKeyEventHandlerBase.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  downGameKeyEventListenerInterface_: IDownGameKeyEventListenerInterface;
begin
        downGameKeyEventListenerInterface_ := (TJava.ToObject(eventListenerInterface_) as IDownGameKeyEventListenerInterface);
        downGameKeyEventListenerInterface_.onDownGameKeyEvent(TGameKeyEvent(TJava.ToObject(eventObject)));
end;
    

function TDownGameKeyEventHandlerBase.toString: string;
var
  stringBuffer: TStringMaker;
  eventListenerInterface_: IEventListenerInterface;
  size: Integer;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(inherited toString());
        stringBuffer.append(TDownGameKeyEventHandlerBase.TOTAL_LISTENERS);
        stringBuffer.appendint(Self.list.size());
        
        size := Self.list.size();
        index := 0;
        while (index) < (size) do begin
            try
                eventListenerInterface_ := (TJava.ToObject(Self.list.get(index)) as IEventListenerInterface);
                stringBuffer.append(TDownGameKeyEventHandlerBase.LISTENER_LABEL);
                stringBuffer.append(TJava.ToString(TJava.ToObject(eventListenerInterface_)));
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.TOSTRING, TJava.Box(e));
                end;
            end;
            Inc(index);
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TDownGameKeyEventHandlerBase.TOTAL_LISTENERS := ' Total PlayerGameInput Listeners: ';
  TDownGameKeyEventHandlerBase.LISTENER_LABEL := ' PlayerGameInput Listener: ';
  {AB:END}

end.

