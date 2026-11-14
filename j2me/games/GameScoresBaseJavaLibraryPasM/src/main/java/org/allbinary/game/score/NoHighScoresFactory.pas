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
// package org.allbinary.game.score
unit NoHighScoresFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInfo, LogUtil, HighScoresResultsListener, HighScoresHelperBaseInterface, HighScores, HighScoresBase;

type
  {AB:TYPES}
  TNoHighScoresFactory = class(THighScoresBase)
  public
    logUtil: TLogUtil;
    NO_HIGH_SCORES: TArray<THighScores>;
    class var instance: TNoHighScoresFactory;
    procedure InitFields;
        class function getInstance: TNoHighScoresFactory; static;
        constructor Create;
        procedure fetchHighScores(gameInfo_: TGameInfo; highScoresResultsListener_: IHighScoresResultsListener); override;
        function createHighScoresHelper: IHighScoresHelperBaseInterface; override;
  end;

implementation
uses
  HighScoresHelperBase;


{AB:CODE}

procedure TNoHighScoresFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.NO_HIGH_SCORES := nil;
end;
    

class function TNoHighScoresFactory.getInstance: TNoHighScoresFactory;
begin
        Exit(TNoHighScoresFactory.instance);
end;
    

constructor TNoHighScoresFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TNoHighScoresFactory.fetchHighScores(gameInfo_: TGameInfo; highScoresResultsListener_: IHighScoresResultsListener);
begin
        Self.logUtil.putF('Getting No HighScores', TJava.Box(Self), 'fetchHighScores');
        highScoresResultsListener_.setHighScoresArray(Self.NO_HIGH_SCORES);
end;
    

function TNoHighScoresFactory.createHighScoresHelper: IHighScoresHelperBaseInterface;
begin
        Exit(THighScoresHelperBase.Create());
end;

initialization
  {AB:INITIALIZATION}
  TNoHighScoresFactory.instance := TNoHighScoresFactory.Create();
  {AB:END}

end.

