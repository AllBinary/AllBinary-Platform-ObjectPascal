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
unit DamageWeaponLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, RemoteInfo, Rectangle, Movement, ViewPositionBase, WeaponLayer;

type
  {AB:TYPES}
  TDamageWeaponLayer = class(TWeaponLayer)
  public
        constructor Create(name: string; remoteInfo_: TRemoteInfo; movement_: TMovement; animationInterface: TAnimation; destroyedAnimationInterface: TAnimation; rectangle_: TRectangle; viewPosition: TViewPositionBase; username: string; actorSessionId: Integer; id: Integer; multiPlayerType: Integer);
  end;

implementation
uses
  CollidableDamageWeaponBehavior;


{AB:CODE}
    

constructor TDamageWeaponLayer.Create(name: string; remoteInfo_: TRemoteInfo; movement_: TMovement; animationInterface: TAnimation; destroyedAnimationInterface: TAnimation; rectangle_: TRectangle; viewPosition: TViewPositionBase; username: string; actorSessionId: Integer; id: Integer; multiPlayerType: Integer);
begin
        inherited Create(name, remoteInfo_, multiPlayerType, movement_, animationInterface, destroyedAnimationInterface, rectangle_, viewPosition);
        Self.setCollidableInferface(TCollidableDamageWeaponBehavior.Create(True));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

