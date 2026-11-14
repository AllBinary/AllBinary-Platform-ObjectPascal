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
unit ImmediateCommandFormInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyEvent, ScrollSelectionForm, MotionGestureEvent, TimeDelayHelper, BasicArrayList, GameCommandCanvas, CommandFormInputProcessor;

type
  {AB:TYPES}
  TImmediateCommandFormInputProcessor = class(TCommandFormInputProcessor)
  public
    timeHelper: TTimeDelayHelper;
    gameCommandCanvas: TGameCommandCanvas;
    procedure InitFields;
        constructor Create(gameKeyEventList: TBasicArrayList; playerInputId: Integer; gameCommandCanvas_: TGameCommandCanvas; form: TScrollSelectionForm);
        procedure onPressGameKeyEvent(gameKeyEvent_: TGameKeyEvent); override;
        procedure onDownGameKeyEvent(gameKeyEvent_: TGameKeyEvent); override;
        procedure onUpGameKeyEvent(gameKeyEvent_: TGameKeyEvent); override;
        procedure onMotionGestureEvent(motionGestureEvent_: TMotionGestureEvent); override;
  end;

implementation

{AB:CODE}

procedure TImmediateCommandFormInputProcessor.InitFields;
begin
  Self.timeHelper := TTimeDelayHelper.Create(25);
  
end;
    

constructor TImmediateCommandFormInputProcessor.Create(gameKeyEventList: TBasicArrayList; playerInputId: Integer; gameCommandCanvas_: TGameCommandCanvas; form: TScrollSelectionForm);
begin
        inherited Create(gameKeyEventList, playerInputId, gameCommandCanvas_, form);
        InitFields;
        Self.gameCommandCanvas := gameCommandCanvas_;
end;
    

procedure TImmediateCommandFormInputProcessor.onPressGameKeyEvent(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
        try
            inherited onPressGameKeyEvent(gameKeyEvent_);
            if Self.timeHelper.isTimeTNT() then begin
                Self.processInputList();
                Self.gameCommandCanvas.repaintBehavior.onChangeRepaint(Self.getCanvas());
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.gameInputStrings.ON_PRESS_GAME_KEY, TJava.Box(e));
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TImmediateCommandFormInputProcessor.onDownGameKeyEvent(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
        try
            inherited onDownGameKeyEvent(gameKeyEvent_);
            if Self.timeHelper.isTimeTNT() then begin
                Self.processInputList();
                Self.gameCommandCanvas.repaintBehavior.onChangeRepaint(Self.getCanvas());
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.gameInputStrings.ON_DOWN_GAME_KEY, TJava.Box(e));
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TImmediateCommandFormInputProcessor.onUpGameKeyEvent(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
        try
            inherited onUpGameKeyEvent(gameKeyEvent_);
            if Self.timeHelper.isTimeTNT() then begin
                Self.processInputList();
                Self.gameCommandCanvas.repaintBehavior.onChangeRepaint(Self.getCanvas());
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.gameInputStrings.ON_UP_GAME_KEY, TJava.Box(e));
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TImmediateCommandFormInputProcessor.onMotionGestureEvent(motionGestureEvent_: TMotionGestureEvent);
begin
        try
            inherited onMotionGestureEvent(motionGestureEvent_);
            if Self.timeHelper.isTimeTNT() then begin
                Self.processInputList();
                Self.gameCommandCanvas.repaintBehavior.onChangeRepaint(Self.getCanvas());
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'onMotionGestureEvent', TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

