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
// package org.allbinary.logic.system.os
unit OperatingSystemInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  IOperatingSystemInterface = interface(IJavaObject) ['IOperatingSystemInterface']
        function getName: string;
        function getVersion: string;
        function getArch: string;
        function getCharacterSet: TObject;
        function isOverScan: Boolean;
        function getOverScanXPercent: Integer;
        function getOverScanYPercent: Integer;
        function isScalable: Boolean;
        function isAutoHide: Boolean;
        function toString: string;
  end;
  TOperatingSystemInterface = IOperatingSystemInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

