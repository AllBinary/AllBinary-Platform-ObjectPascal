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
// package org.allbinary.direction
unit DirectionalInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Angle, Direction;

type
  {AB:TYPES}
  IDirectionalInterface = interface(IJavaObject) ['IDirectionalInterface']
        procedure setFrameByDirection(direction_: TDirection);
        procedure setFrameToAngle(angle_: TAngle);
        procedure adjustFrameToAngle(newAngle: TAngle);
        procedure adjustFrame(angle_: SmallInt);
  end;
  TDirectionalInterface = IDirectionalInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

