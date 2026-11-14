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
unit EndGameProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Processor, GameStateFactory, AllBinaryGameCanvas;

type
  {AB:TYPES}
  TEndGameProcessor = class(TProcessor)
  public
    gameStateFactory: TGameStateFactory;
    gameCanvas: TAllBinaryGameCanvas;
    WAIT: Int64;
    procedure InitFields;
        constructor Create(gameCanvas: TAllBinaryGameCanvas);
        procedure process; override;
  end;

implementation
uses
  HighScores, HighScoresHelperBase, NullHighScoresSingletonFactory, NullPaintable;


{AB:CODE}

procedure TEndGameProcessor.InitFields;
begin
  Self.gameStateFactory := TGameStateFactory.getInstance();
  
  Self.WAIT := 5000;
end;
    

constructor TEndGameProcessor.Create(gameCanvas: TAllBinaryGameCanvas);
begin
    inherited Create;
    InitFields;
        Self.gameCanvas := gameCanvas;
end;
    

// throws Exception
procedure TEndGameProcessor.process;
var
  highScoresBase: THighScoresHelperBase;
  highScores_: THighScores;
begin
        if Self.gameCanvas.isHighScoreSubmitted() then begin
            if Self.gameCanvas.getGameStateTimeHelper().isElapsedTNT(Self.WAIT) then begin
                if (Self.gameCanvas.getGameState()) = (Self.gameStateFactory.SHOW_END_RESULT_GAME_STATE) then begin
                    highScoresBase := THighScoresHelperBase(TJava.ToObject(Self.gameCanvas.highScoresHelper));
                    highScores_ := highScoresBase.getSelectedHighScores();
                    if (highScores_) <> (TNullHighScoresSingletonFactory.getInstance()) then begin
                        highScoresBase.selectHighScores();
                        Self.gameCanvas.getRealHighScoresPaintable().setHighScores(highScores_);
                        Self.gameCanvas.setGameState(Self.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE);
                        Self.gameCanvas.setHighScoresPaintable(Self.gameCanvas.getRealHighScoresPaintable());
                    end;
                end else if (Self.gameCanvas.getGameState()) = (Self.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE) then begin
                    Self.gameCanvas.setGameState(Self.gameStateFactory.SHOW_END_RESULT_GAME_STATE);
                    Self.gameCanvas.setHighScoresPaintable(TNullPaintable.getInstance());
                end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

