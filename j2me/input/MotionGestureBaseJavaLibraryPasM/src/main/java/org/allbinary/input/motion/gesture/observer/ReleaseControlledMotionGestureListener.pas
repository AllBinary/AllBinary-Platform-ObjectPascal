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
unit ReleaseControlledMotionGestureListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MotionGestureInput, LogUtil, AllBinaryEventObject, CommonStrings, BasicArrayList, CompleteMotionGestureListenerInterface, MotionGestureEvent, MotionGestureEventListener, BaseMotionGestureEventListener, EventListenerInterface;

type
  {AB:TYPES}
  TReleaseControlledMotionGestureListener = class(TInterfacedObject, IMotionGestureEventListener, IBaseMotionGestureEventListener, IEventListenerInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    currentMotionGesture: TMotionGestureInput;
    isMouseGestureOccurring: Boolean;
    motionGestureCollection: TBasicArrayList;
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
        procedure onScrolledMotionGestureEvent(motionGestureEvent_: TMotionGestureEvent); virtual;
        procedure released(ev: TMotionGestureEvent); virtual;
        procedure onMotionGestureEvent(ev: TMotionGestureEvent); virtual;
  end;

implementation
uses
  TouchMotionGestureFactory, ForcedLogUtil, StringMaker, StringUtil, BasicArrayListD;


{AB:CODE}

procedure TReleaseControlledMotionGestureListener.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.currentMotionGesture := TTouchMotionGestureFactory.getInstance().NO_MOTION;
  Self.isMouseGestureOccurring := False;
  Self.motionGestureCollection := TBasicArrayListD.Create();
  
end;

function TReleaseControlledMotionGestureListener.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TReleaseControlledMotionGestureListener.Create(signed: ICompleteMotionGestureListenerInterface);
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.signed := signed;
end;
    

procedure TReleaseControlledMotionGestureListener.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(Self.commonStrings.NOT_IMPLEMENTED, TJava.Box(Self));
end;
    

procedure TReleaseControlledMotionGestureListener.onUpMotionGestureEvent(ev: TMotionGestureEvent);
begin
        Self.onMotionGestureEvent(ev);
end;
    

procedure TReleaseControlledMotionGestureListener.onDownMotionGestureEvent(ev: TMotionGestureEvent);
begin
        Self.onMotionGestureEvent(ev);
end;
    

procedure TReleaseControlledMotionGestureListener.onLeftMotionGestureEvent(ev: TMotionGestureEvent);
begin
        Self.onMotionGestureEvent(ev);
end;
    

procedure TReleaseControlledMotionGestureListener.onRightMotionGestureEvent(ev: TMotionGestureEvent);
begin
        Self.onMotionGestureEvent(ev);
end;
    

procedure TReleaseControlledMotionGestureListener.onDiagonalDownRightMotionGestureEvent(ev: TMotionGestureEvent);
begin
        Self.onMotionGestureEvent(ev);
end;
    

procedure TReleaseControlledMotionGestureListener.onDiagonalDownLeftMotionGestureEvent(ev: TMotionGestureEvent);
begin
        Self.onMotionGestureEvent(ev);
end;
    

procedure TReleaseControlledMotionGestureListener.onDiagonalUpRightMotionGestureEvent(ev: TMotionGestureEvent);
begin
        Self.onMotionGestureEvent(ev);
end;
    

procedure TReleaseControlledMotionGestureListener.onDiagonalUpLeftMotionGestureEvent(ev: TMotionGestureEvent);
begin
        Self.onMotionGestureEvent(ev);
end;
    

procedure TReleaseControlledMotionGestureListener.onPressedMotionGestureEvent(ev: TMotionGestureEvent);
begin
        Self.isMouseGestureOccurring := True;
        Self.currentMotionGesture := TTouchMotionGestureFactory.getInstance().NO_MOTION;
        Self.onMotionGestureEvent(ev);
end;
    

procedure TReleaseControlledMotionGestureListener.onScrolledMotionGestureEvent(motionGestureEvent_: TMotionGestureEvent);
begin
end;
    

procedure TReleaseControlledMotionGestureListener.released(ev: TMotionGestureEvent);
begin
        try
            if (Self.isMouseGestureOccurring) = (False) then begin
                Exit;
            end;
            Self.isMouseGestureOccurring := False;
            Self.signed.onMotionGestureCompleted(Self.motionGestureCollection);
            Self.motionGestureCollection.clear();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(TStringMaker.Create().append(Self.commonStrings.EXCEPTION_LABEL).append(TStringUtil.getInstance().toString(ev.getMotionGesture())).toString(), TJava.Box(Self), 'release', TJava.Box(e));
            end;
        end;
end;
    

procedure TReleaseControlledMotionGestureListener.onMotionGestureEvent(ev: TMotionGestureEvent);
var
  motionGestureInput_: TMotionGestureInput;
begin
        if (Self.isMouseGestureOccurring) = (False) then begin
            Exit;
        end;
        motionGestureInput_ := ev.getMotionGesture();
        if (motionGestureInput_) = (TTouchMotionGestureFactory.getInstance().PRESSED) then begin
            Self.onPressedMotionGestureEvent(ev);
        end else if (motionGestureInput_) = (TTouchMotionGestureFactory.getInstance().RELEASED) then begin
            Self.released(ev);
        end else begin
            if (Self.currentMotionGesture) <> (motionGestureInput_) then begin
                Self.currentMotionGesture := motionGestureInput_;
                Self.motionGestureCollection.add(TJava.Box(ev.getMotionGesture()));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

