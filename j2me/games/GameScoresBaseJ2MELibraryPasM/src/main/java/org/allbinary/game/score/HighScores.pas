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
unit HighScores;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, HighScore, HighScoresInterface;

type
  {AB:TYPES}
  THighScores = class(TInterfacedObject, IHighScoresInterface)
  public
    orderedHighScoresList: TBasicArrayList;
    name: string;
    heading: string;
    columnOneHeading: string;
    columnTwoHeading: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(name: string; heading: string; columnTwoHeading: string);
        procedure setList(orderedHighScoresList: TBasicArrayList); virtual;
        function getList: TBasicArrayList; virtual;
        function getName: string; virtual;
        function getTotal: Integer; virtual;
        procedure addHighScore(newHighScore: THighScore); virtual;
        function getHeading: string; virtual;
        function getColumnOneHeading: string; virtual;
        function getColumnTwoHeading: string; virtual;
        function isBestScore(newHighScore: THighScore): Boolean; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker, CommonLabels, CommonSeps, BasicArrayListD;


{AB:CODE}

procedure THighScores.InitFields;
begin
  Self.orderedHighScoresList := TBasicArrayListD.Create();
  
  
  Self.columnOneHeading := 'Name';
  
end;

function THighScores.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor THighScores.Create(name: string; heading: string; columnTwoHeading: string);
begin
    inherited Create;
    InitFields;
        Self.name := name;
        Self.heading := heading;
        Self.columnTwoHeading := columnTwoHeading;
end;
    

procedure THighScores.setList(orderedHighScoresList: TBasicArrayList);
begin
        Self.orderedHighScoresList := orderedHighScoresList;
end;
    

function THighScores.getList: TBasicArrayList;
begin
        Exit(Self.orderedHighScoresList);
end;
    

function THighScores.getName: string;
begin
        Exit(Self.name);
end;
    

function THighScores.getTotal: Integer;
begin
        Exit(Self.getList().size());
end;
    

procedure THighScores.addHighScore(newHighScore: THighScore);
begin
        Self.orderedHighScoresList.add(TJava.Box(newHighScore));
end;
    

function THighScores.getHeading: string;
begin
        Exit(Self.heading);
end;
    

function THighScores.getColumnOneHeading: string;
begin
        Exit(Self.columnOneHeading);
end;
    

function THighScores.getColumnTwoHeading: string;
begin
        Exit(Self.columnTwoHeading);
end;
    

// throws Exception
function THighScores.isBestScore(newHighScore: THighScore): Boolean;
begin
        Exit(False);
end;
    

function THighScores.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('HighScores: ');
        stringBuffer.append(Self.heading);
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(TCommonLabels.getInstance().TOTAL_LABEL);
        stringBuffer.appendint(Self.orderedHighScoresList.size());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

