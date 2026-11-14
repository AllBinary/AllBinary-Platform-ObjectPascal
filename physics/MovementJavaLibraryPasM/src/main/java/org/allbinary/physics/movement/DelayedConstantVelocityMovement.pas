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
unit DelayedConstantVelocityMovement;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameLayer, BasicVelocityProperties, BasicDecimal, TimeDelayHelper, BasicConstantVelocityMovement;

type
  {AB:TYPES}
  TDelayedConstantVelocityMovement = class(TBasicConstantVelocityMovement)
  public
    timeDelayHelper: TTimeDelayHelper;
    procedure InitFields;
        constructor Create(basicDecimal_: TBasicDecimal; velocityProperties: TBasicVelocityProperties);
        procedure init(speedBasicDecimal: TBasicDecimal; angle: Integer; otherAngle: Integer); override;
        procedure process(layer: TAllBinaryGameLayer); override;
  end;

implementation
uses
  GameTickTimeDelayHelperFactory;


{AB:CODE}

procedure TDelayedConstantVelocityMovement.InitFields;
begin
  Self.timeDelayHelper := TTimeDelayHelper.Create(60);
end;
    

constructor TDelayedConstantVelocityMovement.Create(basicDecimal_: TBasicDecimal; velocityProperties: TBasicVelocityProperties);
begin
        inherited Create(basicDecimal_, velocityProperties);
        InitFields;
end;
    

procedure TDelayedConstantVelocityMovement.init(speedBasicDecimal: TBasicDecimal; angle: Integer; otherAngle: Integer);
begin
end;
    

// throws Exception
procedure TDelayedConstantVelocityMovement.process(layer: TAllBinaryGameLayer);
begin
        if Self.timeDelayHelper.isTime(TGameTickTimeDelayHelperFactory.getInstance().startTime) then begin
            inherited process(layer);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

