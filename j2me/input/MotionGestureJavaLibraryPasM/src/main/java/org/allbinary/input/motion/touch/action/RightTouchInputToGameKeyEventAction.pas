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
unit RightTouchInputToGameKeyEventAction;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyCompleteMotionGestureInputEvent;

type
  {AB:TYPES}
  TRightTouchInputToGameKeyEventAction = class(TGameKeyCompleteMotionGestureInputEvent)
  public
    class var instance: TObject;
        class function getInstance: TGameKeyCompleteMotionGestureInputEvent; static;
        constructor Create;
  end;

implementation
uses
  PlatformInputMappingFactory, TouchMotionGestureFactory, NullUtil;


{AB:CODE}
    

class function TRightTouchInputToGameKeyEventAction.getInstance: TGameKeyCompleteMotionGestureInputEvent;
begin
        if (TRightTouchInputToGameKeyEventAction.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TRightTouchInputToGameKeyEventAction.instance := TRightTouchInputToGameKeyEventAction.Create();
        end;
        Exit(TGameKeyCompleteMotionGestureInputEvent(TJava.ToObject(TRightTouchInputToGameKeyEventAction.instance)));
end;
    

constructor TRightTouchInputToGameKeyEventAction.Create;
begin
        inherited Create('Right Action', TTouchMotionGestureFactory.getInstance().RIGHT, TPlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
end;

initialization
  {AB:INITIALIZATION}
  TRightTouchInputToGameKeyEventAction.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

