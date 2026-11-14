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
unit StraightMultiProjectileWeaponPart;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, WeaponProperties, WeaponLayerCircularPool, ScoreableInterface, RelativeRelationship, AllBinaryLayer, AllBinaryLayerManager, NoDecimalTrigTable, BasicWeaponPart;

type
  {AB:TYPES}
  TStraightMultiProjectileWeaponPart = class(TBasicWeaponPart)
  public
    weaponLayerCircularStaticPool: TWeaponLayerCircularPool;
    total: Integer;
    noDecimalTrigTable: TNoDecimalTrigTable;
    procedure InitFields;
        class function createStraightMultiProjectileWeaponPart(animationInterface: TAnimation; weaponLayerCircularStaticPool: TWeaponLayerCircularPool): TStraightMultiProjectileWeaponPart; static;
        constructor Create(animationInterface: TAnimation; sourceLayerInterface: TAllBinaryLayer; weaponLayerCircularStaticPool: TWeaponLayerCircularPool; total: Integer; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface; relativeRelationship_: TRelativeRelationship);
        procedure processScore(allbinaryLayerManager_: TAllBinaryLayerManager; angle: SmallInt; otherAngle: SmallInt; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface); override;
  end;

implementation
uses
  WeaponLayer, NoScoreable;


{AB:CODE}

procedure TStraightMultiProjectileWeaponPart.InitFields;
begin
  
  
  Self.noDecimalTrigTable := TNoDecimalTrigTable.getInstance();
end;
    

class function TStraightMultiProjectileWeaponPart.createStraightMultiProjectileWeaponPart(animationInterface: TAnimation; weaponLayerCircularStaticPool: TWeaponLayerCircularPool): TStraightMultiProjectileWeaponPart;
begin
        Exit(TStraightMultiProjectileWeaponPart.Create(animationInterface, TAllBinaryLayer.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, 2, TWeaponProperties.NULL_WEAPON_PROPERTIES, TNoScoreable.getInstance(), TRelativeRelationship.NULL_RELATIVE_RELATIONSHIP));
end;
    

constructor TStraightMultiProjectileWeaponPart.Create(animationInterface: TAnimation; sourceLayerInterface: TAllBinaryLayer; weaponLayerCircularStaticPool: TWeaponLayerCircularPool; total: Integer; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface; relativeRelationship_: TRelativeRelationship);
begin
        inherited Create(animationInterface, sourceLayerInterface, weaponProperties_, scoreableInterface_, relativeRelationship_);
        InitFields;
        Self.total := total;
        Self.weaponLayerCircularStaticPool := weaponLayerCircularStaticPool;
end;
    

// throws Exception
procedure TStraightMultiProjectileWeaponPart.processScore(allbinaryLayerManager_: TAllBinaryLayerManager; angle: SmallInt; otherAngle: SmallInt; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface);
var
  sourceLayerInterface: TAllBinaryLayer;
  reducedWidth: Integer;
  halfWidth: Integer;
  x: Integer;
  y: Integer;
  sine: Int64;
  beamX: Integer;
  cosine: Int64;
  beamY: Integer;
  weaponLayer_: TWeaponLayer;
  increment: Integer;
  next: Integer;
  index: Integer;
begin
        sourceLayerInterface := Self.getOwnerLayerInterface();
        reducedWidth := (((sourceLayerInterface.getWidth()) * (8)) div (10));
        halfWidth := (TJava.SignedRightShift(reducedWidth, 1));
        x := Self.relativeRelationship.getX();
        y := Self.relativeRelationship.getY();
        
        
        
        
        
        increment := (reducedWidth) div (((Self.total) - (1)));
        next := -halfWidth;
        for index := 0 to Self.total - 1 do begin
            sine := Int64(Trunc(((next) * (Self.noDecimalTrigTable.sin(Integer(angle))))));
            beamX := Integer(Trunc((TJava.Divide(sine, Self.noDecimalTrigTable.SCALE))));
            cosine := Int64(Trunc(((next) * (Self.noDecimalTrigTable.cos(Integer(angle))))));
            beamY := -Integer(Trunc((TJava.Divide(cosine, Self.noDecimalTrigTable.SCALE))));
            weaponLayer_ := Self.weaponLayerCircularStaticPool.getInstanceWeaponLayer(sourceLayerInterface, (x) + (beamX), (y) + (beamY), 0, Integer(angle), Integer(otherAngle), weaponProperties_, scoreableInterface_);
            allbinaryLayerManager_.append(weaponLayer_);
            next := (next) + (increment);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

