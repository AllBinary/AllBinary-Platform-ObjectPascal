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
// package org.allbinary.game.layer.special
unit CollidableCharacterNoDamageBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollidableInterfaceCompositeInterface, CollidableCompositeLayer, CollidableDestroyableDamageableBehavior;

type
  {AB:TYPES}
  TCollidableCharacterNoDamageBehavior = class(TCollidableDestroyableDamageableBehavior)
  public
        constructor Create(collidable: Boolean);
        procedure collide(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: TCollidableCompositeLayer); override;
        procedure collideInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface); override;
  end;

implementation
uses
  CollidableDestroyableDamageableLayer, CollisionType, CollisionTypeFactory, PickedUpLayerInterface, ForcedLogUtil;


{AB:CODE}
    

constructor TCollidableCharacterNoDamageBehavior.Create(collidable: Boolean);
begin
        inherited Create(collidable);
end;
    

// throws Exception
procedure TCollidableCharacterNoDamageBehavior.collide(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: TCollidableCompositeLayer);
var
  collisionTypeFactory_: TCollisionTypeFactory;
  collisionType_: TCollisionType;
  collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer;
begin
        collisionTypeFactory_ := TCollisionTypeFactory.getInstance();
        collisionType_ := collidableInterfaceCompositeInterface_.getCollidableInferface().getCollisionTypeWith(ownerLayer);
        if (collisionType_) = (collisionTypeFactory_.PICKUP) then begin
            collidableDestroyableDamageableLayer_ := TCollidableDestroyableDamageableLayer(TJava.ToObject(ownerLayer));
            collidableDestroyableDamageableLayer_.getPickupBehavior().doPickupLayer((TJava.ToObject(collidableInterfaceCompositeInterface_) as IPickedUpLayerInterface));
        end else begin
        end;
end;
    

// throws Exception
procedure TCollidableCharacterNoDamageBehavior.collideInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface);
begin
        TForcedLogUtil.log(Self.commonStrings.NOT_IMPLEMENTED, TJava.Box(Self));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

