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
// package org.allbinary.game.layer
unit LayerPlacer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint, LayerInterfaceVisitor, BasicArrayList, EnumerationUtil, LayerPlacementInterface;

type
  {AB:TYPES}
  TLayerPlacer = class(TObject)
  public
    enumerationUtil: TEnumerationUtil;
    layerInterfaceVisitor: ILayerInterfaceVisitor;
    dimension: TGPoint;
    procedure InitFields;
        constructor Create(layerInterfaceVisitor_: ILayerInterfaceVisitor; dimension: TGPoint);
        procedure processList(list: TBasicArrayList); virtual;
        procedure process(layerPlacementInterface_: ILayerPlacementInterface); virtual;
        function getPoint(layerPlacementInterface_: ILayerPlacementInterface): TGPoint; virtual;
  end;

implementation
uses
  LayerPlacementType, LayerPlacementTypeFactory, PointFactory, AllBinaryLayer, LayerInterfaceFactory, ABHashtable;


{AB:CODE}

procedure TLayerPlacer.InitFields;
begin
  Self.enumerationUtil := TEnumerationUtil.getInstance();
  
  
end;
    

constructor TLayerPlacer.Create(layerInterfaceVisitor_: ILayerInterfaceVisitor; dimension: TGPoint);
begin
    inherited Create;
    InitFields;
        Self.layerInterfaceVisitor := layerInterfaceVisitor_;
        Self.dimension := dimension;
end;
    

// throws Exception
procedure TLayerPlacer.processList(list: TBasicArrayList);
var
  size: Integer;
  layerPlacementInterface_: ILayerPlacementInterface;
  index: Integer;
begin
        size := list.size();
        
        for index := 0 to size - 1 do begin
            layerPlacementInterface_ := (TJava.ToObject(list.objectArray[index]) as ILayerPlacementInterface);
            Self.process(layerPlacementInterface_);
        end;
end;
    

// throws Exception
procedure TLayerPlacer.process(layerPlacementInterface_: ILayerPlacementInterface);
var
  relativePoint: TGPoint;
  layerInterfaceFactory_: TLayerInterfaceFactory;
  hashtable: TABHashtable<TObject, TObject>;
  enumeration: TObject;
  point: TGPoint;
  layerHashtable: TABHashtable<TObject, TObject>;
  x: Integer;
  y: Integer;
  z: Integer;
  layerInterface: TAllBinaryLayer;
begin
        relativePoint := Self.getPoint(layerPlacementInterface_);
        layerInterfaceFactory_ := TLayerInterfaceFactory.getInstance();
        hashtable := layerPlacementInterface_.getInstance();
        enumeration := hashtable.keys();
        
        
        
        
        
        
        while Self.enumerationUtil.hasMoreElements(enumeration) do begin
            point := TGPoint(TJava.ToObject(Self.enumerationUtil.nextElement(enumeration)));
            layerHashtable := TABHashtable<TObject, TObject>(TJava.ToObject(hashtable.get(TJava.Box(point))));
            x := (point.getX()) + (relativePoint.getX());
            y := (point.getY()) + (relativePoint.getY());
            z := (point.getZ()) + (relativePoint.getZ());
            layerInterface := layerInterfaceFactory_.getNexInstance(layerHashtable, x, y, z);
            Self.layerInterfaceVisitor.visit(layerInterface);
        end;
end;
    

// throws Exception
function TLayerPlacer.getPoint(layerPlacementInterface_: ILayerPlacementInterface): TGPoint;
var
  pointFactory_: TPointFactory;
  layerPlacementType_: TLayerPlacementType;
  width: Integer;
  height: Integer;
  x: Integer;
  y: Integer;
begin
        pointFactory_ := TPointFactory.getInstance();
        layerPlacementType_ := layerPlacementInterface_.getLayerType();
        if (layerPlacementType_) = (TLayerPlacementTypeFactory.getInstance().MAP) then begin
            width := layerPlacementInterface_.getWidth();
            height := layerPlacementInterface_.getHeight();
            x := ((((Self.dimension.getX()) - (width))) div (2));
            y := ((((Self.dimension.getY()) - (height))) div (2));
            Exit(pointFactory_.createXY(x, y));
        end else if (layerPlacementType_) = (TLayerPlacementTypeFactory.getInstance().UP) then begin
            width := layerPlacementInterface_.getWidth();
            height := layerPlacementInterface_.getHeight();
            x := ((((Self.dimension.getX()) - (width))) div (2));
            y := -height;
            Exit(pointFactory_.createXY(x, y));
        end else begin
            raise SysUtils.Exception.Create('PlacementType Not Recognized');
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

