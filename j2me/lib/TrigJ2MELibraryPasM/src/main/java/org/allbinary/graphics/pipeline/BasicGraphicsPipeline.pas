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
// package org.allbinary.graphics.pipeline
unit BasicGraphicsPipeline;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Angle, NoDecimalTrigTable, BasicArrayList;

type
  {AB:TYPES}
  TBasicGraphicsPipeline = class(TObject)
  public
    pointBasicArrayList: TBasicArrayList;
    noDecimalTrigTable: TNoDecimalTrigTable;
    procedure InitFields;
        constructor Create(points: TBasicArrayList);
        procedure setInitMatrix(points: TBasicArrayList); virtual;
        procedure createMatrix; virtual;
        procedure translate(x: Integer; y: Integer); virtual;
        procedure rotateToAngle(angle_: TAngle); virtual;
        procedure rotate(angle_: Integer);
        procedure mirror(width: Integer); virtual;
        function getMatrix: TBasicArrayList; virtual;
  end;

implementation
uses
  GPoint, PointFactory, BasicArrayListD;


{AB:CODE}

procedure TBasicGraphicsPipeline.InitFields;
begin
  
  Self.noDecimalTrigTable := TNoDecimalTrigTable.getInstance();
end;
    

constructor TBasicGraphicsPipeline.Create(points: TBasicArrayList);
begin
    inherited Create;
    InitFields;
        Self.pointBasicArrayList := points;
end;
    

procedure TBasicGraphicsPipeline.setInitMatrix(points: TBasicArrayList);
begin
        Self.pointBasicArrayList := points;
end;
    

procedure TBasicGraphicsPipeline.createMatrix;
begin
end;
    

// throws Exception
procedure TBasicGraphicsPipeline.translate(x: Integer; y: Integer);
var
  newBasicArrayList: TBasicArrayList;
  size: Integer;
  pointFactory_: TPointFactory;
  secondPoint: TGPoint;
  index: Integer;
begin
        newBasicArrayList := TBasicArrayListD.Create();
        size := Self.pointBasicArrayList.size();
        pointFactory_ := TPointFactory.getInstance();
        
        for index := 0 to size - 1 do begin
            secondPoint := TGPoint(TJava.ToObject(Self.pointBasicArrayList.objectArray[index]));
            if (secondPoint.getX()) <> (1000) then begin
                newBasicArrayList.add(TJava.Box(pointFactory_.createXY((secondPoint.getX()) + (x), (secondPoint.getY()) + (y))));
            end else begin
                newBasicArrayList.add(TJava.Box(secondPoint));
            end;
        end;
        Self.pointBasicArrayList := newBasicArrayList;
end;
    

// throws Exception
procedure TBasicGraphicsPipeline.rotateToAngle(angle_: TAngle);
begin
        Self.rotate(Integer(Trunc(angle_.getValue())));
end;
    

// throws Exception
procedure TBasicGraphicsPipeline.rotate(angle_: Integer);
var
  newBasicArrayList: TBasicArrayList;
  secondPoint: TGPoint;
  y: Int64;
  secondX: Int64;
  secondY: Int64;
  point: TGPoint;
  pointFactory_: TPointFactory;
  size: Integer;
  sin: Int64;
  cos: Int64;
  index: Integer;
begin
        newBasicArrayList := TBasicArrayListD.Create();
        
        
        
        
        
        pointFactory_ := TPointFactory.getInstance();
        size := Self.pointBasicArrayList.size();
        
        
        for index := 0 to size - 1 do begin
            secondPoint := TGPoint(TJava.ToObject(Self.pointBasicArrayList.objectArray[index]));
            if (secondPoint.getX()) <> (1000) then begin
                sin := Self.noDecimalTrigTable.sin(angle_);
                cos := Self.noDecimalTrigTable.cos(angle_);
                y := (secondPoint.getY()) * (sin);
                secondX := (((secondPoint.getX()) * (cos))) - (y);
                secondY := (((secondPoint.getX()) * (sin))) + (((secondPoint.getY()) * (cos)));
                point := pointFactory_.createXY((Integer(secondX)) div (10000), (Integer(secondY)) div (10000));
                newBasicArrayList.add(TJava.Box(point));
            end else begin
                newBasicArrayList.add(TJava.Box(secondPoint));
            end;
        end;
        Self.pointBasicArrayList := newBasicArrayList;
end;
    

// throws Exception
procedure TBasicGraphicsPipeline.mirror(width: Integer);
var
  pointFactory_: TPointFactory;
  halfWidth: Integer;
  newBasicArrayList: TBasicArrayList;
  secondPoint: TGPoint;
  newX: Integer;
  point: TGPoint;
  size: Integer;
  index: Integer;
begin
        pointFactory_ := TPointFactory.getInstance();
        halfWidth := (TJava.SignedRightShift(width, 1));
        newBasicArrayList := TBasicArrayListD.Create();
        
        
        
        size := Self.pointBasicArrayList.size();
        for index := 0 to size - 1 do begin
            secondPoint := TGPoint(TJava.ToObject(Self.pointBasicArrayList.objectArray[index]));
            if (secondPoint.getX()) <> (1000) then begin
                newX := 0;
                if (secondPoint.getX()) > (halfWidth) then begin
                    newX := (halfWidth) - (((secondPoint.getX()) - (halfWidth)));
                end else begin
                    newX := (halfWidth) + (((halfWidth) - (secondPoint.getX())));
                end;
                point := pointFactory_.createXY(newX, secondPoint.getY());
                newBasicArrayList.add(TJava.Box(point));
            end else begin
                newBasicArrayList.add(TJava.Box(secondPoint));
            end;
        end;
        Self.pointBasicArrayList := newBasicArrayList;
end;
    

function TBasicGraphicsPipeline.getMatrix: TBasicArrayList;
begin
        Exit(Self.pointBasicArrayList);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

