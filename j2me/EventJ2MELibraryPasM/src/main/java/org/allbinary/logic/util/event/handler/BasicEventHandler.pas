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
// package org.allbinary.logic.util.event.handler
unit BasicEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AllBinaryEventObject, EventListenerInterface, EventStrings, CommonStrings, BasicArrayList, BasicEventHandlerInterface;

type
  {AB:TYPES}
  TBasicEventHandler = class(TInterfacedObject, IBasicEventHandlerInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    eventStrings: TEventStrings;
    eventListenerInterfaceList: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure removeAllListeners; virtual;
        procedure addListeners(vector: TBasicArrayList); virtual;
        procedure removeListeners(vector: TBasicArrayList); virtual;
        procedure addListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface); virtual;
        procedure addListenerInterface(eventListenerInterface_: IEventListenerInterface); virtual;
        procedure removeListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface); virtual;
        procedure removeListener(eventListenerInterface_: IEventListenerInterface); virtual;
        procedure fireEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); virtual;
        function getEventListenerInterfaceListP: TBasicArrayList; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  JsType, StringMaker, BasicArrayListD, JsMethod, JsConstructor, JsProperty;


{AB:CODE}

procedure TBasicEventHandler.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.eventStrings := TEventStrings.getInstance();
  
end;

function TBasicEventHandler.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicEventHandler.Create;
begin
    inherited Create;
    InitFields;
        Self.eventListenerInterfaceList := TBasicArrayListD.Create();
end;
    

procedure TBasicEventHandler.removeAllListeners;
begin
        Self.eventListenerInterfaceList := TBasicArrayListD.Create();
end;
    

procedure TBasicEventHandler.addListeners(vector: TBasicArrayList);
var
  eventListenerInterface_: IEventListenerInterface;
  size: Integer;
  index: Integer;
begin
        
        size := vector.size();
        for index := 0 to size - 1 do begin
            eventListenerInterface_ := (TJava.ToObject(vector.get(index)) as IEventListenerInterface);
            Self.addListenerInterface(eventListenerInterface_);
        end;
end;
    

procedure TBasicEventHandler.removeListeners(vector: TBasicArrayList);
var
  eventListenerInterface_: IEventListenerInterface;
  size: Integer;
  index: Integer;
begin
        
        size := vector.size();
        for index := 0 to size - 1 do begin
            eventListenerInterface_ := (TJava.ToObject(vector.get(index)) as IEventListenerInterface);
            Self.removeListener(eventListenerInterface_);
        end;
end;
    

procedure TBasicEventHandler.addListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface);
begin
        if not (Self.eventListenerInterfaceList.contains(TJava.Box(eventListenerInterface_))) then begin
            Self.eventListenerInterfaceList.add(TJava.Box(eventListenerInterface_));
        end;
end;
    

procedure TBasicEventHandler.addListenerInterface(eventListenerInterface_: IEventListenerInterface);
begin
        if not (Self.eventListenerInterfaceList.contains(TJava.Box(eventListenerInterface_))) then begin
            Self.eventListenerInterfaceList.add(TJava.Box(eventListenerInterface_));
        end;
end;
    

procedure TBasicEventHandler.removeListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface);
begin
        Self.eventListenerInterfaceList.remove(TJava.ToObject(eventListenerInterface_));
end;
    

procedure TBasicEventHandler.removeListener(eventListenerInterface_: IEventListenerInterface);
begin
        Self.eventListenerInterfaceList.remove(TJava.ToObject(eventListenerInterface_));
end;
    

// throws Exception
procedure TBasicEventHandler.fireEvent(eventObject: TAllBinaryEventObject);
var
  eventListenerInterface_: IEventListenerInterface;
  index: Integer;
begin
        
        index := 0;
        while (index) < (Self.eventListenerInterfaceList.size()) do begin
            try
                eventListenerInterface_ := (TJava.ToObject(Self.eventListenerInterfaceList.get(index)) as IEventListenerInterface);
                Self.process(eventObject, eventListenerInterface_);
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.eventStrings.FIRE_EVENT, e);
                end;
            end;
            Inc(index);
        end;
end;
    

// throws Exception
procedure TBasicEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
begin
        eventListenerInterface_.onEvent(eventObject);
end;
    

function TBasicEventHandler.getEventListenerInterfaceListP: TBasicArrayList;
begin
        Exit(Self.eventListenerInterfaceList);
end;
    

function TBasicEventHandler.toString: string;
var
  stringBuffer: TStringMaker;
  eventListenerInterface_: IEventListenerInterface;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.eventStrings.TOTAL_LISTENERS);
        stringBuffer.appendint(Self.eventListenerInterfaceList.size());
        
        index := 0;
        while (index) < (Self.eventListenerInterfaceList.size()) do begin
            try
                eventListenerInterface_ := (TJava.ToObject(Self.eventListenerInterfaceList.get(index)) as IEventListenerInterface);
                stringBuffer.append(Self.eventStrings.LISTENER_LABEL);
                stringBuffer.append(TJava.ToString(TJava.ToObject(eventListenerInterface_)));
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.TOSTRING, e);
                end;
            end;
            Inc(index);
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

