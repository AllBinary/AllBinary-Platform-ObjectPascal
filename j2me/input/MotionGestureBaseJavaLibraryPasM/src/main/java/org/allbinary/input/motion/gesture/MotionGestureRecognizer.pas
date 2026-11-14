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
// package org.allbinary.input.motion.gesture
unit MotionGestureRecognizer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint, Line, BasicMotionGesturesHandler, MotionEventCircularPool, LogUtil, J2SEMath, BasicEventHandler;

type
  {AB:TYPES}
  TMotionGestureRecognizer = class(TObject)
  public
    logUtil: TLogUtil;
    j2seMath: TJ2SEMath;
    origin: TGPoint;
    previous: TGPoint;
    intermediate: TGPoint;
    line: TLine;
    motionGesturesHandler: TBasicMotionGesturesHandler;
    movedMotionGesturesHandler: TBasicEventHandler;
    scrolledMotionGesturesHandler: TBasicEventHandler;
    motionEventCircularPool: TMotionEventCircularPool;
    procedure InitFields;
        constructor Create(id: Integer);
        function processPressedMotionEvent(current: TGPoint; deviceId: Integer; button: Integer): Boolean; virtual;
        function processReleasedMotionEvent(current: TGPoint; deviceId: Integer; button: Integer): Boolean; virtual;
        procedure processDraggedMotionEvent(current: TGPoint; deviceId: Integer; buttonMask: Integer); virtual;
        function processMovedMotionEvent(current: TGPoint; deviceId: Integer; button: Integer): Boolean; virtual;
        function processScrolledMotionEvent(current: TGPoint; deviceId: Integer; button: Integer): Boolean; virtual;
        function getMotionGesturesHandler: TBasicMotionGesturesHandler; virtual;
  end;

implementation
uses
  TouchMotionGestureFactory, MotionGestureInput, PointFactory, MotionGestureConfiguration, MotionGestureConfigurationFactory, MotionGestureEvent, MovedMotionGesturesHandler, ScrolledMotionGesturesHandler, CommonStrings;


{AB:CODE}

procedure TMotionGestureRecognizer.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.j2seMath := TJ2SEMath.getInstance();
  Self.origin := TPointFactory.getInstance().ZERO_ZERO;
  Self.previous := Self.origin;
  Self.intermediate := Self.origin;
  Self.line := TLine.Create(Self.origin, Self.origin);
  
  
  
  
end;
    

constructor TMotionGestureRecognizer.Create(id: Integer);
var
  motionGesturesHandler: TBasicEventHandler;
  movedMotionGesturesHandler_: TBasicEventHandler;
  scrolledMotionGesturesHandler_: TBasicEventHandler;
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        Self.motionEventCircularPool := TMotionEventCircularPool.createPool(id);
        motionGesturesHandler := TBasicEventHandler.Create();
        movedMotionGesturesHandler_ := motionGesturesHandler;
        scrolledMotionGesturesHandler_ := motionGesturesHandler;
        try
            motionGesturesHandler := TBasicMotionGesturesHandler.getInstance();
            movedMotionGesturesHandler_ := TMovedMotionGesturesHandler.getInstance();
            scrolledMotionGesturesHandler_ := TScrolledMotionGesturesHandler.getInstance();
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.CONSTRUCTOR_, TJava.Box(e));
            end;
        end;
        Self.motionGesturesHandler := TBasicMotionGesturesHandler(TJava.ToObject(motionGesturesHandler));
        Self.movedMotionGesturesHandler := movedMotionGesturesHandler_;
        Self.scrolledMotionGesturesHandler := scrolledMotionGesturesHandler_;
end;
    

// throws Exception
function TMotionGestureRecognizer.processPressedMotionEvent(current: TGPoint; deviceId: Integer; button: Integer): Boolean;
var
  event: TMotionGestureEvent;
begin
        Self.intermediate := Self.origin;
        Self.previous := Self.origin;
        event := Self.motionEventCircularPool.getInstance(TTouchMotionGestureFactory.getInstance().PRESSED);
        event.setPreviousPoint(Self.previous);
        event.setCurrentPoint(current);
        Self.motionGesturesHandler.fireEvent(event);
        Exit(True);
end;
    

// throws Exception
function TMotionGestureRecognizer.processReleasedMotionEvent(current: TGPoint; deviceId: Integer; button: Integer): Boolean;
var
  event: TMotionGestureEvent;
begin
        event := Self.motionEventCircularPool.getInstance(TTouchMotionGestureFactory.getInstance().RELEASED);
        event.setPreviousPoint(Self.previous);
        event.setCurrentPoint(current);
        Self.motionGesturesHandler.fireEvent(event);
        Exit(True);
end;
    

// throws Exception
procedure TMotionGestureRecognizer.processDraggedMotionEvent(current: TGPoint; deviceId: Integer; buttonMask: Integer);
var
  minimumMotionGesture: Integer;
  gradient: Double;
  absGradient: Double;
  conf: TMotionGestureConfiguration;
  touchMotionGestureFactory_: TTouchMotionGestureFactory;
  newMotionGesture: TMotionGestureInput;
  diagonalToleranceHigher: Double;
  diagonalToleranceLower: Double;
  event: TMotionGestureEvent;
begin
        if ((Self.previous) = (Self.origin)) or ((Self.intermediate) = (Self.origin)) then begin
            Self.previous := current;
            Self.intermediate := current;
            Exit;
        end;
        Self.line.setP1(Self.previous);
        Self.line.setP2(current);
        minimumMotionGesture := TMotionGestureConfigurationFactory.getInstance().getMinimumMotionGesture();
        if ((Self.j2seMath.abs((1.0 * (Self.line.getDeltaX())))) < (minimumMotionGesture)) and ((Self.j2seMath.abs((1.0 * (Self.line.getDeltaY())))) < (minimumMotionGesture)) then begin
            Self.intermediate := current;
            Exit;
        end;
        gradient := Self.line.getGradient();
        absGradient := (1.0 * (Self.j2seMath.abs(TJava.ToFloat(gradient))));
        conf := TMotionGestureConfigurationFactory.getInstance();
        touchMotionGestureFactory_ := TTouchMotionGestureFactory.getInstance();
        newMotionGesture := touchMotionGestureFactory_.NO_MOTION;
        diagonalToleranceHigher := 12.0;
        diagonalToleranceLower := 12.0;
        if conf.isDiagonalMotionGestureAllowed() then begin
            diagonalToleranceHigher := (1.0 * (((90) - (conf.getDiagonalTolerance()))));
            diagonalToleranceLower := (1.0 * (conf.getDiagonalTolerance()));
        end;
        if (absGradient) > (Tan(DegToRad(diagonalToleranceHigher))) then begin
            if (Self.line.getDeltaY()) > (0) then begin
                newMotionGesture := touchMotionGestureFactory_.UP;
            end else begin
                newMotionGesture := touchMotionGestureFactory_.DOWN;
            end;
        end else begin
            if (absGradient) < (Tan(DegToRad(diagonalToleranceLower))) then begin
                if (Self.line.getDeltaX()) > (0) then begin
                    newMotionGesture := touchMotionGestureFactory_.LEFT;
                end else begin
                    newMotionGesture := touchMotionGestureFactory_.RIGHT;
                end;
            end else begin
                if (gradient) > (0.0) then begin
                    if (Self.line.getDeltaX()) > (0) then begin
                        newMotionGesture := touchMotionGestureFactory_.DIAGONAL_UP_LEFT;
                    end else begin
                        newMotionGesture := touchMotionGestureFactory_.DIAGONAL_DOWN_RIGHT;
                    end;
                end else begin
                    if (Self.line.getDeltaX()) > (0) then begin
                        newMotionGesture := touchMotionGestureFactory_.DIAGONAL_DOWN_LEFT;
                    end else begin
                        newMotionGesture := touchMotionGestureFactory_.DIAGONAL_UP_RIGHT;
                    end;
                end;
            end;
        end;
        Self.previous := current;
        Self.intermediate := current;
        event := Self.motionEventCircularPool.getInstance(newMotionGesture);
        event.setPreviousPoint(Self.previous);
        event.setCurrentPoint(current);
        Self.motionGesturesHandler.fireEvent(event);
        Exit;
end;
    

// throws Exception
function TMotionGestureRecognizer.processMovedMotionEvent(current: TGPoint; deviceId: Integer; button: Integer): Boolean;
var
  event: TMotionGestureEvent;
begin
        event := Self.motionEventCircularPool.getInstance(TTouchMotionGestureFactory.getInstance().NO_MOTION);
        event.setPreviousPoint(Self.previous);
        event.setCurrentPoint(current);
        Self.movedMotionGesturesHandler.fireEvent(event);
        Exit(True);
end;
    

// throws Exception
function TMotionGestureRecognizer.processScrolledMotionEvent(current: TGPoint; deviceId: Integer; button: Integer): Boolean;
var
  touchMotionGestureFactory_: TTouchMotionGestureFactory;
  newMotionGesture: TMotionGestureInput;
  event: TMotionGestureEvent;
begin
        touchMotionGestureFactory_ := TTouchMotionGestureFactory.getInstance();
        newMotionGesture := touchMotionGestureFactory_.NO_MOTION;
        if (button) > (0) then begin
            newMotionGesture := touchMotionGestureFactory_.SCROLL_UP;
        end else if (button) < (0) then begin
            newMotionGesture := touchMotionGestureFactory_.SCROLL_DOWN;
        end;
        event := Self.motionEventCircularPool.getInstance(newMotionGesture);
        event.setPreviousPoint(Self.previous);
        event.setCurrentPoint(current);
        Self.scrolledMotionGesturesHandler.fireEvent(event);
        Exit(True);
end;
    

function TMotionGestureRecognizer.getMotionGesturesHandler: TBasicMotionGesturesHandler;
begin
        Exit(Self.motionGesturesHandler);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

