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
unit CollidableDestroyableDamageableBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollidableBaseBehavior, CollidableInterfaceCompositeInterface, DamageUtil, CollidableCompositeLayer;

type
  {AB:TYPES}
  TCollidableDestroyableDamageableBehavior = class(TCollidableBaseBehavior)
  public
    damageUtil: TDamageUtil;
    procedure InitFields;
        constructor Create(collidable: Boolean);
        function isCollision(ownerLayer: TCollidableCompositeLayer; collisionLayer: TCollidableCompositeLayer): Boolean; override;
        procedure collide(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: TCollidableCompositeLayer); override;
        function isCollisionInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface): Boolean; override;
        procedure collideInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface); override;
  end;

implementation
uses
  CollidableDestroyableDamageableLayer, ForcedLogUtil;


{AB:CODE}

procedure TCollidableDestroyableDamageableBehavior.InitFields;
begin
  Self.damageUtil := TDamageUtil.getInstance();
end;
    

constructor TCollidableDestroyableDamageableBehavior.Create(collidable: Boolean);
begin
        inherited Create(collidable);
        InitFields;
end;
    

function TCollidableDestroyableDamageableBehavior.isCollision(ownerLayer: TCollidableCompositeLayer; collisionLayer: TCollidableCompositeLayer): Boolean;
begin
        if (ownerLayer.getGroupInterface()[0]) <> (collisionLayer.getGroupInterface()[0]) then begin
            Exit(inherited isCollision(ownerLayer, collisionLayer));
        end;
        Exit(False);
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableBehavior.collide(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: TCollidableCompositeLayer);
var
  ownerCollidableDestroyableDamageableLayer: TCollidableDestroyableDamageableLayer;
  collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer;
begin
        ownerCollidableDestroyableDamageableLayer := TCollidableDestroyableDamageableLayer(TJava.ToObject(ownerLayer));
        collidableDestroyableDamageableLayer_ := TCollidableDestroyableDamageableLayer(TJava.ToObject(collidableInterfaceCompositeInterface_));
        ownerCollidableDestroyableDamageableLayer.damage(collidableDestroyableDamageableLayer_.getDamage(0), 0);
end;
    

function TCollidableDestroyableDamageableBehavior.isCollisionInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface): Boolean;
begin
        TForcedLogUtil.log('No Longer Used', TJava.Box(Self));
        Exit(False);
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableBehavior.collideInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface);
begin
        TForcedLogUtil.log('No Longer Used', TJava.Box(Self));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

