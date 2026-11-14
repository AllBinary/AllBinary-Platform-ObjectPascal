// Generated Code Do Not Modify
// package org.allbinary.physics.movement
unit PreciseConstantVelocityMovement;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameLayer, BasicVelocityProperties, BasicDecimal, BasicConstantVelocityMovement;

type
  {AB:TYPES}
  TPreciseConstantVelocityMovement = class(TBasicConstantVelocityMovement)
  public
    accumulatedX: Integer;
    accumulatedY: Integer;
    accumulatedZ: Integer;
    factorValue: Integer;
    procedure InitFields;
        constructor Create(basicDecimal_: TBasicDecimal; velocityProperties: TBasicVelocityProperties);
        procedure init(speedBasicDecimal: TBasicDecimal; angle: Integer; otherAngle: Integer); override;
        procedure process(layer: TAllBinaryGameLayer); override;
  end;

implementation
uses
  MathUtil, ScaleFactorFactory;


{AB:CODE}

procedure TPreciseConstantVelocityMovement.InitFields;
begin
  
  
  
  Self.factorValue := TScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE;
end;
    

constructor TPreciseConstantVelocityMovement.Create(basicDecimal_: TBasicDecimal; velocityProperties: TBasicVelocityProperties);
begin
        inherited Create(basicDecimal_, velocityProperties);
        InitFields;
end;
    

procedure TPreciseConstantVelocityMovement.init(speedBasicDecimal: TBasicDecimal; angle: Integer; otherAngle: Integer);
begin
end;
    

// throws Exception
procedure TPreciseConstantVelocityMovement.process(layer: TAllBinaryGameLayer);
var
  mathUtil_: TMathUtil;
  velocityProperties: TBasicVelocityProperties;
begin
        mathUtil_ := TMathUtil.getInstance();
        velocityProperties := Self.getVelocityProperties();
        Self.accumulatedX := Integer(Trunc(((Self.accumulatedX) + (velocityProperties.getVelocityXBasicDecimalP().getUnscaled()))));
        Self.accumulatedY := Integer(Trunc(((Self.accumulatedY) + (velocityProperties.getVelocityYBasicDecimalP().getUnscaled()))));
        Self.accumulatedZ := Integer(Trunc(((Self.accumulatedZ) + (velocityProperties.getVelocityZBasicDecimalP().getUnscaled()))));
        layer.moveDXYZ((Self.accumulatedX) div (Self.factorValue), (Self.accumulatedY) div (Self.factorValue), (Self.accumulatedZ) div (Self.factorValue));
        if (mathUtil_.abs(Self.accumulatedX)) > (Self.factorValue) then begin
            Self.accumulatedX := 0;
        end;
        if (mathUtil_.abs(Self.accumulatedY)) > (Self.factorValue) then begin
            Self.accumulatedY := 0;
        end;
        if (mathUtil_.abs(Self.accumulatedZ)) > (Self.factorValue) then begin
            Self.accumulatedZ := 0;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

