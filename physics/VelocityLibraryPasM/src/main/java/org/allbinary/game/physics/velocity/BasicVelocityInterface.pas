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
unit BasicVelocityInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Direction, BasicDecimal, Angle;

type
  {AB:TYPES}
  IBasicVelocityInterface = interface(IJavaObject) ['IBasicVelocityInterface']
        function getVelocityXBasicDecimalP: TBasicDecimal;
        function getVelocityYBasicDecimalP: TBasicDecimal;
        procedure zero;
        procedure setVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal: TBasicDecimal; direction_: TDirection; otherDirection: TDirection);
        procedure addVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal: TBasicDecimal; direction_: TDirection; otherDirection: TDirection);
        procedure setVelocityWithDirection(magnitude: Int64; direction_: TDirection; otherDirection: TDirection);
        procedure addVelocityWithDirection(magnitude: Int64; direction_: TDirection; otherDirection: TDirection);
        procedure setVelocityWithBigDecimal(magnitudeBasicDecimal: TBasicDecimal; angle_: TAngle; otherAngle: TAngle);
        procedure addVelocityWithBigDecimal(magnitudeBasicDecimal: TBasicDecimal; angle_: TAngle; otherAngle: TAngle);
        procedure setVelocity(magnitude: Int64; angle_: TAngle; otherAngle: TAngle);
        procedure addVelocity(magnitude: Int64; angle_: TAngle; otherAngle: TAngle);
        procedure addVelocityi(magnitude: Int64; angle_: Integer; otherAngle: Integer);
  end;
  TBasicVelocityInterface = IBasicVelocityInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

