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
// package org.allbinary.layer
unit ABLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, LogUtil, StringMaker;

type
  {AB:TYPES}
  TABLayer = class(TObject)
  public
    logUtil: TLogUtil;
    x: Integer;
    y: Integer;
    z: Integer;
    width: Integer;
    height: Integer;
    visible: Boolean;
    class var ID: Integer;
    procedure InitFields;
        constructor Create(width: Integer; height: Integer);
        procedure setPosition(x: Integer; y: Integer; z: Integer); virtual;
        procedure moveDXY(dx: Integer; dy: Integer); virtual;
        procedure moveDXYZ(dx: Integer; dy: Integer; dz: Integer); virtual;
        function getXP: Integer; virtual;
        function getYP: Integer; virtual;
        function getZP: Integer; virtual;
        function getWidth: Integer; virtual;
        function getHeight: Integer; virtual;
        function getDepth: Int64; virtual;
        procedure setVisible(visible: Boolean); virtual;
        function isVisible: Boolean; virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure setLayerWidth(width: Integer); virtual;
        procedure setLayerHeight(height: Integer); virtual;
        procedure toStringAppend(stringBuffer: TStringMaker); virtual;
  end;

implementation
uses
  CanvasStrings, SmallIntegerSingletonFactory, CommonStrings;


{AB:CODE}

procedure TABLayer.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  Self.z := 3;
  
  
  Self.visible := True;
end;
    

constructor TABLayer.Create(width: Integer; height: Integer);
begin
    inherited Create;
    InitFields;
        Self.setLayerWidth(width);
        Self.setLayerHeight(height);
end;
    

procedure TABLayer.setPosition(x: Integer; y: Integer; z: Integer);
begin
        Self.x := x;
        Self.y := y;
        Self.z := z;
end;
    

procedure TABLayer.moveDXY(dx: Integer; dy: Integer);
begin
        Self.x := (Self.x) + (dx);
        Self.y := (Self.y) + (dy);
end;
    

procedure TABLayer.moveDXYZ(dx: Integer; dy: Integer; dz: Integer);
begin
        Self.x := (Self.x) + (dx);
        Self.y := (Self.y) + (dy);
        Self.z := (Self.z) + (dz);
end;
    

function TABLayer.getXP: Integer;
begin
        Exit(Self.x);
end;
    

function TABLayer.getYP: Integer;
begin
        Exit(Self.y);
end;
    

function TABLayer.getZP: Integer;
begin
        Exit(Self.z);
end;
    

function TABLayer.getWidth: Integer;
begin
        Exit(Self.width);
end;
    

function TABLayer.getHeight: Integer;
begin
        Exit(Self.height);
end;
    

function TABLayer.getDepth: Int64;
begin
        Exit(0);
end;
    

procedure TABLayer.setVisible(visible: Boolean);
begin
        Self.visible := visible;
end;
    

function TABLayer.isVisible: Boolean;
begin
        Exit(Self.visible);
end;
    

procedure TABLayer.paint(graphics_: TGraphics);
var
  commonStrings_: TCommonStrings;
  canvasStrings_: TCanvasStrings;
begin
        commonStrings_ := TCommonStrings.getInstance();
        canvasStrings_ := TCanvasStrings.getInstance();
        Self.logUtil.putF(commonStrings_.NOT_IMPLEMENTED, TJava.Box(Self), canvasStrings_.PAINT);
end;
    

procedure TABLayer.setLayerWidth(width: Integer);
begin
        if (width) < (0) then begin
            raise SysUtils.Exception.Create('');
        end;
        Self.width := width;
end;
    

procedure TABLayer.setLayerHeight(height: Integer);
begin
        if (height) < (0) then begin
            raise SysUtils.Exception.Create('');
        end;
        Self.height := height;
end;
    

procedure TABLayer.toStringAppend(stringBuffer: TStringMaker);
begin
end;

initialization
  {AB:INITIALIZATION}
  TABLayer.ID := TSmallIntegerSingletonFactory.getInstance().getAt(0);
  {AB:END}

end.

