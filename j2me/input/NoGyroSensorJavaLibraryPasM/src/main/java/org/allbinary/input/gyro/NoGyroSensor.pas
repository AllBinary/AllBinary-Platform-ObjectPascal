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
unit NoGyroSensor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinarySensorListener, Orientation, AllBinaryOrientationSensor;

type
  {AB:TYPES}
  TNoGyroSensor = class(TAllBinaryOrientationSensor, IAllBinarySensorListener)
  public
    function JavaObject: TObject;
        constructor Create;
        function getOrientation: TOrientation; virtual;
        procedure onSensorChange; virtual;
  end;

implementation
uses
  LogUtil;


{AB:CODE}

function TNoGyroSensor.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TNoGyroSensor.Create;
begin
    inherited Create;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
end;
    

// throws Exception
function TNoGyroSensor.getOrientation: TOrientation;
begin
        Exit(TOrientation.NONE);
end;
    

procedure TNoGyroSensor.onSensorChange;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

