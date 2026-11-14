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
// package org.allbinary.physics.movement
unit BasicGravityConstantVelocityMovement;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameLayer, GravityUtil, BasicDecimal, BasicConstantVelocityMovement;

type
  {AB:TYPES}
  TBasicGravityConstantVelocityMovement = class(TBasicConstantVelocityMovement)
  public
    gravityUtil: TGravityUtil;
    procedure InitFields;
        constructor Create(speedBasicDecimal: TBasicDecimal);
        procedure process(layer: TAllBinaryGameLayer); override;
  end;

implementation
uses
  VelocityProperties;


{AB:CODE}

procedure TBasicGravityConstantVelocityMovement.InitFields;
begin
  Self.gravityUtil := TGravityUtil.getInstance();
end;
    

constructor TBasicGravityConstantVelocityMovement.Create(speedBasicDecimal: TBasicDecimal);
begin
        inherited Create(speedBasicDecimal, TVelocityProperties.Create(Integer(Trunc(speedBasicDecimal.getUnscaled())), Integer(Trunc(speedBasicDecimal.getUnscaled()))));
        InitFields;
end;
    

// throws Exception
procedure TBasicGravityConstantVelocityMovement.process(layer: TAllBinaryGameLayer);
begin
        inherited process(layer);
        Self.gravityUtil.process(Self.getVelocityProperties(), Self.gravityUtil.GAME_GRAVITY_VELOCITY);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

