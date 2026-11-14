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
unit GameMotionGestureListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AllBinaryEventObject, CommonStrings, BasicArrayList, CompleteMotionGestureListenerInterface, MotionGestureEvent, MotionGestureEventListener, BaseMotionGestureEventListener, EventListenerInterface;

type
  {AB:TYPES}
  TGameMotionGestureListener = class(TInterfacedObject, IMotionGestureEventListener, IBaseMotionGestureEventListener, IEventListenerInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    motionGestureCollection: TBasicArrayList;
    touchGestureCollection: TBasicArrayList;
    signed: ICompleteMotionGestureListenerInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(signed: ICompleteMotionGestureListenerInterface);
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onUpMotionGestureEvent(ev: TMotionGestureEvent); virtual;
        procedure onDownMotionGestureEvent(ev: TMotionGestureEvent); virtual;
        procedure onLeftMotionGestureEvent(ev: TMotionGestureEvent); virtual;
        procedure onRightMotionGestureEvent(ev: TMotionGestureEvent); virtual;
        procedure onDiagonalDownRightMotionGestureEvent(ev: TMotionGestureEvent); virtual;
        procedure onDiagonalDownLeftMotionGestureEvent(ev: TMotionGestureEvent); virtual;
        procedure onDiagonalUpRightMotionGestureEvent(ev: TMotionGestureEvent); virtual;
        procedure onDiagonalUpLeftMotionGestureEvent(ev: TMotionGestureEvent); virtual;
        procedure onPressedMotionGestureEvent(ev: TMotionGestureEvent); virtual;
        procedure released(ev: TMotionGestureEvent); virtual;
        procedure onScrolledMotionGestureEvent(motionGestureEvent_: TMotionGestureEvent); virtual;
        procedure onMotionGestureEvent(ev: TMotionGestureEvent); virtual;
  end;

implementation
uses
  MotionGestureInput, TouchMotionGestureFactory, ForcedLogUtil, StringMaker, StringUtil, BasicArrayListD;


{AB:CODE}

procedure TGameMotionGestureListener.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.motionGestureCollection := TBasicArrayListD.Create();
  Self.touchGestureCollection := TBasicArrayListD.Create();
  
end;

function TGameMotionGestureListener.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGameMotionGestureListener.Create(signed: ICompleteMotionGestureListenerInterface);
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.signed := signed;
end;
    

procedure TGameMotionGestureListener.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(Self.commonStrings.NOT_IMPLEMENTED, TJava.Box(Self));
end;
    

procedure TGameMotionGestureListener.onUpMotionGestureEvent(ev: TMotionGestureEvent);
begin
        Self.onMotionGestureEvent(ev);
end;
    

procedure TGameMotionGestureListener.onDownMotionGestureEvent(ev: TMotionGestureEvent);
begin
        Self.onMotionGestureEvent(ev);
end;
    

procedure TGameMotionGestureListener.onLeftMotionGestureEvent(ev: TMotionGestureEvent);
begin
        Self.onMotionGestureEvent(ev);
end;
    

procedure TGameMotionGestureListener.onRightMotionGestureEvent(ev: TMotionGestureEvent);
begin
        Self.onMotionGestureEvent(ev);
end;
    

procedure TGameMotionGestureListener.onDiagonalDownRightMotionGestureEvent(ev: TMotionGestureEvent);
begin
        Self.onMotionGestureEvent(ev);
end;
    

procedure TGameMotionGestureListener.onDiagonalDownLeftMotionGestureEvent(ev: TMotionGestureEvent);
begin
        Self.onMotionGestureEvent(ev);
end;
    

procedure TGameMotionGestureListener.onDiagonalUpRightMotionGestureEvent(ev: TMotionGestureEvent);
begin
        Self.onMotionGestureEvent(ev);
end;
    

procedure TGameMotionGestureListener.onDiagonalUpLeftMotionGestureEvent(ev: TMotionGestureEvent);
begin
        Self.onMotionGestureEvent(ev);
end;
    

procedure TGameMotionGestureListener.onPressedMotionGestureEvent(ev: TMotionGestureEvent);
begin
        Self.touchGestureCollection.add(TJava.Box(ev.getMotionGesture()));
end;
    

procedure TGameMotionGestureListener.released(ev: TMotionGestureEvent);
var
  stringBuffer: TStringMaker;
begin
        try
            Self.touchGestureCollection.add(TJava.Box(ev.getMotionGesture()));
            Self.signed.onMotionGestureCompleted(Self.touchGestureCollection);
            Self.touchGestureCollection.clear();
        except
            on e: SysUtils.Exception do begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.commonStrings.EXCEPTION_LABEL);
            stringBuffer.append(TStringUtil.getInstance().toString(ev.getMotionGesture()));
            Self.logUtil.put(stringBuffer.toString(), TJava.Box(Self), 'release', TJava.Box(e));
            end;
        end;
end;
    

procedure TGameMotionGestureListener.onScrolledMotionGestureEvent(motionGestureEvent_: TMotionGestureEvent);
begin
end;
    

procedure TGameMotionGestureListener.onMotionGestureEvent(ev: TMotionGestureEvent);
var
  motionGestureInput_: TMotionGestureInput;
  stringBuffer: TStringMaker;
begin
        try
            motionGestureInput_ := ev.getMotionGesture();
            if (motionGestureInput_) = (TTouchMotionGestureFactory.getInstance().PRESSED) then begin
                Self.onPressedMotionGestureEvent(ev);
            end else if (motionGestureInput_) = (TTouchMotionGestureFactory.getInstance().RELEASED) then begin
                Self.released(ev);
            end else begin
                Self.motionGestureCollection.add(TJava.Box(motionGestureInput_));
                Self.signed.onMotionGestureCompleted(Self.motionGestureCollection);
                Self.motionGestureCollection.clear();
                Self.touchGestureCollection.clear();
            end;
        except
            on e: SysUtils.Exception do begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.commonStrings.EXCEPTION_LABEL);
            stringBuffer.append(TStringUtil.getInstance().toString(ev.getMotionGesture()));
            Self.logUtil.put(stringBuffer.toString(), TJava.Box(Self), 'onMotionGestureEvent', TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

