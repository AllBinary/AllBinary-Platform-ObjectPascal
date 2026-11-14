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
// package org.allbinary.game.physics.acceleration
unit GravityUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicVelocityProperties;

type
  {AB:TYPES}
  TGravityUtil = class(TObject)
  public
    GAME_GRAVITY_VELOCITY: Integer;
    MAX_GAME_VELOCITY: Integer;
    class var instance: TGravityUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGravityUtil; static;
        procedure process(velocityProperties: TBasicVelocityProperties; customGravity: Integer);
  end;

implementation

{AB:CODE}

procedure TGravityUtil.InitFields;
begin
  Self.GAME_GRAVITY_VELOCITY := 1800;
  Self.MAX_GAME_VELOCITY := 18000;
end;

constructor TGravityUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGravityUtil.getInstance: TGravityUtil;
begin
        Exit(TGravityUtil.instance);
end;
    

procedure TGravityUtil.process(velocityProperties: TBasicVelocityProperties; customGravity: Integer);
begin
        velocityProperties.getVelocityYBasicDecimalP().addint(customGravity);
end;

initialization
  {AB:INITIALIZATION}
  TGravityUtil.instance := TGravityUtil.Create();
  {AB:END}

end.

