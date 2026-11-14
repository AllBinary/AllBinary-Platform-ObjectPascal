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
// package org.allbinary.logic.math
unit BasicDecimal;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TBasicDecimal = class(TObject)
  public
    units: Int64;
    scaled: Integer;
    factor: Integer;
    factorValue: Integer;
    class var ZERO_BIGDECIMAL: TBasicDecimal;
    procedure InitFields;
        class function createBigDecimal(bigDecimal: TBasicDecimal): TBasicDecimal; static;
        constructor Create(units: Int64);
        procedure setint(value: Integer); virtual;
        procedure setlong(value: Int64); virtual;
        procedure set_(bigDecimal: TBasicDecimal); virtual;
        procedure addint(value: Integer); virtual;
        procedure addlong(value: Int64); virtual;
        procedure add(bigDecimal: TBasicDecimal); virtual;
        procedure subtractint(value: Integer); virtual;
        procedure subtractlong(value: Int64); virtual;
        procedure subtract(bigDecimal: TBasicDecimal); virtual;
        procedure multiplyint(value: Integer); virtual;
        procedure multiplylong(value: Int64); virtual;
        procedure multiply(bigDecimal: TBasicDecimal); virtual;
        procedure divideint(value: Integer); virtual;
        procedure dividelong(value: Int64); virtual;
        procedure divide(bigDecimal: TBasicDecimal); virtual;
        function getUnscaled: Int64; virtual;
        procedure updateScaled;
        function getScaled: Integer; virtual;
        function toString: string; virtual;
        function getScaledFactor: Integer; virtual;
        function getScaledFactorValue: Integer; virtual;
  end;

implementation
uses
  ScaleFactorFactory;


{AB:CODE}

procedure TBasicDecimal.InitFields;
begin
  
  
  Self.factor := TScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR;
  Self.factorValue := TScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE;
end;
    

class function TBasicDecimal.createBigDecimal(bigDecimal: TBasicDecimal): TBasicDecimal;
begin
        Exit(TBasicDecimal.Create(bigDecimal.getUnscaled()));
end;
    

constructor TBasicDecimal.Create(units: Int64);
begin
    inherited Create;
    InitFields;
        Self.units := units;
        Self.updateScaled();
end;
    

procedure TBasicDecimal.setint(value: Integer);
begin
        Self.units := Int64(value);
        Self.updateScaled();
end;
    

procedure TBasicDecimal.setlong(value: Int64);
begin
        Self.units := value;
        Self.updateScaled();
end;
    

procedure TBasicDecimal.set_(bigDecimal: TBasicDecimal);
begin
        Self.units := bigDecimal.getUnscaled();
        Self.updateScaled();
end;
    

procedure TBasicDecimal.addint(value: Integer);
begin
        Self.units := (Self.units) + (Int64(value));
        Self.updateScaled();
end;
    

procedure TBasicDecimal.addlong(value: Int64);
begin
        Self.units := (Self.units) + (value);
        Self.updateScaled();
end;
    

procedure TBasicDecimal.add(bigDecimal: TBasicDecimal);
begin
        Self.units := (Self.units) + (bigDecimal.getUnscaled());
        Self.updateScaled();
end;
    

procedure TBasicDecimal.subtractint(value: Integer);
begin
        Self.units := (Self.units) - (Int64(value));
        Self.updateScaled();
end;
    

procedure TBasicDecimal.subtractlong(value: Int64);
begin
        Self.units := (Self.units) - (value);
        Self.updateScaled();
end;
    

procedure TBasicDecimal.subtract(bigDecimal: TBasicDecimal);
begin
        Self.units := (Self.units) - (bigDecimal.getUnscaled());
        Self.updateScaled();
end;
    

procedure TBasicDecimal.multiplyint(value: Integer);
begin
        Self.units := (Self.units) * (Int64(value));
        Self.updateScaled();
end;
    

procedure TBasicDecimal.multiplylong(value: Int64);
begin
        Self.units := (Self.units) * (value);
        Self.updateScaled();
end;
    

procedure TBasicDecimal.multiply(bigDecimal: TBasicDecimal);
begin
        Self.units := (Self.units) * (bigDecimal.getUnscaled());
        Self.updateScaled();
end;
    

procedure TBasicDecimal.divideint(value: Integer);
begin
        Self.units := (Self.units) div (Int64(value));
        Self.updateScaled();
end;
    

procedure TBasicDecimal.dividelong(value: Int64);
begin
        Self.units := (Self.units) div (value);
        Self.updateScaled();
end;
    

procedure TBasicDecimal.divide(bigDecimal: TBasicDecimal);
begin
        Self.units := (Self.units) div (bigDecimal.getUnscaled());
        Self.updateScaled();
end;
    

function TBasicDecimal.getUnscaled: Int64;
begin
        Exit(Self.units);
end;
    

procedure TBasicDecimal.updateScaled;
begin
        Self.scaled := Integer(((Self.units) div (Int64(Self.factorValue))));
end;
    

function TBasicDecimal.getScaled: Integer;
begin
        Exit(Self.scaled);
end;
    

function TBasicDecimal.toString: string;
begin
        Exit(IntToStr(Self.units));
end;
    

function TBasicDecimal.getScaledFactor: Integer;
begin
        Exit(Self.factor);
end;
    

function TBasicDecimal.getScaledFactorValue: Integer;
begin
        Exit(Self.factorValue);
end;

initialization
  {AB:INITIALIZATION}
  TBasicDecimal.ZERO_BIGDECIMAL := TBasicDecimal.Create(0);
  {AB:END}

end.

