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
// package org.allbinary.game.layer.pickup
unit PickupBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollidableCompositeLayer, CountedLayerInterfaceFactoryPart, LogUtil, PickupProcessorInterface, PickedUpLayerInterface, CountedPickedUpLayerInterfaceFactoryInterface, PickedUpLayerType, PickupBehaviorInterface;

type
  {AB:TYPES}
  TPickupBehavior = class(TInterfacedObject, IPickupBehaviorInterface)
  public
    logUtil: TLogUtil;
    countedIndex: Integer;
    ownerLayerInterface: TCollidableCompositeLayer;
    class var NULL_PICKUP_BEHAVIOR: TObject;
    procedure InitFields;
    function JavaObject: TObject;
        class function getNullInstance: TPickupBehavior; static;
        constructor Create(ownerLayerInterface: TCollidableCompositeLayer; countedIndex: Integer);
        procedure doPickup(pickupProcessorInterface_: IPickupProcessorInterface); virtual;
        procedure doPickupLayer(pickupLayerInterface: IPickedUpLayerInterface); virtual;
        procedure add(countedPickedUpLayerInterfaceFactoryInterface_: ICountedPickedUpLayerInterfaceFactoryInterface); virtual;
        procedure addAt(countedPickedUpLayerInterfaceFactoryInterface_: ICountedPickedUpLayerInterfaceFactoryInterface; partIndex: Integer); virtual;
        function getFirstAvailableCountedLayerInterfaceFactory(pickedUpLayerTypeArray: TArray<TPickedUpLayerType>): TCountedLayerInterfaceFactoryPart; virtual;
        function getCountedLayerInterfaceFactoryForSlot(slotIndex: Integer): TCountedLayerInterfaceFactoryPart; virtual;
        function getCountedIndex: Integer; virtual;
  end;

implementation
uses
  PickedUpLayerInterfaceFactoryInterface, PickedUpLayerTypeFactory, CountedPickedUpLayerInterfaceFactory, HealthInterfaceCompositeInterface, CollidableDestroyableDamageableLayer, PartInterface, NullUtil, PreLogUtil, CommonStrings;


{AB:CODE}

procedure TPickupBehavior.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;

function TPickupBehavior.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TPickupBehavior.getNullInstance: TPickupBehavior;
begin
        if (TPickupBehavior.NULL_PICKUP_BEHAVIOR) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TPickupBehavior.NULL_PICKUP_BEHAVIOR := TPickupBehavior.Create(TCollidableCompositeLayer.getNullInstance(), 0);
        end;
        Exit(TPickupBehavior(TJava.ToObject(TPickupBehavior.NULL_PICKUP_BEHAVIOR)));
end;
    

constructor TPickupBehavior.Create(ownerLayerInterface: TCollidableCompositeLayer; countedIndex: Integer);
begin
    inherited Create;
    InitFields;
        Self.ownerLayerInterface := ownerLayerInterface;
        Self.countedIndex := countedIndex;
end;
    

procedure TPickupBehavior.doPickup(pickupProcessorInterface_: IPickupProcessorInterface);
var
  healthInterfaceCompositeInterface_: IHealthInterfaceCompositeInterface;
  commonStrings_: TCommonStrings;
begin
        try
            healthInterfaceCompositeInterface_ := (TJava.ToObject(Self.ownerLayerInterface) as IHealthInterfaceCompositeInterface);
            if healthInterfaceCompositeInterface_.getHealthInterface().isAlive() then begin
                pickupProcessorInterface_.process(Self.ownerLayerInterface);
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'doPickup', TJava.Box(e));
            end;
        end;
end;
    

procedure TPickupBehavior.doPickupLayer(pickupLayerInterface: IPickedUpLayerInterface);
var
  pickedUpLayerInterfaceFactoryInterface_: IPickedUpLayerInterfaceFactoryInterface;
  pickedUpLayerType_: TPickedUpLayerType;
  pickedUpLayerTypeFactory_: TPickedUpLayerTypeFactory;
  pickupProcessorInterface_: IPickupProcessorInterface;
  collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer;
  commonStrings_: TCommonStrings;
begin
        try
            pickedUpLayerInterfaceFactoryInterface_ := pickupLayerInterface.getPickedUpLayerInterfaceFactoryInterface();
            pickedUpLayerType_ := pickedUpLayerInterfaceFactoryInterface_.getPickedUpLayerType();
            pickedUpLayerTypeFactory_ := TPickedUpLayerTypeFactory.getInstance();
            if ((((pickedUpLayerType_) = (pickedUpLayerTypeFactory_.BEAM)) or ((pickedUpLayerType_) = (pickedUpLayerTypeFactory_.MINE))) or ((pickedUpLayerType_) = (pickedUpLayerTypeFactory_.PROJECTILE))) or ((pickedUpLayerType_) = (pickedUpLayerTypeFactory_.ENHANCEMENT)) then begin
                Self.add((TJava.ToObject(pickedUpLayerInterfaceFactoryInterface_) as ICountedPickedUpLayerInterfaceFactoryInterface));
            end else if (pickedUpLayerInterfaceFactoryInterface_.getPickedUpLayerType()) = (pickedUpLayerTypeFactory_.PART) then begin
                collidableDestroyableDamageableLayer_ := TCollidableDestroyableDamageableLayer(TJava.ToObject(Self.ownerLayerInterface));
                collidableDestroyableDamageableLayer_.addPart(pickedUpLayerInterfaceFactoryInterface_);
            end else if (pickedUpLayerType_) = (pickedUpLayerTypeFactory_.NONE) then begin
            end else begin
                pickupProcessorInterface_ := (TJava.ToObject(pickedUpLayerInterfaceFactoryInterface_) as IPickupProcessorInterface);
                Self.doPickup(pickupProcessorInterface_);
            end;
            pickupLayerInterface.setPickedUp();
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            TPreLogUtil.putOE(commonStrings_.EXCEPTION, TJava.Box(Self), 'doPickup', TJava.Box(e));
            end;
        end;
end;
    

procedure TPickupBehavior.add(countedPickedUpLayerInterfaceFactoryInterface_: ICountedPickedUpLayerInterfaceFactoryInterface);
var
  partIndex: Integer;
begin
        partIndex := (countedPickedUpLayerInterfaceFactoryInterface_.getId()) + (Self.countedIndex);
        Self.addAt(countedPickedUpLayerInterfaceFactoryInterface_, partIndex);
end;
    

procedure TPickupBehavior.addAt(countedPickedUpLayerInterfaceFactoryInterface_: ICountedPickedUpLayerInterfaceFactoryInterface; partIndex: Integer);
var
  collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer;
  countedLayerInterfaceFactory: TCountedLayerInterfaceFactoryPart;
begin
        collidableDestroyableDamageableLayer_ := TCollidableDestroyableDamageableLayer(TJava.ToObject(Self.ownerLayerInterface));
        countedLayerInterfaceFactory := TCountedLayerInterfaceFactoryPart(TJava.ToObject(collidableDestroyableDamageableLayer_.getPartInterfaceArray()[partIndex]));
        countedLayerInterfaceFactory.setTotal((countedLayerInterfaceFactory.getTotal()) + (countedPickedUpLayerInterfaceFactoryInterface_.getTotal()));
end;
    

function TPickupBehavior.getFirstAvailableCountedLayerInterfaceFactory(pickedUpLayerTypeArray: TArray<TPickedUpLayerType>): TCountedLayerInterfaceFactoryPart;
var
  collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer;
  partInterfaceArray: TArray<IPartInterface>;
  size: Integer;
  nextCountedLayerInterfaceFactory: TCountedLayerInterfaceFactoryPart;
  countedPickedUpLayerInterfaceFactory_: TCountedPickedUpLayerInterfaceFactory;
  index2: Integer;
  index: Integer;
begin
        collidableDestroyableDamageableLayer_ := TCollidableDestroyableDamageableLayer(TJava.ToObject(Self.ownerLayerInterface));
        partInterfaceArray := collidableDestroyableDamageableLayer_.getPartInterfaceArray();
        size := System.Length(partInterfaceArray);
        
        
        for index := Self.countedIndex to size - 1 do begin
            nextCountedLayerInterfaceFactory := TCountedLayerInterfaceFactoryPart(TJava.ToObject(collidableDestroyableDamageableLayer_.getPartInterfaceArray()[index]));
            countedPickedUpLayerInterfaceFactory_ := nextCountedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory();
            index2 := System.Length(pickedUpLayerTypeArray);
            while (TJava.PreDec(index2)) >= (0) do begin
                if (countedPickedUpLayerInterfaceFactory_.getPickedUpLayerType()) = (pickedUpLayerTypeArray[index2]) then begin
                    if (nextCountedLayerInterfaceFactory.getTotal()) > (0) then begin
                        Exit(nextCountedLayerInterfaceFactory);
                    end;
                end;
            end;
        end;
        Exit(TCountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY);
end;
    

// throws Exception
function TPickupBehavior.getCountedLayerInterfaceFactoryForSlot(slotIndex: Integer): TCountedLayerInterfaceFactoryPart;
var
  currentSlot: Integer;
  collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer;
  partInterfaceArray: TArray<IPartInterface>;
  size: Integer;
  nextCountedLayerInterfaceFactory: TCountedLayerInterfaceFactoryPart;
  index: Integer;
begin
        currentSlot := 0;
        collidableDestroyableDamageableLayer_ := TCollidableDestroyableDamageableLayer(TJava.ToObject(Self.ownerLayerInterface));
        partInterfaceArray := collidableDestroyableDamageableLayer_.getPartInterfaceArray();
        size := System.Length(partInterfaceArray);
        
        for index := Self.countedIndex to size - 1 do begin
            nextCountedLayerInterfaceFactory := TCountedLayerInterfaceFactoryPart(TJava.ToObject(collidableDestroyableDamageableLayer_.getPartInterfaceArray()[index]));
            if (nextCountedLayerInterfaceFactory.getTotal()) > (0) then begin
                if (currentSlot) = (slotIndex) then begin
                    Exit(nextCountedLayerInterfaceFactory);
                end else begin
                    Inc(currentSlot);
                end;
            end;
        end;
        Exit(TCountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY);
end;
    

function TPickupBehavior.getCountedIndex: Integer;
begin
        Exit(Self.countedIndex);
end;

initialization
  {AB:INITIALIZATION}
  TPickupBehavior.NULL_PICKUP_BEHAVIOR := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

