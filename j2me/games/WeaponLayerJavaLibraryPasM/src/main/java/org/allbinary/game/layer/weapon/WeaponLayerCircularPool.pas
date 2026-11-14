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
unit WeaponLayerCircularPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, WeaponProperties, ScoreableInterface, AllBinaryLayer, AllBinaryLayerCircularPool, WeaponLayer;

type
  {AB:TYPES}
  TWeaponLayerCircularPool = class(TAllBinaryLayerCircularPool)
  public
        constructor Create;
        function getInstanceWeaponLayer(sourceLayerInterface: TAllBinaryLayer; x: Integer; y: Integer; z: Integer; angle: Integer; otherAngle: Integer; weaponProperties_: TWeaponProperties; scoreable: IScoreableInterface): TWeaponLayer; virtual;
  end;

implementation

{AB:CODE}
    

constructor TWeaponLayerCircularPool.Create;
begin
    inherited Create;
end;
    

// throws Exception
function TWeaponLayerCircularPool.getInstanceWeaponLayer(sourceLayerInterface: TAllBinaryLayer; x: Integer; y: Integer; z: Integer; angle: Integer; otherAngle: Integer; weaponProperties_: TWeaponProperties; scoreable: IScoreableInterface): TWeaponLayer;
var
  weaponLayer_: TWeaponLayer;
begin
        weaponLayer_ := TWeaponLayer(TJava.ToObject(inherited getNextInstance()));
        weaponLayer_.initXYZ(x, y, z);
        weaponLayer_.init(sourceLayerInterface, angle, otherAngle, weaponProperties_, scoreable);
        Exit(weaponLayer_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

