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
// package org.allbinary.game
unit IntermissionFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameState;

type
  {AB:TYPES}
  TIntermissionFactory = class(TObject)
  public
    START_LEVEL_INTERMISSION_GAME_STATE: TGameState;
    WAIT_LEVEL_INTERMISSION_GAME_STATE: TGameState;
    SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE: TGameState;
    SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE: TGameState;
    class var instance: TIntermissionFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TIntermissionFactory; static;
  end;

implementation
uses
  GameStateFactory;


{AB:CODE}

procedure TIntermissionFactory.InitFields;
begin
  Self.START_LEVEL_INTERMISSION_GAME_STATE := TGameStateFactory.getInstance().createGameState('START_LEVEL_INTERMISSION_GAME_STATE');
  Self.WAIT_LEVEL_INTERMISSION_GAME_STATE := TGameStateFactory.getInstance().createGameState('WAIT_LEVEL_INTERMISSION_GAME_STATE');
  Self.SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE := TGameStateFactory.getInstance().createGameState('SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE');
  Self.SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE := TGameStateFactory.getInstance().createGameState('SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE');
end;

constructor TIntermissionFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TIntermissionFactory.getInstance: TIntermissionFactory;
begin
        Exit(TIntermissionFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TIntermissionFactory.instance := TIntermissionFactory.Create();
  {AB:END}

end.

