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
unit SensorFeatureFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, SensorFeature;

type
  {AB:TYPES}
  TSensorFeatureFactory = class(TObject)
  public
    NO_ORIENTATION: TSensorFeature;
    ORIENTATION_SENSORS: TSensorFeature;
    SIMULATED_ORIENTATION_SENSORS: TSensorFeature;
    YAW: TSensorFeature;
    YAW_MINUS_RIGHT_PLUS_LEFT: TSensorFeature;
    YAW_MINUS_LEFT_PLUS_RIGHT: TSensorFeature;
    PITCH: TSensorFeature;
    ROLL: TSensorFeature;
    class var instance: TSensorFeatureFactory;
    procedure InitFields;
        class function getInstance: TSensorFeatureFactory; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TSensorFeatureFactory.InitFields;
begin
  Self.NO_ORIENTATION := TSensorFeature.Create('No Orientation');
  Self.ORIENTATION_SENSORS := TSensorFeature.Create('Orientation Sensors');
  Self.SIMULATED_ORIENTATION_SENSORS := TSensorFeature.Create('Simulated Orientation Sensors');
  Self.YAW := TSensorFeature.Create('Yaw');
  Self.YAW_MINUS_RIGHT_PLUS_LEFT := TSensorFeature.Create('Yaw -Right +Left');
  Self.YAW_MINUS_LEFT_PLUS_RIGHT := TSensorFeature.Create('Yaw -Left +Right ');
  Self.PITCH := TSensorFeature.Create('Pitch');
  Self.ROLL := TSensorFeature.Create('Roll');
end;
    

class function TSensorFeatureFactory.getInstance: TSensorFeatureFactory;
begin
        Exit(TSensorFeatureFactory.instance);
end;
    

constructor TSensorFeatureFactory.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TSensorFeatureFactory.instance := TSensorFeatureFactory.Create();
  {AB:END}

end.

