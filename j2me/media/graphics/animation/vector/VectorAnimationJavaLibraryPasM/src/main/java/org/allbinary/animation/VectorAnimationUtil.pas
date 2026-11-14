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
// package org.allbinary.animation
unit VectorAnimationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TVectorAnimationUtil = class(TObject)
  public
    class var instance: TVectorAnimationUtil;
        class function getInstance: TVectorAnimationUtil; static;
        constructor Create;
        function toAnimationArrayFromListOfPointListWithPointsPerFrame(vector: TBasicArrayList; pointsPerFrame: Integer): TArray<TArray<TArray<Integer>>>; virtual;
        function toAnimationArrayFromListOfPointList(vector: TBasicArrayList): TArray<TArray<TArray<Integer>>>; virtual;
        function toFrameArrayFromPointBasicArrayList(list: TBasicArrayList): TArray<TArray<Integer>>; virtual;
  end;

implementation
uses
  GPoint;


{AB:CODE}
    

class function TVectorAnimationUtil.getInstance: TVectorAnimationUtil;
begin
        Exit(TVectorAnimationUtil.instance);
end;
    

constructor TVectorAnimationUtil.Create;
begin
    inherited Create;
end;
    

function TVectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(vector: TBasicArrayList; pointsPerFrame: Integer): TArray<TArray<TArray<Integer>>>;
var
  size: Integer;
  points: TArray<TArray<TArray<Integer>>>;
  nextBasicArrayList: TBasicArrayList;
  framePoints: TArray<TArray<Integer>>;
  pointIndex: Integer;
  index: Integer;
begin
        size := vector.size();
        points := TJava.NewArray3<Integer>(size, pointsPerFrame, 2);
        
        
        for index := 0 to size - 1 do begin
            nextBasicArrayList := TBasicArrayList(TJava.ToObject(vector.objectArray[index]));
            framePoints := Self.toFrameArrayFromPointBasicArrayList(nextBasicArrayList);
            for pointIndex := 0 to System.Length(framePoints) - 1 do begin
                points[index][pointIndex][0] := framePoints[pointIndex][0];
                points[index][pointIndex][1] := framePoints[pointIndex][1];
            end;
        end;
        Exit(points);
end;
    

function TVectorAnimationUtil.toAnimationArrayFromListOfPointList(vector: TBasicArrayList): TArray<TArray<TArray<Integer>>>;
var
  size: Integer;
  points: TArray<TArray<TArray<Integer>>>;
  nextBasicArrayList: TBasicArrayList;
  framePoints: TArray<TArray<Integer>>;
  pointIndex: Integer;
  index: Integer;
begin
        size := vector.size();
        points := TJava.NewArray3<Integer>(size, 0, 0);
        
        
        for index := 0 to size - 1 do begin
            nextBasicArrayList := TBasicArrayList(TJava.ToObject(vector.objectArray[index]));
            framePoints := Self.toFrameArrayFromPointBasicArrayList(nextBasicArrayList);
            points[index] := TJava.NewArray2<Integer>(System.Length(framePoints), 2);
            for pointIndex := 0 to System.Length(framePoints) - 1 do begin
                points[index][pointIndex][0] := framePoints[pointIndex][0];
                points[index][pointIndex][1] := framePoints[pointIndex][1];
            end;
        end;
        Exit(points);
end;
    

function TVectorAnimationUtil.toFrameArrayFromPointBasicArrayList(list: TBasicArrayList): TArray<TArray<Integer>>;
var
  points: TArray<TArray<Integer>>;
  size: Integer;
  nextPoint: TGPoint;
  index: Integer;
begin
        points := TJava.NewArray2<Integer>(list.size(), 2);
        size := list.size();
        for index := 0 to size - 1 do begin
            nextPoint := TGPoint(TJava.ToObject(list.objectArray[index]));
            points[index][0] := nextPoint.getX();
            points[index][1] := nextPoint.getY();
        end;
        Exit(points);
end;

initialization
  {AB:INITIALIZATION}
  TVectorAnimationUtil.instance := TVectorAnimationUtil.Create();
  {AB:END}

end.

