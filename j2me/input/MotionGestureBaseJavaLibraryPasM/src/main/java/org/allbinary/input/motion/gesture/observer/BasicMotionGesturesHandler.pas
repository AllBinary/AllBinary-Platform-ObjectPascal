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
unit BasicMotionGesturesHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TBasicMotionGesturesHandler = class(TBasicEventHandler)
  public
    class var SINGLETON: TBasicMotionGesturesHandler;
        class function getInstance: TBasicMotionGesturesHandler; static;
        constructor Create;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  BaseMotionGestureEventListener, MotionGestureEvent;


{AB:CODE}
    

class function TBasicMotionGesturesHandler.getInstance: TBasicMotionGesturesHandler;
begin
        Exit(TBasicMotionGesturesHandler.SINGLETON);
end;
    

constructor TBasicMotionGesturesHandler.Create;
begin
    inherited Create;
end;
    

// throws Exception
procedure TBasicMotionGesturesHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  baseMotionGestureEventListener_: IBaseMotionGestureEventListener;
begin
        baseMotionGestureEventListener_ := (TJava.ToObject(eventListenerInterface_) as IBaseMotionGestureEventListener);
        baseMotionGestureEventListener_.onMotionGestureEvent(TMotionGestureEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TBasicMotionGesturesHandler.SINGLETON := TBasicMotionGesturesHandler.Create();
  {AB:END}

end.

