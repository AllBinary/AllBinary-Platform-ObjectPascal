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
// package org.allbinary.input
unit TouchJ2ME;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllMotionRecognizer, LogUtil;

type
  {AB:TYPES}
  // TouchJ2ME
  TTouchJ2ME = class(TObject)
  public
    logUtil: TLogUtil;
    DEVICE_ID: Integer;
    motionRecognizer: TAllMotionRecognizer;
    procedure InitFields;
        constructor Create;
        procedure pointerDragged(x: Integer; y: Integer); virtual;
        procedure pointerPressed(x: Integer; y: Integer); virtual;
        procedure pointerReleased(x: Integer; y: Integer); virtual;
  end;

implementation
uses
  BasicMotionGesturesHandler, GameMotionGestureListener, MotionGestureReceiveInterfaceFactory, CommonStrings;


{AB:CODE}

procedure TTouchJ2ME.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.DEVICE_ID := 0;
  Self.motionRecognizer := TAllMotionRecognizer.Create();
end;
    

constructor TTouchJ2ME.Create;
var
  motionGesturesHandler: TBasicMotionGesturesHandler;
begin
    inherited Create;
    InitFields;
        motionGesturesHandler := Self.motionRecognizer.getMotionGestureRecognizer().getMotionGesturesHandler();
        motionGesturesHandler.addListenerInterface(TGameMotionGestureListener.Create(TMotionGestureReceiveInterfaceFactory.getInstance()));
end;
    

procedure TTouchJ2ME.pointerDragged(x: Integer; y: Integer);
var
  commonStrings_: TCommonStrings;
begin
        try
            Self.motionRecognizer.processDraggedMotionEvent(x, y, Self.DEVICE_ID, 0);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'pointerDragged', TJava.Box(e));
            end;
        end;
end;
    

procedure TTouchJ2ME.pointerPressed(x: Integer; y: Integer);
var
  commonStrings_: TCommonStrings;
begin
        try
            Self.motionRecognizer.processStartMotionEvent(x, y, Self.DEVICE_ID, 0);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'pointerPressed', TJava.Box(e));
            end;
        end;
end;
    

procedure TTouchJ2ME.pointerReleased(x: Integer; y: Integer);
var
  commonStrings_: TCommonStrings;
begin
        try
            Self.motionRecognizer.processEndMotionEvent(x, y, Self.DEVICE_ID, 0);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'pointerReleased', TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

