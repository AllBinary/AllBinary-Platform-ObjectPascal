// Generated Code Do Not Modify
// package org.allbinary.game.input
unit CompleteMotionGestureInputEventListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, CompleteMotionGestureInputEvent, CompleteMotionGestureInputEventListenerInterface, EventListenerInterface;

type
  {AB:TYPES}
  TCompleteMotionGestureInputEventListener = class(TInterfacedObject, ICompleteMotionGestureInputEventListenerInterface, IEventListenerInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent_: TCompleteMotionGestureInputEvent); virtual;
  end;

implementation

{AB:CODE}

function TCompleteMotionGestureInputEventListener.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TCompleteMotionGestureInputEventListener.Create;
begin
  inherited Create;
end;
    

procedure TCompleteMotionGestureInputEventListener.onEvent(eventObject: TAllBinaryEventObject);
begin
end;
    

procedure TCompleteMotionGestureInputEventListener.onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent_: TCompleteMotionGestureInputEvent);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

