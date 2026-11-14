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
// package org.allbinary.android.input.motion
unit AnalogControllerConfigurationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AnalogControllerConfigurationEvent;

type
  {AB:TYPES}
  TAnalogControllerConfigurationFactory = class(TObject)
  public
    SCALE_FACTOR: Integer;
    SCALE_VALUE: Integer;
    available: Boolean;
    analogControllerConfigurationEvent: TAnalogControllerConfigurationEvent;
    class var instance: TAnalogControllerConfigurationFactory;
    procedure InitFields;
        class function getInstance: TAnalogControllerConfigurationFactory; static;
        constructor Create;
        function isAvailable: Boolean; virtual;
        procedure setAvailable(available: Boolean); virtual;
  end;

implementation
uses
  AnalogControllerConfigurationEventHandler, ScaleFactorFactory;


{AB:CODE}

procedure TAnalogControllerConfigurationFactory.InitFields;
begin
  Self.SCALE_FACTOR := TScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR;
  Self.SCALE_VALUE := TScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE;
  
  Self.analogControllerConfigurationEvent := TAnalogControllerConfigurationEvent.Create(TJava.Box(Self));
end;
    

class function TAnalogControllerConfigurationFactory.getInstance: TAnalogControllerConfigurationFactory;
begin
        Exit(TAnalogControllerConfigurationFactory.instance);
end;
    

constructor TAnalogControllerConfigurationFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TAnalogControllerConfigurationFactory.isAvailable: Boolean;
begin
        Exit(Self.available);
end;
    

// throws Exception
procedure TAnalogControllerConfigurationFactory.setAvailable(available: Boolean);
begin
        Self.available := available;
        TAnalogControllerConfigurationEventHandler.getInstance().fireEvent(Self.analogControllerConfigurationEvent);
end;

initialization
  {AB:INITIALIZATION}
  TAnalogControllerConfigurationFactory.instance := TAnalogControllerConfigurationFactory.Create();
  {AB:END}

end.

