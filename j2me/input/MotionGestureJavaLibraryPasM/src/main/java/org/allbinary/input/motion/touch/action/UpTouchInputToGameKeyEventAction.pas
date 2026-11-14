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
unit UpTouchInputToGameKeyEventAction;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyCompleteMotionGestureInputEvent;

type
  {AB:TYPES}
  TUpTouchInputToGameKeyEventAction = class(TGameKeyCompleteMotionGestureInputEvent)
  public
    class var instance: TObject;
        class function getInstance: TGameKeyCompleteMotionGestureInputEvent; static;
        constructor Create;
  end;

implementation
uses
  PlatformInputMappingFactory, TouchMotionGestureFactory, NullUtil;


{AB:CODE}
    

class function TUpTouchInputToGameKeyEventAction.getInstance: TGameKeyCompleteMotionGestureInputEvent;
begin
        if (TUpTouchInputToGameKeyEventAction.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TUpTouchInputToGameKeyEventAction.instance := TUpTouchInputToGameKeyEventAction.Create();
        end;
        Exit(TGameKeyCompleteMotionGestureInputEvent(TJava.ToObject(TUpTouchInputToGameKeyEventAction.instance)));
end;
    

constructor TUpTouchInputToGameKeyEventAction.Create;
begin
        inherited Create('Up Action', TTouchMotionGestureFactory.getInstance().UP, TPlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
end;

initialization
  {AB:INITIALIZATION}
  TUpTouchInputToGameKeyEventAction.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

