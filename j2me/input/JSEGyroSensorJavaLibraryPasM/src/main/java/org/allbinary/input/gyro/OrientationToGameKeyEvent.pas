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
unit OrientationToGameKeyEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Orientation, AllBinaryOrientationSensor;

type
  {AB:TYPES}
  TOrientationToGameKeyEvent = class(TObject)
  public
    allBinaryGyroSensor: TAllBinaryOrientationSensor;
    MIN: Integer;
    procedure InitFields;
        constructor Create;
        procedure setAllBinaryGyroSensor(allBinaryGyroSensor: TAllBinaryOrientationSensor); virtual;
        function getAllBinaryGyroSensor: TAllBinaryOrientationSensor; virtual;
        procedure process; virtual;
        procedure updateGameKeyEvents(orientation_: TOrientation; yaw: Integer; pitch: Integer; roll: Integer);
  end;

implementation
uses
  NoGyroSensor, Features, SensorFeatureFactory;


{AB:CODE}

procedure TOrientationToGameKeyEvent.InitFields;
begin
  
  Self.MIN := 15;
end;
    

constructor TOrientationToGameKeyEvent.Create;
begin
    inherited Create;
    InitFields;
        if TFeatures.getInstance().isFeature(TSensorFeatureFactory.getInstance().NO_ORIENTATION) then begin
            Self.allBinaryGyroSensor := TNoGyroSensor.Create();
        end else begin
            raise SysUtils.Exception.Create('Not Such Feature');
        end;
end;
    

procedure TOrientationToGameKeyEvent.setAllBinaryGyroSensor(allBinaryGyroSensor: TAllBinaryOrientationSensor);
begin
        Self.allBinaryGyroSensor := allBinaryGyroSensor;
end;
    

function TOrientationToGameKeyEvent.getAllBinaryGyroSensor: TAllBinaryOrientationSensor;
begin
        Exit(Self.allBinaryGyroSensor);
end;
    

// throws Exception
procedure TOrientationToGameKeyEvent.process;
begin
end;
    

// throws Exception
procedure TOrientationToGameKeyEvent.updateGameKeyEvents(orientation_: TOrientation; yaw: Integer; pitch: Integer; roll: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

