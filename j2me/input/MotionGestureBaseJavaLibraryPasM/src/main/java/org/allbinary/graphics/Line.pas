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
unit Line;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint;

type
  {AB:TYPES}
  TLine = class(TObject)
  public
    p1: TGPoint;
    p2: TGPoint;
    deltaX: Double;
    deltaY: Double;
    procedure InitFields;
        constructor Create(p1: TGPoint; p2: TGPoint);
        function getGradient: Double; virtual;
        procedure update;
        function getDeltaX: Double; virtual;
        function getDeltaY: Double; virtual;
        function getP1: TGPoint; virtual;
        function getP2: TGPoint; virtual;
        procedure setP1(p1: TGPoint); virtual;
        procedure setP2(p2: TGPoint); virtual;
  end;

implementation
uses
  PointFactory;


{AB:CODE}

procedure TLine.InitFields;
begin
  
  
  
  
end;
    

constructor TLine.Create(p1: TGPoint; p2: TGPoint);
begin
    inherited Create;
    InitFields;
        Self.p1 := TPointFactory.getInstance().ZERO_ZERO;
        Self.p2 := Self.p1;
        Self.setP1(p1);
        Self.setP2(p2);
end;
    

function TLine.getGradient: Double;
begin
        Exit((Self.getDeltaY()) / (Self.getDeltaX()));
end;
    

procedure TLine.update;
begin
        Self.deltaX := ((1.0 * (Self.getP1().getX()))) - (Self.getP2().getX());
        Self.deltaY := ((1.0 * (Self.getP1().getY()))) - (Self.getP2().getY());
end;
    

function TLine.getDeltaX: Double;
begin
        Exit(Self.deltaX);
end;
    

function TLine.getDeltaY: Double;
begin
        Exit(Self.deltaY);
end;
    

function TLine.getP1: TGPoint;
begin
        Exit(Self.p1);
end;
    

function TLine.getP2: TGPoint;
begin
        Exit(Self.p2);
end;
    

procedure TLine.setP1(p1: TGPoint);
begin
        Self.p1 := p1;
        Self.update();
end;
    

procedure TLine.setP2(p2: TGPoint);
begin
        Self.p2 := p2;
        Self.update();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

