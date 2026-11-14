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
// package org.allbinary.game.ag.layer.pickup.points
unit Points20kPickedUpLayerInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PickedUpLayerInterfaceFactory, PickedUpLayerInterfaceFactoryInterface, PickupProcessorInterface, AllBinaryLayer, PointsLayerCircularStaticPool;

type
  {AB:TYPES}
  TPoints20kPickedUpLayerInterfaceFactory = class(TPickedUpLayerInterfaceFactory, IPickupProcessorInterface)
  public
    pool: TPointsLayerCircularStaticPool;
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
  PointsLayerFactory, PointsResources, FeaturedAnimationInterfaceFactoryInterfaceFactory, GameConfigurationUtil, CountedPickedUpLayerInterfaceFactory, IconLayerFactory, PickedUpLayerTypeFactory;


{AB:CODE}

procedure TPoints20kPickedUpLayerInterfaceFactory.InitFields;
begin
  Self.pool := TPointsLayerCircularStaticPool.Create(TPointsLayerFactory.Create((TGameConfigurationUtil.getInstance().getCompetitionValue()) * (20000)), 1);
end;

function TPoints20kPickedUpLayerInterfaceFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

// throws Exception
class procedure TPoints20kPickedUpLayerInterfaceFactory.init;
begin
        TPoints20kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface := TPoints20kPickedUpLayerInterfaceFactory.Create();
end;
    

constructor TPoints20kPickedUpLayerInterfaceFactory.Create;
begin
        inherited Create(TPickedUpLayerTypeFactory.getInstance().POINTS, TIconLayerFactory.getInstance(TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(TPointsResources.getInstance().RESOURCE_2).getInstance(0), 10, 10), TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(TPointsResources.getInstance().RESOURCE_2).getInstance(0));
        InitFields;
end;
    

function TPoints20kPickedUpLayerInterfaceFactory.getTotal: Integer;
begin
        Exit(1);
end;
    

class function TPoints20kPickedUpLayerInterfaceFactory.getInstance: IPickedUpLayerInterfaceFactoryInterface;
begin
        Exit(TPoints20kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface);
end;
    

// throws Exception
procedure TPoints20kPickedUpLayerInterfaceFactory.process(sourceLayerInterface: TAllBinaryLayer);
begin
        Self.pool.visit(sourceLayerInterface);
end;

initialization
  {AB:INITIALIZATION}
  TPoints20kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface := TCountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
  {AB:END}

end.

