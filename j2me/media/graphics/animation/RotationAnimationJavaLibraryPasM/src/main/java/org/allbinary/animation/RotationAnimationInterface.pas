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
// package org.allbinary.animation
unit RotationAnimationInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DirectionalInterface, AngleInfo, Angle, Direction, IndexedAnimationInterface;

type
  {AB:TYPES}
  IRotationAnimationInterface = interface(IIndexedAnimationInterface) ['IRotationAnimationInterface']
        function getAngleInfoP: TAngleInfo;
        procedure nextRotation;
        procedure previousRotation;
        procedure adjustFrame(angle_: SmallInt); overload;
        procedure adjustFrameToAngle(newAngle: TAngle); overload;
        procedure setFrameByDirection(direction_: TDirection); overload;
        procedure setFrameToAngle(angle_: TAngle); overload;
  end;
  TRotationAnimationInterface = IRotationAnimationInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

