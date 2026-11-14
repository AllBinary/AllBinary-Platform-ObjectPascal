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
// package org.allbinary.graphics
unit Rectangle;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint;

type
  {AB:TYPES}
  TRectangle = class(TObject)
  public
    point: TGPoint;
    width: Integer;
    height: Integer;
    procedure InitFields;
        constructor Create(point: TGPoint; width: Integer; height: Integer);
        function getPoint: TGPoint; virtual;
        procedure setPoint(point: TGPoint); virtual;
        function getMaxX: Integer; virtual;
        function getMaxY: Integer; virtual;
        function getWidth: Integer; virtual;
        procedure setWidth(width: Integer); virtual;
        function getHeight: Integer; virtual;
        procedure setHeight(height: Integer); virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker, CommonLabels, CommonSeps;


{AB:CODE}

procedure TRectangle.InitFields;
begin
  
  
  
end;
    

constructor TRectangle.Create(point: TGPoint; width: Integer; height: Integer);
begin
    inherited Create;
    InitFields;
        Self.point := point;
        Self.width := width;
        Self.height := height;
end;
    

function TRectangle.getPoint: TGPoint;
begin
        Exit(Self.point);
end;
    

procedure TRectangle.setPoint(point: TGPoint);
begin
        Self.point := point;
end;
    

function TRectangle.getMaxX: Integer;
begin
        Exit((Self.point.getX()) + (Self.width));
end;
    

function TRectangle.getMaxY: Integer;
begin
        Exit((Self.point.getY()) + (Self.height));
end;
    

function TRectangle.getWidth: Integer;
begin
        Exit(Self.width);
end;
    

procedure TRectangle.setWidth(width: Integer);
begin
        Self.width := width;
end;
    

function TRectangle.getHeight: Integer;
begin
        Exit(Self.height);
end;
    

procedure TRectangle.setHeight(height: Integer);
begin
        Self.height := height;
end;
    

function TRectangle.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.getPoint().toString());
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(TCommonLabels.getInstance().WIDTH_LABEL);
        stringBuffer.appendint(Self.getWidth());
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(TCommonLabels.getInstance().HEIGHT_LABEL);
        stringBuffer.appendint(Self.getHeight());
        stringBuffer.append(' MaxX: ');
        stringBuffer.appendint(Self.getMaxX());
        stringBuffer.append(' MaxY: ');
        stringBuffer.appendint(Self.getMaxY());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

