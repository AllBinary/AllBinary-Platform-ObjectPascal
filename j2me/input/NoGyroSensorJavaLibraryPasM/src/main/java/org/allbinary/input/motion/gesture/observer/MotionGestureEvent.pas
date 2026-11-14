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
unit MotionGestureEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint, MotionGestureInput, AllBinaryEventObject, CommonLabels;

type
  {AB:TYPES}
  TMotionGestureEvent = class(TAllBinaryEventObject)
  public
    motionGesture: TMotionGestureInput;
    id: Integer;
    previousPoint: TGPoint;
    currentPoint: TGPoint;
    commonLabels: TCommonLabels;
    class var PREVIOUS: string;
    class var HASHCODE: string;
    procedure InitFields;
        constructor Create(source: TObject; id: Integer; motionGesture: TMotionGestureInput);
        function getMotionGesture: TMotionGestureInput; virtual;
        procedure setMotionGesture(motionGesture: TMotionGestureInput); virtual;
        function getPreviousPoint: TGPoint; virtual;
        procedure setPreviousPoint(previousPoint: TGPoint); virtual;
        function getCurrentPoint: TGPoint; virtual;
        procedure setCurrentPoint(currentPoint: TGPoint); virtual;
        function toString: string; override;
        function getId: Integer; virtual;
  end;

implementation
uses
  PointFactory, TouchMotionGestureFactory, TsUtil, StringMaker, StringUtil;


{AB:CODE}

procedure TMotionGestureEvent.InitFields;
begin
  Self.motionGesture := TTouchMotionGestureFactory.getInstance().NO_MOTION;
  
  Self.previousPoint := TPointFactory.getInstance().ZERO_ZERO;
  Self.currentPoint := TPointFactory.getInstance().ZERO_ZERO;
  Self.commonLabels := TCommonLabels.getInstance();
end;
    

constructor TMotionGestureEvent.Create(source: TObject; id: Integer; motionGesture: TMotionGestureInput);
begin
        inherited Create(source);
        InitFields;
        Self.id := id;
        Self.setMotionGesture(motionGesture);
end;
    

function TMotionGestureEvent.getMotionGesture: TMotionGestureInput;
begin
        Exit(Self.motionGesture);
end;
    

procedure TMotionGestureEvent.setMotionGesture(motionGesture: TMotionGestureInput);
begin
        Self.motionGesture := motionGesture;
end;
    

function TMotionGestureEvent.getPreviousPoint: TGPoint;
begin
        Exit(Self.previousPoint);
end;
    

procedure TMotionGestureEvent.setPreviousPoint(previousPoint: TGPoint);
begin
        Self.previousPoint := previousPoint;
end;
    

function TMotionGestureEvent.getCurrentPoint: TGPoint;
begin
        Exit(Self.currentPoint);
end;
    

procedure TMotionGestureEvent.setCurrentPoint(currentPoint: TGPoint);
begin
        Self.currentPoint := currentPoint;
end;
    

function TMotionGestureEvent.toString: string;
var
  stringBuffer: TStringMaker;
  stringUtil_: TStringUtil;
begin
        stringBuffer := TStringMaker.Create();
        stringUtil_ := TStringUtil.getInstance();
        stringBuffer.append(stringUtil_.toString(Self.motionGesture));
        stringBuffer.append(Self.commonLabels.CURRENT);
        stringBuffer.append(stringUtil_.toString(Self.currentPoint));
        stringBuffer.append(TMotionGestureEvent.PREVIOUS);
        stringBuffer.append(stringUtil_.toString(Self.previousPoint));
        stringBuffer.append(TMotionGestureEvent.HASHCODE);
        stringBuffer.appendint(Integer(Trunc(TTsUtil.getInstance().hashCode(TJava.Box(Self)))));
        Exit(stringBuffer.toString());
end;
    

function TMotionGestureEvent.getId: Integer;
begin
        Exit(Self.id);
end;

initialization
  {AB:INITIALIZATION}
  TMotionGestureEvent.PREVIOUS := ' Previous: ';
  TMotionGestureEvent.HASHCODE := ' hashcode: ';
  {AB:END}

end.

