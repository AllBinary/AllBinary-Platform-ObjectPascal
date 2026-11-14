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
// package org.allbinary.physics.movement
unit NoBasicConstantVelocityMovement;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameLayer, BasicConstantVelocityMovement;

type
  {AB:TYPES}
  TNoBasicConstantVelocityMovement = class(TBasicConstantVelocityMovement)
  public
        constructor Create;
        procedure process(layer: TAllBinaryGameLayer); override;
  end;

implementation
uses
  BasicVelocityProperties, BasicDecimal;


{AB:CODE}
    

constructor TNoBasicConstantVelocityMovement.Create;
begin
        inherited Create(TBasicDecimal.ZERO_BIGDECIMAL, TBasicVelocityProperties.Create());
end;
    

// throws Exception
procedure TNoBasicConstantVelocityMovement.process(layer: TAllBinaryGameLayer);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

