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
unit OrientationData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TOrientationData = class(TObject)
  public
    ORIENTATION_SENSOR_INPUT: string;
    ORIENTATION_TYPE: string;
    class var SINGLETON: TOrientationData;
    procedure InitFields;
        constructor Create;
        class function getInstance: TOrientationData; static;
  end;

implementation

{AB:CODE}

procedure TOrientationData.InitFields;
begin
  Self.ORIENTATION_SENSOR_INPUT := 'Orientation Sensor Input';
  Self.ORIENTATION_TYPE := 'Orientation Type';
end;
    

constructor TOrientationData.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TOrientationData.getInstance: TOrientationData;
begin
        Exit(TOrientationData.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TOrientationData.SINGLETON := TOrientationData.Create();
  {AB:END}

end.

