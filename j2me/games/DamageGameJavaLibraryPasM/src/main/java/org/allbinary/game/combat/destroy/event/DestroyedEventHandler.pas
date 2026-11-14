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
// package org.allbinary.game.combat.destroy.event
unit DestroyedEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollidableDestroyableDamageableLayer, AllBinaryEventObject, EventListenerInterface, BasicEventHandler, BasicArrayList;

type
  {AB:TYPES}
  TDestroyedEventHandler = class(TBasicEventHandler)
  public
    list: TBasicArrayList;
    class var instance: TDestroyedEventHandler;
    procedure InitFields;
        class function getInstance: TDestroyedEventHandler; static;
        constructor Create;
        procedure addListener(collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer); virtual;
        procedure removeAllListeners; override;
        procedure removeListener(eventListenerInterface_: IEventListenerInterface); override;
        procedure fireEvent(eventObject: TAllBinaryEventObject); override;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  DestroyedEvent, DestroyedEventListenerInterface, EventStrings, BasicArrayListD;


{AB:CODE}

procedure TDestroyedEventHandler.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;
    

class function TDestroyedEventHandler.getInstance: TDestroyedEventHandler;
begin
    TJava.MonitorEnter(nil);
    try
        Exit(TDestroyedEventHandler.instance);
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

constructor TDestroyedEventHandler.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TDestroyedEventHandler.addListener(collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer);
begin
        if not (Self.list.contains(TJava.Box(collidableDestroyableDamageableLayer_))) then begin
            Self.list.add(TJava.Box(collidableDestroyableDamageableLayer_));
        end;
end;
    

procedure TDestroyedEventHandler.removeAllListeners;
begin
    TJava.MonitorEnter(Self);
    try
        Self.list.clear();
        inherited removeAllListeners();
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TDestroyedEventHandler.removeListener(eventListenerInterface_: IEventListenerInterface);
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
procedure TDestroyedEventHandler.fireEvent(eventObject: TAllBinaryEventObject);
var
  collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer;
  index: Integer;
begin
        index := Self.list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            try
                collidableDestroyableDamageableLayer_ := TCollidableDestroyableDamageableLayer(TJava.ToObject(Self.list.objectArray[index]));
                collidableDestroyableDamageableLayer_.onDestroyed(TDestroyedEvent(TJava.ToObject(eventObject)));
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
        end;
        inherited fireEvent(eventObject);
end;
    

// throws Exception
procedure TDestroyedEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  destroyedEventListenerInterface_: IDestroyedEventListenerInterface;
begin
        destroyedEventListenerInterface_ := (TJava.ToObject(eventListenerInterface_) as IDestroyedEventListenerInterface);
        destroyedEventListenerInterface_.onDestroyed(TDestroyedEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TDestroyedEventHandler.instance := TDestroyedEventHandler.Create();
  {AB:END}

end.

