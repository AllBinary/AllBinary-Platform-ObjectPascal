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
// package org.allbinary.input.magnetic.field
unit NoMagneticFieldSensor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinarySensorListener, Orientation, AllBinaryMagneticFieldSensor;

type
  {AB:TYPES}
  TNoMagneticFieldSensor = class(TAllBinaryMagneticFieldSensor, IAllBinarySensorListener)
  public
    function JavaObject: TObject;
    constructor Create;
        function getOrientation: TOrientation; virtual;
        procedure onSensorChange; virtual;
  end;

implementation

{AB:CODE}

function TNoMagneticFieldSensor.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNoMagneticFieldSensor.Create;
begin
  inherited Create;
end;
    

// throws Exception
function TNoMagneticFieldSensor.getOrientation: TOrientation;
begin
        Exit(TOrientation.NONE);
end;
    

procedure TNoMagneticFieldSensor.onSensorChange;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

