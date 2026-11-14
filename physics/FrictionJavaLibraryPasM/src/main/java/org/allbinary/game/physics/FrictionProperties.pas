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
// package org.allbinary.game.physics
unit FrictionProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, VelocityProperties;

type
  {AB:TYPES}
  TFrictionProperties = class(TObject)
  public
        constructor Create;
        procedure friction(velocityProperties_: TVelocityProperties; nominator: Integer); virtual;
  end;

implementation
uses
  FrictionData, DragVelocityBehavior;


{AB:CODE}
    

constructor TFrictionProperties.Create;
begin
    inherited Create;
end;
    

procedure TFrictionProperties.friction(velocityProperties_: TVelocityProperties; nominator: Integer);
begin
        TDragVelocityBehavior.instance.reduce(velocityProperties_, nominator, TFrictionData.getFrictionDenominator());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

