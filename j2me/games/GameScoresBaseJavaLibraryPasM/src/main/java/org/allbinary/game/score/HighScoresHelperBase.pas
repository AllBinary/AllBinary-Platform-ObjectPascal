{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.score
unit HighScoresHelperBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, HighScores, HighScoresHelperBaseInterface, HighScoresResultsListener;

type
  {AB:TYPES}
  THighScoresHelperBase = class(TInterfacedObject, IHighScoresHelperBaseInterface, IHighScoresResultsListener)
  public
    logUtil: TLogUtil;
    highScoresArrayP: TArray<THighScores>;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        procedure setHighScoresArray(highScoresArrayP: TArray<THighScores>); virtual;
        function getNextHighScores: THighScores; virtual;
        function isAnyHighScores: Boolean; virtual;
        procedure setSelectedHighScores(selectedHighScores: THighScores); virtual;
        function getSelectedHighScores: THighScores; virtual;
        function getHighScoresArray: TArray<THighScores>; virtual;
        procedure selectHighScores; virtual;
  end;

implementation
uses
  LastFetchHighScoresFactory, NullHighScoresSingletonFactory, StringMaker, CommonStrings;


{AB:CODE}

procedure THighScoresHelperBase.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.highScoresArrayP := TLastFetchHighScoresFactory.getInstance().highScoresArray;
end;

function THighScoresHelperBase.JavaObject: TObject;
begin
  Result := Self;
end;

constructor THighScoresHelperBase.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure THighScoresHelperBase.setHighScoresArray(highScoresArrayP: TArray<THighScores>);
var
  commonStrings_: TCommonStrings;
begin
        if (highScoresArrayP) <> (nil) then begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.putF(TStringMaker.Create().append(commonStrings_.START).appendint(System.Length(highScoresArrayP)).toString(), TJava.Box(Self), 'setHighScoresArray');
        end else begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.putF(commonStrings_.START, TJava.Box(Self), 'setHighScoresArray');
        end;
        Self.highScoresArrayP := highScoresArrayP;
end;
    

function THighScoresHelperBase.getNextHighScores: THighScores;
begin
        Exit(TNullHighScoresSingletonFactory.getInstance());
end;
    

function THighScoresHelperBase.isAnyHighScores: Boolean;
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure THighScoresHelperBase.setSelectedHighScores(selectedHighScores: THighScores);
begin
end;
    

function THighScoresHelperBase.getSelectedHighScores: THighScores;
begin
        Exit(TNullHighScoresSingletonFactory.getInstance());
end;
    

function THighScoresHelperBase.getHighScoresArray: TArray<THighScores>;
begin
        Exit(Self.highScoresArrayP);
end;
    

procedure THighScoresHelperBase.selectHighScores;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

