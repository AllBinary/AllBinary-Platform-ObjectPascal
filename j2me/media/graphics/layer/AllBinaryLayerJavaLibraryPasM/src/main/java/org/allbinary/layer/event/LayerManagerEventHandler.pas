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
// package org.allbinary.layer.event
unit LayerManagerEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler, BasicArrayList, LayerManagerEventListener;

type
  {AB:TYPES}
  TLayerManagerEventHandler = class(TBasicEventHandler)
  public
    list: TBasicArrayList;
    CREATE_: string;
    DELETE_: string;
    class var instance: TLayerManagerEventHandler;
    procedure InitFields;
        class function getInstance: TLayerManagerEventHandler; static;
        constructor Create;
        procedure addListener(layerManagerEventListener_: TLayerManagerEventListener); virtual;
        procedure removeAllListeners; override;
        procedure removeListener(eventListenerInterface_: IEventListenerInterface); override;
        procedure fireEvent(eventObject: TAllBinaryEventObject); override;
        procedure fireDeleteEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  LayerManagerEvent, LayerManagerEventListenerInterface, EventStrings, BasicArrayListD;


{AB:CODE}

procedure TLayerManagerEventHandler.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
  Self.CREATE_ := 'Create';
  Self.DELETE_ := 'Delete';
end;
    

class function TLayerManagerEventHandler.getInstance: TLayerManagerEventHandler;
begin
        Exit(TLayerManagerEventHandler.instance);
end;
    

constructor TLayerManagerEventHandler.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TLayerManagerEventHandler.addListener(layerManagerEventListener_: TLayerManagerEventListener);
begin
        if not (Self.list.contains(TJava.Box(layerManagerEventListener_))) then begin
            Self.list.add(TJava.Box(layerManagerEventListener_));
        end;
end;
    

procedure TLayerManagerEventHandler.removeAllListeners;
begin
        Self.list.clear();
        inherited removeAllListeners();
end;
    

procedure TLayerManagerEventHandler.removeListener(eventListenerInterface_: IEventListenerInterface);
begin
        Self.list.remove(TJava.ToObject(eventListenerInterface_));
        inherited removeListener(eventListenerInterface_);
end;
    

// throws Exception
procedure TLayerManagerEventHandler.fireEvent(eventObject: TAllBinaryEventObject);
var
  layerManagerEventListener_: TLayerManagerEventListener;
  index: Integer;
begin
        index := Self.list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            try
                layerManagerEventListener_ := TLayerManagerEventListener(TJava.ToObject(Self.list.objectArray[index]));
                layerManagerEventListener_.onCreateLayerManagerEvent(TLayerManagerEvent(TJava.ToObject(eventObject)));
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
        end;
        inherited fireEvent(eventObject);
end;
    

// throws Exception
procedure TLayerManagerEventHandler.fireDeleteEvent(eventObject: TAllBinaryEventObject);
var
  layerManagerEventListener_: TLayerManagerEventListener;
  index: Integer;
  eventListenerInterfaceList: TBasicArrayList;
  eventListenerInterface_: IEventListenerInterface;
  layerManagerEventListenerInterface_: ILayerManagerEventListenerInterface;
  listenerIndex: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        index := Self.list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            try
                layerManagerEventListener_ := TLayerManagerEventListener(TJava.ToObject(Self.list.objectArray[index]));
                layerManagerEventListener_.onDeleteLayerManagerEvent(TLayerManagerEvent(TJava.ToObject(eventObject)));
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
        end;
        eventListenerInterfaceList := Self.eventListenerInterfaceList;
        
        
        listenerIndex := 0;
        while (listenerIndex) < (eventListenerInterfaceList.size()) do begin
            try
                eventListenerInterface_ := (TJava.ToObject(eventListenerInterfaceList.objectArray[listenerIndex]) as IEventListenerInterface);
                layerManagerEventListenerInterface_ := ((TJava.ToObject(eventListenerInterface_) as ILayerManagerEventListenerInterface));
                layerManagerEventListenerInterface_.onDeleteLayerManagerEvent(TLayerManagerEvent(TJava.ToObject(eventObject)));
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
            Inc(listenerIndex);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TLayerManagerEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  layerManagerEventListenerInterface_: ILayerManagerEventListenerInterface;
begin
        layerManagerEventListenerInterface_ := ((TJava.ToObject(eventListenerInterface_) as ILayerManagerEventListenerInterface));
        layerManagerEventListenerInterface_.onCreateLayerManagerEvent(TLayerManagerEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TLayerManagerEventHandler.instance := TLayerManagerEventHandler.Create();
  {AB:END}

end.

