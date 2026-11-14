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
unit CollidableWeaponBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollidableInterfaceCompositeInterface, CollisionHelper, CollisionType, CollidableCompositeLayer, CollidableDestroyableDamageableBehavior, AllBinaryLayer;

type
  {AB:TYPES}
  TCollidableWeaponBehavior = class(TCollidableDestroyableDamageableBehavior)
  public
    collided: Boolean;
    collisionHelper: TCollisionHelper;
    class var NULL_COLLIDABLE_WEAPON_BEHAVIOR: TObject;
    procedure InitFields;
        class function getNullInstance: TCollidableWeaponBehavior; static;
        constructor Create(collidable: Boolean);
        procedure init(sourceLayerInterface: TAllBinaryLayer); virtual;
        function isCollision(ownerLayer: TCollidableCompositeLayer; collisionLayer: TCollidableCompositeLayer): Boolean; override;
        procedure collide(ownerLayer: TCollidableCompositeLayer; collisionLayer: TCollidableCompositeLayer); override;
        function isCollisionInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface): Boolean; override;
        procedure collideInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface); override;
        function getCollisionTypeWith(layerInterface: TAllBinaryLayer): TCollisionType; override;
        function isCollided: Boolean; virtual;
        procedure setCollided(collided: Boolean);
  end;

implementation
uses
  CollidableHelperFactory, CollisionTypeFactory, DamageableInterface, NullUtil;


{AB:CODE}

procedure TCollidableWeaponBehavior.InitFields;
begin
  
  
end;
    

class function TCollidableWeaponBehavior.getNullInstance: TCollidableWeaponBehavior;
begin
        if (TCollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TCollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR := TCollidableWeaponBehavior.Create(False);
        end;
        Exit(TCollidableWeaponBehavior(TJava.ToObject(TCollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR)));
end;
    

constructor TCollidableWeaponBehavior.Create(collidable: Boolean);
begin
        inherited Create(collidable);
        InitFields;
        Self.setCollided(False);
        Self.setCollidable(True);
        Self.collisionHelper := TCollidableHelperFactory.getInstance();
end;
    

procedure TCollidableWeaponBehavior.init(sourceLayerInterface: TAllBinaryLayer);
begin
        Self.setCollided(False);
        Self.collisionHelper.setOwnerLayerInterface(sourceLayerInterface);
end;
    

function TCollidableWeaponBehavior.isCollision(ownerLayer: TCollidableCompositeLayer; collisionLayer: TCollidableCompositeLayer): Boolean;
begin
        if Self.collisionHelper.isCollidable(collisionLayer) then begin
            if (ownerLayer.getGroupInterface()[0]) <> (collisionLayer.getGroupInterface()[0]) then begin
                Exit(inherited isCollision(ownerLayer, collisionLayer));
            end;
        end;
        Exit(False);
end;
    

// throws Exception
procedure TCollidableWeaponBehavior.collide(ownerLayer: TCollidableCompositeLayer; collisionLayer: TCollidableCompositeLayer);
begin
        inherited collide(ownerLayer, collisionLayer);
        Self.collided := True;
end;
    

function TCollidableWeaponBehavior.isCollisionInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface): Boolean;
var
  layerInterface: TAllBinaryLayer;
begin
        if Self.collisionHelper.isCollidable(TCollidableCompositeLayer(TJava.ToObject(collidableInterfaceCompositeInterface_))) then begin
            layerInterface := TAllBinaryLayer(TJava.ToObject(collidableInterfaceCompositeInterface_));
            if (ownerLayer.getGroupInterface()[0]) <> (layerInterface.getGroupInterface()[0]) then begin
                if Self.layerCollisionUtil.isCollision(ownerLayer, layerInterface) then begin
                    Exit(True);
                end;
            end;
        end;
        Exit(False);
end;
    

// throws Exception
procedure TCollidableWeaponBehavior.collideInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface);
var
  ownerDamageableInterface: IDamageableInterface;
  damageableInterface_: IDamageableInterface;
begin
        ownerDamageableInterface := (TJava.ToObject(ownerLayer) as IDamageableInterface);
        damageableInterface_ := (TJava.ToObject(collidableInterfaceCompositeInterface_) as IDamageableInterface);
        Self.damageUtil.process(ownerDamageableInterface, damageableInterface_);
        Self.collided := True;
end;
    

function TCollidableWeaponBehavior.getCollisionTypeWith(layerInterface: TAllBinaryLayer): TCollisionType;
begin
        Exit(TCollisionTypeFactory.getInstance().COLLISION);
end;
    

function TCollidableWeaponBehavior.isCollided: Boolean;
begin
        Exit(Self.collided);
end;
    

procedure TCollidableWeaponBehavior.setCollided(collided: Boolean);
begin
        Self.collided := collided;
end;

initialization
  {AB:INITIALIZATION}
  TCollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

