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
// package org.allbinary.input.motion.touch.action
unit LeftTouchInputToGameKeyEventAction;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyCompleteMotionGestureInputEvent;

type
  {AB:TYPES}
  TLeftTouchInputToGameKeyEventAction = class(TGameKeyCompleteMotionGestureInputEvent)
  public
    class var instance: TObject;
        class function getInstance: TGameKeyCompleteMotionGestureInputEvent; static;
        constructor Create;
  end;

implementation
uses
  PlatformInputMappingFactory, TouchMotionGestureFactory, NullUtil;


{AB:CODE}
    

class function TLeftTouchInputToGameKeyEventAction.getInstance: TGameKeyCompleteMotionGestureInputEvent;
begin
        if (TLeftTouchInputToGameKeyEventAction.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TLeftTouchInputToGameKeyEventAction.instance := TLeftTouchInputToGameKeyEventAction.Create();
        end;
        Exit(TGameKeyCompleteMotionGestureInputEvent(TJava.ToObject(TLeftTouchInputToGameKeyEventAction.instance)));
end;
    

constructor TLeftTouchInputToGameKeyEventAction.Create;
begin
        inherited Create('Left Action', TTouchMotionGestureFactory.getInstance().LEFT, TPlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
end;

initialization
  {AB:INITIALIZATION}
  TLeftTouchInputToGameKeyEventAction.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

