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
unit DamageableBaseBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DamageableInterface, NamedInterface;

type
  {AB:TYPES}
  TDamageableBaseBehavior = class(TInterfacedObject, IDamageableInterface, INamedInterface)
  public
    class var instance: TDamageableBaseBehavior;
    function JavaObject: TObject;
    constructor Create;
        class function getInstance: TDamageableBaseBehavior; static;
        function getName: string; virtual;
        procedure damage(damage: Integer; damageType: Integer); virtual;
        function getDamage(damageType: Integer): Integer; virtual;
  end;

implementation

{AB:CODE}

function TDamageableBaseBehavior.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TDamageableBaseBehavior.Create;
begin
  inherited Create;
end;
    

class function TDamageableBaseBehavior.getInstance: TDamageableBaseBehavior;
begin
        Exit(TDamageableBaseBehavior.instance);
end;
    

function TDamageableBaseBehavior.getName: string;
begin
        Exit(Self.ClassType.ClassName);
end;
    

// throws Exception
procedure TDamageableBaseBehavior.damage(damage: Integer; damageType: Integer);
begin
end;
    

// throws Exception
function TDamageableBaseBehavior.getDamage(damageType: Integer): Integer;
begin
        Exit(6000);
end;

initialization
  {AB:INITIALIZATION}
  TDamageableBaseBehavior.instance := TDamageableBaseBehavior.Create();
  {AB:END}

end.

