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
// package org.allbinary.game.configuration.feature
unit Features;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, BasicArrayList, Feature;

type
  {AB:TYPES}
  TFeatures = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    list: TBasicArrayList;
    defaultList: TBasicArrayList;
    class var SINGLETON: TObject;
    procedure InitFields;
        class function getInstance: TFeatures; static;
        constructor Create;
        procedure addDefault(gameFeature: TFeature); virtual;
        procedure add(gameFeature: TFeature); virtual;
        procedure removeDefault(gameFeature: TFeature); virtual;
        procedure remove(gameFeature: TFeature); virtual;
        procedure init;
        function isDefault(gameFeature: TFeature): Boolean; virtual;
        function isFeature(gameFeature: TFeature): Boolean; virtual;
        procedure toggle(gameFeature: TFeature); virtual;
  end;

implementation
uses
  GameFeatureFactory, InputFeatureFactory, SensorFeatureFactory, TouchFeatureFactory, MainFeatureFactory, GameFeatureEvent, GameFeatureEventHandler, NullUtil, PreLogUtil, StringMaker, GenericOperatingSystem, OperatingSystemFactory, CommonLabels, BasicArrayListD;


{AB:CODE}

procedure TFeatures.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;
    

class function TFeatures.getInstance: TFeatures;
begin
        if (TFeatures.SINGLETON) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TFeatures.SINGLETON := TFeatures.Create();
        end;
        Exit(TFeatures(TJava.ToObject(TFeatures.SINGLETON)));
end;
    

constructor TFeatures.Create;
begin
    inherited Create;
    InitFields;
        Self.list := TBasicArrayListD.Create();
        Self.defaultList := TBasicArrayListD.Create();
        Self.init();
end;
    

// throws Exception
procedure TFeatures.addDefault(gameFeature: TFeature);
begin
        Self.add(gameFeature);
        if not (Self.defaultList.contains(TJava.Box(gameFeature))) then begin
            Self.defaultList.add(TJava.Box(gameFeature));
        end;
end;
    

// throws Exception
procedure TFeatures.add(gameFeature: TFeature);
begin
        if not (Self.list.contains(TJava.Box(gameFeature))) then begin
            Self.logUtil.putF(TStringMaker.Create().append(TCommonLabels.getInstance().START_LABEL).append(gameFeature.toString()).toString(), TJava.Box(Self), Self.commonStrings.ADD);
            Self.list.add(TJava.Box(gameFeature));
            TGameFeatureEventHandler.getInstance().fireEvent(TGameFeatureEvent.Create(TJava.Box(gameFeature), gameFeature.toString()));
        end;
end;
    

// throws Exception
procedure TFeatures.removeDefault(gameFeature: TFeature);
begin
        Self.logUtil.putF(TStringMaker.Create().append(TCommonLabels.getInstance().START_LABEL).append(gameFeature.toString()).toString(), TJava.Box(Self), 'removeDefault');
        Self.remove(gameFeature);
        Self.defaultList.remove(gameFeature);
end;
    

// throws Exception
procedure TFeatures.remove(gameFeature: TFeature);
begin
        if Self.list.contains(TJava.Box(gameFeature)) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.REMOVE);
            Self.list.remove(gameFeature);
            TGameFeatureEventHandler.getInstance().fireEvent(TGameFeatureEvent.Create(TJava.Box(gameFeature), gameFeature.toString()));
        end;
end;
    

procedure TFeatures.init;
var
  gameFeatureFactory_: TGameFeatureFactory;
  inputFeatureFactory_: TInputFeatureFactory;
  sensorFeatureFactory_: TSensorFeatureFactory;
  touchFeatureFactory_: TTouchFeatureFactory;
  operatingSystemInterface: TGenericOperatingSystem;
begin
        try
            gameFeatureFactory_ := TGameFeatureFactory.getInstance();
            inputFeatureFactory_ := TInputFeatureFactory.getInstance();
            sensorFeatureFactory_ := TSensorFeatureFactory.getInstance();
            touchFeatureFactory_ := TTouchFeatureFactory.getInstance();
            Self.addDefault(gameFeatureFactory_.ARTIFICIAL_INTELLEGENCE_PROCESSOR);
            Self.addDefault(gameFeatureFactory_.COLLIDABLE_INTERFACE_LAYER_PROCESSOR);
            Self.addDefault(gameFeatureFactory_.GAME_INPUT_LAYER_PROCESSOR);
            Self.addDefault(gameFeatureFactory_.TICKABLE_LAYER_PROCESSOR);
            Self.addDefault(inputFeatureFactory_.MULTI_KEY_PRESS);
            Self.addDefault(inputFeatureFactory_.REMOVE_DUPLICATE_KEY_PRESSES);
            Self.addDefault(gameFeatureFactory_.SCREEN_SHAKE);
            Self.addDefault(gameFeatureFactory_.POST_IMAGE_LOADING_MODIFICATION);
            operatingSystemInterface := TOperatingSystemFactory.getInstance().getOperatingSystemInstance();
            if operatingSystemInterface.isOverScan() then begin
                Self.addDefault(sensorFeatureFactory_.NO_ORIENTATION);
                Self.addDefault(touchFeatureFactory_.HIDE_SCREEN_BUTTONS);
            end else begin
                Self.addDefault(sensorFeatureFactory_.ORIENTATION_SENSORS);
                Self.addDefault(touchFeatureFactory_.AUTO_HIDE_SHOW_SCREEN_BUTTONS);
            end;
            Self.addDefault(touchFeatureFactory_.TOUCH_ENABLED);
            Self.addDefault(TMainFeatureFactory.getInstance().FULL_SCREEN);
            Self.addDefault(TMainFeatureFactory.getInstance().LOAD_ONDEMAND);
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.INIT, TJava.Box(e));
            end;
        end;
end;
    

function TFeatures.isDefault(gameFeature: TFeature): Boolean;
begin
        Exit(Self.defaultList.contains(TJava.Box(gameFeature)));
end;
    

function TFeatures.isFeature(gameFeature: TFeature): Boolean;
begin
        Exit(Self.list.contains(TJava.Box(gameFeature)));
end;
    

// throws Exception
procedure TFeatures.toggle(gameFeature: TFeature);
begin
        if Self.isFeature(gameFeature) then begin
            Self.remove(gameFeature);
        end else begin
            Self.add(gameFeature);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TFeatures.SINGLETON := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

