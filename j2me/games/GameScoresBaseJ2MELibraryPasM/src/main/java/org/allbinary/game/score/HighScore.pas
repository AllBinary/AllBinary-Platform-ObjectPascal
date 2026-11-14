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
unit HighScore;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInfo;

type
  {AB:TYPES}
  THighScore = class(TObject)
  public
    id: Integer;
    name: string;
    gameInfo: TGameInfo;
    score: Int64;
    scoreString: string;
    procedure InitFields;
        constructor Create(id: Integer; name: string; gameInfo_: TGameInfo; score: Int64);
        function getId: Integer; virtual;
        function getName: string; virtual;
        function getScore: Int64; virtual;
        function getAsBytes: TArray<ShortInt>; virtual;
        function getGameInfo: TGameInfo; virtual;
        function getScoreString: string; virtual;
        procedure setName(name: string); virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker, CommonSeps;


{AB:CODE}

procedure THighScore.InitFields;
begin
  
  
  
  
  
end;
    

constructor THighScore.Create(id: Integer; name: string; gameInfo_: TGameInfo; score: Int64);
begin
    inherited Create;
    InitFields;
        Self.id := id;
        Self.name := name;
        Self.gameInfo := gameInfo_;
        Self.score := score;
        Self.scoreString := IntToStr(Self.score);
end;
    

function THighScore.getId: Integer;
begin
        Exit(Self.id);
end;
    

function THighScore.getName: string;
begin
        Exit(Self.name);
end;
    

function THighScore.getScore: Int64;
begin
        Exit(Self.score);
end;
    

// throws Exception
function THighScore.getAsBytes: TArray<ShortInt>;
var
  byteArrayOutputStream: TByteArrayOutputStream;
  outputStream: TDataOutputStream;
begin
        byteArrayOutputStream := TByteArrayOutputStream.Create;
        outputStream := TDataOutputStream.Create(byteArrayOutputStream);
        outputStream.writeUTF(Self.getName());
        outputStream.writeLong(Self.getScore());
        Exit(byteArrayOutputStream.toByteArray());
end;
    

function THighScore.getGameInfo: TGameInfo;
begin
        Exit(Self.gameInfo);
end;
    

function THighScore.getScoreString: string;
begin
        Exit(Self.scoreString);
end;
    

procedure THighScore.setName(name: string);
begin
        Self.name := name;
end;
    

function THighScore.toString: string;
var
  commonSeps_: TCommonSeps;
begin
        commonSeps_ := TCommonSeps.getInstance();
        Exit(TStringMaker.Create().append(Self.name).append(commonSeps_.COLON).appendlong(Self.score).append(commonSeps_.FORWARD_SLASH).append(Self.scoreString).toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

