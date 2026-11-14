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
// package org.allbinary.math
unit RectangleCollisionPointUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TRectangleCollisionPointUtil = class(TObject)
  public
        constructor Create;
        class function allPointsInside(rectX1: Integer; rectY1: Integer; rectX2: Integer; rectY2: Integer; list: TBasicArrayList): Boolean; static;
        class function allPointsInsideCell(rectX1: Integer; rectY1: Integer; rectX2: Integer; rectY2: Integer; list: TBasicArrayList; xCellSize: Integer; yCellSize: Integer): Boolean; static;
  end;

implementation
uses
  RectangleCollisionUtil, GPoint;


{AB:CODE}
    

constructor TRectangleCollisionPointUtil.Create;
begin
    inherited Create;
end;
    

class function TRectangleCollisionPointUtil.allPointsInside(rectX1: Integer; rectY1: Integer; rectX2: Integer; rectY2: Integer; list: TBasicArrayList): Boolean;
var
  rectangleCollisionUtil_: TRectangleCollisionUtil;
  point: TGPoint;
  index: Integer;
begin
        rectangleCollisionUtil_ := TRectangleCollisionUtil.getInstance();
        
        index := list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            point := TGPoint(TJava.ToObject(list.objectArray[index]));
            if not (rectangleCollisionUtil_.isInside(rectX1, rectY1, rectX2, rectY2, point.getX(), point.getY())) then begin
                Exit(False);
            end;
        end;
        Exit(True);
end;
    

class function TRectangleCollisionPointUtil.allPointsInsideCell(rectX1: Integer; rectY1: Integer; rectX2: Integer; rectY2: Integer; list: TBasicArrayList; xCellSize: Integer; yCellSize: Integer): Boolean;
var
  rectangleCollisionUtil_: TRectangleCollisionUtil;
  point: TGPoint;
  index: Integer;
begin
        rectangleCollisionUtil_ := TRectangleCollisionUtil.getInstance();
        
        index := list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            point := TGPoint(TJava.ToObject(list.objectArray[index]));
            if not (rectangleCollisionUtil_.isInside(rectX1, rectY1, rectX2, rectY2, (point.getX()) * (xCellSize), (point.getY()) * (yCellSize))) then begin
                Exit(False);
            end;
        end;
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

