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
// package org.allbinary.game.physics.velocity
unit BasicVelocityProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Direction, DirectionUtil, LogUtil, BasicDecimal, AxisMathVectorUtil, Angle, BasicVelocityInterface;

type
  {AB:TYPES}
  TBasicVelocityProperties = class(TInterfacedObject, IBasicVelocityInterface)
  public
    logUtil: TLogUtil;
    velocityXBasicDecimal: TBasicDecimal;
    velocityYBasicDecimal: TBasicDecimal;
    velocityZBasicDecimal: TBasicDecimal;
    axisMathVectorUtil: TAxisMathVectorUtil;
    directionUtil: TDirectionUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure zero; virtual;
        function getVelocityXBasicDecimalP: TBasicDecimal; virtual;
        function getVelocityYBasicDecimalP: TBasicDecimal; virtual;
        function getVelocityZBasicDecimalP: TBasicDecimal; virtual;
        procedure setVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal: TBasicDecimal; direction_: TDirection; otherDirection: TDirection); virtual;
        procedure setVelocityWithDirection(magnitude: Int64; direction_: TDirection; otherDirection: TDirection); virtual;
        procedure addVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal: TBasicDecimal; direction_: TDirection; otherDirection: TDirection); virtual;
        procedure addVelocityWithDirection(magnitude: Int64; direction_: TDirection; otherDirection: TDirection); virtual;
        procedure setVelocityWithBigDecimal(magnitudeBasicDecimal: TBasicDecimal; angle_: TAngle; otherAngle: TAngle); virtual;
        procedure addVelocityWithBigDecimal(magnitudeBasicDecimal: TBasicDecimal; angle_: TAngle; otherAngle: TAngle); virtual;
        procedure setVelocity(magnitude: Int64; angle_: TAngle; otherAngle: TAngle); virtual;
        procedure addVelocity(magnitude: Int64; angle_: TAngle; otherAngle: TAngle); virtual;
        procedure setVelocityi(magnitude: Int64; angle_: Integer; otherAngle: Integer); virtual;
        procedure addVelocityi(magnitude: Int64; angle_: Integer; otherAngle: Integer); virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker, StringUtil, PositionStrings, CommonSeps;


{AB:CODE}

procedure TBasicVelocityProperties.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  Self.axisMathVectorUtil := TAxisMathVectorUtil.getInstance();
  Self.directionUtil := TDirectionUtil.getInstance();
end;

function TBasicVelocityProperties.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicVelocityProperties.Create;
begin
    inherited Create;
    InitFields;
        Self.velocityXBasicDecimal := TBasicDecimal.Create(0);
        Self.velocityYBasicDecimal := TBasicDecimal.Create(0);
        Self.velocityZBasicDecimal := TBasicDecimal.Create(0);
end;
    

procedure TBasicVelocityProperties.zero;
begin
        Self.velocityXBasicDecimal.setint(0);
        Self.velocityYBasicDecimal.setint(0);
        Self.velocityZBasicDecimal.setint(0);
end;
    

function TBasicVelocityProperties.getVelocityXBasicDecimalP: TBasicDecimal;
begin
        Exit(Self.velocityXBasicDecimal);
end;
    

function TBasicVelocityProperties.getVelocityYBasicDecimalP: TBasicDecimal;
begin
        Exit(Self.velocityYBasicDecimal);
end;
    

function TBasicVelocityProperties.getVelocityZBasicDecimalP: TBasicDecimal;
begin
        Exit(Self.velocityZBasicDecimal);
end;
    

procedure TBasicVelocityProperties.setVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal: TBasicDecimal; direction_: TDirection; otherDirection: TDirection);
var
  angle_: TAngle;
  otherAngle: TAngle;
begin
        angle_ := Self.directionUtil.getAngle(direction_);
        otherAngle := Self.directionUtil.getAngle(otherDirection);
        Self.setVelocityWithBigDecimal(magnitudeBasicDecimal, angle_, otherAngle);
end;
    

procedure TBasicVelocityProperties.setVelocityWithDirection(magnitude: Int64; direction_: TDirection; otherDirection: TDirection);
var
  angle_: TAngle;
  otherAngle: TAngle;
begin
        angle_ := Self.directionUtil.getAngle(direction_);
        otherAngle := Self.directionUtil.getAngle(otherDirection);
        Self.setVelocity(magnitude, angle_, otherAngle);
end;
    

procedure TBasicVelocityProperties.addVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal: TBasicDecimal; direction_: TDirection; otherDirection: TDirection);
var
  angle_: TAngle;
  otherAngle: TAngle;
begin
        angle_ := Self.directionUtil.getAngle(direction_);
        otherAngle := Self.directionUtil.getAngle(otherDirection);
        Self.addVelocityWithBigDecimal(magnitudeBasicDecimal, angle_, otherAngle);
end;
    

procedure TBasicVelocityProperties.addVelocityWithDirection(magnitude: Int64; direction_: TDirection; otherDirection: TDirection);
var
  angle_: TAngle;
  otherAngle: TAngle;
begin
        angle_ := Self.directionUtil.getAngle(direction_);
        otherAngle := Self.directionUtil.getAngle(otherDirection);
        Self.addVelocity(magnitude, angle_, otherAngle);
end;
    

procedure TBasicVelocityProperties.setVelocityWithBigDecimal(magnitudeBasicDecimal: TBasicDecimal; angle_: TAngle; otherAngle: TAngle);
var
  magnitude: Int64;
begin
        magnitude := magnitudeBasicDecimal.getUnscaled();
        Self.setVelocity(magnitude, angle_, otherAngle);
end;
    

procedure TBasicVelocityProperties.addVelocityWithBigDecimal(magnitudeBasicDecimal: TBasicDecimal; angle_: TAngle; otherAngle: TAngle);
var
  magnitude: Int64;
begin
        magnitude := magnitudeBasicDecimal.getUnscaled();
        Self.addVelocity(magnitude, angle_, otherAngle);
end;
    

procedure TBasicVelocityProperties.setVelocity(magnitude: Int64; angle_: TAngle; otherAngle: TAngle);
begin
        Self.setVelocityi(magnitude, Integer(Trunc(angle_.getValue())), Integer(Trunc(otherAngle.getValue())));
end;
    

procedure TBasicVelocityProperties.addVelocity(magnitude: Int64; angle_: TAngle; otherAngle: TAngle);
begin
        Self.addVelocityi(magnitude, Integer(Trunc(angle_.getValue())), Integer(Trunc(otherAngle.getValue())));
end;
    

procedure TBasicVelocityProperties.setVelocityi(magnitude: Int64; angle_: Integer; otherAngle: Integer);
var
  xVector: Int64;
  yVector: Int64;
  zVector: Int64;
begin
        xVector := ((Self.axisMathVectorUtil.calculateX(magnitude, angle_)) div (Self.velocityXBasicDecimal.getScaledFactorValue()));
        yVector := ((Self.axisMathVectorUtil.calculateY(magnitude, angle_)) div (Self.velocityYBasicDecimal.getScaledFactorValue()));
        zVector := ((Self.axisMathVectorUtil.calculateZ(magnitude, otherAngle)) div (Self.velocityZBasicDecimal.getScaledFactorValue()));
        Self.velocityXBasicDecimal.setlong(xVector);
        Self.velocityYBasicDecimal.setlong(yVector);
        Self.velocityZBasicDecimal.setlong(zVector);
end;
    

procedure TBasicVelocityProperties.addVelocityi(magnitude: Int64; angle_: Integer; otherAngle: Integer);
var
  xVector: Int64;
  yVector: Int64;
  zVector: Int64;
begin
        xVector := ((Self.axisMathVectorUtil.calculateX(magnitude, angle_)) div (Self.velocityXBasicDecimal.getScaledFactorValue()));
        yVector := ((Self.axisMathVectorUtil.calculateY(magnitude, angle_)) div (Self.velocityYBasicDecimal.getScaledFactorValue()));
        zVector := ((Self.axisMathVectorUtil.calculateZ(magnitude, otherAngle)) div (Self.velocityZBasicDecimal.getScaledFactorValue()));
        Self.velocityXBasicDecimal.addlong(xVector);
        Self.velocityYBasicDecimal.addlong(yVector);
        Self.velocityZBasicDecimal.addlong(zVector);
end;
    

function TBasicVelocityProperties.toString: string;
var
  commonSeps_: TCommonSeps;
  positionStrings_: TPositionStrings;
  stringBuffer: TStringMaker;
  stringUtil_: TStringUtil;
begin
        commonSeps_ := TCommonSeps.getInstance();
        positionStrings_ := TPositionStrings.getInstance();
        stringBuffer := TStringMaker.Create();
        stringUtil_ := TStringUtil.getInstance();
        stringBuffer.append('Velocity ');
        stringBuffer.append(positionStrings_.X_LABEL);
        stringBuffer.append(stringUtil_.toString(Self.velocityXBasicDecimal));
        stringBuffer.append(commonSeps_.SPACE);
        stringBuffer.append(positionStrings_.Y_LABEL);
        stringBuffer.append(stringUtil_.toString(Self.velocityYBasicDecimal));
        stringBuffer.append(commonSeps_.SPACE);
        stringBuffer.append(positionStrings_.Z_LABEL);
        stringBuffer.append(stringUtil_.toString(Self.velocityZBasicDecimal));
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

