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
unit DamageUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollidableCompositeLayer, LogUtil, DamageableInterface;

type
  {AB:TYPES}
  TDamageUtil = class(TObject)
  public
    logUtil: TLogUtil;
    COLLIDE: string;
    class var instance: TDamageUtil;
    procedure InitFields;
        class function getInstance: TDamageUtil; static;
        constructor Create;
        procedure process(damageableInterface_: IDamageableInterface; damageableInterface2: IDamageableInterface); virtual;
        procedure debugDamage(collidableInterfaceCompositeInterface1: TCollidableCompositeLayer; collidableInterfaceCompositeInterface: TCollidableCompositeLayer); virtual;
  end;

implementation
uses
  CollidableDestroyableDamageableLayer, StringMaker;


{AB:CODE}

procedure TDamageUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.COLLIDE := 'collide';
end;
    

class function TDamageUtil.getInstance: TDamageUtil;
begin
        Exit(TDamageUtil.instance);
end;
    

constructor TDamageUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TDamageUtil.process(damageableInterface_: IDamageableInterface; damageableInterface2: IDamageableInterface);
begin
        damageableInterface_.damage(damageableInterface2.getDamage(0), 0);
end;
    

// throws Exception
procedure TDamageUtil.debugDamage(collidableInterfaceCompositeInterface1: TCollidableCompositeLayer; collidableInterfaceCompositeInterface: TCollidableCompositeLayer);
var
  collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer;
  damage: Integer;
  stringBuffer: TStringMaker;
begin
        collidableDestroyableDamageableLayer_ := TCollidableDestroyableDamageableLayer(TJava.ToObject(collidableInterfaceCompositeInterface));
        damage := collidableDestroyableDamageableLayer_.getDamage(0);
        if (damage) > (20000) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Collision ');
            stringBuffer.append(collidableInterfaceCompositeInterface1.toString());
            stringBuffer.append(' with: ');
            stringBuffer.append(collidableInterfaceCompositeInterface.toString());
            stringBuffer.append(' damage: ');
            stringBuffer.appendint(damage);
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(collidableInterfaceCompositeInterface1), Self.COLLIDE);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TDamageUtil.instance := TDamageUtil.Create();
  {AB:END}

end.

