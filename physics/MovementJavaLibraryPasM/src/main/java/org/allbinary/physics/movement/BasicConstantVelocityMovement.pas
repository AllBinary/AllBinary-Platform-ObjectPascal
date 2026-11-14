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
unit BasicConstantVelocityMovement;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameLayer, BasicVelocityProperties, VelocityInterfaceCompositeInterface, AllBinaryLayer, BasicDecimal, AxisMathVectorUtil, Movement;

type
  {AB:TYPES}
  TBasicConstantVelocityMovement = class(TMovement, IVelocityInterfaceCompositeInterface)
  public
    velocityProperties: TBasicVelocityProperties;
    speedBasicDecimal: TBasicDecimal;
    axisMathVectorUtil: TAxisMathVectorUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(basicDecimal_: TBasicDecimal; velocityProperties: TBasicVelocityProperties);
        procedure init(speedBasicDecimal: TBasicDecimal; angle: Integer; otherAngle: Integer); virtual;
        procedure moveOutsideRadius(layer: TAllBinaryLayer; radius: Int64; angle: Integer; otherAngle: Integer); virtual;
        procedure process(layer: TAllBinaryGameLayer); virtual;
        function toString: string; override;
        procedure stop; virtual;
        function getVelocityProperties: TBasicVelocityProperties; virtual;
        procedure setVelocityProperties(velocityProperties: TBasicVelocityProperties); virtual;
        procedure setSpeedBasicDecimal(speedBasicDecimal: TBasicDecimal); virtual;
        function getSpeedBasicDecimal: TBasicDecimal; virtual;
  end;

implementation
uses
  AngleFactory;


{AB:CODE}

procedure TBasicConstantVelocityMovement.InitFields;
begin
  
  Self.speedBasicDecimal := TBasicDecimal.ZERO_BIGDECIMAL;
  Self.axisMathVectorUtil := TAxisMathVectorUtil.getInstance();
end;

function TBasicConstantVelocityMovement.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicConstantVelocityMovement.Create(basicDecimal_: TBasicDecimal; velocityProperties: TBasicVelocityProperties);
begin
    inherited Create;
    InitFields;
        Self.setSpeedBasicDecimal(basicDecimal_);
        Self.velocityProperties := velocityProperties;
end;
    

procedure TBasicConstantVelocityMovement.init(speedBasicDecimal: TBasicDecimal; angle: Integer; otherAngle: Integer);
var
  angleFactory_: TAngleFactory;
begin
        Self.speedBasicDecimal := speedBasicDecimal;
        angleFactory_ := TAngleFactory.getInstance();
        Self.velocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory_.getAt(angle), angleFactory_.getAt(otherAngle));
end;
    

procedure TBasicConstantVelocityMovement.moveOutsideRadius(layer: TAllBinaryLayer; radius: Int64; angle: Integer; otherAngle: Integer);
var
  scaleFactorValue: Integer;
  xVector: Integer;
  yVector: Integer;
  zVector: Integer;
begin
        scaleFactorValue := Self.speedBasicDecimal.getScaledFactorValue();
        xVector := Integer(Trunc((TJava.Divide(Self.axisMathVectorUtil.calculateX(radius, angle), scaleFactorValue))));
        yVector := Integer(Trunc((TJava.Divide(Self.axisMathVectorUtil.calculateY(radius, angle), scaleFactorValue))));
        zVector := Integer(Trunc((TJava.Divide(Self.axisMathVectorUtil.calculateZ(radius, otherAngle), scaleFactorValue))));
        layer.moveDXYZ(xVector, yVector, zVector);
end;
    

// throws Exception
procedure TBasicConstantVelocityMovement.process(layer: TAllBinaryGameLayer);
begin
        layer.moveDXYZ(Self.velocityProperties.getVelocityXBasicDecimalP().getScaled(), Self.velocityProperties.getVelocityYBasicDecimalP().getScaled(), Self.velocityProperties.getVelocityZBasicDecimalP().getScaled());
end;
    

function TBasicConstantVelocityMovement.toString: string;
begin
        Exit(Self.velocityProperties.toString());
end;
    

procedure TBasicConstantVelocityMovement.stop;
begin
        Self.velocityProperties.zero();
end;
    

function TBasicConstantVelocityMovement.getVelocityProperties: TBasicVelocityProperties;
begin
        Exit(Self.velocityProperties);
end;
    

procedure TBasicConstantVelocityMovement.setVelocityProperties(velocityProperties: TBasicVelocityProperties);
begin
        Self.velocityProperties := velocityProperties;
end;
    

procedure TBasicConstantVelocityMovement.setSpeedBasicDecimal(speedBasicDecimal: TBasicDecimal);
begin
        Self.speedBasicDecimal := speedBasicDecimal;
end;
    

function TBasicConstantVelocityMovement.getSpeedBasicDecimal: TBasicDecimal;
begin
        Exit(Self.speedBasicDecimal);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

