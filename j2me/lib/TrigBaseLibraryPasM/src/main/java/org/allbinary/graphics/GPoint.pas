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
unit GPoint;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGPoint = class(TObject)
  public
    x: Integer;
    y: Integer;
    z: Integer;
    class var POINT_LABEL: string;
    procedure InitFields;
        class function getInstance(point: TGPoint): TGPoint; static;
        constructor Create(x: Integer; y: Integer; z: Integer);
        function getX: Integer; virtual;
        function getY: Integer; virtual;
        function getZ: Integer; virtual;
        function getRawX: Integer; virtual;
        function getRawY: Integer; virtual;
        function getRawZ: Integer; virtual;
        function toString: string; virtual;
        class function toStringStatic(x: Integer; y: Integer; z: Integer): string; static;
  end;

implementation
uses
  JsType, JsMethod, JsConstructor, StringMaker, PositionStrings, CommonSeps;


{AB:CODE}

procedure TGPoint.InitFields;
begin
  
  
  
end;
    

class function TGPoint.getInstance(point: TGPoint): TGPoint;
begin
        Exit(TGPoint.Create(point.getX(), point.getY(), point.getZ()));
end;
    

constructor TGPoint.Create(x: Integer; y: Integer; z: Integer);
begin
    inherited Create;
    InitFields;
        Self.x := x;
        Self.y := y;
        Self.z := z;
end;
    

function TGPoint.getX: Integer;
begin
        Exit(Self.x);
end;
    

function TGPoint.getY: Integer;
begin
        Exit(Self.y);
end;
    

function TGPoint.getZ: Integer;
begin
        Exit(Self.z);
end;
    

function TGPoint.getRawX: Integer;
begin
        Exit(Self.x);
end;
    

function TGPoint.getRawY: Integer;
begin
        Exit(Self.y);
end;
    

function TGPoint.getRawZ: Integer;
begin
        Exit(Self.z);
end;
    

function TGPoint.toString: string;
begin
        Exit(TGPoint.toStringStatic(Self.getX(), Self.getY(), Self.getZ()));
end;
    

class function TGPoint.toStringStatic(x: Integer; y: Integer; z: Integer): string;
var
  stringBuffer: TStringMaker;
  positionStrings_: TPositionStrings;
begin
        stringBuffer := TStringMaker.Create();
        positionStrings_ := TPositionStrings.getInstance();
        stringBuffer.append(TGPoint.POINT_LABEL);
        stringBuffer.append(positionStrings_.X_LABEL);
        stringBuffer.appendint(x);
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(positionStrings_.Y_LABEL);
        stringBuffer.appendint(y);
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(positionStrings_.Z_LABEL);
        stringBuffer.appendint(z);
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TGPoint.POINT_LABEL := 'Point: ';
  {AB:END}

end.

