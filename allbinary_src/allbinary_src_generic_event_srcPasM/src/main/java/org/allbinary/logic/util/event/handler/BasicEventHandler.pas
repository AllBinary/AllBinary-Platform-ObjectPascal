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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AllBinaryEventObject, EventListenerInterface, BasicArrayList, BasicEventHandlerInterface;

type
  {AB:TYPES}
  TBasicEventHandler = class(TInterfacedObject, IBasicEventHandlerInterface)
  public
    logUtil: TLogUtil;
    eventListenerInterfaceList: TBasicArrayList;
    class var PERFORMANCE_MESSAGE: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function toString: string; virtual;
        procedure removeAllListeners; virtual;
        procedure addListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface); virtual;
        procedure addListenerInterface(eventListenerInterface_: IEventListenerInterface); virtual;
        procedure removeListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface); virtual;
        procedure removeListener(eventListenerInterface_: IEventListenerInterface); virtual;
        procedure fireEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); virtual;
        function getEventListenerInterfaceListP: TBasicArrayList; virtual;
  end;

implementation
uses
  StringMaker, StringUtil, EventStrings, CommonStrings, BasicArrayListD;


{AB:CODE}

procedure TBasicEventHandler.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
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
    

function TBasicEventHandler.toString: string;
var
  stringBuffer: TStringMaker;
  LISTENER: string;
  eventListenerInterface_: IEventListenerInterface;
  index: Integer;
  commonStrings_: TCommonStrings;
begin
        stringBuffer := TStringMaker.Create();
        LISTENER := ' Listener: ';
        stringBuffer.append('Total Listeners: ');
        stringBuffer.appendint(Self.eventListenerInterfaceList.size());
        
        index := 0;
        while (index) < (Self.eventListenerInterfaceList.size()) do begin
            try
                eventListenerInterface_ := (TJava.ToObject(Self.eventListenerInterfaceList.objectArray[index]) as IEventListenerInterface);
                stringBuffer.append(LISTENER);
                stringBuffer.append(TStringUtil.getInstance().toString(TJava.ToObject(eventListenerInterface_)));
            except
                on e: SysUtils.Exception do begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.TOSTRING, TJava.Box(e));
                end;
            end;
            Inc(index);
        end;
        Exit(stringBuffer.toString());
end;
    

procedure TBasicEventHandler.removeAllListeners;
begin
    TJava.MonitorEnter(Self);
    try
        Self.eventListenerInterfaceList := TBasicArrayListD.Create();
    finally
    TJava.MonitorExit(Self);
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
    TJava.MonitorEnter(Self);
    try
        if not (Self.eventListenerInterfaceList.contains(TJava.Box(eventListenerInterface_))) then begin
            Self.eventListenerInterfaceList.add(TJava.Box(eventListenerInterface_));
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TBasicEventHandler.removeListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface);
begin
        Self.eventListenerInterfaceList.remove(TJava.ToObject(eventListenerInterface_));
end;
    

procedure TBasicEventHandler.removeListener(eventListenerInterface_: IEventListenerInterface);
begin
    TJava.MonitorEnter(Self);
    try
        Self.eventListenerInterfaceList.remove(TJava.ToObject(eventListenerInterface_));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TBasicEventHandler.fireEvent(eventObject: TAllBinaryEventObject);
var
  index: Integer;
  eventListenerInterface_: IEventListenerInterface;
  commonStrings_: TCommonStrings;
begin
    TJava.MonitorEnter(Self);
    try
        index := 0;
        
        while (index) < (Self.eventListenerInterfaceList.size()) do begin
            try
                eventListenerInterface_ := (TJava.ToObject(Self.eventListenerInterfaceList.objectArray[index]) as IEventListenerInterface);
                Self.process(eventObject, eventListenerInterface_);
            except
                on e: SysUtils.Exception do begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
            Inc(index);
        end;
    finally
    TJava.MonitorExit(Self);
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

initialization
  {AB:INITIALIZATION}
  TBasicEventHandler.PERFORMANCE_MESSAGE := 'Use Custom onEvent Methods for needed optimization';
  {AB:END}

end.

