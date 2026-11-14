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
// package org.allbinary.game.graphics.hud
unit HudGraphicsPosition;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint;

type
  {AB:TYPES}
  THudGraphicsPosition = class(TObject)
  public
    anchor: Integer;
    point: TGPoint;
    class var NULL_HUD_GRAPHICS_POSITION: THudGraphicsPosition;
    procedure InitFields;
        constructor Create(point: TGPoint; anchor: Integer);
        function getAnchor: Integer; virtual;
        procedure setAnchor(anchor: Integer);
        function getPoint: TGPoint; virtual;
        procedure setPoint(point: TGPoint); virtual;
  end;

implementation
uses
  PointFactory;


{AB:CODE}

procedure THudGraphicsPosition.InitFields;
begin
  
  Self.point := TPointFactory.getInstance().ZERO_ZERO;
end;
    

constructor THudGraphicsPosition.Create(point: TGPoint; anchor: Integer);
begin
    inherited Create;
    InitFields;
        Self.setAnchor(anchor);
        Self.setPoint(point);
end;
    

function THudGraphicsPosition.getAnchor: Integer;
begin
        Exit(Self.anchor);
end;
    

procedure THudGraphicsPosition.setAnchor(anchor: Integer);
begin
        Self.anchor := anchor;
end;
    

function THudGraphicsPosition.getPoint: TGPoint;
begin
        Exit(Self.point);
end;
    

procedure THudGraphicsPosition.setPoint(point: TGPoint);
begin
        Self.point := point;
end;

initialization
  {AB:INITIALIZATION}
  THudGraphicsPosition.NULL_HUD_GRAPHICS_POSITION := THudGraphicsPosition.Create(TPointFactory.getInstance().ZERO_ZERO, 9);
  {AB:END}

end.

