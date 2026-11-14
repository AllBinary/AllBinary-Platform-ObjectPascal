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
// package org.allbinary.game.health
unit HealthInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HealthListenerInterface;

type
  {AB:TYPES}
  IHealthInterface = interface(IJavaObject) ['IHealthInterface']
        function isAlive: Boolean;
        procedure damage(ahealth: Integer);
        procedure heal(ahealth: Integer);
        procedure healMax;
        function getMaxHealth: Integer;
        procedure setMaxHealth(maxHealth: Integer);
        function getHealth: Integer;
        procedure addListener(healthListenerInterface_: IHealthListenerInterface);
  end;
  THealthInterface = IHealthInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

