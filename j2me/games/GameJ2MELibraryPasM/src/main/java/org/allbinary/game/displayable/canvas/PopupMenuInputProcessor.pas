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
// package org.allbinary.game.displayable.canvas
unit PopupMenuInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Rectangle, MyCanvas, MotionGestureEvent, RectangleCollisionUtil, TimeDelayHelper, BasicArrayList, BasicMenuInputProcessor;

type
  {AB:TYPES}
  TPopupMenuInputProcessor = class(TBasicMenuInputProcessor)
  public
    rectangleCollisionUtil: TRectangleCollisionUtil;
    CLICK_DELAY: Integer;
    clickTimeHelper: TTimeDelayHelper;
    rectangle: TRectangle;
    procedure InitFields;
        constructor Create(gameKeyEventList: TBasicArrayList; playerInputId: Integer; gameCanvas: TMyCanvas; rectangle_: TRectangle);
        procedure init(rectangle_: TRectangle); virtual;
        function processInput(key: Integer): Integer; virtual;
        function processInputList: Integer; override;
        function processMotionInputs: Integer; virtual;
        procedure processMotionInput(motionGestureEvent_: TMotionGestureEvent); virtual;
  end;

implementation
uses
  AllBinaryGameCanvas, Canvas, GameInputStrings, GameKeyEvent, GPoint, MotionGestureInput, TouchMotionGestureFactory, PreLogUtil, StringMaker, CommonSeps;


{AB:CODE}

procedure TPopupMenuInputProcessor.InitFields;
begin
  Self.rectangleCollisionUtil := TRectangleCollisionUtil.getInstance();
  Self.CLICK_DELAY := 120;
  Self.clickTimeHelper := TTimeDelayHelper.Create(Self.CLICK_DELAY);
  
end;
    

constructor TPopupMenuInputProcessor.Create(gameKeyEventList: TBasicArrayList; playerInputId: Integer; gameCanvas: TMyCanvas; rectangle_: TRectangle);
begin
        inherited Create(gameKeyEventList, playerInputId, gameCanvas);
        InitFields;
        Self.rectangle := rectangle_;
end;
    

procedure TPopupMenuInputProcessor.init(rectangle_: TRectangle);
begin
        Self.rectangle := rectangle_;
end;
    

// throws Exception
function TPopupMenuInputProcessor.processInput(key: Integer): Integer;
var
  gameCanvas: TAllBinaryGameCanvas;
begin
        if (key) = (TCanvas.KEY_STAR) then begin
            gameCanvas := TAllBinaryGameCanvas(TJava.ToObject(Self.getCanvas()));
            gameCanvas.toggleMenu();
            Exit(1);
        end;
        Exit(0);
end;
    

// throws Exception
function TPopupMenuInputProcessor.processInputList: Integer;
var
  motionInputsIndex: Integer;
  list: TBasicArrayList;
  size: Integer;
  key: Integer;
  gameKeyEvent_: TGameKeyEvent;
  index: Integer;
begin
        try
            motionInputsIndex := Self.processMotionInputs();
            list := Self.getGameKeyEventList();
            size := list.size();
            key := 0;
            
            for index := 0 to size - 1 do begin
                gameKeyEvent_ := TGameKeyEvent(TJava.ToObject(list.objectArray[index]));
                if (gameKeyEvent_) <> (nil) then begin
                    key := gameKeyEvent_.getKey();
                    if (Self.processInput(key)) = (1) then begin
                        Break;
                    end;
                end;
            end;
            Self.clear();
            if ((size) > (0)) or ((motionInputsIndex) >= (0)) then begin
                Exit(1);
            end else begin
                Exit(-1);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TGameInputStrings.getInstance().PROCESS_INPUT, TJava.Box(e));
            Exit(-1);
            end;
        end;
end;
    

// throws Exception
function TPopupMenuInputProcessor.processMotionInputs: Integer;
var
  lastIndex: Integer;
  motionGestureEvent_: TMotionGestureEvent;
begin
        lastIndex := (Self.motionGestureEventList.size()) - (1);
        if (lastIndex) >= (0) then begin
            motionGestureEvent_ := TMotionGestureEvent(TJava.ToObject(Self.motionGestureEventList.objectArray[lastIndex]));
            Self.processMotionInput(motionGestureEvent_);
        end;
        Self.motionGestureEventList.clear();
        Exit(lastIndex);
end;
    

// throws Exception
procedure TPopupMenuInputProcessor.processMotionInput(motionGestureEvent_: TMotionGestureEvent);
var
  touchMotionGestureFactory_: TTouchMotionGestureFactory;
  motionGestureInput_: TMotionGestureInput;
  point: TGPoint;
  rectPoint: TGPoint;
  gameCanvas: TAllBinaryGameCanvas;
begin
        if (motionGestureEvent_) = (nil) then begin
            Self.logUtil.putF('Exception: Bug', TJava.Box(Self), Self.gameInputStrings.PROCESS_MOTION_INPUT);
            Exit;
        end;
        touchMotionGestureFactory_ := TTouchMotionGestureFactory.getInstance();
        motionGestureInput_ := motionGestureEvent_.getMotionGesture();
        if (motionGestureInput_) = (touchMotionGestureFactory_.RELEASED) then begin
            point := motionGestureEvent_.getCurrentPoint();
            rectPoint := Self.rectangle.getPoint();
            if Self.rectangleCollisionUtil.isInside(rectPoint.getX(), rectPoint.getY(), (Self.rectangle.getMaxX()) + (20), Self.rectangle.getMaxY(), point.getX(), point.getY()) then begin
                if Self.clickTimeHelper.isTimeTNT() then begin
                    gameCanvas := TAllBinaryGameCanvas(TJava.ToObject(Self.getCanvas()));
                    gameCanvas.toggleMenu();
                end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

