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
unit MineLayerCircularStaticPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, WeaponLayerCircularPool, ViewPositionFactoryInterface;

type
  {AB:TYPES}
  TMineLayerCircularStaticPool = class(TObject)
  public
    class var WEAPON_LAYER_CIRCULAR_STATIC_POOL: TWeaponLayerCircularPool;
    constructor Create;
        class procedure init(viewPositionFactoryInterface_: IViewPositionFactoryInterface); static;
        class function getInstance: TWeaponLayerCircularPool; static;
  end;

implementation
uses
  MineCountedPickedUpLayerInterfaceFactory, MineLayerFactory;


{AB:CODE}

constructor TMineLayerCircularStaticPool.Create;
begin
  inherited Create;
end;
    

// throws Exception
class procedure TMineLayerCircularStaticPool.init(viewPositionFactoryInterface_: IViewPositionFactoryInterface);
begin
        TMineCountedPickedUpLayerInterfaceFactory.init();
        TMineLayerCircularStaticPool.WEAPON_LAYER_CIRCULAR_STATIC_POOL.initAllBinaryLayerCircularPool(TMineLayerFactory.Create(viewPositionFactoryInterface_), 20);
end;
    

class function TMineLayerCircularStaticPool.getInstance: TWeaponLayerCircularPool;
begin
        Exit(TMineLayerCircularStaticPool.WEAPON_LAYER_CIRCULAR_STATIC_POOL);
end;

initialization
  {AB:INITIALIZATION}
  TMineLayerCircularStaticPool.WEAPON_LAYER_CIRCULAR_STATIC_POOL := TWeaponLayerCircularPool.Create();
  {AB:END}

end.

