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
// package org.allbinary.game.layer.hud.event
unit GameNotificationEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TGameNotificationEventHandler = class(TBasicEventHandler)
  public
    enabled: Boolean;
    class var instance: TGameNotificationEventHandler;
    procedure InitFields;
        constructor Create;
        procedure removeAllListeners; override;
        class function getInstance: TGameNotificationEventHandler; static;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  GameNotificationListenerInterface, GameNotificationEvent, NullEventListener, BasicArrayList;


{AB:CODE}

procedure TGameNotificationEventHandler.InitFields;
begin
  Self.enabled := True;
end;
    

constructor TGameNotificationEventHandler.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TGameNotificationEventHandler.removeAllListeners;
var
  eventListenerInterface_: IEventListenerInterface;
  list: TBasicArrayList;
begin
    TJava.MonitorEnter(Self);
    try
        eventListenerInterface_ := TNullEventListener.NULL_EVENT_LISTENER;
        list := Self.eventListenerInterfaceList;
        if (list.size()) > (0) then begin
            eventListenerInterface_ := (TJava.ToObject(list.objectArray[0]) as IEventListenerInterface);
        end;
        inherited removeAllListeners();
        if TJava.ToObject(eventListenerInterface_) <> TJava.ToObject(TNullEventListener.NULL_EVENT_LISTENER) then begin
            Self.addListenerInterface(eventListenerInterface_);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

class function TGameNotificationEventHandler.getInstance: TGameNotificationEventHandler;
begin
        Exit(TGameNotificationEventHandler.instance);
end;
    

// throws Exception
procedure TGameNotificationEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  gameNotificationListenerInterface_: IGameNotificationListenerInterface;
begin
        if not (Self.enabled) then begin
            Exit;
        end;
        gameNotificationListenerInterface_ := (TJava.ToObject(eventListenerInterface_) as IGameNotificationListenerInterface);
        gameNotificationListenerInterface_.onGameNotificationEvent(TGameNotificationEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TGameNotificationEventHandler.instance := TGameNotificationEventHandler.Create();
  {AB:END}

end.

