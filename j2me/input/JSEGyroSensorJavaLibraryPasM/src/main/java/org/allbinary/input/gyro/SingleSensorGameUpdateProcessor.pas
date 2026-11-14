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
unit SingleSensorGameUpdateProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Processor, SensorGameUpdateProcessor;

type
  {AB:TYPES}
  TSingleSensorGameUpdateProcessor = class(TSensorGameUpdateProcessor)
  public
    accelerometerSensorUpdateProcessor: TProcessor;
    gyroSensorUpdateProcessor: TProcessor;
    procedure InitFields;
    constructor Create;
        procedure process(anyType: TObject); virtual;
        procedure sendNotifications(anyType: TObject); virtual;
  end;

implementation
uses
  AccelerometerSensorUpdateProcessor, GyroSensorUpdateProcessor;


{AB:CODE}

procedure TSingleSensorGameUpdateProcessor.InitFields;
begin
  Self.accelerometerSensorUpdateProcessor := TAccelerometerSensorUpdateProcessor.Create();
  Self.gyroSensorUpdateProcessor := TGyroSensorUpdateProcessor.Create();
end;

constructor TSingleSensorGameUpdateProcessor.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws Exception
procedure TSingleSensorGameUpdateProcessor.process(anyType: TObject);
begin
        Self.setNoSensors();
end;
    

// throws Exception
procedure TSingleSensorGameUpdateProcessor.sendNotifications(anyType: TObject);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

