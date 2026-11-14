// Generated Code Do Not Modify
// package org.allbinary.game.score
unit BasicHighScoresFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInfo, LogUtil, SoftwareInformation, AbeClientInformationInterface, HighScoresResultsListener, HighScoresHelperBaseInterface, HighScores, HighScoresBase;

type
  {AB:TYPES}
  TBasicHighScoresFactory = class(THighScoresBase)
  public
    logUtil: TLogUtil;
    abeClientInformation: IAbeClientInformationInterface;
    highScoresArray: TArray<THighScores>;
    TOP: string;
    SCORES: string;
    PERSONAL_HIGH_SCORES: string;
    FETCH: string;
    procedure InitFields;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; softwareInformation_: TSoftwareInformation);
        procedure fetchHighScores(gameInfo_: TGameInfo; highScoresResultsListener_: IHighScoresResultsListener); override;
        procedure fetchHighScoresPreload(gameInfo_: TGameInfo; highScoresResultsListener_: IHighScoresResultsListener; preload: Boolean); override;
        function createHighScoresHelper: IHighScoresHelperBaseInterface; override;
        class function loaded(index2: Integer): Boolean; static;
  end;

implementation
uses
  RecordStoreHighScores, ScoreComparator, HighScoresHelper2;


{AB:CODE}

procedure TBasicHighScoresFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  Self.highScoresArray := TJava.NewArray<THighScores>(1);
  Self.TOP := 'Top';
  Self.SCORES := 'Scores';
  Self.PERSONAL_HIGH_SCORES := 'Personal Top Scores';
  Self.FETCH := 'fetchHighScores';
end;
    

constructor TBasicHighScoresFactory.Create(abeClientInformation: IAbeClientInformationInterface; softwareInformation_: TSoftwareInformation);
begin
    inherited Create;
    InitFields;
        Self.abeClientInformation := abeClientInformation;
end;
    

procedure TBasicHighScoresFactory.fetchHighScores(gameInfo_: TGameInfo; highScoresResultsListener_: IHighScoresResultsListener);
begin
        Self.logUtil.putF('Getting Local HighScores', TJava.Box(Self), Self.FETCH);
        Self.fetchHighScoresPreload(gameInfo_, highScoresResultsListener_, True);
end;
    

procedure TBasicHighScoresFactory.fetchHighScoresPreload(gameInfo_: TGameInfo; highScoresResultsListener_: IHighScoresResultsListener; preload: Boolean);
begin
        try
            Self.highScoresArray[0] := TRecordStoreHighScores.getInstance(Self.abeClientInformation, gameInfo_, Self.TOP, Self.PERSONAL_HIGH_SCORES, Self.SCORES, TScoreComparator.Create(True));
            highScoresResultsListener_.setHighScoresArray(Self.highScoresArray);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.FETCH, TJava.Box(e));
            end;
        end;
end;
    

function TBasicHighScoresFactory.createHighScoresHelper: IHighScoresHelperBaseInterface;
begin
        Exit(THighScoresHelper2.Create());
end;
    

class function TBasicHighScoresFactory.loaded(index2: Integer): Boolean;
begin
        if (index2) >= (0) then begin
            Exit(True);
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

