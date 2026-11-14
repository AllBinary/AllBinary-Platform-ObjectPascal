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
// package org.allbinary.game.combat.damage
unit ExplosionResources;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TExplosionResources = class(TObject)
  public
    EXPLOSION_90_RESOURCE: string;
    EXPLOSION_60_RESOURCE: string;
    HALF_EXPLOSION_RESOURCE: string;
    THIRD_EXPLOSION_RESOURCE: string;
    class var instance: TExplosionResources;
    procedure InitFields;
        class function getInstance: TExplosionResources; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TExplosionResources.InitFields;
begin
  Self.EXPLOSION_90_RESOURCE := '/explosion_sprite_90_by_90.png';
  Self.EXPLOSION_60_RESOURCE := '/explosion_sprite_60_by_60.png';
  Self.HALF_EXPLOSION_RESOURCE := '/explosion_sprite_30_by_30.png';
  Self.THIRD_EXPLOSION_RESOURCE := '/explosion_sprite_15_by_15.png';
end;
    

class function TExplosionResources.getInstance: TExplosionResources;
begin
        Exit(TExplosionResources.instance);
end;
    

constructor TExplosionResources.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TExplosionResources.instance := TExplosionResources.Create();
  {AB:END}

end.

