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
unit SingleKeyPressGameKeyFromMotionGestureEventListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CompleteMotionGestureInputEvent, CompleteMotionGestureInputEventListener, LogUtil, AllBinaryEventObject;

type
  {AB:TYPES}
  TSingleKeyPressGameKeyFromMotionGestureEventListener = class(TCompleteMotionGestureInputEventListener)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    constructor Create;
        procedure onEvent(eventObject: TAllBinaryEventObject); override;
        procedure onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent_: TCompleteMotionGestureInputEvent); override;
  end;

implementation
uses
  GameKeyCompleteMotionGestureInputEvent, GameKeyEvent, PressGameKeyEventHandler, ForcedLogUtil, EventStrings, CommonStrings;


{AB:CODE}

procedure TSingleKeyPressGameKeyFromMotionGestureEventListener.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TSingleKeyPressGameKeyFromMotionGestureEventListener.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TSingleKeyPressGameKeyFromMotionGestureEventListener.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

procedure TSingleKeyPressGameKeyFromMotionGestureEventListener.onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent_: TCompleteMotionGestureInputEvent);
var
  gameKeyCompleteMotionGestureInputEvent_: TGameKeyCompleteMotionGestureInputEvent;
  gameKeyEvent_: TGameKeyEvent;
  commonStrings_: TCommonStrings;
begin
        try
            gameKeyCompleteMotionGestureInputEvent_ := TGameKeyCompleteMotionGestureInputEvent(TJava.ToObject(completeMotionGestureInputEvent_));
            gameKeyEvent_ := gameKeyCompleteMotionGestureInputEvent_.getGameKeyEvent();
            TPressGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent_);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'onCompleteMotionGestureInputEvent', TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

