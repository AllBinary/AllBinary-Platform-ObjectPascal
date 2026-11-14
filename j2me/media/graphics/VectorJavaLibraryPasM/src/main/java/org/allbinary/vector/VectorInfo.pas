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
// package org.allbinary.vector
unit VectorInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TVectorInfo = class(TObject)
  public
    width: Integer;
    height: Integer;
    points: TArray<TArray<Integer>>;
    totalFrames: Integer;
    procedure InitFields;
        constructor Create(width: Integer; height: Integer; points: TArray<TArray<Integer>>; totalFrames: Integer);
        function getWidth: Integer; virtual;
        procedure setWidth(width: Integer);
        function getHeight: Integer; virtual;
        procedure setHeight(height: Integer);
        function getPoints: TArray<TArray<Integer>>; virtual;
        procedure setPoints(points: TArray<TArray<Integer>>);
        function getTotalFrames: Integer; virtual;
        procedure setTotalFrames(totalFrames: Integer);
  end;

implementation

{AB:CODE}

procedure TVectorInfo.InitFields;
begin
  
  
  
  
end;
    

constructor TVectorInfo.Create(width: Integer; height: Integer; points: TArray<TArray<Integer>>; totalFrames: Integer);
begin
    inherited Create;
    InitFields;
        Self.width := width;
        Self.height := height;
        Self.points := points;
        Self.totalFrames := totalFrames;
end;
    

function TVectorInfo.getWidth: Integer;
begin
        Exit(Self.width);
end;
    

procedure TVectorInfo.setWidth(width: Integer);
begin
        Self.width := width;
end;
    

function TVectorInfo.getHeight: Integer;
begin
        Exit(Self.height);
end;
    

procedure TVectorInfo.setHeight(height: Integer);
begin
        Self.height := height;
end;
    

function TVectorInfo.getPoints: TArray<TArray<Integer>>;
begin
        Exit(Self.points);
end;
    

procedure TVectorInfo.setPoints(points: TArray<TArray<Integer>>);
begin
        Self.points := points;
end;
    

function TVectorInfo.getTotalFrames: Integer;
begin
        Exit(Self.totalFrames);
end;
    

procedure TVectorInfo.setTotalFrames(totalFrames: Integer);
begin
        Self.totalFrames := totalFrames;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

