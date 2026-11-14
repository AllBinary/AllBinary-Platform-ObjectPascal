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
unit PointsUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPointsUtil = class(TObject)
  public
    class var instance: TPointsUtil;
    constructor Create;
        class function getInstance: TPointsUtil; static;
        function adjustXY(points: TArray<TArray<TArray<Integer>>>; x: Integer; y: Integer): TArray<TArray<TArray<Integer>>>; virtual;
        function adjust(points: TArray<TArray<Integer>>; both: Integer): TArray<TArray<Integer>>; overload; virtual;
        function adjust(points: TArray<TArray<Integer>>; x: Integer; y: Integer): TArray<TArray<Integer>>; overload; virtual;
  end;

implementation

{AB:CODE}

constructor TPointsUtil.Create;
begin
  inherited Create;
end;
    

class function TPointsUtil.getInstance: TPointsUtil;
begin
        Exit(TPointsUtil.instance);
end;
    

function TPointsUtil.adjustXY(points: TArray<TArray<TArray<Integer>>>; x: Integer; y: Integer): TArray<TArray<TArray<Integer>>>;
var
  size: Integer;
  newPoints: TArray<TArray<TArray<Integer>>>;
  size2: Integer;
  index2: Integer;
  index: Integer;
begin
        size := System.Length(points);
        newPoints := TJava.NewArray3<Integer>(size, 0, 0);
        for index := 0 to size - 1 do begin
            size2 := System.Length(points[index]);
            newPoints[index] := TJava.NewArray2<Integer>(size2, 2);
            for index2 := 0 to size2 - 1 do begin
                if (points[index][index2][0]) <> (1000) then begin
                    newPoints[index][index2][0] := (points[index][index2][0]) + (x);
                    newPoints[index][index2][1] := (points[index][index2][1]) + (y);
                end else begin
                    newPoints[index][index2][0] := 1000;
                    newPoints[index][index2][1] := 1000;
                end;
            end;
        end;
        Exit(newPoints);
end;
    

function TPointsUtil.adjust(points: TArray<TArray<Integer>>; both: Integer): TArray<TArray<Integer>>;
begin
        Exit(Self.adjust(points, both, both));
end;
    

function TPointsUtil.adjust(points: TArray<TArray<Integer>>; x: Integer; y: Integer): TArray<TArray<Integer>>;
var
  newPoints: TArray<TArray<Integer>>;
  index2: Integer;
begin
        newPoints := TJava.NewArray2<Integer>(System.Length(points), 2);
        for index2 := 0 to System.Length(points) - 1 do begin
            if (points[index2][0]) <> (1000) then begin
                newPoints[index2][0] := (points[index2][0]) + (x);
                newPoints[index2][1] := (points[index2][1]) + (y);
            end else begin
                newPoints[index2][0] := 1000;
                newPoints[index2][1] := 1000;
            end;
        end;
        Exit(newPoints);
end;

initialization
  {AB:INITIALIZATION}
  TPointsUtil.instance := TPointsUtil.Create();
  {AB:END}

end.

