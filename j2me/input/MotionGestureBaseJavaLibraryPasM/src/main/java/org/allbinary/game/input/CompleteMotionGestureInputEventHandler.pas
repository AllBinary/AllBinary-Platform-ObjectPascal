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
// package org.allbinary.game.input
unit CompleteMotionGestureInputEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler, BasicArrayList, CompleteMotionGestureInputEventListener;

type
  {AB:TYPES}
  TCompleteMotionGestureInputEventHandler = class(TBasicEventHandler)
  public
    list: TBasicArrayList;
    class var SINGLETON: TCompleteMotionGestureInputEventHandler;
    procedure InitFields;
        class function getInstance: TCompleteMotionGestureInputEventHandler; static;
        constructor Create;
        procedure addListener(completeMotionGestureInputEventListener_: TCompleteMotionGestureInputEventListener); virtual;
        procedure removeAllListeners; override;
        procedure removeListener(eventListenerInterface_: IEventListenerInterface); override;
        procedure fireEvent(eventObject: TAllBinaryEventObject); override;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  CompleteMotionGestureInputEvent, CompleteMotionGestureInputEventListenerInterface, EventStrings, BasicArrayListD;


{AB:CODE}

procedure TCompleteMotionGestureInputEventHandler.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;
    

class function TCompleteMotionGestureInputEventHandler.getInstance: TCompleteMotionGestureInputEventHandler;
begin
        Exit(TCompleteMotionGestureInputEventHandler.SINGLETON);
end;
    

constructor TCompleteMotionGestureInputEventHandler.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TCompleteMotionGestureInputEventHandler.addListener(completeMotionGestureInputEventListener_: TCompleteMotionGestureInputEventListener);
begin
        if not (Self.list.contains(TJava.Box(completeMotionGestureInputEventListener_))) then begin
            Self.list.add(TJava.Box(completeMotionGestureInputEventListener_));
        end;
end;
    

procedure TCompleteMotionGestureInputEventHandler.removeAllListeners;
begin
        Self.list.clear();
        inherited removeAllListeners();
end;
    

procedure TCompleteMotionGestureInputEventHandler.removeListener(eventListenerInterface_: IEventListenerInterface);
begin
        Self.list.remove(TJava.ToObject(eventListenerInterface_));
        inherited removeListener(eventListenerInterface_);
end;
    

// throws Exception
procedure TCompleteMotionGestureInputEventHandler.fireEvent(eventObject: TAllBinaryEventObject);
var
  completeMotionGestureInputEventListener_: TCompleteMotionGestureInputEventListener;
  index: Integer;
begin
        index := Self.list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            try
                completeMotionGestureInputEventListener_ := TCompleteMotionGestureInputEventListener(TJava.ToObject(Self.list.objectArray[index]));
                completeMotionGestureInputEventListener_.onCompleteMotionGestureInputEvent(TCompleteMotionGestureInputEvent(TJava.ToObject(eventObject)));
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
        end;
        inherited fireEvent(eventObject);
end;
    

// throws Exception
procedure TCompleteMotionGestureInputEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  completeMotionGestureInputEventListenerInterface_: ICompleteMotionGestureInputEventListenerInterface;
begin
        completeMotionGestureInputEventListenerInterface_ := (TJava.ToObject(eventListenerInterface_) as ICompleteMotionGestureInputEventListenerInterface);
        completeMotionGestureInputEventListenerInterface_.onCompleteMotionGestureInputEvent(TCompleteMotionGestureInputEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TCompleteMotionGestureInputEventHandler.SINGLETON := TCompleteMotionGestureInputEventHandler.Create();
  {AB:END}

end.

