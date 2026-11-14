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
// package org.allbinary.game.score.displayable
unit HighScoreUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, CommandListener, GameInfo, HighScore, HighScores, HighScoresFactoryInterface, HighScoresHelperBaseInterface, HighScoresResultsListener, MyCanvas, LogUtil, AbeClientInformationInterface, CommonStrings;

type
  {AB:TYPES}
  THighScoreUtil = class(TInterfacedObject, IHighScoresResultsListener)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    highScoresFactoryInterface: IHighScoresFactoryInterface;
    highScoresArray: TArray<THighScores>;
    highScore: THighScore;
    abeClientInformation: IAbeClientInformationInterface;
    gameInfo: TGameInfo;
    highScoresHelper: IHighScoresHelperBaseInterface;
    firstTime: Boolean;
    class var SUBMIT_TEXTBOX_COMMAND: TCommand;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(highScoresFactoryInterface_: IHighScoresFactoryInterface; highScoresHelper: IHighScoresHelperBaseInterface; abeClientInformation: IAbeClientInformationInterface; gameInfo_: TGameInfo; cmdListener: ICommandListener; name: string; highScore_: THighScore);
        procedure setHighScoresArray(highScoresArray: TArray<THighScores>); virtual;
        procedure update(name: string); virtual;
        procedure saveHighScore; virtual;
        procedure submit(myCanvas_: TMyCanvas); virtual;
  end;

implementation
uses
  HighScoreNamePersistanceSingleton, StringMaker, StringUtil;


{AB:CODE}

procedure THighScoreUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  Self.firstTime := True;
end;

function THighScoreUtil.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor THighScoreUtil.Create(highScoresFactoryInterface_: IHighScoresFactoryInterface; highScoresHelper: IHighScoresHelperBaseInterface; abeClientInformation: IAbeClientInformationInterface; gameInfo_: TGameInfo; cmdListener: ICommandListener; name: string; highScore_: THighScore);
begin
    inherited Create;
    InitFields;
        Self.highScoresFactoryInterface := highScoresFactoryInterface_;
        Self.highScoresHelper := highScoresHelper;
        Self.highScoresArray := Self.highScoresHelper.getHighScoresArray();
        Self.highScore := highScore_;
        Self.abeClientInformation := abeClientInformation;
        Self.gameInfo := gameInfo_;
end;
    

procedure THighScoreUtil.setHighScoresArray(highScoresArray: TArray<THighScores>);
begin
        Self.highScoresArray := highScoresArray;
        Self.firstTime := False;
        Self.saveHighScore();
end;
    

procedure THighScoreUtil.update(name: string);
begin
        THighScoreNamePersistanceSingleton.getInstance().save(Self.abeClientInformation, Self.gameInfo, name);
        Self.highScore.setName(name);
end;
    

procedure THighScoreUtil.saveHighScore;
var
  size: Integer;
  highScores_: THighScores;
  highScoresAsString: string;
  index: Integer;
begin
        Self.logUtil.putF(TStringMaker.Create().append(Self.commonStrings.START).append(TStringUtil.getInstance().toString(Self.highScore)).toString(), TJava.Box(Self), 'saveHighScore');
        size := System.Length(Self.highScoresArray);
        if (Self.firstTime) and ((size) = (0)) then begin
            Self.logUtil.putF('Games canvas did not give us any HighScores', TJava.Box(Self), 'saveHighScore');
            Self.highScoresFactoryInterface.fetchHighScores(Self.gameInfo, Self);
            Exit;
        end;
        
        
        for index := 0 to size - 1 do begin
            highScores_ := Self.highScoresArray[index];
            highScores_.addHighScore(Self.highScore);
            highScoresAsString := highScores_.toString();
            Self.logUtil.putF(TStringMaker.Create().append('Added/Adding Score: ').append(highScoresAsString).toString(), TJava.Box(Self), 'saveHighScore');
        end;
        Self.highScoresHelper.setHighScoresArray(Self.highScoresArray);
end;
    

procedure THighScoreUtil.submit(myCanvas_: TMyCanvas);
var
  commandListener_: ICommandListener;
begin
        commandListener_ := myCanvas_.getCustomCommandListener();
        commandListener_.commandAction(THighScoreUtil.SUBMIT_TEXTBOX_COMMAND, myCanvas_);
end;

initialization
  {AB:INITIALIZATION}
  THighScoreUtil.SUBMIT_TEXTBOX_COMMAND := TCommand.Create('Submit', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  {AB:END}

end.

