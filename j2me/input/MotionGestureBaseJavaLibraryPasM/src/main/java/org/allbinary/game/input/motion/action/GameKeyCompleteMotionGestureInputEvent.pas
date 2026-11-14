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
// package org.allbinary.game.input.motion.action
unit GameKeyCompleteMotionGestureInputEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CompleteMotionGestureInputEvent, GameKey, GameKeyEventSourceInterface, GameKeyEvent, GameKeyEventFactory, InputToGameKeyMapping, MotionGestureInput;

type
  {AB:TYPES}
  TGameKeyCompleteMotionGestureInputEvent = class(TCompleteMotionGestureInputEvent, IGameKeyEventSourceInterface)
  public
    gameKeyEventFactory: TGameKeyEventFactory;
    SOURCE_ID: Integer;
    gameKey: TGameKey;
    gameKeyEvent: TGameKeyEvent;
    inputToGameKeyMapping: TInputToGameKeyMapping;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(name: string; motionGestureInput_: TMotionGestureInput; inputToGameKeyMapping_: TInputToGameKeyMapping);
        function getSourceId: Integer; virtual;
        procedure update; virtual;
        procedure setGameKeyEvent(gameKeyEvent_: TGameKeyEvent); virtual;
        function getGameKeyEvent: TGameKeyEvent; virtual;
        procedure setGameKey(gameKey_: TGameKey); virtual;
        function getGameKey: TGameKey; virtual;
  end;

implementation
uses
  GameKeyCompleteMotionGestureInputEventFactory, CommonStrings;


{AB:CODE}

procedure TGameKeyCompleteMotionGestureInputEvent.InitFields;
begin
  Self.gameKeyEventFactory := TGameKeyEventFactory.getInstance();
  Self.SOURCE_ID := Self.gameKeyEventFactory.MOTION_GESTURE_SOURCE_ID;
  Self.gameKey := TGameKey.NULL_GAME_KEY;
  Self.gameKeyEvent := TGameKeyEvent.NONE;
  
end;

function TGameKeyCompleteMotionGestureInputEvent.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGameKeyCompleteMotionGestureInputEvent.Create(name: string; motionGestureInput_: TMotionGestureInput; inputToGameKeyMapping_: TInputToGameKeyMapping);
begin
        inherited Create(name, motionGestureInput_);
        InitFields;
        Self.inputToGameKeyMapping := inputToGameKeyMapping_;
        TGameKeyCompleteMotionGestureInputEventFactory.getInstance().add(Self);
        Self.update();
end;
    

function TGameKeyCompleteMotionGestureInputEvent.getSourceId: Integer;
begin
        Exit(Self.SOURCE_ID);
end;
    

procedure TGameKeyCompleteMotionGestureInputEvent.update;
var
  commonStrings_: TCommonStrings;
begin
        try
            Self.setGameKey(Self.inputToGameKeyMapping.getInstance(Self.getMotionGestureInput().getId()));
            Self.setGameKeyEvent(Self.gameKeyEventFactory.getInstanceForInput(Self, Self.getGameKey()));
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.UPDATE, TJava.Box(e));
            end;
        end;
end;
    

procedure TGameKeyCompleteMotionGestureInputEvent.setGameKeyEvent(gameKeyEvent_: TGameKeyEvent);
begin
        Self.gameKeyEvent := gameKeyEvent_;
end;
    

function TGameKeyCompleteMotionGestureInputEvent.getGameKeyEvent: TGameKeyEvent;
begin
        Exit(Self.gameKeyEvent);
end;
    

procedure TGameKeyCompleteMotionGestureInputEvent.setGameKey(gameKey_: TGameKey);
begin
        Self.gameKey := gameKey_;
end;
    

function TGameKeyCompleteMotionGestureInputEvent.getGameKey: TGameKey;
begin
        Exit(Self.gameKey);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

