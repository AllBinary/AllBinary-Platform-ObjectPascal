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
unit EndGameInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInfo, MyCanvas;

type
  {AB:TYPES}
  TEndGameInfo = class(TObject)
  public
    NORMAL_GAME_OVER_WIN: string;
    TEASER_DEMO_GAME_END_LAST_LEVEL: string;
    TEASER_DEMO_GAME_END: string;
    gameOverStr: string;
    winStr: string;
    procedure InitFields;
    constructor Create;
        procedure update(gameInfo_: TGameInfo; myCanvas_: TMyCanvas);
        function getGameOverStr: string; virtual;
        procedure setGameOverStr(gameOverStr: string); virtual;
        function getWinStr: string; virtual;
        procedure setWinStr(winStr: string); virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure TEndGameInfo.InitFields;
begin
  Self.NORMAL_GAME_OVER_WIN := 'You Won';
  Self.TEASER_DEMO_GAME_END_LAST_LEVEL := 'End of Demo.';
  Self.TEASER_DEMO_GAME_END := 'Demo Game Over.';
  Self.gameOverStr := TStringUtil.getInstance().EMPTY_STRING;
  Self.winStr := Self.gameOverStr;
end;

constructor TEndGameInfo.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TEndGameInfo.update(gameInfo_: TGameInfo; myCanvas_: TMyCanvas);
begin
        if gameInfo_.isLastLevel() then begin
            Self.setWinStr(Self.TEASER_DEMO_GAME_END_LAST_LEVEL);
            Self.setGameOverStr(Self.TEASER_DEMO_GAME_END_LAST_LEVEL);
        end else begin
            Self.setWinStr(Self.NORMAL_GAME_OVER_WIN);
            Self.setGameOverStr(Self.TEASER_DEMO_GAME_END);
        end;
end;
    

function TEndGameInfo.getGameOverStr: string;
begin
        Exit(Self.gameOverStr);
end;
    

procedure TEndGameInfo.setGameOverStr(gameOverStr: string);
begin
        Self.gameOverStr := gameOverStr;
end;
    

function TEndGameInfo.getWinStr: string;
begin
        Exit(Self.winStr);
end;
    

procedure TEndGameInfo.setWinStr(winStr: string);
begin
        Self.winStr := winStr;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

