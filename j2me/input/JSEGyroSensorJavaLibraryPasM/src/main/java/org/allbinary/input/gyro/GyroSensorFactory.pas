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
unit GyroSensorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryOrientationSensor;

type
  {AB:TYPES}
  TGyroSensorFactory = class(TObject)
  public
    class var allBinaryGyroSensor: TAllBinaryOrientationSensor;
    constructor Create;
        class procedure init; static;
        class function getInstance: TAllBinaryOrientationSensor; static;
  end;

implementation
uses
  NoGyroSensor;


{AB:CODE}

constructor TGyroSensorFactory.Create;
begin
  inherited Create;
end;
    

// throws Exception
class procedure TGyroSensorFactory.init;
begin
        TGyroSensorFactory.allBinaryGyroSensor := TNoGyroSensor.Create();
end;
    

class function TGyroSensorFactory.getInstance: TAllBinaryOrientationSensor;
begin
        Exit(TGyroSensorFactory.allBinaryGyroSensor);
end;

initialization
  {AB:INITIALIZATION}
  
  {AB:END}

end.

