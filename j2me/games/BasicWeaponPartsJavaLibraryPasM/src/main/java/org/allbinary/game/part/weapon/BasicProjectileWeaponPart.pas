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
// package org.allbinary.game.part.weapon
unit BasicProjectileWeaponPart;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, WeaponProperties, WeaponLayerCircularPool, ScoreableInterface, RelativeRelationship, AllBinaryLayer, AllBinaryLayerManager, BasicWeaponPart;

type
  {AB:TYPES}
  TBasicProjectileWeaponPart = class(TBasicWeaponPart)
  public
    weaponLayerCircularStaticPool: TWeaponLayerCircularPool;
    procedure InitFields;
        class function createBasicProjectileWeaponPart(animationInterface: TAnimation; weaponLayerCircularStaticPool: TWeaponLayerCircularPool): TBasicProjectileWeaponPart; static;
        constructor Create(animationInterface: TAnimation; sourceLayerInterface: TAllBinaryLayer; weaponLayerCircularStaticPool: TWeaponLayerCircularPool; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface; relativeRelationship_: TRelativeRelationship);
        procedure processScore(allbinaryLayerManager_: TAllBinaryLayerManager; angle: SmallInt; otherAngle: SmallInt; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface); override;
  end;

implementation
uses
  WeaponLayer, NoScoreable;


{AB:CODE}

procedure TBasicProjectileWeaponPart.InitFields;
begin
  
end;
    

class function TBasicProjectileWeaponPart.createBasicProjectileWeaponPart(animationInterface: TAnimation; weaponLayerCircularStaticPool: TWeaponLayerCircularPool): TBasicProjectileWeaponPart;
begin
        Exit(TBasicProjectileWeaponPart.Create(animationInterface, TAllBinaryLayer.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, TWeaponProperties.NULL_WEAPON_PROPERTIES, TNoScoreable.getInstance(), TRelativeRelationship.NULL_RELATIVE_RELATIONSHIP));
end;
    

constructor TBasicProjectileWeaponPart.Create(animationInterface: TAnimation; sourceLayerInterface: TAllBinaryLayer; weaponLayerCircularStaticPool: TWeaponLayerCircularPool; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface; relativeRelationship_: TRelativeRelationship);
begin
        inherited Create(animationInterface, sourceLayerInterface, weaponProperties_, scoreableInterface_, relativeRelationship_);
        InitFields;
        Self.weaponLayerCircularStaticPool := weaponLayerCircularStaticPool;
end;
    

// throws Exception
procedure TBasicProjectileWeaponPart.processScore(allbinaryLayerManager_: TAllBinaryLayerManager; angle: SmallInt; otherAngle: SmallInt; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface);
var
  weaponLayer_: TWeaponLayer;
begin
        weaponLayer_ := Self.weaponLayerCircularStaticPool.getInstanceWeaponLayer(Self.getOwnerLayerInterface(), Self.relativeRelationship.getX(), Self.relativeRelationship.getY(), Self.relativeRelationship.getZ(), Integer(angle), Integer(otherAngle), weaponProperties_, scoreableInterface_);
        allbinaryLayerManager_.append(weaponLayer_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

