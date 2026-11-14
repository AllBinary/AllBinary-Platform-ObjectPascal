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
// package org.allbinary.game.input.mapping
unit MotionInputMappingEventListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InputMappingEvent, InputMappingEventListenerInterface, AllBinaryEventObject, EventListenerInterface;

type
  {AB:TYPES}
  TMotionInputMappingEventListener = class(TInterfacedObject, IInputMappingEventListenerInterface, IEventListenerInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onInputMappingEvent(inputMappingEvent_: TInputMappingEvent); virtual;
  end;

implementation
uses
  GameKeyCompleteMotionGestureInputEventFactory, BasicTouchInputFactory, ForcedLogUtil, EventStrings;


{AB:CODE}

function TMotionInputMappingEventListener.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TMotionInputMappingEventListener.Create;
begin
  inherited Create;
end;
    

procedure TMotionInputMappingEventListener.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

// throws Exception
procedure TMotionInputMappingEventListener.onInputMappingEvent(inputMappingEvent_: TInputMappingEvent);
begin
        TGameKeyCompleteMotionGestureInputEventFactory.getInstance().updateAll();
        TBasicTouchInputFactory.getInstance().updateAll(inputMappingEvent_.getInputToGameKeyMapping());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

