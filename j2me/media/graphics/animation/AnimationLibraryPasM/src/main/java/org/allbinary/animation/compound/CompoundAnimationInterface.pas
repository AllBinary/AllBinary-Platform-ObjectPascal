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
// package org.allbinary.animation.compound
unit CompoundAnimationInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AnimationInterface, IndexedAnimation;

type
  {AB:TYPES}
  ICompoundAnimationInterface = interface(IAnimationInterface) ['ICompoundAnimationInterface']
        procedure nextAnimation;
        procedure previousAnimation;
        procedure setAnimation(index: Integer);
        function getCurrentAnimation: TIndexedAnimation;
  end;
  TCompoundAnimationInterface = ICompoundAnimationInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

