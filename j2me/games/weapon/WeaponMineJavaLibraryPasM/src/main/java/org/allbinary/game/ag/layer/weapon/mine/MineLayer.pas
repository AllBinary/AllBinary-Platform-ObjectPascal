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
// package org.allbinary.game.ag.layer.weapon.mine
unit MineLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, SimpleWeaponLayer, ViewPositionBase, ViewPositionEventHandler;

type
  {AB:TYPES}
  TMineLayer = class(TSimpleWeaponLayer)
  public
    viewPositionEventHandler: TViewPositionEventHandler;
    class var NAME: string;
    procedure InitFields;
        constructor Create(viewPosition: TViewPositionBase);
        procedure initXYZ(x: Integer; y: Integer; z: Integer); override;
        procedure damage(damage: Integer; damageType: Integer); override;
        function getDamage(damageType: Integer): Integer; override;
        procedure setDestroyed(destroyed: Boolean); override;
  end;

implementation
uses
  MineWeaponResources, DropWeaponSound, FeaturedAnimationInterfaceFactoryInterfaceFactory, RemoteInfo, PointFactory, Rectangle, AllBinaryLayer, SecondaryPlayerQueueFactory, NoMovementFactory;


{AB:CODE}

procedure TMineLayer.InitFields;
begin
  Self.viewPositionEventHandler := TViewPositionEventHandler.getInstance();
end;
    

constructor TMineLayer.Create(viewPosition: TViewPositionBase);
begin
        inherited Create(TMineLayer.NAME, TRemoteInfo.REMOTE_INFO, -1, TNoMovementFactory.getInstance().getMovmentInstance(), TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(TMineWeaponResources.getInstance().RESOURCE).getInstance(0), TSimpleWeaponLayer.createDestroyed(), TRectangle.Create(TPointFactory.getInstance().ZERO_ZERO, 10, 10), viewPosition);
        InitFields;
end;
    

procedure TMineLayer.initXYZ(x: Integer; y: Integer; z: Integer);
begin
        Self.setPosition((x) + (5), (y) + (5), z);
        Self.viewPositionEventHandler.addListener(TAllBinaryLayer(TJava.ToObject(Self)));
        TSecondaryPlayerQueueFactory.getInstance().add(TDropWeaponSound.getInstance());
end;
    

procedure TMineLayer.damage(damage: Integer; damageType: Integer);
begin
        Self.totalDamage := (Self.getInitDamage()) + (1);
end;
    

function TMineLayer.getDamage(damageType: Integer): Integer;
begin
        inherited getDamage(damageType);
        Exit(Self.getInitDamage());
end;
    

procedure TMineLayer.setDestroyed(destroyed: Boolean);
begin
        inherited setDestroyed(destroyed);
        if Self.isDestroyed() then begin
            Self.viewPositionEventHandler.removeListener(Self);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TMineLayer.NAME := 'MineLayer';
  {AB:END}

end.

