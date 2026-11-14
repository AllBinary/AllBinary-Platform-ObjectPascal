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
unit CustomGPoint;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint;

type
  {AB:TYPES}
  TCustomGPoint = class(TGPoint)
  public
    cx: Integer;
    cy: Integer;
    cz: Integer;
    class var NULL_CUSTOM_POINT: TCustomGPoint;
    procedure InitFields;
        class function getInstance(point: TGPoint): TCustomGPoint; static;
        class function getInstance3(x: Integer; y: Integer): TCustomGPoint; static;
        constructor Create(x: Integer; y: Integer; z: Integer);
        procedure setX(x: Integer); virtual;
        function getX: Integer; override;
        procedure setY(y: Integer); virtual;
        function getY: Integer; override;
        procedure setZ(z: Integer); virtual;
        function getZ: Integer; override;
  end;

implementation

{AB:CODE}

procedure TCustomGPoint.InitFields;
begin
  
  
  
end;
    

class function TCustomGPoint.getInstance(point: TGPoint): TCustomGPoint;
begin
        Exit(TCustomGPoint.Create(point.getX(), point.getY(), point.getZ()));
end;
    

class function TCustomGPoint.getInstance3(x: Integer; y: Integer): TCustomGPoint;
begin
        Exit(TCustomGPoint.Create(x, y, 3));
end;
    

constructor TCustomGPoint.Create(x: Integer; y: Integer; z: Integer);
begin
        inherited Create(x, y, z);
        InitFields;
end;
    

procedure TCustomGPoint.setX(x: Integer);
begin
        Self.cx := x;
end;
    

function TCustomGPoint.getX: Integer;
begin
        Exit(Self.cx);
end;
    

procedure TCustomGPoint.setY(y: Integer);
begin
        Self.cy := y;
end;
    

function TCustomGPoint.getY: Integer;
begin
        Exit(Self.cy);
end;
    

procedure TCustomGPoint.setZ(z: Integer);
begin
        Self.cz := z;
end;
    

function TCustomGPoint.getZ: Integer;
begin
        Exit(Self.cz);
end;

initialization
  {AB:INITIALIZATION}
  TCustomGPoint.NULL_CUSTOM_POINT := TCustomGPoint.Create(0, 0, 0);
  {AB:END}

end.

