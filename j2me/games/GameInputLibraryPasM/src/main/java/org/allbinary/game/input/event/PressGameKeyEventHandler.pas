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
unit PressGameKeyEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PlayerGameInput, AllBinaryEventObject, EventListenerInterface, BasicEventHandler, BasicArrayList;

type
  {AB:TYPES}
  TPressGameKeyEventHandler = class(TBasicEventHandler)
  public
    list: TBasicArrayList;
    class var instance: TPressGameKeyEventHandler;
    procedure InitFields;
        class function getInstance: TPressGameKeyEventHandler; static;
        constructor Create;
        procedure addListener(playerGameInput_: TPlayerGameInput); virtual;
        procedure removeAllListeners; override;
        procedure removeListener(eventListenerInterface_: IEventListenerInterface); override;
        procedure fireEvent(eventObject: TAllBinaryEventObject); override;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  GameKeyEvent, PressGameKeyEventListenerInterface, LogUtil, EventStrings, BasicArrayListD;


{AB:CODE}

procedure TPressGameKeyEventHandler.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;
    

class function TPressGameKeyEventHandler.getInstance: TPressGameKeyEventHandler;
begin
        Exit(TPressGameKeyEventHandler.instance);
end;
    

constructor TPressGameKeyEventHandler.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TPressGameKeyEventHandler.addListener(playerGameInput_: TPlayerGameInput);
begin
        if not (Self.list.contains(TJava.Box(playerGameInput_))) then begin
            Self.list.add(TJava.Box(playerGameInput_));
        end;
end;
    

procedure TPressGameKeyEventHandler.removeAllListeners;
begin
        Self.list.clear();
        inherited removeAllListeners();
end;
    

procedure TPressGameKeyEventHandler.removeListener(eventListenerInterface_: IEventListenerInterface);
begin
        Self.list.remove(TJava.ToObject(eventListenerInterface_));
        inherited removeListener(eventListenerInterface_);
end;
    

// throws Exception
procedure TPressGameKeyEventHandler.fireEvent(eventObject: TAllBinaryEventObject);
var
  playerGameInput_: TPlayerGameInput;
  index: Integer;
begin
        index := Self.list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            try
                playerGameInput_ := TPlayerGameInput(TJava.ToObject(Self.list.objectArray[index]));
                playerGameInput_.onPressGameKeyEvent(TGameKeyEvent(TJava.ToObject(eventObject)));
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
        end;
        inherited fireEvent(eventObject);
end;
    

// throws Exception
procedure TPressGameKeyEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  pressGameKeyEventListenerInterface_: IPressGameKeyEventListenerInterface;
begin
        pressGameKeyEventListenerInterface_ := ((TJava.ToObject(eventListenerInterface_) as IPressGameKeyEventListenerInterface));
        pressGameKeyEventListenerInterface_.onPressGameKeyEvent(TGameKeyEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TPressGameKeyEventHandler.instance := TPressGameKeyEventHandler.Create();
  {AB:END}

end.

