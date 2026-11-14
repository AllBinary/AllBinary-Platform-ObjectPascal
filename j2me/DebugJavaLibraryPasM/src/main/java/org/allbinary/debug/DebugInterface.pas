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
// package org.allbinary.debug
unit DebugInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  IDebugInterface = interface(IJavaObject) ['IDebugInterface']
        procedure start;
        procedure stop;
        function getStartTime: Int64;
        function getMaxTime: Int64;
        function isRunning: Boolean;
  end;
  TDebugInterface = IDebugInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

