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
unit SensorGameUpdateProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinarySensor;

type
  {AB:TYPES}
  TSensorGameUpdateProcessor = class(TObject)
  public
    inputSensor: TAllBinarySensor;
    procedure InitFields;
    constructor Create;
        procedure setInputSensor(inputSensor: TAllBinarySensor); virtual;
        function getInputSensor: TAllBinarySensor; virtual;
        procedure process(anyType: TObject); virtual;
        procedure sendNotifications(anyType: TObject); virtual;
        function isAnySensor: Boolean; virtual;
        procedure setNoSensors; virtual;
  end;

implementation
uses
  GyroSensorFactory, NoCompleteMotionGestureInputEventListener, NoAllBinarySensor, AccelerometerSensorFactory;


{AB:CODE}

procedure TSensorGameUpdateProcessor.InitFields;
begin
  
end;

constructor TSensorGameUpdateProcessor.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TSensorGameUpdateProcessor.setInputSensor(inputSensor: TAllBinarySensor);
begin
        Self.inputSensor := inputSensor;
end;
    

function TSensorGameUpdateProcessor.getInputSensor: TAllBinarySensor;
begin
        Exit(Self.inputSensor);
end;
    

// throws Exception
procedure TSensorGameUpdateProcessor.process(anyType: TObject);
begin
end;
    

// throws Exception
procedure TSensorGameUpdateProcessor.sendNotifications(anyType: TObject);
begin
end;
    

function TSensorGameUpdateProcessor.isAnySensor: Boolean;
begin
        if (Self.inputSensor) = (TNoAllBinarySensor.getInstance()) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;
    

procedure TSensorGameUpdateProcessor.setNoSensors;
begin
        TGyroSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(TNoCompleteMotionGestureInputEventListener.getInstance());
        TAccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(TNoCompleteMotionGestureInputEventListener.getInstance());
        Self.setInputSensor(TNoAllBinarySensor.getInstance());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

