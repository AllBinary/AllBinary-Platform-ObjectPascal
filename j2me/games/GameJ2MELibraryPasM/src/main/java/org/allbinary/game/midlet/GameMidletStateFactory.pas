// Generated Code Do Not Modify
// package org.allbinary.game.midlet
unit GameMidletStateFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameState, LogUtil;

type
  {AB:TYPES}
  TGameMidletStateFactory = class(TObject)
  public
    logUtil: TLogUtil;
    currentGameState: TGameState;
    class var INSTANCE: TGameMidletStateFactory;
    procedure InitFields;
        constructor Create;
        class function getInstance: TGameMidletStateFactory; static;
        function getCurrentGameState: TGameState; virtual;
        procedure setCurrentGameState(currentGameState: TGameState); virtual;
  end;

implementation
uses
  GameStateFactory, StringMaker, StringUtil, CommonLabels;


{AB:CODE}

procedure TGameMidletStateFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.currentGameState := TGameStateFactory.getInstance().NO_GAME_STATE;
end;
    

constructor TGameMidletStateFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TGameMidletStateFactory.getInstance: TGameMidletStateFactory;
begin
        Exit(TGameMidletStateFactory.INSTANCE);
end;
    

function TGameMidletStateFactory.getCurrentGameState: TGameState;
begin
        Exit(Self.currentGameState);
end;
    

procedure TGameMidletStateFactory.setCurrentGameState(currentGameState: TGameState);
begin
        Self.logUtil.putF(TStringMaker.Create().append(TCommonLabels.getInstance().CURRENT).append(' GameState: ').append(TStringUtil.getInstance().toString(currentGameState)).toString(), TJava.Box(Self), 'setCurrentGameState');
        Self.currentGameState := currentGameState;
end;

initialization
  {AB:INITIALIZATION}
  TGameMidletStateFactory.INSTANCE := TGameMidletStateFactory.Create();
  {AB:END}

end.

