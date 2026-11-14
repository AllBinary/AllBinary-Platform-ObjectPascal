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
// package org.allbinary.input.gyro
unit AccelerometerSensorUpdateProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Processor;

type
  {AB:TYPES}
  TAccelerometerSensorUpdateProcessor = class(TProcessor)
  public
    constructor Create;
        procedure process; virtual;
  end;

implementation
uses
  Features, SensorFeatureFactory, NoCompleteMotionGestureInputEventListener, SingleKeyPressGameKeyFromMotionGestureEventListener, AccelerometerSensorFactory;


{AB:CODE}

constructor TAccelerometerSensorUpdateProcessor.Create;
begin
  inherited Create;
end;
    

// throws Exception
procedure TAccelerometerSensorUpdateProcessor.process;
var
  sensorFeatureFactory_: TSensorFeatureFactory;
begin
        sensorFeatureFactory_ := TSensorFeatureFactory.getInstance();
        if TFeatures.getInstance().isFeature(sensorFeatureFactory_.ORIENTATION_SENSORS) then begin
            TAccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(TSingleKeyPressGameKeyFromMotionGestureEventListener.Create());
        end else if TFeatures.getInstance().isFeature(sensorFeatureFactory_.SIMULATED_ORIENTATION_SENSORS) then begin
            TAccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(TSingleKeyPressGameKeyFromMotionGestureEventListener.Create());
        end else if TFeatures.getInstance().isFeature(sensorFeatureFactory_.NO_ORIENTATION) then begin
            TAccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(TNoCompleteMotionGestureInputEventListener.getInstance());
        end else begin
            raise SysUtils.Exception.Create('Sensor Feature Not Set');
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

