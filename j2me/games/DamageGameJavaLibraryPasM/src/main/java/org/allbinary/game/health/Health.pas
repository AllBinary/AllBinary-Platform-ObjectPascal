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
// package org.allbinary.game.health
unit Health;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HealthListenerInterface, HealthInterface;

type
  {AB:TYPES}
  THealth = class(TInterfacedObject, IHealthInterface)
  public
    health: Integer;
    maxHealth: Integer;
    healthListenerInterface: IHealthListenerInterface;
    class var NULL_HEALTH: THealth;
    class var NAME: string;
    class var HEALTH_LABEL: string;
    class var MAX_HEALTH_LABEL: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(maxHealth: Integer);
        procedure heal(ahealth: Integer); virtual;
        procedure healMax; virtual;
        function isDamaged: Boolean; virtual;
        procedure damage(ahealth: Integer); virtual;
        function isAlive: Boolean; virtual;
        function getMaxHealth: Integer; virtual;
        procedure setMaxHealth(maxHealth: Integer); virtual;
        procedure setHealth(health_: Integer); virtual;
        function getHealth: Integer; virtual;
        procedure addListener(healthGraphic: IHealthListenerInterface); virtual;
        function toString: string; virtual;
  end;

implementation
uses
  NullHealthListener, ForcedLogUtil, StringMaker, CommonSeps;


{AB:CODE}

procedure THealth.InitFields;
begin
  
  
  Self.healthListenerInterface := TNullHealthListener.NULL_HEALTH_LISTENER;
end;

function THealth.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor THealth.Create(maxHealth: Integer);
begin
    inherited Create;
    InitFields;
        Self.setMaxHealth(maxHealth);
        Self.setHealth(maxHealth);
end;
    

procedure THealth.heal(ahealth: Integer);
var
  newHealth: Integer;
begin
        newHealth := (Self.getHealth()) + (ahealth);
        if (newHealth) > (Self.getMaxHealth()) then begin
            Self.setHealth(Self.getMaxHealth());
        end else begin
            Self.setHealth(newHealth);
        end;
end;
    

procedure THealth.healMax;
begin
        Self.setHealth(Self.getMaxHealth());
end;
    

function THealth.isDamaged: Boolean;
begin
        if (Self.getHealth()) <> (Self.getMaxHealth()) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

procedure THealth.damage(ahealth: Integer);
var
  stringBuffer: TStringMaker;
  health_: Integer;
begin
        if (ahealth) < (0) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('******* Trying to heal when damaging. Damage: ');
            stringBuffer.appendint(ahealth);
            stringBuffer.append(TCommonSeps.getInstance().SPACE);
            stringBuffer.append(Self.toString());
            TForcedLogUtil.log(stringBuffer.toString(), TJava.Box(Self));
            Exit;
        end;
        health_ := (Self.getHealth()) - (ahealth);
        Self.setHealth(health_);
end;
    

function THealth.isAlive: Boolean;
begin
        if (Self.getHealth()) <= (0) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;
    

function THealth.getMaxHealth: Integer;
begin
        Exit(Self.maxHealth);
end;
    

procedure THealth.setMaxHealth(maxHealth: Integer);
begin
        Self.maxHealth := maxHealth;
end;
    

procedure THealth.setHealth(health_: Integer);
begin
        if (health_) > (Self.getMaxHealth()) then begin
            Self.health := Self.getMaxHealth();
        end else if (health_) < (0) then begin
            Self.health := 0;
        end else begin
            Self.health := health_;
        end;
        if (Self.healthListenerInterface) <> (nil) then begin
            Self.healthListenerInterface.onHealthChange();
        end;
end;
    

function THealth.getHealth: Integer;
begin
        Exit(Self.health);
end;
    

procedure THealth.addListener(healthGraphic: IHealthListenerInterface);
begin
        Self.healthListenerInterface := healthGraphic;
end;
    

function THealth.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(THealth.HEALTH_LABEL);
        stringBuffer.appendint(Self.health);
        stringBuffer.append(THealth.MAX_HEALTH_LABEL);
        stringBuffer.appendint(Self.maxHealth);
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  THealth.NULL_HEALTH := THealth.Create(0);
  THealth.NAME := 'Health Resource';
  THealth.HEALTH_LABEL := 'Health: ';
  THealth.MAX_HEALTH_LABEL := ' Max: ';
  {AB:END}

end.

