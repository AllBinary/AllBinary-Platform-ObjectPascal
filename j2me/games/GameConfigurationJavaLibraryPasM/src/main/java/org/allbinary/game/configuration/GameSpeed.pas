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
// package org.allbinary.game.configuration
unit GameSpeed;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGameSpeed = class(TObject)
  public
    class var instance: TGameSpeed;
    constructor Create;
        function getSpeed: Integer;
        function getDelay: Integer;
        class function getInstance: TGameSpeed; static;
  end;

implementation
uses
  GameConfigurationCentral, GameConfiguration;


{AB:CODE}

constructor TGameSpeed.Create;
begin
  inherited Create;
end;
    

function TGameSpeed.getSpeed: Integer;
var
  speedGameConfiguration: TGameConfiguration;
begin
        speedGameConfiguration := TGameConfigurationCentral.getInstance().SPEED;
        Exit(((((speedGameConfiguration.getMaxValue())) - ((speedGameConfiguration.getValue()))) + (1)));
end;
    

function TGameSpeed.getDelay: Integer;
var
  speedGameConfiguration: TGameConfiguration;
begin
        speedGameConfiguration := TGameConfigurationCentral.getInstance().SPEED;
        Exit((19) * ((((speedGameConfiguration.getMaxValue())) - ((speedGameConfiguration.getValue())))));
end;
    

class function TGameSpeed.getInstance: TGameSpeed;
begin
        Exit(TGameSpeed.instance);
end;

initialization
  {AB:INITIALIZATION}
  TGameSpeed.instance := TGameSpeed.Create();
  {AB:END}

end.

