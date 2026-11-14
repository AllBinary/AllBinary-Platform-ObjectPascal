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
unit XYOscillateVelocityMovement;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameLayer, BasicDecimal, BasicConstantVelocityMovement;

type
  {AB:TYPES}
  TXYOscillateVelocityMovement = class(TBasicConstantVelocityMovement)
  public
    oscillateMin: Integer;
    oscillateMax: Integer;
    oscillate: Integer;
    oscillatePositive: Boolean;
    procedure InitFields;
        constructor Create(speedBasicDecimal: TBasicDecimal; oscillateMin: Integer; oscillateMax: Integer);
        procedure process(layer: TAllBinaryGameLayer); override;
  end;

implementation
uses
  VelocityProperties;


{AB:CODE}

procedure TXYOscillateVelocityMovement.InitFields;
begin
  
  
  
  
end;
    

constructor TXYOscillateVelocityMovement.Create(speedBasicDecimal: TBasicDecimal; oscillateMin: Integer; oscillateMax: Integer);
begin
        inherited Create(speedBasicDecimal, TVelocityProperties.Create(Integer(Trunc(speedBasicDecimal.getUnscaled())), Integer(Trunc(speedBasicDecimal.getUnscaled()))));
        InitFields;
        Self.oscillateMin := oscillateMin;
        Self.oscillateMax := oscillateMax;
end;
    

// throws Exception
procedure TXYOscillateVelocityMovement.process(layer: TAllBinaryGameLayer);
begin
        inherited process(layer);
        if (Self.oscillate) < (Self.oscillateMin) then begin
            Self.oscillatePositive := True;
            Self.getVelocityProperties().getVelocityYBasicDecimalP().addint(3000);
        end else if (Self.oscillate) > (Self.oscillateMax) then begin
            Self.oscillatePositive := False;
            Self.getVelocityProperties().getVelocityYBasicDecimalP().subtractint(3000);
        end;
        if Self.oscillatePositive then begin
            Inc(Self.oscillate);
            Self.getVelocityProperties().getVelocityXBasicDecimalP().addint(5000);
        end else begin
            Dec(Self.oscillate);
            Self.getVelocityProperties().getVelocityXBasicDecimalP().subtractint(5000);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

