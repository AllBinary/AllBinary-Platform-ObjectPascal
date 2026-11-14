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
// package org.allbinary.game.state
unit GameStateFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameState;

type
  {AB:TYPES}
  TGameStateFactory = class(TObject)
  public
    index: Integer;
    NO_GAME_STATE: TGameState;
    PLAYING_GAME_STATE: TGameState;
    SHOW_END_RESULT_GAME_STATE: TGameState;
    SHOW_HIGH_SCORE_GAME_STATE: TGameState;
    class var instance: TObject;
    procedure InitFields;
        class function getInstance: TGameStateFactory; static;
        constructor Create;
        function createGameState(name: string): TGameState; virtual;
  end;

implementation
uses
  NullUtil;


{AB:CODE}

procedure TGameStateFactory.InitFields;
begin
  Self.index := 0;
  Self.NO_GAME_STATE := Self.createGameState('NO_GAME_STATE');
  Self.PLAYING_GAME_STATE := Self.createGameState('PLAYING_GAME_STATE');
  Self.SHOW_END_RESULT_GAME_STATE := Self.createGameState('SHOW_END_RESULT_GAME_STATE');
  Self.SHOW_HIGH_SCORE_GAME_STATE := Self.createGameState('SHOW_HIGH_SCORE_GAME_STATE');
end;
    

class function TGameStateFactory.getInstance: TGameStateFactory;
begin
        if (TGameStateFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TGameStateFactory.instance := TGameStateFactory.Create();
        end;
        Exit(TGameStateFactory(TJava.ToObject(TGameStateFactory.instance)));
end;
    

constructor TGameStateFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TGameStateFactory.createGameState(name: string): TGameState;
begin
        Exit(TGameState.Create(name, TJava.PostInc(Self.index)));
end;

initialization
  {AB:INITIALIZATION}
  TGameStateFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

