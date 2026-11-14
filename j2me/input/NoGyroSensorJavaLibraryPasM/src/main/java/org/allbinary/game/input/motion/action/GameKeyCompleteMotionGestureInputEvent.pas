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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CompleteMotionGestureInputEvent, GameKey, GameKeyEventSourceInterface, GameKeyEvent, InputToGameKeyMapping, MotionGestureInput;

type
  {AB:TYPES}
  TGameKeyCompleteMotionGestureInputEvent = class(TCompleteMotionGestureInputEvent, IGameKeyEventSourceInterface)
  public
    gameKey: TGameKey;
    gameKeyEvent: TGameKeyEvent;
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

{AB:CODE}

procedure TGameKeyCompleteMotionGestureInputEvent.InitFields;
begin
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
end;
    

function TGameKeyCompleteMotionGestureInputEvent.getSourceId: Integer;
begin
        Exit(0);
end;
    

procedure TGameKeyCompleteMotionGestureInputEvent.update;
begin
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

