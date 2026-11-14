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
unit GestureOnlyMotionRecognizer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPointCircularPool, MotionGestureRecognizer, MotionRecognizer;

type
  {AB:TYPES}
  TGestureOnlyMotionRecognizer = class(TMotionRecognizer)
  public
    motionGestureRecognizer: TMotionGestureRecognizer;
    id: Integer;
    class var index: Integer;
    class var pointCircularPool: TGPointCircularPool;
    procedure InitFields;
        constructor Create;
        procedure processStartMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); override;
        procedure processEndMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); override;
        procedure processDraggedMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); override;
  end;

implementation
uses
  CustomGPoint;


{AB:CODE}

procedure TGestureOnlyMotionRecognizer.InitFields;
begin
  
  
end;
    

constructor TGestureOnlyMotionRecognizer.Create;
begin
    inherited Create;
    InitFields;
        Self.id := TJava.PostInc(TGestureOnlyMotionRecognizer.index);
        Self.motionGestureRecognizer := TMotionGestureRecognizer.Create(Self.id);
end;
    

// throws Exception
procedure TGestureOnlyMotionRecognizer.processStartMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
var
  point: TCustomGPoint;
begin
        point := TCustomGPoint(TJava.ToObject(TGestureOnlyMotionRecognizer.pointCircularPool.getNextInstance()));
        point.setX(x);
        point.setY(y);
        Self.motionGestureRecognizer.processPressedMotionEvent(point, deviceId, modifiers);
end;
    

// throws Exception
procedure TGestureOnlyMotionRecognizer.processEndMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
var
  point: TCustomGPoint;
begin
        point := TCustomGPoint(TJava.ToObject(TGestureOnlyMotionRecognizer.pointCircularPool.getNextInstance()));
        point.setX(x);
        point.setY(y);
        Self.motionGestureRecognizer.processReleasedMotionEvent(point, deviceId, modifiers);
end;
    

// throws Exception
procedure TGestureOnlyMotionRecognizer.processDraggedMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
var
  point: TCustomGPoint;
begin
        point := TCustomGPoint(TJava.ToObject(TGestureOnlyMotionRecognizer.pointCircularPool.getNextInstance()));
        point.setX(x);
        point.setY(y);
        Self.motionGestureRecognizer.processDraggedMotionEvent(point, deviceId, modifiers);
end;

initialization
  {AB:INITIALIZATION}
  TGestureOnlyMotionRecognizer.index := 0;
  TGestureOnlyMotionRecognizer.pointCircularPool := TGPointCircularPool.Create(40);
  {AB:END}

end.

