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
// package org.allbinary.input.motion.gyro.action
unit RollLeftOrientationInputToGameKeyEventAction;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyCompleteMotionGestureInputEvent;

type
  {AB:TYPES}
  TRollLeftOrientationInputToGameKeyEventAction = class(TGameKeyCompleteMotionGestureInputEvent)
  public
    class var instance: TObject;
        class function getInstance: TGameKeyCompleteMotionGestureInputEvent; static;
        constructor Create;
  end;

implementation
uses
  PlatformInputMappingFactory, OrientationMotionGestureFactory, NullUtil;


{AB:CODE}
    

class function TRollLeftOrientationInputToGameKeyEventAction.getInstance: TGameKeyCompleteMotionGestureInputEvent;
begin
        if (TRollLeftOrientationInputToGameKeyEventAction.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TRollLeftOrientationInputToGameKeyEventAction.instance := TRollLeftOrientationInputToGameKeyEventAction.Create();
        end;
        Exit(TGameKeyCompleteMotionGestureInputEvent(TJava.ToObject(TRollLeftOrientationInputToGameKeyEventAction.instance)));
end;
    

constructor TRollLeftOrientationInputToGameKeyEventAction.Create;
begin
        inherited Create('Roll Left Action', TOrientationMotionGestureFactory.getInstance().ROLL_LEFT, TPlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
end;

initialization
  {AB:INITIALIZATION}
  TRollLeftOrientationInputToGameKeyEventAction.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

