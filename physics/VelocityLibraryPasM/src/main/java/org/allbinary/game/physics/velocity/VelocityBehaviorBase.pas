{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.physics.velocity
unit VelocityBehaviorBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicVelocityProperties;

type
  {AB:TYPES}
  TVelocityBehaviorBase = class(TObject)
  public
    constructor Create;
        procedure reduce(velocityProperties: TBasicVelocityProperties; nominator: Integer; denominator: Integer); virtual;
        procedure reduceX(velocityProperties: TBasicVelocityProperties; nominator: Integer; denominator: Integer); virtual;
        procedure reduceY(velocityProperties: TBasicVelocityProperties; nominator: Integer; denominator: Integer); virtual;
  end;

implementation

{AB:CODE}

constructor TVelocityBehaviorBase.Create;
begin
  inherited Create;
end;
    

procedure TVelocityBehaviorBase.reduce(velocityProperties: TBasicVelocityProperties; nominator: Integer; denominator: Integer);
begin
end;
    

procedure TVelocityBehaviorBase.reduceX(velocityProperties: TBasicVelocityProperties; nominator: Integer; denominator: Integer);
begin
end;
    

procedure TVelocityBehaviorBase.reduceY(velocityProperties: TBasicVelocityProperties; nominator: Integer; denominator: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

