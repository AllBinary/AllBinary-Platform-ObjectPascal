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
unit ArcedMultiBeamWeaponPart;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, WeaponProperties, WeaponLayerCircularPool, ScoreableInterface, RelativeRelationship, AllBinaryLayer, AllBinaryLayerManager, BasicWeaponPart;

type
  {AB:TYPES}
  TArcedMultiBeamWeaponPart = class(TBasicWeaponPart)
  public
    weaponLayerCircularStaticPool: TWeaponLayerCircularPool;
    total: Integer;
    TOTAL_ANGLE: Integer;
    procedure InitFields;
        constructor Create(animationInterface: TAnimation; sourceLayerInterface: TAllBinaryLayer; weaponLayerCircularStaticPool: TWeaponLayerCircularPool; total: Integer; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface; relativeRelationship_: TRelativeRelationship);
        procedure processScore(allbinaryLayerManager_: TAllBinaryLayerManager; angle: SmallInt; otherAngle: SmallInt; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface); override;
  end;

implementation
uses
  WeaponLayer, AngleFactory;


{AB:CODE}

procedure TArcedMultiBeamWeaponPart.InitFields;
begin
  
  
  Self.TOTAL_ANGLE := Integer(Trunc(TAngleFactory.getInstance().TOTAL_ANGLE));
end;
    

constructor TArcedMultiBeamWeaponPart.Create(animationInterface: TAnimation; sourceLayerInterface: TAllBinaryLayer; weaponLayerCircularStaticPool: TWeaponLayerCircularPool; total: Integer; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface; relativeRelationship_: TRelativeRelationship);
begin
        inherited Create(animationInterface, sourceLayerInterface, weaponProperties_, scoreableInterface_, relativeRelationship_);
        InitFields;
        Self.total := total;
        Self.weaponLayerCircularStaticPool := weaponLayerCircularStaticPool;
end;
    

// throws Exception
procedure TArcedMultiBeamWeaponPart.processScore(allbinaryLayerManager_: TAllBinaryLayerManager; angle: SmallInt; otherAngle: SmallInt; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface);
var
  increment: SmallInt;
  minAngle: SmallInt;
  next: Integer;
  weaponLayer_: TWeaponLayer;
  index: Integer;
begin
        increment := SmallInt(((((Self.total) - (1))) div (Self.TOTAL_ANGLE)));
        minAngle := SmallInt(((Integer(angle)) - ((TJava.SignedRightShift(((Integer(increment)) * (Self.total)), 1)))));
        next := 0;
        
        for index := 0 to Self.total - 1 do begin
            weaponLayer_ := Self.weaponLayerCircularStaticPool.getInstanceWeaponLayer(Self.getOwnerLayerInterface(), Self.relativeRelationship.getX(), Self.relativeRelationship.getY(), 0, ((minAngle) + (increment)), Integer(otherAngle), weaponProperties_, scoreableInterface_);
            allbinaryLayerManager_.append(weaponLayer_);
            next := (next) + (Integer(increment));
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

