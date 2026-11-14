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
unit CommandFormInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MyCanvas, ScrollSelectionForm, MotionGestureEvent, TimeDelayHelper, BasicArrayList, BasicMenuInputProcessor;

type
  {AB:TYPES}
  // In general allow scrolling of the menu and selection the center item
  TCommandFormInputProcessor = class(TBasicMenuInputProcessor)
  public
    MOTION_GESTURE_SOURCE_ID: Integer;
    CLICK_DELAY: Integer;
    clickTimeHelper: TTimeDelayHelper;
    DOUBLE_CLICK_DELAY: Integer;
    doubleClickTimeHelper: TTimeDelayHelper;
    isSingleKeyProcessing: Boolean;
    form: TScrollSelectionForm;
    hasPressed: Boolean;
    PROCESS_COMMAND: string;
    NAME_LABEL: string;
    procedure InitFields;
        constructor Create(gameKeyEventList: TBasicArrayList; playerInputId: Integer; gameCanvas: TMyCanvas; form: TScrollSelectionForm);
        function processInput(key: Integer): Integer; virtual;
        function processCommand: Integer;
        function processInputList: Integer; override;
        function processMotionInputs: Integer; virtual;
        procedure processMotionInput(motionGestureEvent_: TMotionGestureEvent); virtual;
        function toString: string; override;
  end;

implementation
uses
  CommandRunnable, Canvas, Command, GameCommandsFactory, Features, InputFeatureFactory, GameKeyEvent, GameKeyEventFactory, SWTUtil, GPoint, CommandCurrentSelectionForm, OpenGLFeatureFactory, MotionGestureInput, TouchMotionGestureFactory, StringMaker, PrimaryPlayerQueueFactory, SelectSound, PrimaryThreadPool;


{AB:CODE}

procedure TCommandFormInputProcessor.InitFields;
begin
  Self.MOTION_GESTURE_SOURCE_ID := TGameKeyEventFactory.getInstance().MOTION_GESTURE_SOURCE_ID;
  Self.CLICK_DELAY := 150;
  Self.clickTimeHelper := TTimeDelayHelper.Create(Self.CLICK_DELAY);
  Self.DOUBLE_CLICK_DELAY := 1200;
  Self.doubleClickTimeHelper := TTimeDelayHelper.Create(Self.DOUBLE_CLICK_DELAY);
  Self.isSingleKeyProcessing := TInputFeatureFactory.getInstance().isSingleKeyProcessing();
  
  Self.hasPressed := False;
  Self.PROCESS_COMMAND := 'processCommand';
  Self.NAME_LABEL := ' ScrollSelectionForm: ';
end;
    

constructor TCommandFormInputProcessor.Create(gameKeyEventList: TBasicArrayList; playerInputId: Integer; gameCanvas: TMyCanvas; form: TScrollSelectionForm);
begin
        inherited Create(gameKeyEventList, playerInputId, gameCanvas);
        InitFields;
        Self.form := form;
end;
    

// throws Exception
function TCommandFormInputProcessor.processInput(key: Integer): Integer;
begin
        if ((((key) = (TCanvas.LEFT)) or ((key) = (TCanvas.RIGHT))) or ((key) = (TCanvas.UP))) or ((key) = (TCanvas.DOWN)) then begin
            TPrimaryPlayerQueueFactory.getInstance().add(TSelectSound.getInstance());
            Self.form.processInputKey(key);
            Exit(1);
        end else if (key) = (TCanvas.FIRE) then begin
            TPrimaryPlayerQueueFactory.getInstance().add(TSelectSound.getInstance());
            Exit(Self.processCommand());
        end;
        Exit(0);
end;
    

function TCommandFormInputProcessor.processCommand: Integer;
var
  commandCurrentSelectionForm_: TCommandCurrentSelectionForm;
  command_: TCommand;
  features_: TFeatures;
  openGLFeatureFactory_: TOpenGLFeatureFactory;
begin
        commandCurrentSelectionForm_ := TCommandCurrentSelectionForm(TJava.ToObject(Self.form));
        command_ := commandCurrentSelectionForm_.getSelectedCommand();
        Self.logUtil.putF(command_.toString(), TJava.Box(Self), Self.PROCESS_COMMAND);
        features_ := TFeatures.getInstance();
        openGLFeatureFactory_ := TOpenGLFeatureFactory.getInstance();
        if ((TSWTUtil.isSWT) and (features_.isFeature(openGLFeatureFactory_.OPENGL))) and ((command_) <> (TGameCommandsFactory.getInstance().EXIT_COMMAND)) then begin
            TCommandRunnable.Create(Self, command_).run();
        end else begin
            TPrimaryThreadPool.getInstance().runTask(TCommandRunnable.Create(Self, command_));
        end;
        if (command_) = (TGameCommandsFactory.getInstance().QUIT_COMMAND) then begin
            Exit(-1);
        end else begin
            Exit(1);
        end;
end;
    

// throws Exception
function TCommandFormInputProcessor.processInputList: Integer;
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
                key := gameKeyEvent_.getKey();
                if (gameKeyEvent_.getSourceId()) <> (Self.MOTION_GESTURE_SOURCE_ID) then begin
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
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.gameInputStrings.PROCESS_INPUT, TJava.Box(e));
            Exit(-1);
            end;
        end;
end;
    

// throws Exception
function TCommandFormInputProcessor.processMotionInputs: Integer;
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
procedure TCommandFormInputProcessor.processMotionInput(motionGestureEvent_: TMotionGestureEvent);
var
  touchMotionGestureFactory_: TTouchMotionGestureFactory;
  motionGestureInput_: TMotionGestureInput;
  point: TGPoint;
  index: Integer;
begin
        touchMotionGestureFactory_ := TTouchMotionGestureFactory.getInstance();
        motionGestureInput_ := motionGestureEvent_.getMotionGesture();
        if (motionGestureInput_) = (touchMotionGestureFactory_.RELEASED) then begin
            point := motionGestureEvent_.getCurrentPoint();
            if Self.form.isInForm(point) then begin
                index := Self.form.getSelectedIndexForPoint(point);
                if (index) <> (-1) then begin
                    TPrimaryPlayerQueueFactory.getInstance().add(TSelectSound.getInstance());
                    if (index) = (Self.form.getSelectedIndex()) then begin
                        if Self.clickTimeHelper.isTimeTNT() then begin
                            Self.processCommand();
                        end;
                    end else begin
                        Self.form.setSelectedIndex(index);
                    end;
                end else begin
                end;
            end;
            if Self.hasPressed then begin
                if not (Self.doubleClickTimeHelper.isTimeTNT()) then begin
                    Self.logUtil.putF('Double Press', TJava.Box(Self), Self.gameInputStrings.PROCESS_MOTION_INPUT);
                    Self.processCommand();
                end;
                Self.doubleClickTimeHelper.delay := Self.DOUBLE_CLICK_DELAY;
                Self.doubleClickTimeHelper.setStartTimeTNT();
            end;
            Self.hasPressed := False;
        end else if (motionGestureInput_) = (touchMotionGestureFactory_.PRESSED) then begin
            Self.doubleClickTimeHelper.delay := 0;
            Self.hasPressed := True;
        end;
end;
    

function TCommandFormInputProcessor.toString: string;
begin
        Exit(TStringMaker.Create().append(inherited toString()).append(Self.NAME_LABEL).append(Self.form.toString()).toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

