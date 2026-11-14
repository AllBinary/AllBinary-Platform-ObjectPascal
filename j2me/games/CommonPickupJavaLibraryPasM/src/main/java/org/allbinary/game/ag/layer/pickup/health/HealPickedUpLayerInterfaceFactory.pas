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
// package org.allbinary.game.ag.layer.pickup.health
unit HealPickedUpLayerInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PickedUpLayerInterfaceFactory, PickedUpLayerInterfaceFactoryInterface, PickupProcessorInterface, AllBinaryLayer, HealLayerCircularStaticPool;

type
  {AB:TYPES}
  THealPickedUpLayerInterfaceFactory = class(TPickedUpLayerInterfaceFactory, IPickupProcessorInterface)
  public
    pool: THealLayerCircularStaticPool;
    class var pickedUpLayerInterfaceFactoryInterface: IPickedUpLayerInterfaceFactoryInterface;
    procedure InitFields;
    function JavaObject: TObject;
        class procedure init; static;
        constructor Create;
        function getTotal: Integer; virtual;
        class function getInstance: IPickedUpLayerInterfaceFactoryInterface; static;
        procedure process(sourceLayerInterface: TAllBinaryLayer); virtual;
  end;

implementation
uses
  HealLayerFactory, HealthResources, FeaturedAnimationInterfaceFactoryInterfaceFactory, CountedPickedUpLayerInterfaceFactory, IconLayerFactory, PickedUpLayerTypeFactory;


{AB:CODE}

procedure THealPickedUpLayerInterfaceFactory.InitFields;
begin
  Self.pool := THealLayerCircularStaticPool.Create(THealLayerFactory.Create(), 1);
end;

function THealPickedUpLayerInterfaceFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

// throws Exception
class procedure THealPickedUpLayerInterfaceFactory.init;
begin
        THealPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface := THealPickedUpLayerInterfaceFactory.Create();
end;
    

constructor THealPickedUpLayerInterfaceFactory.Create;
begin
        inherited Create(TPickedUpLayerTypeFactory.getInstance().HEAL, TIconLayerFactory.getInstance(TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(THealthResources.getInstance().RESOURCE).getInstance(0), 10, 10), TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(THealthResources.getInstance().RESOURCE).getInstance(0));
        InitFields;
end;
    

function THealPickedUpLayerInterfaceFactory.getTotal: Integer;
begin
        Exit(1);
end;
    

class function THealPickedUpLayerInterfaceFactory.getInstance: IPickedUpLayerInterfaceFactoryInterface;
begin
        Exit(THealPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface);
end;
    

// throws Exception
procedure THealPickedUpLayerInterfaceFactory.process(sourceLayerInterface: TAllBinaryLayer);
begin
        Self.pool.visit(sourceLayerInterface);
end;

initialization
  {AB:INITIALIZATION}
  THealPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface := TCountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
  {AB:END}

end.

