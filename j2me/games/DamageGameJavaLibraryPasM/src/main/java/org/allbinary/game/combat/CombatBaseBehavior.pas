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
// package org.allbinary.game.combat
unit CombatBaseBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DamageableBaseBehavior, DestroyableBaseBehavior;

type
  {AB:TYPES}
  TCombatBaseBehavior = class(TObject)
  public
    damageableBaseBehavior: TDamageableBaseBehavior;
    destroyableBaseBehavior: TDestroyableBaseBehavior;
    readyForExplosion: Boolean;
    class var NULL_COMBAT_BEHAVIOR: TCombatBaseBehavior;
    procedure InitFields;
        constructor Create(damageableBaseBehavior_: TDamageableBaseBehavior; destroyableBaseBehavior_: TDestroyableBaseBehavior);
        function getDamageableBaseBehavior: TDamageableBaseBehavior; virtual;
        function getDestroyableBaseBehavior: TDestroyableBaseBehavior; virtual;
        function isReadyForExplosion: Boolean;
        procedure setReadyForExplosion(readyForExplosion: Boolean);
  end;

implementation

{AB:CODE}

procedure TCombatBaseBehavior.InitFields;
begin
  
  
  
end;
    

constructor TCombatBaseBehavior.Create(damageableBaseBehavior_: TDamageableBaseBehavior; destroyableBaseBehavior_: TDestroyableBaseBehavior);
begin
    inherited Create;
    InitFields;
        Self.damageableBaseBehavior := damageableBaseBehavior_;
        Self.destroyableBaseBehavior := destroyableBaseBehavior_;
end;
    

function TCombatBaseBehavior.getDamageableBaseBehavior: TDamageableBaseBehavior;
begin
        Exit(Self.damageableBaseBehavior);
end;
    

function TCombatBaseBehavior.getDestroyableBaseBehavior: TDestroyableBaseBehavior;
begin
        Exit(Self.destroyableBaseBehavior);
end;
    

function TCombatBaseBehavior.isReadyForExplosion: Boolean;
begin
        Exit(Self.readyForExplosion);
end;
    

procedure TCombatBaseBehavior.setReadyForExplosion(readyForExplosion: Boolean);
begin
        Self.readyForExplosion := readyForExplosion;
end;

initialization
  {AB:INITIALIZATION}
  TCombatBaseBehavior.NULL_COMBAT_BEHAVIOR := TCombatBaseBehavior.Create(TDamageableBaseBehavior.getInstance(), TDestroyableBaseBehavior.getInstance());
  {AB:END}

end.

