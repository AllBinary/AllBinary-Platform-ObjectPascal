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
// package org.allbinary.android.input.motion.event
unit AnalogControllerConfigurationEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler, BasicArrayList, AnalogControllerConfigurationEventListenerInterface;

type
  {AB:TYPES}
  TAnalogControllerConfigurationEventHandler = class(TBasicEventHandler)
  public
    list: TBasicArrayList;
    class var instance: TAnalogControllerConfigurationEventHandler;
    procedure InitFields;
        class function getInstance: TAnalogControllerConfigurationEventHandler; static;
        constructor Create;
        procedure addListener(analogControllerConfigurationEventListenerInterface_: IAnalogControllerConfigurationEventListenerInterface); virtual;
        procedure removeAllListeners; override;
        procedure removeListener(eventListenerInterface_: IEventListenerInterface); override;
        procedure fireEvent(eventObject: TAllBinaryEventObject); override;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  AnalogControllerConfigurationEvent, EventStrings, BasicArrayListD;


{AB:CODE}

procedure TAnalogControllerConfigurationEventHandler.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;
    

class function TAnalogControllerConfigurationEventHandler.getInstance: TAnalogControllerConfigurationEventHandler;
begin
        Exit(TAnalogControllerConfigurationEventHandler.instance);
end;
    

constructor TAnalogControllerConfigurationEventHandler.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TAnalogControllerConfigurationEventHandler.addListener(analogControllerConfigurationEventListenerInterface_: IAnalogControllerConfigurationEventListenerInterface);
begin
        if not (Self.list.contains(TJava.Box(analogControllerConfigurationEventListenerInterface_))) then begin
            Self.list.add(TJava.Box(analogControllerConfigurationEventListenerInterface_));
        end;
end;
    

procedure TAnalogControllerConfigurationEventHandler.removeAllListeners;
begin
        Self.list.clear();
        inherited removeAllListeners();
end;
    

procedure TAnalogControllerConfigurationEventHandler.removeListener(eventListenerInterface_: IEventListenerInterface);
begin
        Self.list.remove(TJava.ToObject(eventListenerInterface_));
        inherited removeListener(eventListenerInterface_);
end;
    

// throws Exception
procedure TAnalogControllerConfigurationEventHandler.fireEvent(eventObject: TAllBinaryEventObject);
var
  playerGameInput: IAnalogControllerConfigurationEventListenerInterface;
  index: Integer;
begin
        index := Self.list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            try
                playerGameInput := (TJava.ToObject(Self.list.objectArray[index]) as IAnalogControllerConfigurationEventListenerInterface);
                playerGameInput.onAnalogControllerConfigurationEvent(TAnalogControllerConfigurationEvent(TJava.ToObject(eventObject)));
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
        end;
        inherited fireEvent(eventObject);
end;
    

// throws Exception
procedure TAnalogControllerConfigurationEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  analogControllerConfigurationEventListenerInterface_: IAnalogControllerConfigurationEventListenerInterface;
begin
        analogControllerConfigurationEventListenerInterface_ := ((TJava.ToObject(eventListenerInterface_) as IAnalogControllerConfigurationEventListenerInterface));
        analogControllerConfigurationEventListenerInterface_.onAnalogControllerConfigurationEvent(TAnalogControllerConfigurationEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TAnalogControllerConfigurationEventHandler.instance := TAnalogControllerConfigurationEventHandler.Create();
  {AB:END}

end.

