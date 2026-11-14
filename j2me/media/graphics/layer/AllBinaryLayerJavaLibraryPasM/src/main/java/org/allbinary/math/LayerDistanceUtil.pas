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
unit LayerDistanceUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint, AllBinaryLayer, MathUtil;

type
  {AB:TYPES}
  TLayerDistanceUtil = class(TObject)
  public
    mathUtil: TMathUtil;
    class var instance: TLayerDistanceUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TLayerDistanceUtil; static;
        function getDistance(layerInterface: TAllBinaryLayer; layerInterface2: TAllBinaryLayer): Integer; virtual;
        function getDistance3D(layerInterface: TAllBinaryLayer; layerInterface2: TAllBinaryLayer): Integer; virtual;
        function getDistanceAt(layerInterface: TAllBinaryLayer; point: TGPoint): Integer; virtual;
  end;

implementation

{AB:CODE}

procedure TLayerDistanceUtil.InitFields;
begin
  Self.mathUtil := TMathUtil.getInstance();
end;

constructor TLayerDistanceUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TLayerDistanceUtil.getInstance: TLayerDistanceUtil;
begin
        Exit(TLayerDistanceUtil.instance);
end;
    

function TLayerDistanceUtil.getDistance(layerInterface: TAllBinaryLayer; layerInterface2: TAllBinaryLayer): Integer;
var
  dx: Integer;
  dy: Integer;
begin
        dx := (((layerInterface.getXP()) + (layerInterface.getHalfWidth()))) - (((layerInterface2.getXP()) + (layerInterface2.getHalfWidth())));
        dy := (((layerInterface.getYP()) + (layerInterface.getHalfHeight()))) - (((layerInterface2.getYP()) + (layerInterface2.getHalfHeight())));
        Exit(Integer(Trunc(Self.mathUtil.sqrt((((dx) * (dx))) + (((dy) * (dy)))))));
end;
    

function TLayerDistanceUtil.getDistance3D(layerInterface: TAllBinaryLayer; layerInterface2: TAllBinaryLayer): Integer;
var
  dx: Integer;
  dy: Integer;
  dz: Integer;
begin
        dx := (((layerInterface.getXP()) + (layerInterface.getHalfWidth()))) - (((layerInterface2.getXP()) + (layerInterface2.getHalfWidth())));
        dy := (((layerInterface.getYP()) + (layerInterface.getHalfHeight()))) - (((layerInterface2.getYP()) + (layerInterface2.getHalfHeight())));
        dz := (((layerInterface.getZP()) + (layerInterface.getHalfDepth()))) - (((layerInterface2.getZP()) + (layerInterface2.getHalfDepth())));
        Exit(Integer(Trunc(Self.mathUtil.sqrt(((((dx) * (dx))) + (((dy) * (dy)))) + (((dz) * (dz)))))));
end;
    

function TLayerDistanceUtil.getDistanceAt(layerInterface: TAllBinaryLayer; point: TGPoint): Integer;
var
  dx: Integer;
  dy: Integer;
begin
        dx := (layerInterface.getXP()) - (point.getX());
        dy := (layerInterface.getYP()) - (point.getY());
        Exit(Integer(Trunc(Self.mathUtil.sqrt((((dx) * (dx))) + (((dy) * (dy)))))));
end;

initialization
  {AB:INITIALIZATION}
  TLayerDistanceUtil.instance := TLayerDistanceUtil.Create();
  {AB:END}

end.

