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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, SensorGameUpdateProcessor;

type
  {AB:TYPES}
  TSingleSensorGameUpdateProcessor = class(TSensorGameUpdateProcessor)
  public
    constructor Create;
        procedure process(anyType: TObject); override;
        procedure sendNotifications(anyType: TObject); override;
  end;

implementation

{AB:CODE}

constructor TSingleSensorGameUpdateProcessor.Create;
begin
  inherited Create;
end;
    

// throws Exception
procedure TSingleSensorGameUpdateProcessor.process(anyType: TObject);
begin
end;
    

// throws Exception
procedure TSingleSensorGameUpdateProcessor.sendNotifications(anyType: TObject);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

