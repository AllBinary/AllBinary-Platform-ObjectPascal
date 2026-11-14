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
// package org.allbinary.game.ag.layer.weapon.mine
unit MineCountedPickedUpLayerInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, WeaponProperties, CountedPickedUpLayerInterfaceFactory, PickedUpLayerInterfaceFactoryInterface, WeaponLayerCircularPool, AllBinaryLayer, SmallIntegerSingletonFactory, ABHashtable;

type
  {AB:TYPES}
  TMineCountedPickedUpLayerInterfaceFactory = class(TCountedPickedUpLayerInterfaceFactory)
  public
    weaponLayerCircularStaticPool: TWeaponLayerCircularPool;
    weaponProperties: TWeaponProperties;
    smallIntegerSingletonFactory: TSmallIntegerSingletonFactory;
    class var pickedUpLayerInterfaceFactoryInterface: IPickedUpLayerInterfaceFactoryInterface;
    procedure InitFields;
        class procedure init; static;
        constructor Create;
        class function getInstance: IPickedUpLayerInterfaceFactoryInterface; static;
        function getTotal: Integer; override;
        function getNextInstance(hashtable: TABHashtable<TObject, TObject>; x: Integer; y: Integer; z: Integer): TAllBinaryLayer; override;
  end;

implementation
uses
  MineLayerCircularStaticPool, MineWeaponResources, FeaturedAnimationInterfaceFactoryInterfaceFactory, IconLayerFactory, PickedUpLayerTypeFactory, ScoreableInterface;


{AB:CODE}

procedure TMineCountedPickedUpLayerInterfaceFactory.InitFields;
begin
  Self.weaponLayerCircularStaticPool := TMineLayerCircularStaticPool.getInstance();
  Self.weaponProperties := TWeaponProperties.Create(-1, -1, 0, 8000, SmallInt(10));
  Self.smallIntegerSingletonFactory := TSmallIntegerSingletonFactory.getInstance();
end;
    

// throws Exception
class procedure TMineCountedPickedUpLayerInterfaceFactory.init;
begin
        TMineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface := TMineCountedPickedUpLayerInterfaceFactory.Create();
end;
    

constructor TMineCountedPickedUpLayerInterfaceFactory.Create;
begin
        inherited Create(TPickedUpLayerTypeFactory.getInstance().MINE, TIconLayerFactory.getInstance(TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(TMineWeaponResources.getInstance().DROP_ICON_RESOURCE).getInstance(0), 10, 10), TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(TMineWeaponResources.getInstance().DROP_RESOURCE).getInstance(0));
        InitFields;
end;
    

class function TMineCountedPickedUpLayerInterfaceFactory.getInstance: IPickedUpLayerInterfaceFactoryInterface;
begin
        Exit(TMineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface);
end;
    

function TMineCountedPickedUpLayerInterfaceFactory.getTotal: Integer;
begin
        Exit(3);
end;
    

// throws Exception
function TMineCountedPickedUpLayerInterfaceFactory.getNextInstance(hashtable: TABHashtable<TObject, TObject>; x: Integer; y: Integer; z: Integer): TAllBinaryLayer;
var
  sourceLayerInterface: TAllBinaryLayer;
  angle: Integer;
  scoreableInterface_: IScoreableInterface;
begin
        sourceLayerInterface := TAllBinaryLayer(TJava.ToObject(hashtable.get(TJava.Box(TJava.Box(Self.smallIntegerSingletonFactory.getAt(0))))));
        angle := Integer(hashtable.get(TJava.Box(TJava.Box(Self.smallIntegerSingletonFactory.getAt(1)))));
        scoreableInterface_ := (TJava.ToObject(sourceLayerInterface) as IScoreableInterface);
        Exit(Self.weaponLayerCircularStaticPool.getInstanceWeaponLayer(sourceLayerInterface, x, y, z, (angle), 0, Self.weaponProperties, scoreableInterface_));
end;

initialization
  {AB:INITIALIZATION}
  TMineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface := TCountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
  {AB:END}

end.

