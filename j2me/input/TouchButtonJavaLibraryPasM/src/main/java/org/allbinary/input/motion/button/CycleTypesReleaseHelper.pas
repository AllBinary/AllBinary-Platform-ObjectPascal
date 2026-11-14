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
// AB:CYCLE TYPES ReleaseHelper TouchButtonRecognizer
// The units ReleaseHelper TouchButtonRecognizer use each other in their interface sections, so their types are declared together here.
unit CycleTypesReleaseHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TouchButtonInput, DownGameKeyEventHandler, UpGameKeyEventHandler, LogUtil, RectangleCollisionUtil, CurrentlyPressedTouchButtonSingleton;

type
  { Forward declarations like C++ so the cycle members can refer to each other }
  TReleaseHelper = class;
  TTouchButtonRecognizer = class;
  {AB:TYPES}
  { ReleaseHelper }
  TReleaseHelper = class(TObject)
  public
    touchButtonRecognizer: TTouchButtonRecognizer;
    procedure InitFields;
        constructor Create(touchButtonRecognizer_: TTouchButtonRecognizer);
        procedure release(touchButtonInput_: TTouchButtonInput; deviceId: Integer); virtual;
  end;

  { TouchButtonRecognizer }
  TTouchButtonRecognizer = class(TObject)
  public
    logUtil: TLogUtil;
    rectangleCollisionUtil: TRectangleCollisionUtil;
    upGameKeyEventHandler: TUpGameKeyEventHandler;
    downGameKeyEventHandler: TDownGameKeyEventHandler;
    lastPressedTouchButtonInput: TTouchButtonInput;
    currentlyPressedTouchButtonSingleton: TCurrentlyPressedTouchButtonSingleton;
    releaseHelper: TReleaseHelper;
    procedure InitFields;
        constructor Create;
        procedure processRelease(touchButtonInput_: TTouchButtonInput; deviceId: Integer);
        function releaseTouchButtonInput(x: Integer; y: Integer; deviceId: Integer): Boolean; virtual;
        function pressTouchButtonInput(x: Integer; y: Integer; deviceId: Integer): Boolean; virtual;
  end;


implementation
uses
  GameKeyEvent, BasicTouchInputFactory, TouchScreenFactory, MultitouchReleaseHelper, TouchButtonFactory, TouchButton, GPoint, Rectangle, BasicArrayList;


{AB:CODE}

procedure TReleaseHelper.InitFields;
begin
  
end;
    

constructor TReleaseHelper.Create(touchButtonRecognizer_: TTouchButtonRecognizer);
begin
    inherited Create;
    InitFields;
        Self.touchButtonRecognizer := touchButtonRecognizer_;
end;
    

// throws Exception
procedure TReleaseHelper.release(touchButtonInput_: TTouchButtonInput; deviceId: Integer);
var
  nextTouchButtonInput: TTouchButtonInput;
  gameKeyEvent_: TGameKeyEvent;
  index: Integer;
begin
        
        
        for index := (Self.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.size()) - (1) downto 0 do begin
            nextTouchButtonInput := Self.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.get(index);
            gameKeyEvent_ := nextTouchButtonInput.getGameKeyEvent();
            Self.touchButtonRecognizer.upGameKeyEventHandler.fireEvent(gameKeyEvent_);
            Self.touchButtonRecognizer.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent_);
            Self.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.removeAt(index);
        end;
end;


procedure TTouchButtonRecognizer.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.rectangleCollisionUtil := TRectangleCollisionUtil.getInstance();
  Self.upGameKeyEventHandler := TUpGameKeyEventHandler.getInstance();
  Self.downGameKeyEventHandler := TDownGameKeyEventHandler.getInstance();
  Self.lastPressedTouchButtonInput := TBasicTouchInputFactory.getInstance().NONE;
  Self.currentlyPressedTouchButtonSingleton := TCurrentlyPressedTouchButtonSingleton.getInstance();
  
end;
    

constructor TTouchButtonRecognizer.Create;
begin
    inherited Create;
    InitFields;
        if TTouchScreenFactory.getInstance().isMultiTouch() then begin
            Self.releaseHelper := TMultitouchReleaseHelper.Create(Self);
        end else begin
            Self.releaseHelper := TReleaseHelper.Create(Self);
        end;
end;
    

// throws Exception
procedure TTouchButtonRecognizer.processRelease(touchButtonInput_: TTouchButtonInput; deviceId: Integer);
var
  gameKeyEvent_: TGameKeyEvent;
begin
        Self.releaseHelper.release(touchButtonInput_, deviceId);
        gameKeyEvent_ := touchButtonInput_.getGameKeyEvent();
        Self.upGameKeyEventHandler.fireEvent(gameKeyEvent_);
        Self.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent_);
        Self.currentlyPressedTouchButtonSingleton.remove(touchButtonInput_);
end;
    

// throws Exception
function TTouchButtonRecognizer.releaseTouchButtonInput(x: Integer; y: Integer; deviceId: Integer): Boolean;
var
  touchButtonInput_: TTouchButtonInput;
  list: TBasicArrayList;
  rectangle_: TRectangle;
  point: TGPoint;
  touchButton_: TTouchButton;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        touchButtonInput_ := Self.lastPressedTouchButtonInput;
        if Self.currentlyPressedTouchButtonSingleton.contains(touchButtonInput_) then begin
            Self.lastPressedTouchButtonInput := TBasicTouchInputFactory.getInstance().NONE;
            Self.processRelease(touchButtonInput_, deviceId);
            Exit(True);
        end else begin
            list := TTouchButtonFactory.getInstance().getList();
            
            
            
            for index := (list.size()) - (1) downto 0 do begin
                touchButton_ := TTouchButton(TJava.ToObject(list.objectArray[index]));
                rectangle_ := touchButton_.getRectangle();
                point := rectangle_.getPoint();
                if Self.rectangleCollisionUtil.isInside(point.getX(), point.getY(), rectangle_.getMaxX(), rectangle_.getMaxY(), x, y) then begin
                    touchButtonInput_ := touchButton_.getTouchButtonInput();
                    Self.processRelease(touchButtonInput_, deviceId);
                    Exit(True);
                end;
            end;
        end;
        Exit(False);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
function TTouchButtonRecognizer.pressTouchButtonInput(x: Integer; y: Integer; deviceId: Integer): Boolean;
var
  list: TBasicArrayList;
  rectangle_: TRectangle;
  point: TGPoint;
  touchButton_: TTouchButton;
  touchButtonInput_: TTouchButtonInput;
  gameKeyEvent_: TGameKeyEvent;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        list := TTouchButtonFactory.getInstance().getList();
        
        
        
        
        
        for index := (list.size()) - (1) downto 0 do begin
            touchButton_ := TTouchButton(TJava.ToObject(list.objectArray[index]));
            rectangle_ := touchButton_.getRectangle();
            point := rectangle_.getPoint();
            if Self.rectangleCollisionUtil.isInside(point.getX(), point.getY(), rectangle_.getMaxX(), rectangle_.getMaxY(), x, y) then begin
                touchButtonInput_ := touchButton_.getTouchButtonInput();
                if not (Self.currentlyPressedTouchButtonSingleton.contains(touchButtonInput_)) then begin
                    Self.releaseHelper.release(touchButtonInput_, deviceId);
                    Self.lastPressedTouchButtonInput := touchButtonInput_;
                    Self.currentlyPressedTouchButtonSingleton.add(touchButtonInput_);
                    gameKeyEvent_ := touchButtonInput_.getGameKeyEvent();
                    Self.downGameKeyEventHandler.fireEvent(gameKeyEvent_);
                    Self.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent_);
                end;
                Exit(True);
            end;
        end;
        Exit(False);
    finally
    TJava.MonitorExit(Self);
    end;
end;


initialization
  {AB:INITIALIZATION}
  {AB:END}

end.
