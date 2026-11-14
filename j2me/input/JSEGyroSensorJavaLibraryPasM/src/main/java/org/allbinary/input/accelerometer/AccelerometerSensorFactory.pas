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
// package org.allbinary.input.accelerometer
unit AccelerometerSensorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryOrientationSensor;

type
  {AB:TYPES}
  TAccelerometerSensorFactory = class(TObject)
  public
    class var allBinaryAccelerometerSensor: TAllBinaryOrientationSensor;
    constructor Create;
        class procedure init; static;
        class function getInstance: TAllBinaryOrientationSensor; static;
  end;

implementation
uses
  NoAccelerometerSensor, Features, SensorFeatureFactory;


{AB:CODE}

constructor TAccelerometerSensorFactory.Create;
begin
  inherited Create;
end;
    

// throws Exception
class procedure TAccelerometerSensorFactory.init;
var
  features_: TFeatures;
  sensorFeatureFactory_: TSensorFeatureFactory;
begin
        features_ := TFeatures.getInstance();
        sensorFeatureFactory_ := TSensorFeatureFactory.getInstance();
        if features_.isFeature(sensorFeatureFactory_.ORIENTATION_SENSORS) then begin
            raise SysUtils.Exception.Create('No Orientation Sensors');
        end else if features_.isFeature(sensorFeatureFactory_.SIMULATED_ORIENTATION_SENSORS) then begin
            raise SysUtils.Exception.Create('No Simulation Sensors');
        end else if features_.isFeature(sensorFeatureFactory_.NO_ORIENTATION) then begin
            TAccelerometerSensorFactory.allBinaryAccelerometerSensor := TNoAccelerometerSensor.Create();
        end else begin
            raise SysUtils.Exception.Create('Not Such SensorFeature');
        end;
end;
    

class function TAccelerometerSensorFactory.getInstance: TAllBinaryOrientationSensor;
begin
        Exit(TAccelerometerSensorFactory.allBinaryAccelerometerSensor);
end;

initialization
  {AB:INITIALIZATION}
  
  {AB:END}

end.

