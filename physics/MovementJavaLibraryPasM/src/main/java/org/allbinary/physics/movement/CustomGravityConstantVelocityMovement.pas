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
unit CustomGravityConstantVelocityMovement;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameLayer, GravityUtil, BasicDecimal, BasicConstantVelocityMovement;

type
  {AB:TYPES}
  TCustomGravityConstantVelocityMovement = class(TBasicConstantVelocityMovement)
  public
    customGravity: Integer;
    gravityUtil: TGravityUtil;
    procedure InitFields;
        constructor Create(speedBasicDecimal: TBasicDecimal; customGravity: Integer);
        procedure process(layer: TAllBinaryGameLayer); override;
  end;

implementation
uses
  VelocityProperties;


{AB:CODE}

procedure TCustomGravityConstantVelocityMovement.InitFields;
begin
  
  Self.gravityUtil := TGravityUtil.getInstance();
end;
    

constructor TCustomGravityConstantVelocityMovement.Create(speedBasicDecimal: TBasicDecimal; customGravity: Integer);
begin
        inherited Create(speedBasicDecimal, TVelocityProperties.Create(Integer(Trunc(speedBasicDecimal.getUnscaled())), Integer(Trunc(speedBasicDecimal.getUnscaled()))));
        InitFields;
        Self.customGravity := customGravity;
end;
    

// throws Exception
procedure TCustomGravityConstantVelocityMovement.process(layer: TAllBinaryGameLayer);
var
  velocityProperties_: TVelocityProperties;
begin
        inherited process(layer);
        Self.gravityUtil.process(Self.getVelocityProperties(), Self.customGravity);
        velocityProperties_ := TVelocityProperties(TJava.ToObject(Self.getVelocityProperties()));
        velocityProperties_.limitMaxYForwardVelocity();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

