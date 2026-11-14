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
// package org.allbinary.game.combat.weapon
unit SimpleWeaponProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TSimpleWeaponProperties = class(TObject)
  public
    damage: Integer;
    dissipation: SmallInt;
    range: Integer;
    procedure InitFields;
    constructor Create;
        procedure set_(simpleWeaponProperties_: TSimpleWeaponProperties); virtual;
        procedure setDamage(damage: Integer); virtual;
        function getDamage: Integer; virtual;
        procedure setDissipation(dissipation: SmallInt); virtual;
        function getDissipation: SmallInt; virtual;
        function getRange: Integer; virtual;
        procedure setRange(range: Integer); virtual;
  end;

implementation

{AB:CODE}

procedure TSimpleWeaponProperties.InitFields;
begin
  
  
  
end;

constructor TSimpleWeaponProperties.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TSimpleWeaponProperties.set_(simpleWeaponProperties_: TSimpleWeaponProperties);
begin
        Self.setDamage(simpleWeaponProperties_.getDamage());
        Self.setDissipation(simpleWeaponProperties_.getDissipation());
        Self.setRange(simpleWeaponProperties_.getRange());
end;
    

procedure TSimpleWeaponProperties.setDamage(damage: Integer);
begin
        Self.damage := damage;
end;
    

function TSimpleWeaponProperties.getDamage: Integer;
begin
        Exit(Self.damage);
end;
    

procedure TSimpleWeaponProperties.setDissipation(dissipation: SmallInt);
begin
        Self.dissipation := dissipation;
end;
    

function TSimpleWeaponProperties.getDissipation: SmallInt;
begin
        Exit(Self.dissipation);
end;
    

function TSimpleWeaponProperties.getRange: Integer;
begin
        Exit(Self.range);
end;
    

procedure TSimpleWeaponProperties.setRange(range: Integer);
begin
        Self.range := range;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

