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
unit UpGameKeyEventHandlerBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PlayerGameInput, AllBinaryEventObject, EventListenerInterface, BasicEventHandler, BasicArrayList;

type
  {AB:TYPES}
  TUpGameKeyEventHandlerBase = class(TBasicEventHandler)
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
  GameKeyEvent, UpGameKeyEventListenerInterface, StringMaker, EventStrings, BasicArrayListD;


{AB:CODE}

procedure TUpGameKeyEventHandlerBase.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;
    

constructor TUpGameKeyEventHandlerBase.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TUpGameKeyEventHandlerBase.addListener(playerGameInput_: TPlayerGameInput);
begin
        if not (Self.list.contains(TJava.Box(playerGameInput_))) then begin
            Self.list.add(TJava.Box(playerGameInput_));
        end;
end;
    

procedure TUpGameKeyEventHandlerBase.removeAllListeners;
begin
        Self.list.clear();
        inherited removeAllListeners();
end;
    

procedure TUpGameKeyEventHandlerBase.removeListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface);
begin
        Self.list.remove(TJava.ToObject(eventListenerInterface_));
        inherited removeListenerSingleThreaded(eventListenerInterface_);
end;
    

procedure TUpGameKeyEventHandlerBase.removeListener(eventListenerInterface_: IEventListenerInterface);
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
procedure TUpGameKeyEventHandlerBase.fireEvent(eventObject: TAllBinaryEventObject);
var
  playerGameInput_: TPlayerGameInput;
  index: Integer;
begin
        index := Self.list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            try
                playerGameInput_ := TPlayerGameInput(TJava.ToObject(Self.list.objectArray[index]));
                playerGameInput_.onUpGameKeyEvent(TGameKeyEvent(TJava.ToObject(eventObject)));
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
        end;
        inherited fireEvent(eventObject);
end;
    

// throws Exception
procedure TUpGameKeyEventHandlerBase.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  upGameKeyEventListenerInterface_: IUpGameKeyEventListenerInterface;
begin
        upGameKeyEventListenerInterface_ := (TJava.ToObject(eventListenerInterface_) as IUpGameKeyEventListenerInterface);
        upGameKeyEventListenerInterface_.onUpGameKeyEvent(TGameKeyEvent(TJava.ToObject(eventObject)));
end;
    

function TUpGameKeyEventHandlerBase.toString: string;
var
  stringBuffer: TStringMaker;
  size: Integer;
  eventListenerInterface_: IEventListenerInterface;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        size := Self.list.size();
        stringBuffer.append(inherited toString());
        stringBuffer.append(TUpGameKeyEventHandlerBase.TOTAL_LISTENERS);
        stringBuffer.appendint(size);
        for index := 0 to size - 1 do begin
            try
                eventListenerInterface_ := (TJava.ToObject(Self.list.get(index)) as IEventListenerInterface);
                stringBuffer.append(TUpGameKeyEventHandlerBase.LISTENER_LABEL);
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
  TUpGameKeyEventHandlerBase.TOTAL_LISTENERS := ' Total PlayerGameInput Listeners: ';
  TUpGameKeyEventHandlerBase.LISTENER_LABEL := ' PlayerGameInput Listener: ';
  {AB:END}

end.

