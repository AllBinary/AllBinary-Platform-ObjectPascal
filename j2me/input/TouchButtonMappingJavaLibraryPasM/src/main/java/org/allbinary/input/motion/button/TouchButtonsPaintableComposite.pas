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
// package org.allbinary.input.motion.button
unit TouchButtonsPaintableComposite;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CompleteMotionGestureInputEvent, CompleteMotionGestureInputEventListenerInterface, InputMappingInterface, BasicColor, ProcessPaintable, LogUtil, AllBinaryEventObject, CommonStrings, TimeDelayHelper, TouchButtonsMappingPaintable, EventListenerInterface;

type
  {AB:TYPES}
  TTouchButtonsPaintableComposite = class(TProcessPaintable, ICompleteMotionGestureInputEventListenerInterface, IEventListenerInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    inputMappingInterface: IInputMappingInterface;
    touchButtonsPaintable: TTouchButtonsMappingPaintable;
    timeHelper: TTimeDelayHelper;
    released: Boolean;
    METHOD_NAME: string;
    RELEASE: string;
    FAST_REPEAT: string;
    IGNORE: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(inputMappingInterface_: IInputMappingInterface; basicColor_: TBasicColor);
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent_: TCompleteMotionGestureInputEvent); virtual;
        procedure process; virtual;
  end;

implementation
uses
  CompleteMotionGestureInputEventHandler, GameKey, GameKeyCompleteMotionGestureInputEvent, MotionGestureInput, TouchMotionGestureFactory, ForcedLogUtil, StringMaker, StringUtil, EventStrings;


{AB:CODE}

procedure TTouchButtonsPaintableComposite.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  Self.timeHelper := TTimeDelayHelper.Create(250);
  Self.released := True;
  Self.METHOD_NAME := 'onCompleteMotionGestureInputEvent';
  Self.RELEASE := 'Ignoring: MotionGestureInput Release';
  Self.FAST_REPEAT := 'Ignoring: MotionGestureInput Repeated To Quickly';
  Self.IGNORE := 'Ignoring: Until Released';
end;

function TTouchButtonsPaintableComposite.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTouchButtonsPaintableComposite.Create(inputMappingInterface_: IInputMappingInterface; basicColor_: TBasicColor);
begin
    inherited Create;
    InitFields;
        Self.inputMappingInterface := inputMappingInterface_;
        TCompleteMotionGestureInputEventHandler.getInstance().addListenerInterface(Self);
        Self.touchButtonsPaintable := TTouchButtonsMappingPaintable.Create(basicColor_);
end;
    

procedure TTouchButtonsPaintableComposite.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

procedure TTouchButtonsPaintableComposite.onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent_: TCompleteMotionGestureInputEvent);
var
  touchMotionGestureFactory_: TTouchMotionGestureFactory;
  gameKeyCompleteMotionGestureInputEvent_: TGameKeyCompleteMotionGestureInputEvent;
  gameKey_: TGameKey;
  motionGestureInput_: TMotionGestureInput;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'onCompleteMotionGestureInputEvent');
            touchMotionGestureFactory_ := TTouchMotionGestureFactory.getInstance();
            gameKeyCompleteMotionGestureInputEvent_ := TGameKeyCompleteMotionGestureInputEvent(TJava.ToObject(completeMotionGestureInputEvent_));
            gameKey_ := gameKeyCompleteMotionGestureInputEvent_.getGameKey();
            motionGestureInput_ := completeMotionGestureInputEvent_.getMotionGestureInput();
            if (motionGestureInput_) = (touchMotionGestureFactory_.RELEASED) then begin
                Self.logUtil.putF(Self.RELEASE, TJava.Box(Self), Self.METHOD_NAME);
                Self.released := True;
                Exit;
            end;
            if ((motionGestureInput_) = (TTouchMotionGestureFactory.getInstance().NO_MOTION)) and (not (Self.timeHelper.isTimeTNT())) then begin
                Self.logUtil.putF(Self.FAST_REPEAT, TJava.Box(Self), Self.METHOD_NAME);
                Exit;
            end;
            if not (Self.released) then begin
                Self.logUtil.putF(Self.IGNORE, TJava.Box(Self), Self.METHOD_NAME);
                Exit;
            end;
            Self.released := False;
            Self.logUtil.putF(TStringMaker.Create().append('GameKey: ').append(TStringUtil.getInstance().toString(gameKey_)).append(' MotionGestureInput: ').append(TStringUtil.getInstance().toString(motionGestureInput_)).toString(), TJava.Box(Self), Self.METHOD_NAME);
            Self.inputMappingInterface.processInputMapping(gameKey_, motionGestureInput_);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.METHOD_NAME, TJava.Box(e));
            end;
        end;
end;
    

procedure TTouchButtonsPaintableComposite.process;
begin
        TCompleteMotionGestureInputEventHandler.getInstance().removeListener(Self);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

