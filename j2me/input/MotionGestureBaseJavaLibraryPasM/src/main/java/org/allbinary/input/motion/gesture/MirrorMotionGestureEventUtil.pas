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
unit MirrorMotionGestureEventUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MotionEventCircularPool, MotionGestureEvent;

type
  {AB:TYPES}
  TMirrorMotionGestureEventUtil = class(TObject)
  public
    motionEventCircularPool: TMotionEventCircularPool;
    class var instance: TMirrorMotionGestureEventUtil;
    procedure InitFields;
        constructor Create;
        function mirrorVerticle(motionGestureEvent_: TMotionGestureEvent; halfWidth: Integer): TMotionGestureEvent; virtual;
        function getNewX(x: Integer; halfWidth: Integer): Integer; virtual;
        class function getInstance: TMirrorMotionGestureEventUtil; static;
  end;

implementation
uses
  GPoint, PointFactory;


{AB:CODE}

procedure TMirrorMotionGestureEventUtil.InitFields;
begin
  
end;
    

constructor TMirrorMotionGestureEventUtil.Create;
begin
    inherited Create;
    InitFields;
        Self.motionEventCircularPool := TMotionEventCircularPool.createPool(High(Integer));
end;
    

// throws Exception
function TMirrorMotionGestureEventUtil.mirrorVerticle(motionGestureEvent_: TMotionGestureEvent; halfWidth: Integer): TMotionGestureEvent;
var
  event: TMotionGestureEvent;
  previousNewX: Integer;
  currentNewX: Integer;
  pointFactory_: TPointFactory;
  mirroredPreviousPoint: TGPoint;
  mirroredCurrentPoint: TGPoint;
begin
        event := Self.motionEventCircularPool.getInstance(motionGestureEvent_.getMotionGesture());
        previousNewX := Self.getNewX(motionGestureEvent_.getPreviousPoint().getX(), halfWidth);
        currentNewX := Self.getNewX(motionGestureEvent_.getCurrentPoint().getX(), halfWidth);
        pointFactory_ := TPointFactory.getInstance();
        mirroredPreviousPoint := pointFactory_.createXY(previousNewX, motionGestureEvent_.getPreviousPoint().getY());
        mirroredCurrentPoint := pointFactory_.createXY(currentNewX, motionGestureEvent_.getCurrentPoint().getY());
        event.setPreviousPoint(mirroredPreviousPoint);
        event.setCurrentPoint(mirroredCurrentPoint);
        Exit(event);
end;
    

function TMirrorMotionGestureEventUtil.getNewX(x: Integer; halfWidth: Integer): Integer;
var
  newX: Integer;
begin
        
        if (x) > (halfWidth) then begin
            newX := (halfWidth) - (((x) - (halfWidth)));
        end else begin
            newX := (halfWidth) + (((halfWidth) - (x)));
        end;
        Exit(newX);
end;
    

class function TMirrorMotionGestureEventUtil.getInstance: TMirrorMotionGestureEventUtil;
begin
        Exit(TMirrorMotionGestureEventUtil.instance);
end;

initialization
  {AB:INITIALIZATION}
  TMirrorMotionGestureEventUtil.instance := TMirrorMotionGestureEventUtil.Create();
  {AB:END}

end.

