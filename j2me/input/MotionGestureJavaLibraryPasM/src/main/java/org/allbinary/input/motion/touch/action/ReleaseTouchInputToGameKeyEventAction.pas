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
unit ReleaseTouchInputToGameKeyEventAction;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKey, GameKeyCompleteMotionGestureInputEvent;

type
  {AB:TYPES}
  TReleaseTouchInputToGameKeyEventAction = class(TGameKeyCompleteMotionGestureInputEvent)
  public
    NONE: TGameKey;
    class var instance: TObject;
    procedure InitFields;
        class function getInstance: TGameKeyCompleteMotionGestureInputEvent; static;
        constructor Create;
        procedure update; override;
  end;

implementation
uses
  GameKeyFactory, PlatformInputMappingFactory, GameKeyEventFactory, TouchMotionGestureFactory, NullUtil, CommonStrings;


{AB:CODE}

procedure TReleaseTouchInputToGameKeyEventAction.InitFields;
begin
  Self.NONE := TGameKeyFactory.getInstance().NONE;
end;
    

class function TReleaseTouchInputToGameKeyEventAction.getInstance: TGameKeyCompleteMotionGestureInputEvent;
begin
        if (TReleaseTouchInputToGameKeyEventAction.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TReleaseTouchInputToGameKeyEventAction.instance := TReleaseTouchInputToGameKeyEventAction.Create();
        end;
        Exit(TGameKeyCompleteMotionGestureInputEvent(TJava.ToObject(TReleaseTouchInputToGameKeyEventAction.instance)));
end;
    

constructor TReleaseTouchInputToGameKeyEventAction.Create;
var
  commonStrings_: TCommonStrings;
begin
        inherited Create('Release Action', TTouchMotionGestureFactory.getInstance().RELEASED, TPlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
        InitFields;
        try
            Self.setGameKey(Self.NONE);
            Self.setGameKeyEvent(TGameKeyEventFactory.getInstance().getInstanceForInput(Self, Self.NONE));
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.CONSTRUCTOR_, TJava.Box(e));
            end;
        end;
end;
    

procedure TReleaseTouchInputToGameKeyEventAction.update;
begin
end;

initialization
  {AB:INITIALIZATION}
  TReleaseTouchInputToGameKeyEventAction.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

