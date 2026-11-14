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
unit Scoreable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ScoreableInterface;

type
  {AB:TYPES}
  TScoreable = class(TInterfacedObject, IScoreableInterface)
  public
    points: Integer;
    class var ID: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(points: Integer);
        procedure addPoints(points: Integer); virtual;
        procedure removePoints(points: Integer); virtual;
        procedure setPoints(points: Integer); virtual;
        function getPoints: Integer; virtual;
  end;

implementation
uses
  SmallIntegerSingletonFactory;


{AB:CODE}

procedure TScoreable.InitFields;
begin
  
end;

function TScoreable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TScoreable.Create(points: Integer);
begin
    inherited Create;
    InitFields;
        Self.points := points;
end;
    

procedure TScoreable.addPoints(points: Integer);
begin
        Self.points := (Self.points) + (points);
end;
    

procedure TScoreable.removePoints(points: Integer);
begin
        Self.points := (Self.points) - (points);
end;
    

procedure TScoreable.setPoints(points: Integer);
begin
        Self.points := points;
end;
    

function TScoreable.getPoints: Integer;
begin
        Exit(Self.points);
end;

initialization
  {AB:INITIALIZATION}
  TScoreable.ID := TSmallIntegerSingletonFactory.getInstance().getAt(3);
  {AB:END}

end.

