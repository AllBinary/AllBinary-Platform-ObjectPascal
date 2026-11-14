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
unit VectorExplosionGenerator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RandomRotationFactory, BasicArrayList, VectorExplosionType, VectorAnimationUtil;

type
  {AB:TYPES}
  TVectorExplosionGenerator = class(TObject)
  public
    RANDOM: TVectorExplosionType;
    ROTATION: TVectorExplosionType;
    vectorAnimationUtil: TVectorAnimationUtil;
    randomRotationFactory: TRandomRotationFactory;
    class var instance: TVectorExplosionGenerator;
    procedure InitFields;
        class function getInstance: TVectorExplosionGenerator; overload; static;
        constructor Create;
        function createList(list: TBasicArrayList; howMuch: Integer; type_: TVectorExplosionType): TBasicArrayList; virtual;
        function getInstance(points: TArray<TArray<Integer>>; howMuch: Integer; type_: TVectorExplosionType): TArray<TArray<TArray<Integer>>>; overload; virtual;
        function getInstanceStartFrame(points: TArray<TArray<Integer>>; howMuch: Integer; type_: TVectorExplosionType; startFrame: Boolean): TBasicArrayList; virtual;
        function createListFromPoints(tempBasicArrayList: TBasicArrayList; points: TArray<TArray<Integer>>; howMuch: Integer; type_: TVectorExplosionType): TBasicArrayList;
        function createPointsBasicArrayList(points: TArray<TArray<Integer>>): TBasicArrayList;
  end;

implementation
uses
  GPoint, PointFactory, RandomTranslation, BasicArrayListD, BasicArrayListS;


{AB:CODE}

procedure TVectorExplosionGenerator.InitFields;
begin
  Self.RANDOM := TVectorExplosionType.Create();
  Self.ROTATION := TVectorExplosionType.Create();
  Self.vectorAnimationUtil := TVectorAnimationUtil.getInstance();
  Self.randomRotationFactory := TRandomRotationFactory.getInstance();
end;
    

class function TVectorExplosionGenerator.getInstance: TVectorExplosionGenerator;
begin
        Exit(TVectorExplosionGenerator.instance);
end;
    

constructor TVectorExplosionGenerator.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TVectorExplosionGenerator.createList(list: TBasicArrayList; howMuch: Integer; type_: TVectorExplosionType): TBasicArrayList;
var
  point: TGPoint;
  size: Integer;
  points: TArray<TArray<Integer>>;
  index: Integer;
begin
        
        size := list.size();
        points := TJava.NewArray2<Integer>(size, 2);
        for index := 0 to size - 1 do begin
            point := TGPoint(TJava.ToObject(list.objectArray[index]));
            points[index][0] := point.getX();
            points[index][1] := point.getY();
        end;
        Exit(Self.createListFromPoints(list, points, howMuch, type_));
end;
    

// throws Exception
function TVectorExplosionGenerator.getInstance(points: TArray<TArray<Integer>>; howMuch: Integer; type_: TVectorExplosionType): TArray<TArray<TArray<Integer>>>;
var
  pointsBasicArrayList: TBasicArrayList;
  tempBasicArrayList: TBasicArrayList;
  newPoints: TArray<TArray<TArray<Integer>>>;
begin
        pointsBasicArrayList := Self.getInstanceStartFrame(points, howMuch, type_, True);
        tempBasicArrayList := TBasicArrayList(TJava.ToObject(pointsBasicArrayList.objectArray[0]));
        newPoints := Self.vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, tempBasicArrayList.size());
        Exit(newPoints);
end;
    

// throws Exception
function TVectorExplosionGenerator.getInstanceStartFrame(points: TArray<TArray<Integer>>; howMuch: Integer; type_: TVectorExplosionType; startFrame: Boolean): TBasicArrayList;
var
  pointsBasicArrayList: TBasicArrayList;
  frameIndex: Integer;
  tempBasicArrayList: TBasicArrayList;
  pointBasicArrayList: TBasicArrayList;
begin
        try
            pointsBasicArrayList := TBasicArrayListS.Create(howMuch);
            pointsBasicArrayList.add(TJava.Box(Self.createPointsBasicArrayList(points)));
            frameIndex := 0;
            
            
            while (frameIndex) < (howMuch) do begin
                tempBasicArrayList := TBasicArrayList(TJava.ToObject(pointsBasicArrayList.objectArray[frameIndex]));
                pointBasicArrayList := Self.createListFromPoints(tempBasicArrayList, points, howMuch, type_);
                pointsBasicArrayList.add(TJava.Box(pointBasicArrayList));
                Inc(frameIndex);
            end;
            if not (startFrame) then begin
                pointsBasicArrayList.removeAt(0);
            end;
            Exit(pointsBasicArrayList);
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

// throws Exception
function TVectorExplosionGenerator.createListFromPoints(tempBasicArrayList: TBasicArrayList; points: TArray<TArray<Integer>>; howMuch: Integer; type_: TVectorExplosionType): TBasicArrayList;
var
  index: Integer;
  pointBasicArrayList: TBasicArrayList;
  sectionBasicArrayList: TBasicArrayList;
  size: Integer;
  index2: Integer;
begin
        index := 0;
        pointBasicArrayList := TBasicArrayListD.Create();
        
        while (index) < (System.Length(points)) do begin
            sectionBasicArrayList := TBasicArrayListD.Create();
            while (points[index][0]) <> (1000) do begin
                sectionBasicArrayList.add(TJava.Box(tempBasicArrayList.objectArray[index]));
                Inc(index);
                if (index) >= (System.Length(points)) then begin
                    Break;
                end;
            end;
            sectionBasicArrayList := TRandomTranslation.getInstance(sectionBasicArrayList, howMuch);
            if (type_) = (Self.ROTATION) then begin
                sectionBasicArrayList := Self.randomRotationFactory.getInstanceList(sectionBasicArrayList, howMuch);
            end;
            size := sectionBasicArrayList.size();
            for index2 := 0 to size - 1 do begin
                pointBasicArrayList.add(TJava.Box(sectionBasicArrayList.objectArray[index2]));
            end;
            if (index) >= (System.Length(points)) then begin
                Break;
            end else if (points[index][0]) = (1000) then begin
                pointBasicArrayList.add(TJava.Box(tempBasicArrayList.objectArray[index]));
                Inc(index);
            end;
        end;
        Exit(pointBasicArrayList);
end;
    

// throws Exception
function TVectorExplosionGenerator.createPointsBasicArrayList(points: TArray<TArray<Integer>>): TBasicArrayList;
var
  firstPointBasicArrayList: TBasicArrayList;
  pointFactory_: TPointFactory;
  index: Integer;
begin
        if (System.Length(points)) = (0) then begin
            raise SysUtils.Exception.Create('Not Points Provided');
        end;
        firstPointBasicArrayList := TBasicArrayListS.Create(System.Length(points));
        pointFactory_ := TPointFactory.getInstance();
        for index := 0 to System.Length(points) - 1 do begin
            firstPointBasicArrayList.add(TJava.Box(pointFactory_.createXY(points[index][0], points[index][1])));
        end;
        Exit(firstPointBasicArrayList);
end;

initialization
  {AB:INITIALIZATION}
  TVectorExplosionGenerator.instance := TVectorExplosionGenerator.Create();
  {AB:END}

end.

