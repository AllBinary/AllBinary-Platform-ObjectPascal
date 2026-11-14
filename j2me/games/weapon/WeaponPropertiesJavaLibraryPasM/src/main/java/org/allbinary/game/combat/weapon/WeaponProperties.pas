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
// package org.allbinary.game.combat.weapon
unit WeaponProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicDecimal, SimpleWeaponProperties;

type
  {AB:TYPES}
  TWeaponProperties = class(TSimpleWeaponProperties)
  public
    reloadTime: Int64;
    targetingTime: Int64;
    speed: TBasicDecimal;
    MAX: Int64;
    ZERO: SmallInt;
    class var NULL_WEAPON_PROPERTIES: TWeaponProperties;
    class var messageSent: Boolean;
    class var DAMAGE: string;
    class var RANGE: string;
    class var RELOAD: string;
    procedure InitFields;
        constructor Create(reloadTime: Int64; targetingTime: Int64; speed: Int64; damage: Integer; dissipation: SmallInt);
        procedure setReloadTime(reloadTime: Int64);
        function getReloadTime: Int64; virtual;
        procedure setTargetingTime(targetingTime: Int64);
        function getTargetingTime: Int64; virtual;
        function getSpeed: TBasicDecimal; virtual;
        procedure setSpeed(speed: TBasicDecimal); virtual;
        function getDamageI(range: Integer): Integer; virtual;
        function toStringArray: TArray<string>; virtual;
        function toString: string; override;
  end;

implementation
uses
  PreLogUtil, StringMaker, CommonSeps, CommonStrings;


{AB:CODE}

procedure TWeaponProperties.InitFields;
begin
  
  
  Self.speed := TBasicDecimal.ZERO_BIGDECIMAL;
  Self.MAX := 10240;
  Self.ZERO := 0;
end;
    

constructor TWeaponProperties.Create(reloadTime: Int64; targetingTime: Int64; speed: Int64; damage: Integer; dissipation: SmallInt);
var
  MESSAGE: string;
  commonStrings_: TCommonStrings;
  unscaledDamage: Int64;
  scaledDissipation: Integer;
  value: Int64;
begin
    inherited Create;
    InitFields;
        if (((speed) < (Self.MAX)) and ((speed) <> (0))) and (not (TWeaponProperties.messageSent)) then begin
            MESSAGE := 'Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: ';
            commonStrings_ := TCommonStrings.getInstance();
            TPreLogUtil.put(TStringMaker.Create().append(MESSAGE).appendlong(speed).toString(), TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
            TWeaponProperties.messageSent := True;
        end;
        Self.setReloadTime(reloadTime);
        Self.setTargetingTime(targetingTime);
        Self.setDamage(damage);
        Self.setDissipation(dissipation);
        Self.setSpeed(TBasicDecimal.Create(speed));
        if (dissipation) <> (Self.ZERO) then begin
            unscaledDamage := (Self.speed.getUnscaled()) * (damage);
            scaledDissipation := (dissipation) * (Self.speed.getScaledFactorValue());
            value := ((unscaledDamage) div (Int64(scaledDissipation)));
            Self.setRange((Integer(((value) * (9)))) div (10));
        end;
end;
    

procedure TWeaponProperties.setReloadTime(reloadTime: Int64);
begin
        Self.reloadTime := reloadTime;
end;
    

function TWeaponProperties.getReloadTime: Int64;
begin
        Exit(Self.reloadTime);
end;
    

procedure TWeaponProperties.setTargetingTime(targetingTime: Int64);
begin
        Self.targetingTime := targetingTime;
end;
    

function TWeaponProperties.getTargetingTime: Int64;
begin
        Exit(Self.targetingTime);
end;
    

function TWeaponProperties.getSpeed: TBasicDecimal;
begin
        Exit(Self.speed);
end;
    

procedure TWeaponProperties.setSpeed(speed: TBasicDecimal);
begin
        Self.speed := speed;
end;
    

function TWeaponProperties.getDamageI(range: Integer): Integer;
begin
        Exit((Self.getDamage()) - (((((Self.getDissipation()) * (range))) div (Self.speed.getScaled()))));
end;
    

function TWeaponProperties.toStringArray: TArray<string>;
var
  index: Integer;
  stringArray: TArray<string>;
  stringBuffer: TStringMaker;
begin
        index := 0;
        stringArray := TJava.NewArray<string>(3);
        stringBuffer := TStringMaker.Create();
        stringArray[TJava.PostInc(index)] := stringBuffer.append(TWeaponProperties.DAMAGE).appendint(Integer(Trunc(Self.getDamage()))).toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringArray[TJava.PostInc(index)] := stringBuffer.append(TWeaponProperties.RANGE).appendint(Integer(Trunc(Self.getRange()))).toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringArray[TJava.PostInc(index)] := stringBuffer.append(TWeaponProperties.RELOAD).appendlong(Self.getReloadTime()).toString();
        Exit(stringArray);
end;
    

function TWeaponProperties.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TWeaponProperties.DAMAGE).appendint(Integer(Trunc(Self.getDamage())));
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(TWeaponProperties.RANGE).appendint(Integer(Trunc(Self.getRange())));
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(TWeaponProperties.RELOAD).appendlong(Self.getReloadTime());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TWeaponProperties.NULL_WEAPON_PROPERTIES := TWeaponProperties.Create(0, 0, 0, 0, SmallInt(0));
  TWeaponProperties.messageSent := False;
  TWeaponProperties.DAMAGE := 'Damage: ';
  TWeaponProperties.RANGE := 'Range: ';
  TWeaponProperties.RELOAD := 'Reload: ';
  {AB:END}

end.

