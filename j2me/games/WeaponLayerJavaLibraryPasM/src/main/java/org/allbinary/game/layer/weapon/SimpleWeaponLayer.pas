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
// package org.allbinary.game.layer.weapon
unit SimpleWeaponLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, RemoteInfo, Rectangle, Movement, ViewPositionBase, WeaponLayer;

type
  {AB:TYPES}
  TSimpleWeaponLayer = class(TWeaponLayer)
  public
        class function createDestroyed: TAnimation; static;
        constructor Create(name: string; remoteInfo_: TRemoteInfo; multiPlayerType: Integer; movement_: TMovement; animationInterface: TAnimation; destroyedAnimationInterface: TAnimation; rectangle_: TRectangle; viewPosition: TViewPositionBase);
  end;

implementation
uses
  CollidableWeaponBehavior, FeaturedAnimationInterfaceFactoryInterfaceFactory, NullIndexedAnimationFactory, ExplosionResources;


{AB:CODE}
    

// throws Exception
class function TSimpleWeaponLayer.createDestroyed: TAnimation;
begin
        Exit(TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().getProcedural(TExplosionResources.getInstance().THIRD_EXPLOSION_RESOURCE).getInstanceAnimation(TNullIndexedAnimationFactory.getFactoryInstance().getInstance(0)));
end;
    

constructor TSimpleWeaponLayer.Create(name: string; remoteInfo_: TRemoteInfo; multiPlayerType: Integer; movement_: TMovement; animationInterface: TAnimation; destroyedAnimationInterface: TAnimation; rectangle_: TRectangle; viewPosition: TViewPositionBase);
begin
        inherited Create(name, remoteInfo_, multiPlayerType, movement_, animationInterface, destroyedAnimationInterface, rectangle_, viewPosition);
        Self.setCollidableInferface(TCollidableWeaponBehavior.Create(True));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

