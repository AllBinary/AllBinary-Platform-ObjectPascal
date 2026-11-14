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
// package org.allbinary.game.physics.friction
unit FrictionData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TFrictionData = class(TObject)
  public
    class var FRICTION_DENOMINATOR: Integer;
        constructor Create;
        class function getFrictionDenominator: Integer; static;
  end;

implementation

{AB:CODE}
    

constructor TFrictionData.Create;
begin
    inherited Create;
end;
    

class function TFrictionData.getFrictionDenominator: Integer;
begin
        Exit(TFrictionData.FRICTION_DENOMINATOR);
end;

initialization
  {AB:INITIALIZATION}
  TFrictionData.FRICTION_DENOMINATOR := 100;
  {AB:END}

end.

