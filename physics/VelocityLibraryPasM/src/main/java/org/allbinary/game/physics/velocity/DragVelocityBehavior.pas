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
// package org.allbinary.game.physics.velocity
unit DragVelocityBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicVelocityProperties, VelocityBehaviorBase;

type
  {AB:TYPES}
  TDragVelocityBehavior = class(TVelocityBehaviorBase)
  public
    class var instance: TDragVelocityBehavior;
    constructor Create;
        procedure reduce(velocityProperties: TBasicVelocityProperties; nominator: Integer; denominator: Integer); override;
        procedure reduceX(velocityProperties: TBasicVelocityProperties; nominator: Integer; denominator: Integer); override;
        procedure reduceY(velocityProperties: TBasicVelocityProperties; nominator: Integer; denominator: Integer); override;
  end;

implementation
uses
  BasicDecimal;


{AB:CODE}

constructor TDragVelocityBehavior.Create;
begin
  inherited Create;
end;
    

procedure TDragVelocityBehavior.reduce(velocityProperties: TBasicVelocityProperties; nominator: Integer; denominator: Integer);
var
  basicDecimal_: TBasicDecimal;
begin
        if (velocityProperties.getVelocityXBasicDecimalP().getUnscaled()) <> (0) then begin
            basicDecimal_ := velocityProperties.getVelocityXBasicDecimalP();
            basicDecimal_.multiplyint(nominator);
            basicDecimal_.divideint(denominator);
        end;
        if (velocityProperties.getVelocityYBasicDecimalP().getUnscaled()) <> (0) then begin
            basicDecimal_ := velocityProperties.getVelocityYBasicDecimalP();
            basicDecimal_.multiplyint(nominator);
            basicDecimal_.divideint(denominator);
        end;
end;
    

procedure TDragVelocityBehavior.reduceX(velocityProperties: TBasicVelocityProperties; nominator: Integer; denominator: Integer);
var
  basicDecimal_: TBasicDecimal;
begin
        basicDecimal_ := velocityProperties.getVelocityXBasicDecimalP();
        if (basicDecimal_.getUnscaled()) <> (0) then begin
            basicDecimal_.multiplyint(nominator);
            basicDecimal_.divideint(denominator);
        end;
end;
    

procedure TDragVelocityBehavior.reduceY(velocityProperties: TBasicVelocityProperties; nominator: Integer; denominator: Integer);
var
  basicDecimal_: TBasicDecimal;
begin
        if (velocityProperties.getVelocityYBasicDecimalP().getUnscaled()) <> (0) then begin
            basicDecimal_ := velocityProperties.getVelocityYBasicDecimalP();
            basicDecimal_.multiplyint(nominator);
            basicDecimal_.divideint(denominator);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TDragVelocityBehavior.instance := TDragVelocityBehavior.Create();
  {AB:END}

end.

