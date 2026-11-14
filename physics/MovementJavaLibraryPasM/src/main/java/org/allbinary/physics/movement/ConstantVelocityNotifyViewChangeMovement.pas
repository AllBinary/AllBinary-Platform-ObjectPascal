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
unit ConstantVelocityNotifyViewChangeMovement;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameLayer, BasicVelocityProperties, AllBinaryLayer, BasicDecimal, AxisMathVectorUtil, Movement;

type
  {AB:TYPES}
  TConstantVelocityNotifyViewChangeMovement = class(TMovement)
  public
    basicVelocityProperties: TBasicVelocityProperties;
    speedBasicDecimal: TBasicDecimal;
    axisMathVectorUtil: TAxisMathVectorUtil;
    procedure InitFields;
        constructor Create;
        procedure init(speedBasicDecimal: TBasicDecimal; angle: Integer; otherAngle: Integer); override;
        procedure moveOutsideRadius(layer: TAllBinaryLayer; radius: Int64; angle: Integer; otherAngle: Integer); virtual;
        procedure process(layer: TAllBinaryGameLayer); override;
        procedure stop; override;
  end;

implementation
uses
  AngleFactory;


{AB:CODE}

procedure TConstantVelocityNotifyViewChangeMovement.InitFields;
begin
  
  
  Self.axisMathVectorUtil := TAxisMathVectorUtil.getInstance();
end;
    

constructor TConstantVelocityNotifyViewChangeMovement.Create;
begin
    inherited Create;
    InitFields;
        Self.speedBasicDecimal := TBasicDecimal.ZERO_BIGDECIMAL;
        Self.basicVelocityProperties := TBasicVelocityProperties.Create();
end;
    

procedure TConstantVelocityNotifyViewChangeMovement.init(speedBasicDecimal: TBasicDecimal; angle: Integer; otherAngle: Integer);
var
  angleFactory_: TAngleFactory;
begin
        Self.speedBasicDecimal := speedBasicDecimal;
        angleFactory_ := TAngleFactory.getInstance();
        Self.basicVelocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory_.getAt(angle), angleFactory_.getAt(otherAngle));
end;
    

procedure TConstantVelocityNotifyViewChangeMovement.moveOutsideRadius(layer: TAllBinaryLayer; radius: Int64; angle: Integer; otherAngle: Integer);
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
procedure TConstantVelocityNotifyViewChangeMovement.process(layer: TAllBinaryGameLayer);
var
  x: Integer;
  y: Integer;
  z: Integer;
begin
        x := Self.basicVelocityProperties.getVelocityXBasicDecimalP().getScaled();
        y := Self.basicVelocityProperties.getVelocityYBasicDecimalP().getScaled();
        z := Self.basicVelocityProperties.getVelocityZBasicDecimalP().getScaled();
        layer.moveDXYZ(x, y, z);
        if (((x) <> (0)) or ((y) <> (0))) or ((z) <> (0)) then begin
            layer.onViewPositionChangeEvent();
        end;
end;
    

procedure TConstantVelocityNotifyViewChangeMovement.stop;
begin
        Self.basicVelocityProperties.zero();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

