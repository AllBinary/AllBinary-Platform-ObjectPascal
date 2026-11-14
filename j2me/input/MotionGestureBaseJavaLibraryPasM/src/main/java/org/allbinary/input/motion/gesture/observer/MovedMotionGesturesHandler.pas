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
// package org.allbinary.input.motion.gesture.observer
unit MovedMotionGesturesHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TMovedMotionGesturesHandler = class(TBasicEventHandler)
  public
    class var SINGLETON: TMovedMotionGesturesHandler;
        class function getInstance: TMovedMotionGesturesHandler; static;
        constructor Create;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  BaseMotionGestureEventListener, MotionGestureEvent;


{AB:CODE}
    

class function TMovedMotionGesturesHandler.getInstance: TMovedMotionGesturesHandler;
begin
        Exit(TMovedMotionGesturesHandler.SINGLETON);
end;
    

constructor TMovedMotionGesturesHandler.Create;
begin
    inherited Create;
end;
    

// throws Exception
procedure TMovedMotionGesturesHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  baseMotionGestureEventListener_: IBaseMotionGestureEventListener;
begin
        baseMotionGestureEventListener_ := (TJava.ToObject(eventListenerInterface_) as IBaseMotionGestureEventListener);
        baseMotionGestureEventListener_.onMotionGestureEvent(TMotionGestureEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TMovedMotionGesturesHandler.SINGLETON := TMovedMotionGesturesHandler.Create();
  {AB:END}

end.

