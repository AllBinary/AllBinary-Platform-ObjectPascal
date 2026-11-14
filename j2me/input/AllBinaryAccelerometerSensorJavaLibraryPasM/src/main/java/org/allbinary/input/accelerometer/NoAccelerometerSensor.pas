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
unit NoAccelerometerSensor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryOrientationSensor, Orientation;

type
  {AB:TYPES}
  TNoAccelerometerSensor = class(TAllBinaryOrientationSensor)
  public
        constructor Create;
        function getOrientation: TOrientation; override;
        procedure onSensorChange; override;
  end;

implementation

{AB:CODE}
    

constructor TNoAccelerometerSensor.Create;
begin
    inherited Create;
end;
    

// throws Exception
function TNoAccelerometerSensor.getOrientation: TOrientation;
begin
        Exit(TOrientation.NONE);
end;
    

procedure TNoAccelerometerSensor.onSensorChange;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

