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
// package org.allbinary.game.input.motion.action
unit NoCompleteMotionGestureInputEventListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CompleteMotionGestureInputEvent, CompleteMotionGestureInputEventListener, AllBinaryEventObject;

type
  {AB:TYPES}
  TNoCompleteMotionGestureInputEventListener = class(TCompleteMotionGestureInputEventListener)
  public
    class var instance: TNoCompleteMotionGestureInputEventListener;
        constructor Create;
        procedure onEvent(eventObject: TAllBinaryEventObject); override;
        procedure onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent_: TCompleteMotionGestureInputEvent); override;
        class function getInstance: TNoCompleteMotionGestureInputEventListener; static;
  end;

implementation
uses
  ForcedLogUtil, EventStrings;


{AB:CODE}
    

constructor TNoCompleteMotionGestureInputEventListener.Create;
begin
    inherited Create;
end;
    

procedure TNoCompleteMotionGestureInputEventListener.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

procedure TNoCompleteMotionGestureInputEventListener.onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent_: TCompleteMotionGestureInputEvent);
begin
end;
    

class function TNoCompleteMotionGestureInputEventListener.getInstance: TNoCompleteMotionGestureInputEventListener;
begin
        Exit(TNoCompleteMotionGestureInputEventListener.instance);
end;

initialization
  {AB:INITIALIZATION}
  TNoCompleteMotionGestureInputEventListener.instance := TNoCompleteMotionGestureInputEventListener.Create();
  {AB:END}

end.

