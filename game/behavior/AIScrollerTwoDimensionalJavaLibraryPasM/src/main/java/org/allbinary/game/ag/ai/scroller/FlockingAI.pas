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
// package org.allbinary.game.ag.ai.scroller
unit FlockingAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicAI, GameInput, AllBinaryLayer, AllBinaryLayerManager, ABHashtable;

type
  {AB:TYPES}
  TFlockingAI = class(TBasicAI)
  public
    allowedDistance: Integer;
    procedure InitFields;
        constructor Create(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
        function getXYDistance(allBinaryLayer_: TAllBinaryLayer): Integer;
  end;

implementation
uses
  BasePatrolAI, Canvas, BasicGroupFactory, GroupLayerManagerListener, WeaponLayer, MathUtil, BasicArrayList;


{AB:CODE}

procedure TFlockingAI.InitFields;
begin
  
end;
    

constructor TFlockingAI.Create(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
var
  allowedDistance: Integer;
begin
        inherited Create(ownerLayerInterface, gameInput_);
        InitFields;
        allowedDistance := Integer(hashtable.get(TJava.Box(TBasePatrolAI.MAX_DISTANCE)));
        Self.allowedDistance := allowedDistance;
end;
    

// throws Exception
procedure TFlockingAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  maxDistance: Integer;
  farAllbinaryLayer: TAllBinaryLayer;
  groupLayerManagerListener_: TGroupLayerManagerListener;
  list: TBasicArrayList;
  size: Integer;
  allBinaryLayer_: TAllBinaryLayer;
  ownerLayerInterface: TAllBinaryLayer;
  distance: Integer;
  index: Integer;
begin
        maxDistance := 0;
        farAllbinaryLayer := TAllBinaryLayer.NULL_ALLBINARY_LAYER;
        groupLayerManagerListener_ := TGroupLayerManagerListener.getInstance();
        list := groupLayerManagerListener_.getList(TBasicGroupFactory.getInstance().ENEMY);
        size := list.size();
        
        
        for index := 0 to size - 1 do begin
            allBinaryLayer_ := TAllBinaryLayer(TJava.ToObject(list.get(index)));
            if (allBinaryLayer_.getType()) <> (TWeaponLayer.getStaticType()) then begin
                distance := Self.getXYDistance(allBinaryLayer_);
                if (distance) > (maxDistance) then begin
                    maxDistance := distance;
                    farAllbinaryLayer := allBinaryLayer_;
                    if (distance) > (Self.allowedDistance) then begin
                        Break;
                    end;
                end;
            end;
        end;
        if (maxDistance) > (Self.allowedDistance) then begin
            if (farAllbinaryLayer) <> (TAllBinaryLayer.NULL_ALLBINARY_LAYER) then begin
                ownerLayerInterface := Self.getOwnerLayerInterface();
                if (farAllbinaryLayer.getXP()) < (ownerLayerInterface.getXP()) then begin
                    Self.processKeyAI(TCanvas.LEFT);
                end else if (farAllbinaryLayer.getXP()) > (ownerLayerInterface.getXP()) then begin
                    Self.processKeyAI(TCanvas.RIGHT);
                end else if (farAllbinaryLayer.getYP()) > (ownerLayerInterface.getYP()) then begin
                    Self.processKeyAI(TCanvas.UP);
                end else if (farAllbinaryLayer.getYP()) < (ownerLayerInterface.getYP()) then begin
                    Self.processKeyAI(TCanvas.DOWN);
                end;
            end;
        end;
end;
    

function TFlockingAI.getXYDistance(allBinaryLayer_: TAllBinaryLayer): Integer;
var
  ownerLayerInterface: TAllBinaryLayer;
  xTotalDistance: Integer;
  yTotalDistance: Integer;
  mathUtil_: TMathUtil;
  totalDistance: Integer;
begin
        ownerLayerInterface := Self.getOwnerLayerInterface();
        xTotalDistance := (((allBinaryLayer_.getXP()) + (allBinaryLayer_.getHalfWidth()))) - (((ownerLayerInterface.getXP()) + (ownerLayerInterface.getHalfWidth())));
        yTotalDistance := (((allBinaryLayer_.getYP()) + (allBinaryLayer_.getHalfHeight()))) - (((ownerLayerInterface.getYP()) + (ownerLayerInterface.getHalfHeight())));
        mathUtil_ := TMathUtil.getInstance();
        totalDistance := (mathUtil_.abs(xTotalDistance)) + (mathUtil_.abs(yTotalDistance));
        Exit(totalDistance);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

