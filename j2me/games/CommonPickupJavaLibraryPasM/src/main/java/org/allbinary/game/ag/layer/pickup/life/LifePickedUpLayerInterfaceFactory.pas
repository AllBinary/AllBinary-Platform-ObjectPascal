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
// package org.allbinary.game.ag.layer.pickup.life
unit LifePickedUpLayerInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PickedUpLayerInterfaceFactory, PickedUpLayerInterfaceFactoryInterface, PickupProcessorInterface, AllBinaryLayer, LifeLayerCircularStaticPool;

type
  {AB:TYPES}
  TLifePickedUpLayerInterfaceFactory = class(TPickedUpLayerInterfaceFactory, IPickupProcessorInterface)
  public
    pool: TLifeLayerCircularStaticPool;
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
  LifeLayerFactory, LifeResources, FeaturedAnimationInterfaceFactoryInterfaceFactory, CountedPickedUpLayerInterfaceFactory, IconLayerFactory, PickedUpLayerTypeFactory;


{AB:CODE}

procedure TLifePickedUpLayerInterfaceFactory.InitFields;
begin
  Self.pool := TLifeLayerCircularStaticPool.Create(TLifeLayerFactory.Create(), 1);
end;

function TLifePickedUpLayerInterfaceFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

// throws Exception
class procedure TLifePickedUpLayerInterfaceFactory.init;
begin
        TLifePickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface := TLifePickedUpLayerInterfaceFactory.Create();
end;
    

constructor TLifePickedUpLayerInterfaceFactory.Create;
begin
        inherited Create(TPickedUpLayerTypeFactory.getInstance().LIFE, TIconLayerFactory.getInstance(TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(TLifeResources.getInstance().RESOURCE).getInstance(0), 10, 10), TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(TLifeResources.getInstance().RESOURCE).getInstance(0));
        InitFields;
end;
    

function TLifePickedUpLayerInterfaceFactory.getTotal: Integer;
begin
        Exit(1);
end;
    

class function TLifePickedUpLayerInterfaceFactory.getInstance: IPickedUpLayerInterfaceFactoryInterface;
begin
        Exit(TLifePickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface);
end;
    

// throws Exception
procedure TLifePickedUpLayerInterfaceFactory.process(sourceLayerInterface: TAllBinaryLayer);
begin
        Self.pool.visit(sourceLayerInterface);
end;

initialization
  {AB:INITIALIZATION}
  TLifePickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface := TCountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
  {AB:END}

end.

