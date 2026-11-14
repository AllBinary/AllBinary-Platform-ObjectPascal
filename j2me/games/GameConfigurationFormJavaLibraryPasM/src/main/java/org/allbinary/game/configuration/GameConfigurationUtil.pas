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
// package org.allbinary.game.configuration
unit GameConfigurationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, GameOptionsForm, GameConfigurationGauge, GameConfiguration;

type
  {AB:TYPES}
  TGameConfigurationUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    GAUGE_UPDATE: string;
    FROM: string;
    TO_: string;
    COMPETITION_VALUE: Integer;
    class var instance: TGameConfigurationUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGameConfigurationUtil; static;
        procedure change(gameOptionsForm_: TGameOptionsForm; gauge: TGameConfigurationGauge); virtual;
        procedure update(gauge: TGameConfigurationGauge); virtual;
        procedure setDefault(gauge: TGameConfigurationGauge); virtual;
        procedure updateChallange(gameOptionsForm_: TGameOptionsForm; gameConfiguration_: TGameConfiguration); virtual;
        procedure updateCompetitionValue; virtual;
        function getCompetitionValue: Integer; virtual;
  end;

implementation
uses
  GameConfigurationSingleton, GameConfigurationCentral, Item, SmallIntegerSingletonFactory, StringMaker;


{AB:CODE}

procedure TGameConfigurationUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.GAUGE_UPDATE := 'Gauge Update: ';
  Self.FROM := ' from: ';
  Self.TO_ := ' to: ';
  Self.COMPETITION_VALUE := 1;
end;

constructor TGameConfigurationUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGameConfigurationUtil.getInstance: TGameConfigurationUtil;
begin
        Exit(TGameConfigurationUtil.instance);
end;
    

// throws Exception
procedure TGameConfigurationUtil.change(gameOptionsForm_: TGameOptionsForm; gauge: TGameConfigurationGauge);
var
  gameConfigurationSingleton_: TGameConfigurationSingleton;
  gameConfiguration_: TGameConfiguration;
begin
        Self.update(gauge);
        gameConfigurationSingleton_ := TGameConfigurationSingleton.getInstance();
        gameConfiguration_ := gameConfigurationSingleton_.getInstanceByName(gauge.getLabel());
        Self.updateChallange(gameOptionsForm_, gameConfiguration_);
end;
    

// throws Exception
procedure TGameConfigurationUtil.update(gauge: TGameConfigurationGauge);
var
  gameConfigurationSingleton_: TGameConfigurationSingleton;
  gameConfiguration_: TGameConfiguration;
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
  value: Integer;
  stringBuffer: TStringMaker;
begin
        gameConfigurationSingleton_ := TGameConfigurationSingleton.getInstance();
        gameConfiguration_ := gameConfigurationSingleton_.getInstanceByName(gauge.getLabel());
        smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
        value := smallIntegerSingletonFactory_.getAt(Integer(Trunc((gauge.getValue()) + ((gameConfiguration_.getMinValue())))));
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.GAUGE_UPDATE);
        stringBuffer.append(gameConfiguration_.getName());
        stringBuffer.append(Self.FROM);
        stringBuffer.appendint((gameConfiguration_.getValue()));
        stringBuffer.append(Self.TO_);
        stringBuffer.appendint((value));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.UPDATE);
        gameConfiguration_.setValue(value);
end;
    

// throws Exception
procedure TGameConfigurationUtil.setDefault(gauge: TGameConfigurationGauge);
var
  gameConfigurationSingleton_: TGameConfigurationSingleton;
  gameConfiguration_: TGameConfiguration;
  stringBuffer: TStringMaker;
begin
        gameConfigurationSingleton_ := TGameConfigurationSingleton.getInstance();
        gameConfiguration_ := gameConfigurationSingleton_.getInstanceByName(gauge.getLabel());
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Gauge Default: ');
        stringBuffer.append(gameConfiguration_.getName());
        stringBuffer.append(Self.TO_);
        stringBuffer.appendint((gameConfiguration_.getDefaultValue()));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'setDefault');
        gauge.setValue(((gameConfiguration_.getDefaultValue())) - ((gameConfiguration_.getMinValue())));
        gameConfiguration_.setValue(gameConfiguration_.getDefaultValue());
end;
    

// throws Exception
procedure TGameConfigurationUtil.updateChallange(gameOptionsForm_: TGameOptionsForm; gameConfiguration_: TGameConfiguration);
var
  gameConfigurationSingleton_: TGameConfigurationSingleton;
  gameConfigurationCentral_: TGameConfigurationCentral;
  size: Integer;
  item_: TItem;
  gauge: TGameConfigurationGauge;
  name: string;
  nextGameConfiguration: TGameConfiguration;
  index: Integer;
begin
        gameConfigurationSingleton_ := TGameConfigurationSingleton.getInstance();
        gameConfigurationCentral_ := TGameConfigurationCentral.getInstance();
        if (gameConfiguration_) = (gameConfigurationCentral_.CHALLENGE_LEVEL) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'updateChallange');
            gameConfigurationCentral_.COLLIDE_DAMAGE.setValue(gameConfiguration_.getValue());
            gameConfigurationCentral_.ATTACK_CHALLENGE_LEVEL.setValue(gameConfiguration_.getValue());
            gameConfigurationCentral_.DURABILITY_CHALLENGE_LEVEL.setValue(gameConfiguration_.getValue());
            gameConfigurationCentral_.SPEED_CHALLENGE_LEVEL.setValue(gameConfiguration_.getValue());
            size := gameOptionsForm_.size();
            for index := 0 to size - 1 do begin
                item_ := gameOptionsForm_.get(index);
                if (TJava.ToObject(item_) is TGameConfigurationGauge) then begin
                    gauge := TGameConfigurationGauge(TJava.ToObject(item_));
                    name := item_.getLabel();
                    nextGameConfiguration := gameConfigurationSingleton_.getInstanceByName(name);
                    if (nextGameConfiguration) = (gameConfigurationCentral_.COLLIDE_DAMAGE) then begin
                        gauge.setValue((gameConfigurationCentral_.COLLIDE_DAMAGE.getValue().intValue()) - ((gameConfiguration_.getMinValue())));
                    end else if (nextGameConfiguration) = (gameConfigurationCentral_.DURABILITY_CHALLENGE_LEVEL) then begin
                        gauge.setValue((gameConfigurationCentral_.DURABILITY_CHALLENGE_LEVEL.getValue().intValue()) - ((gameConfiguration_.getMinValue())));
                    end else if (nextGameConfiguration) = (gameConfigurationCentral_.ATTACK_CHALLENGE_LEVEL) then begin
                        gauge.setValue((gameConfigurationCentral_.ATTACK_CHALLENGE_LEVEL.getValue().intValue()) - ((gameConfiguration_.getMinValue())));
                    end else if (nextGameConfiguration) = (gameConfigurationCentral_.SPEED_CHALLENGE_LEVEL) then begin
                        gauge.setValue((gameConfigurationCentral_.SPEED_CHALLENGE_LEVEL.getValue().intValue()) - ((gameConfiguration_.getMinValue())));
                    end;
                end;
            end;
        end;
end;
    

procedure TGameConfigurationUtil.updateCompetitionValue;
var
  gameConfigurationCentral_: TGameConfigurationCentral;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'updateCompetitionValue');
        gameConfigurationCentral_ := TGameConfigurationCentral.getInstance();
        Self.COMPETITION_VALUE := (((gameConfigurationCentral_.COLLIDE_DAMAGE.getValue().intValue()) + (gameConfigurationCentral_.ATTACK_CHALLENGE_LEVEL.getValue().intValue())) + (gameConfigurationCentral_.DURABILITY_CHALLENGE_LEVEL.getValue().intValue())) + (gameConfigurationCentral_.SPEED_CHALLENGE_LEVEL.getValue().intValue());
        Self.COMPETITION_VALUE := (TJava.SignedRightShift(Self.COMPETITION_VALUE, 2));
end;
    

function TGameConfigurationUtil.getCompetitionValue: Integer;
begin
        Exit(Self.COMPETITION_VALUE);
end;

initialization
  {AB:INITIALIZATION}
  TGameConfigurationUtil.instance := TGameConfigurationUtil.Create();
  {AB:END}

end.

