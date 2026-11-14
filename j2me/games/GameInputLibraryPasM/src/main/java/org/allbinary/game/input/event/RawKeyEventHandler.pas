{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.input.event
unit RawKeyEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicArrayList, RawKeyEventListener;

type
  {AB:TYPES}
  TRawKeyEventHandler = class(TObject)
  public
    logUtil: TLogUtil;
    eventListenerInterfaceList: TBasicArrayList;
    class var instance: TRawKeyEventHandler;
    class var TOTAL_LISTENERS: string;
    class var LISTENER_LABEL: string;
    procedure InitFields;
        class function getInstance: TRawKeyEventHandler; static;
        constructor Create;
        procedure removeAllListeners; virtual;
        procedure addListeners(vector: TBasicArrayList); virtual;
        procedure addListenerSingleThreaded(eventListenerInterface: IRawKeyEventListener); virtual;
        procedure addListener(eventListenerInterface: IRawKeyEventListener); virtual;
        procedure removeListenerSingleThreaded(eventListenerInterface: IRawKeyEventListener); virtual;
        procedure removeListener(eventListenerInterface: IRawKeyEventListener); virtual;
        procedure fireEvent(keyCode: Integer; deviceId: Integer; repeated: Boolean); virtual;
        procedure process(keyCode: Integer; deviceId: Integer; repeated: Boolean; eventListenerInterface: IRawKeyEventListener); virtual;
        function getEventListenerInterfaceListP: TBasicArrayList; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker, EventStrings, CommonStrings, BasicArrayListD;


{AB:CODE}

procedure TRawKeyEventHandler.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

class function TRawKeyEventHandler.getInstance: TRawKeyEventHandler;
begin
        Exit(TRawKeyEventHandler.instance);
end;
    

constructor TRawKeyEventHandler.Create;
begin
    inherited Create;
    InitFields;
        Self.eventListenerInterfaceList := TBasicArrayListD.Create();
end;
    

procedure TRawKeyEventHandler.removeAllListeners;
begin
        Self.eventListenerInterfaceList := TBasicArrayListD.Create();
end;
    

procedure TRawKeyEventHandler.addListeners(vector: TBasicArrayList);
var
  eventListenerInterface: IRawKeyEventListener;
  size: Integer;
  index: Integer;
begin
        
        size := vector.size();
        for index := 0 to size - 1 do begin
            eventListenerInterface := (TJava.ToObject(vector.get(index)) as IRawKeyEventListener);
            Self.addListener(eventListenerInterface);
        end;
end;
    

procedure TRawKeyEventHandler.addListenerSingleThreaded(eventListenerInterface: IRawKeyEventListener);
begin
        if not (Self.eventListenerInterfaceList.contains(TJava.Box(eventListenerInterface))) then begin
            Self.eventListenerInterfaceList.add(TJava.Box(eventListenerInterface));
        end;
end;
    

procedure TRawKeyEventHandler.addListener(eventListenerInterface: IRawKeyEventListener);
begin
        if not (Self.eventListenerInterfaceList.contains(TJava.Box(eventListenerInterface))) then begin
            Self.eventListenerInterfaceList.add(TJava.Box(eventListenerInterface));
        end;
end;
    

procedure TRawKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface: IRawKeyEventListener);
begin
        Self.eventListenerInterfaceList.remove(TJava.ToObject(eventListenerInterface));
end;
    

procedure TRawKeyEventHandler.removeListener(eventListenerInterface: IRawKeyEventListener);
begin
        Self.eventListenerInterfaceList.remove(TJava.ToObject(eventListenerInterface));
end;
    

// throws Exception
procedure TRawKeyEventHandler.fireEvent(keyCode: Integer; deviceId: Integer; repeated: Boolean);
var
  eventListenerInterface: IRawKeyEventListener;
  index: Integer;
  commonStrings_: TCommonStrings;
begin
        
        index := 0;
        while (index) < (Self.eventListenerInterfaceList.size()) do begin
            try
                eventListenerInterface := (TJava.ToObject(Self.eventListenerInterfaceList.get(index)) as IRawKeyEventListener);
                Self.process(keyCode, deviceId, repeated, eventListenerInterface);
            except
                on e: SysUtils.Exception do begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
            Inc(index);
        end;
end;
    

// throws Exception
procedure TRawKeyEventHandler.process(keyCode: Integer; deviceId: Integer; repeated: Boolean; eventListenerInterface: IRawKeyEventListener);
begin
        eventListenerInterface.onEventRaw(keyCode, deviceId, repeated);
end;
    

function TRawKeyEventHandler.getEventListenerInterfaceListP: TBasicArrayList;
begin
        Exit(Self.eventListenerInterfaceList);
end;
    

function TRawKeyEventHandler.toString: string;
var
  stringBuffer: TStringMaker;
  eventListenerInterface: IRawKeyEventListener;
  index: Integer;
  commonStrings_: TCommonStrings;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TRawKeyEventHandler.TOTAL_LISTENERS);
        stringBuffer.appendint(Self.eventListenerInterfaceList.size());
        
        index := 0;
        while (index) < (Self.eventListenerInterfaceList.size()) do begin
            try
                eventListenerInterface := (TJava.ToObject(Self.eventListenerInterfaceList.get(index)) as IRawKeyEventListener);
                stringBuffer.append(TRawKeyEventHandler.LISTENER_LABEL);
                stringBuffer.append(TJava.ToString(TJava.ToObject(eventListenerInterface)));
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

initialization
  {AB:INITIALIZATION}
  TRawKeyEventHandler.instance := TRawKeyEventHandler.Create();
  TRawKeyEventHandler.TOTAL_LISTENERS := 'Total Listeners: ';
  TRawKeyEventHandler.LISTENER_LABEL := ' Listener: ';
  {AB:END}

end.

