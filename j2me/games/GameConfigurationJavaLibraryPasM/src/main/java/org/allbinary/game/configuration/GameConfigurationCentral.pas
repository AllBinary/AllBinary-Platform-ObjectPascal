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
unit GameConfigurationCentral;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, GameConfiguration;

type
  {AB:TYPES}
  TGameConfigurationCentral = class(TObject)
  public
    logUtil: TLogUtil;
    SCALE: TGameConfiguration;
    ORIENTATION: TGameConfiguration;
    SENSOR_UPDATE_RATE: TGameConfiguration;
    VIBRATION: TGameConfiguration;
    CHALLENGE_LEVEL: TGameConfiguration;
    COLLIDE_DAMAGE: TGameConfiguration;
    DURABILITY_CHALLENGE_LEVEL: TGameConfiguration;
    SPEED_CHALLENGE_LEVEL: TGameConfiguration;
    ATTACK_CHALLENGE_LEVEL: TGameConfiguration;
    CONTROL_LEVEL: TGameConfiguration;
    PLAYER_INPUT_WAIT: TGameConfiguration;
    SPEED: TGameConfiguration;
    SOUND_VOLUME: TGameConfiguration;
    MAX_GAME_OBJECTS: TGameConfiguration;
    MAX_LAYERS: TGameConfiguration;
    gameControlFidelity: Integer;
    class var SINGLETON: TObject;
    procedure InitFields;
        class function getInstance: TGameConfigurationCentral; static;
        constructor Create;
        procedure load(abeClientInformation: IAbeClientInformationInterface); virtual;
        procedure setGameControlFidelity(gameControlFidelity: Integer); virtual;
        function getGameControlFidelity: Integer; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  GameConfigurationPersistanceSingleton, KeyValuePersistance, NullUtil, SmallIntegerSingletonFactory, StringMaker, CommonSeps, CommonStrings, ABHashtable, BasicArrayList;


{AB:CODE}

procedure TGameConfigurationCentral.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  Self.gameControlFidelity := 36;
end;
    

class function TGameConfigurationCentral.getInstance: TGameConfigurationCentral;
begin
        if (TGameConfigurationCentral.SINGLETON) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TGameConfigurationCentral.SINGLETON := TGameConfigurationCentral.Create();
        end;
        Exit(TGameConfigurationCentral(TJava.ToObject(TGameConfigurationCentral.SINGLETON)));
end;
    

constructor TGameConfigurationCentral.Create;
var
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
begin
    inherited Create;
    InitFields;
        smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
        Self.SCALE := TGameConfiguration.Create('Scale', smallIntegerSingletonFactory_.getAt(2), smallIntegerSingletonFactory_.getAt(2), smallIntegerSingletonFactory_.getAt(3));
        Self.ORIENTATION := TGameConfiguration.Create('Orientation', smallIntegerSingletonFactory_.getAt(0), smallIntegerSingletonFactory_.getAt(0), smallIntegerSingletonFactory_.getAt(8));
        Self.SENSOR_UPDATE_RATE := TGameConfiguration.Create('Sensor Update Rate', smallIntegerSingletonFactory_.getAt(0), smallIntegerSingletonFactory_.getAt(0), smallIntegerSingletonFactory_.getAt(3));
        Self.VIBRATION := TGameConfiguration.Create('Vibration', smallIntegerSingletonFactory_.getAt(0), smallIntegerSingletonFactory_.getAt(0), smallIntegerSingletonFactory_.getAt(3));
        Self.CHALLENGE_LEVEL := TGameConfiguration.Create('Global Challenge Level', smallIntegerSingletonFactory_.getAt(3), smallIntegerSingletonFactory_.getAt(1), smallIntegerSingletonFactory_.getAt(10));
        Self.COLLIDE_DAMAGE := TGameConfiguration.Create('Collide Damage Challenge Level', smallIntegerSingletonFactory_.getAt(3), smallIntegerSingletonFactory_.getAt(1), smallIntegerSingletonFactory_.getAt(10));
        Self.DURABILITY_CHALLENGE_LEVEL := TGameConfiguration.Create('Enemy Durability Challenge Level', smallIntegerSingletonFactory_.getAt(3), smallIntegerSingletonFactory_.getAt(1), smallIntegerSingletonFactory_.getAt(10));
        Self.SPEED_CHALLENGE_LEVEL := TGameConfiguration.Create('Enemy Speed Challenge Level', smallIntegerSingletonFactory_.getAt(3), smallIntegerSingletonFactory_.getAt(1), smallIntegerSingletonFactory_.getAt(10));
        Self.ATTACK_CHALLENGE_LEVEL := TGameConfiguration.Create('Enemy Attack Challenge Level', smallIntegerSingletonFactory_.getAt(3), smallIntegerSingletonFactory_.getAt(1), smallIntegerSingletonFactory_.getAt(10));
        Self.CONTROL_LEVEL := TGameConfiguration.Create('Control Fidelity', smallIntegerSingletonFactory_.getAt(5), smallIntegerSingletonFactory_.getAt(1), smallIntegerSingletonFactory_.getAt(10));
        Self.PLAYER_INPUT_WAIT := TGameConfiguration.Create('Input Wait', smallIntegerSingletonFactory_.getAt(5), smallIntegerSingletonFactory_.getAt(1), smallIntegerSingletonFactory_.getAt(10));
        Self.SPEED := TGameConfiguration.Create('Game Speed (Device Specific)', smallIntegerSingletonFactory_.getAt(5), smallIntegerSingletonFactory_.getAt(1), smallIntegerSingletonFactory_.getAt(10));
        Self.SOUND_VOLUME := TGameConfiguration.Create('Sound Volume', smallIntegerSingletonFactory_.getAt(6), smallIntegerSingletonFactory_.getAt(0), smallIntegerSingletonFactory_.getAt(10));
        Self.MAX_GAME_OBJECTS := TGameConfiguration.Create('Max Game Objects', smallIntegerSingletonFactory_.getAt(20), smallIntegerSingletonFactory_.getAt(1), smallIntegerSingletonFactory_.getAt(50));
        Self.MAX_LAYERS := TGameConfiguration.Create('Max Layers', smallIntegerSingletonFactory_.getAt(20), smallIntegerSingletonFactory_.getAt(1), smallIntegerSingletonFactory_.getAt(50));
end;
    

procedure TGameConfigurationCentral.load(abeClientInformation: IAbeClientInformationInterface);
var
  commonStrings_: TCommonStrings;
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
  keyValuePersistance_: TKeyValuePersistance;
  list: TBasicArrayList;
  hashtable: TABHashtable<TObject, TObject>;
  anyType: TObject;
  value: string;
begin
        commonStrings_ := TCommonStrings.getInstance();
        try
            smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
            keyValuePersistance_ := TGameConfigurationPersistanceSingleton.getInstance();
            keyValuePersistance_.clear();
            keyValuePersistance_.loadAll(abeClientInformation);
            list := keyValuePersistance_.getIds();
            if (list.size()) > (0) then begin
                hashtable := keyValuePersistance_.get(0);
                anyType := TJava.Box(TJava.Box(Self.SCALE.getName()));
                value := TJava.UnboxString(TJava.ToObject(hashtable.get(TJava.Box(anyType))));
                Self.SCALE.setValue(smallIntegerSingletonFactory_.getAt(StrToInt(value)));
            end else begin
                Self.logUtil.putF('No Game Configuration To Load', TJava.Box(Self), commonStrings_.LOAD);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.LOAD, TJava.Box(e));
            end;
        end;
end;
    

procedure TGameConfigurationCentral.setGameControlFidelity(gameControlFidelity: Integer);
begin
        Self.gameControlFidelity := gameControlFidelity;
end;
    

function TGameConfigurationCentral.getGameControlFidelity: Integer;
begin
        Exit(Self.gameControlFidelity);
end;
    

function TGameConfigurationCentral.toString: string;
var
  stringBuffer: TStringMaker;
  commonStrings_: TCommonSeps;
begin
        stringBuffer := TStringMaker.Create();
        commonStrings_ := TCommonSeps.getInstance();
        stringBuffer.append(commonStrings_.COMMA_SEP);
        stringBuffer.append(Self.SCALE.getName());
        stringBuffer.append(commonStrings_.EQUALS);
        stringBuffer.appendint((Self.SCALE.getValue()));
        stringBuffer.append(commonStrings_.COMMA_SEP);
        stringBuffer.append(Self.ORIENTATION.getName());
        stringBuffer.append(commonStrings_.EQUALS);
        stringBuffer.appendint((Self.ORIENTATION.getValue()));
        stringBuffer.append(commonStrings_.COMMA_SEP);
        stringBuffer.append(Self.SENSOR_UPDATE_RATE.getName());
        stringBuffer.append(commonStrings_.EQUALS);
        stringBuffer.appendint((Self.SENSOR_UPDATE_RATE.getValue()));
        stringBuffer.append(commonStrings_.COMMA_SEP);
        stringBuffer.append(Self.VIBRATION.getName());
        stringBuffer.append(commonStrings_.EQUALS);
        stringBuffer.appendint((Self.VIBRATION.getValue()));
        stringBuffer.append(commonStrings_.COMMA_SEP);
        stringBuffer.append(Self.CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings_.EQUALS);
        stringBuffer.appendint((Self.CHALLENGE_LEVEL.getValue()));
        stringBuffer.append(commonStrings_.COMMA_SEP);
        stringBuffer.append(Self.COLLIDE_DAMAGE.getName());
        stringBuffer.append(commonStrings_.EQUALS);
        stringBuffer.appendint((Self.COLLIDE_DAMAGE.getValue()));
        stringBuffer.append(commonStrings_.COMMA_SEP);
        stringBuffer.append(Self.DURABILITY_CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings_.EQUALS);
        stringBuffer.appendint((Self.DURABILITY_CHALLENGE_LEVEL.getValue()));
        stringBuffer.append(commonStrings_.COMMA_SEP);
        stringBuffer.append(Self.SPEED_CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings_.EQUALS);
        stringBuffer.appendint((Self.SPEED_CHALLENGE_LEVEL.getValue()));
        stringBuffer.append(commonStrings_.COMMA_SEP);
        stringBuffer.append(Self.ATTACK_CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings_.EQUALS);
        stringBuffer.appendint((Self.ATTACK_CHALLENGE_LEVEL.getValue()));
        stringBuffer.append(commonStrings_.COMMA_SEP);
        stringBuffer.append(Self.CONTROL_LEVEL.getName());
        stringBuffer.append(commonStrings_.EQUALS);
        stringBuffer.appendint((Self.CONTROL_LEVEL.getValue()));
        stringBuffer.append(commonStrings_.COMMA_SEP);
        stringBuffer.append(Self.SPEED.getName());
        stringBuffer.append(commonStrings_.EQUALS);
        stringBuffer.appendint((Self.SPEED.getValue()));
        stringBuffer.append(commonStrings_.COMMA_SEP);
        stringBuffer.append(Self.MAX_GAME_OBJECTS.getName());
        stringBuffer.append(commonStrings_.EQUALS);
        stringBuffer.appendint((Self.MAX_GAME_OBJECTS.getValue()));
        stringBuffer.append(commonStrings_.COMMA_SEP);
        stringBuffer.append(Self.MAX_LAYERS.getName());
        stringBuffer.append(commonStrings_.EQUALS);
        stringBuffer.appendint((Self.MAX_LAYERS.getValue()));
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TGameConfigurationCentral.SINGLETON := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

