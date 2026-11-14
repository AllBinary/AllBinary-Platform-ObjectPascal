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
unit AnalogControllerHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollidableDestroyableDamageableLayer, TimeDelayHelper;

type
  {AB:TYPES}
  TAnalogControllerHelper = class(TObject)
  public
    reduceTimeFactor: Integer;
    SCALE_VALUE: Integer;
    rightTimeElapsedHelper: TTimeDelayHelper;
    leftTimeElapsedHelper: TTimeDelayHelper;
    downTimeElapsedHelper: TTimeDelayHelper;
    upTimeElapsedHelper: TTimeDelayHelper;
    procedure InitFields;
        constructor Create(reduceTimeFactor: Integer);
        procedure right(collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer; xAnalogValue: Integer); virtual;
        procedure left(collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer; xAnalogValue: Integer); virtual;
        procedure up(collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer; xAnalogValue: Integer); virtual;
        procedure down(collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer; xAnalogValue: Integer); virtual;
  end;

implementation
uses
  AnalogControllerConfigurationFactory;


{AB:CODE}

procedure TAnalogControllerHelper.InitFields;
begin
  
  Self.SCALE_VALUE := TAnalogControllerConfigurationFactory.getInstance().SCALE_VALUE;
  Self.rightTimeElapsedHelper := TTimeDelayHelper.Create(0);
  Self.leftTimeElapsedHelper := TTimeDelayHelper.Create(0);
  Self.downTimeElapsedHelper := TTimeDelayHelper.Create(0);
  Self.upTimeElapsedHelper := TTimeDelayHelper.Create(0);
end;
    

constructor TAnalogControllerHelper.Create(reduceTimeFactor: Integer);
begin
    inherited Create;
    InitFields;
        Self.reduceTimeFactor := reduceTimeFactor;
end;
    

// throws Exception
procedure TAnalogControllerHelper.right(collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer; xAnalogValue: Integer);
begin
        Self.rightTimeElapsedHelper.delay := (TJava.SignedRightShift(((Self.SCALE_VALUE) - (xAnalogValue)), Self.reduceTimeFactor));
        if Self.rightTimeElapsedHelper.isTimeTNT() then begin
            collidableDestroyableDamageableLayer_.right();
        end;
end;
    

// throws Exception
procedure TAnalogControllerHelper.left(collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer; xAnalogValue: Integer);
begin
        Self.leftTimeElapsedHelper.delay := (TJava.SignedRightShift(((Self.SCALE_VALUE) + (xAnalogValue)), Self.reduceTimeFactor));
        if Self.leftTimeElapsedHelper.isTimeTNT() then begin
            collidableDestroyableDamageableLayer_.left();
        end;
end;
    

// throws Exception
procedure TAnalogControllerHelper.up(collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer; xAnalogValue: Integer);
begin
        Self.upTimeElapsedHelper.delay := (TJava.SignedRightShift(((Self.SCALE_VALUE) - (xAnalogValue)), Self.reduceTimeFactor));
        if Self.upTimeElapsedHelper.isTimeTNT() then begin
            collidableDestroyableDamageableLayer_.up();
        end;
end;
    

// throws Exception
procedure TAnalogControllerHelper.down(collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer; xAnalogValue: Integer);
begin
        Self.downTimeElapsedHelper.delay := (TJava.SignedRightShift(((Self.SCALE_VALUE) + (xAnalogValue)), Self.reduceTimeFactor));
        if Self.downTimeElapsedHelper.isTimeTNT() then begin
            collidableDestroyableDamageableLayer_.down();
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

