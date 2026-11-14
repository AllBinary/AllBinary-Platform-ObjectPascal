// Generated Code Do Not Modify
// package org.allbinary.game.layer.weapon
unit TempExplosionWeaponLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, WeaponProperties, Rectangle, AllBinaryLayerManager, Movement, TimeDelayHelper, ViewPositionBase, SimpleWeaponLayer;

type
  {AB:TYPES}
  TTempExplosionWeaponLayer = class(TSimpleWeaponLayer)
  public
    weaponProperties: TWeaponProperties;
    timeDelayHelper: TTimeDelayHelper;
    procedure InitFields;
        constructor Create(name: string; movement_: TMovement; animationInterface: TAnimation; rectangle_: TRectangle; viewPosition: TViewPositionBase; timeDelay: Integer);
        procedure processTick(allBinaryLayerManager_: TAllBinaryLayerManager); override;
  end;

implementation
uses
  RemoteInfo, GameTickTimeDelayHelperFactory;


{AB:CODE}

procedure TTempExplosionWeaponLayer.InitFields;
begin
  Self.weaponProperties := TWeaponProperties.Create(-1, -1, 0, 1000, SmallInt(0));
  Self.timeDelayHelper := TTimeDelayHelper.Create(0);
end;
    

constructor TTempExplosionWeaponLayer.Create(name: string; movement_: TMovement; animationInterface: TAnimation; rectangle_: TRectangle; viewPosition: TViewPositionBase; timeDelay: Integer);
begin
        inherited Create(name, TRemoteInfo.REMOTE_INFO, -1, movement_, animationInterface, TSimpleWeaponLayer.createDestroyed(), rectangle_, viewPosition);
        InitFields;
        Self.timeDelayHelper.delay := timeDelay;
end;
    

// throws Exception
procedure TTempExplosionWeaponLayer.processTick(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
        if Self.timeDelayHelper.isTime(TGameTickTimeDelayHelperFactory.getInstance().startTime) then begin
            Self.getCollidableInferface().collide(Self, Self);
            Self.totalDamage := (Self.getInitDamage()) + (1);
        end;
        inherited processTick(allBinaryLayerManager_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

