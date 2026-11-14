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
unit GameInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ABHashtable, GameInfoData, GameType, GameMode, PlayerType;

type
  {AB:TYPES}
  TGameInfo = class(TObject)
  public
    logUtil: TLogUtil;
    gameInfoData: TGameInfoData;
    gameType: TGameType;
    gameMode: TGameMode;
    playerType: TPlayerType;
    highestLevel: Integer;
    currentLevel: Integer;
    NEW_LEVEL: string;
    SET_CURRENT_LEVEL: string;
    NEXT_GAME_LEVEL: string;
    class var NONE: TGameInfo;
    class var LEVEL_NAME: string;
    procedure InitFields;
        constructor Create(gameType_: TGameType; gameMode_: TGameMode; playerType_: TPlayerType; highestLevel: Integer; currentLevel: Integer);
        function getGameType: TGameType; virtual;
        function getGameMode: TGameMode; virtual;
        function getPlayerType: TPlayerType; virtual;
        function getHighestLevel: Integer; virtual;
        procedure setHighestLevel(highestLevel: Integer); virtual;
        function getCurrentLevel: Integer; virtual;
        procedure setCurrentLevel(currentLevel: Integer); virtual;
        procedure nextGameLevel; virtual;
        procedure previousGameLevel; virtual;
        function isLastLevel: Boolean; virtual;
        function toHashtable: TABHashtable<TObject, TObject>; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  GameTypeFactory, PlayerTypesFactory, StringMaker, StringUtil, CommonSeps, StdUtil, CommonLabels;


{AB:CODE}

procedure TGameInfo.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.gameInfoData := TGameInfoData.getInstance();
  
  
  
  
  
  Self.NEW_LEVEL := 'New Level: ';
  Self.SET_CURRENT_LEVEL := 'setCurrentLevel';
  Self.NEXT_GAME_LEVEL := 'nextGameLevel';
end;
    

constructor TGameInfo.Create(gameType_: TGameType; gameMode_: TGameMode; playerType_: TPlayerType; highestLevel: Integer; currentLevel: Integer);
begin
    inherited Create;
    InitFields;
        Self.gameType := gameType_;
        Self.gameMode := gameMode_;
        Self.setHighestLevel(highestLevel);
        Self.currentLevel := currentLevel;
        Self.playerType := playerType_;
end;
    

function TGameInfo.getGameType: TGameType;
begin
        Exit(Self.gameType);
end;
    

function TGameInfo.getGameMode: TGameMode;
begin
        Exit(Self.gameMode);
end;
    

function TGameInfo.getPlayerType: TPlayerType;
begin
        Exit(Self.playerType);
end;
    

function TGameInfo.getHighestLevel: Integer;
begin
        Exit(Self.highestLevel);
end;
    

procedure TGameInfo.setHighestLevel(highestLevel: Integer);
begin
        Self.highestLevel := highestLevel;
end;
    

function TGameInfo.getCurrentLevel: Integer;
begin
        Exit(Self.currentLevel);
end;
    

procedure TGameInfo.setCurrentLevel(currentLevel: Integer);
begin
        Self.currentLevel := currentLevel;
        Self.logUtil.putF(TStringMaker.Create().append(Self.NEW_LEVEL).appendint(Self.getCurrentLevel()).toString(), TJava.Box(Self), Self.SET_CURRENT_LEVEL);
end;
    

procedure TGameInfo.nextGameLevel;
begin
        if (Self.getCurrentLevel()) < (Self.getHighestLevel()) then begin
            Inc(Self.currentLevel);
        end;
        Self.logUtil.putF(TStringMaker.Create().append(TCommonLabels.getInstance().NEXT).append(TCommonSeps.getInstance().SPACE).append(Self.NEW_LEVEL).appendint(Self.getCurrentLevel()).toString(), TJava.Box(Self), Self.NEXT_GAME_LEVEL);
end;
    

procedure TGameInfo.previousGameLevel;
begin
        if (Self.getCurrentLevel()) > (1) then begin
            Dec(Self.currentLevel);
        end;
end;
    

function TGameInfo.isLastLevel: Boolean;
begin
        if (Self.getCurrentLevel()) >= (Self.getHighestLevel()) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TGameInfo.toHashtable: TABHashtable<TObject, TObject>;
var
  hashtable: TABHashtable<TObject, TObject>;
begin
        hashtable := TStdUtil.getInstance().createHashtable();
        hashtable.put(TJava.Box(Self.gameInfoData.GAME_TYPE), TJava.Box(Self.getGameType().toString()));
        hashtable.put(TJava.Box(Self.gameInfoData.GAME_MODE), TJava.Box(Self.gameMode.toString()));
        hashtable.put(TJava.Box(Self.gameInfoData.PLAYER_TYPE), TJava.Box(Self.playerType.toString()));
        hashtable.put(TJava.Box(Self.gameInfoData.HIGHEST_LEVEL), TJava.Box(IntToStr(Self.getHighestLevel())));
        hashtable.put(TJava.Box(Self.gameInfoData.CURRENT_LEVEL), TJava.Box(IntToStr(Self.currentLevel)));
        Exit(hashtable);
end;
    

function TGameInfo.toString: string;
var
  stringBuffer: TStringMaker;
  commonSeps_: TCommonSeps;
begin
        stringBuffer := TStringMaker.Create();
        commonSeps_ := TCommonSeps.getInstance();
        stringBuffer.append(Self.gameInfoData.GAME_TYPE);
        stringBuffer.append(commonSeps_.EQUALS);
        stringBuffer.append(Self.getGameType().toString());
        stringBuffer.append(commonSeps_.COMMA_SEP);
        stringBuffer.append(Self.gameInfoData.GAME_MODE);
        stringBuffer.append(commonSeps_.EQUALS);
        stringBuffer.append(Self.gameMode.toString());
        stringBuffer.append(commonSeps_.COMMA_SEP);
        stringBuffer.append(Self.gameInfoData.PLAYER_TYPE);
        stringBuffer.append(commonSeps_.EQUALS);
        stringBuffer.append(TStringUtil.getInstance().toString(Self.playerType));
        stringBuffer.append(commonSeps_.COMMA_SEP);
        stringBuffer.append(Self.gameInfoData.HIGHEST_LEVEL);
        stringBuffer.append(commonSeps_.EQUALS);
        stringBuffer.appendint(Self.getHighestLevel());
        stringBuffer.append(commonSeps_.COMMA_SEP);
        stringBuffer.append(Self.gameInfoData.CURRENT_LEVEL);
        stringBuffer.append(commonSeps_.EQUALS);
        stringBuffer.appendint(Self.currentLevel);
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TGameInfo.NONE := TGameInfo.Create(TGameTypeFactory.getInstance().NONE, TGameMode.NONE, TPlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, -1, -1);
  TGameInfo.LEVEL_NAME := 'LEVEL';
  {AB:END}

end.

