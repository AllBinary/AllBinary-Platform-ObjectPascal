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
unit Points30kPickedUpLayerInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PickedUpLayerInterfaceFactory, PickedUpLayerInterfaceFactoryInterface, PickupProcessorInterface, AllBinaryLayer, PointsLayerCircularStaticPool;

type
  {AB:TYPES}
  TPoints30kPickedUpLayerInterfaceFactory = class(TPickedUpLayerInterfaceFactory, IPickupProcessorInterface)
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

procedure TPoints30kPickedUpLayerInterfaceFactory.InitFields;
begin
  Self.pool := TPointsLayerCircularStaticPool.Create(TPointsLayerFactory.Create((TGameConfigurationUtil.getInstance().getCompetitionValue()) * (30000)), 1);
end;

function TPoints30kPickedUpLayerInterfaceFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

// throws Exception
class procedure TPoints30kPickedUpLayerInterfaceFactory.init;
begin
        TPoints30kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface := TPoints30kPickedUpLayerInterfaceFactory.Create();
end;
    

constructor TPoints30kPickedUpLayerInterfaceFactory.Create;
begin
        inherited Create(TPickedUpLayerTypeFactory.getInstance().POINTS, TIconLayerFactory.getInstance(TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(TPointsResources.getInstance().RESOURCE_3).getInstance(0), 10, 10), TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(TPointsResources.getInstance().RESOURCE_3).getInstance(0));
        InitFields;
end;
    

function TPoints30kPickedUpLayerInterfaceFactory.getTotal: Integer;
begin
        Exit(1);
end;
    

class function TPoints30kPickedUpLayerInterfaceFactory.getInstance: IPickedUpLayerInterfaceFactoryInterface;
begin
        Exit(TPoints30kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface);
end;
    

// throws Exception
procedure TPoints30kPickedUpLayerInterfaceFactory.process(sourceLayerInterface: TAllBinaryLayer);
begin
        Self.pool.visit(sourceLayerInterface);
end;

initialization
  {AB:INITIALIZATION}
  TPoints30kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface := TCountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
  {AB:END}

end.

