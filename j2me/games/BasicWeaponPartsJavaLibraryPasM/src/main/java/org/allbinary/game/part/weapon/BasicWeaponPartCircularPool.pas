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
unit BasicWeaponPartCircularPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, WeaponProperties, ScoreableInterface, RelativeRelationship, AllBinaryLayer, BasicWeaponPart, BasicWeaponPartFactoryInterface;

type
  {AB:TYPES}
  TBasicWeaponPartCircularPool = class(TObject)
  public
    basicWeaponPart: TBasicWeaponPart;
    class var NULL_BASIC_WEAPON_PART_CIRCULAR_POOL: TBasicWeaponPartCircularPool;
    procedure InitFields;
    constructor Create;
        procedure init(basicWeaponPartFactoryInterface_: IBasicWeaponPartFactoryInterface); virtual;
        function getInstance(sourceLayerInterface: TAllBinaryLayer; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface; relativeRelationship_: TRelativeRelationship): TBasicWeaponPart; virtual;
  end;

implementation

{AB:CODE}

procedure TBasicWeaponPartCircularPool.InitFields;
begin
  Self.basicWeaponPart := TBasicWeaponPart.NULL_BASIC_WEAPON_PART;
end;

constructor TBasicWeaponPartCircularPool.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws Exception
procedure TBasicWeaponPartCircularPool.init(basicWeaponPartFactoryInterface_: IBasicWeaponPartFactoryInterface);
begin
        Self.basicWeaponPart := basicWeaponPartFactoryInterface_.getInstance();
end;
    

// throws Exception
function TBasicWeaponPartCircularPool.getInstance(sourceLayerInterface: TAllBinaryLayer; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface; relativeRelationship_: TRelativeRelationship): TBasicWeaponPart;
begin
    TJava.MonitorEnter(Self);
    try
        Self.basicWeaponPart.init(sourceLayerInterface, weaponProperties_, scoreableInterface_, relativeRelationship_);
        Exit(Self.basicWeaponPart);
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TBasicWeaponPartCircularPool.NULL_BASIC_WEAPON_PART_CIRCULAR_POOL := TBasicWeaponPartCircularPool.Create();
  {AB:END}

end.

