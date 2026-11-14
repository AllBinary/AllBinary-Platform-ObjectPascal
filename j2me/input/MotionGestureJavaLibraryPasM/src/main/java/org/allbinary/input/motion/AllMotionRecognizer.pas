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
// package org.allbinary.input.motion
unit AllMotionRecognizer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPointCircularPool, TouchButtonRecognizer, MotionGestureRecognizer, LogUtil, MotionRecognizer;

type
  {AB:TYPES}
  TAllMotionRecognizer = class(TMotionRecognizer)
  public
    logUtil: TLogUtil;
    motionGestureRecognizer: TMotionGestureRecognizer;
    touchButtonProcessing: Boolean;
    touchButtonRecognizer: TTouchButtonRecognizer;
    id: Integer;
    lastX: Integer;
    lastY: Integer;
    class var index: Integer;
    class var pointCircularPool: TGPointCircularPool;
    procedure InitFields;
        constructor Create;
        procedure processStartMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); override;
        procedure processEndMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); override;
        procedure processDraggedMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); override;
        procedure processMovedMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); virtual;
        procedure processScrolledMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); virtual;
        function getMotionGestureRecognizer: TMotionGestureRecognizer;
  end;

implementation
uses
  CustomGPoint;


{AB:CODE}

procedure TAllMotionRecognizer.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  Self.touchButtonProcessing := False;
  
  
  
  
end;
    

constructor TAllMotionRecognizer.Create;
begin
    inherited Create;
    InitFields;
        Self.id := TJava.PostInc(TAllMotionRecognizer.index);
        Self.motionGestureRecognizer := TMotionGestureRecognizer.Create(Self.id);
        Self.touchButtonRecognizer := TTouchButtonRecognizer.Create();
end;
    

// throws Exception
procedure TAllMotionRecognizer.processStartMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
var
  point: TCustomGPoint;
begin
        if Self.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId) then begin
            Self.touchButtonProcessing := True;
        end;
        if not (Self.touchButtonProcessing) then begin
            point := TCustomGPoint(TJava.ToObject(TAllMotionRecognizer.pointCircularPool.getNextInstance()));
            point.setX(x);
            point.setY(y);
            Self.motionGestureRecognizer.processPressedMotionEvent(point, deviceId, modifiers);
        end;
end;
    

// throws Exception
procedure TAllMotionRecognizer.processEndMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
var
  point: TCustomGPoint;
begin
        if Self.touchButtonRecognizer.releaseTouchButtonInput(x, y, deviceId) then begin
        end;
        if not (Self.touchButtonProcessing) then begin
            point := TCustomGPoint(TJava.ToObject(TAllMotionRecognizer.pointCircularPool.getNextInstance()));
            point.setX(x);
            point.setY(y);
            Self.motionGestureRecognizer.processReleasedMotionEvent(point, deviceId, modifiers);
        end;
        if Self.touchButtonProcessing then begin
            Self.touchButtonProcessing := False;
        end;
end;
    

// throws Exception
procedure TAllMotionRecognizer.processDraggedMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
var
  point: TCustomGPoint;
begin
        if Self.touchButtonProcessing then begin
            Self.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId);
        end;
        if not (Self.touchButtonProcessing) then begin
            point := TCustomGPoint(TJava.ToObject(TAllMotionRecognizer.pointCircularPool.getNextInstance()));
            point.setX(x);
            point.setY(y);
            Self.motionGestureRecognizer.processDraggedMotionEvent(point, deviceId, modifiers);
        end;
end;
    

// throws Exception
procedure TAllMotionRecognizer.processMovedMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
var
  point: TCustomGPoint;
begin
        if ((x) <> (Self.lastX)) or ((y) <> (Self.lastY)) then begin
            Self.lastX := x;
            Self.lastY := y;
            point := TCustomGPoint(TJava.ToObject(TAllMotionRecognizer.pointCircularPool.getNextInstance()));
            point.setX(x);
            point.setY(y);
            Self.motionGestureRecognizer.processMovedMotionEvent(point, deviceId, modifiers);
        end;
end;
    

// throws Exception
procedure TAllMotionRecognizer.processScrolledMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
var
  point: TCustomGPoint;
begin
        point := TCustomGPoint(TJava.ToObject(TAllMotionRecognizer.pointCircularPool.getNextInstance()));
        point.setX(x);
        point.setY(y);
        Self.motionGestureRecognizer.processScrolledMotionEvent(point, deviceId, modifiers);
end;
    

function TAllMotionRecognizer.getMotionGestureRecognizer: TMotionGestureRecognizer;
begin
        Exit(Self.motionGestureRecognizer);
end;

initialization
  {AB:INITIALIZATION}
  TAllMotionRecognizer.index := 0;
  TAllMotionRecognizer.pointCircularPool := TGPointCircularPool.Create(40);
  {AB:END}

end.

