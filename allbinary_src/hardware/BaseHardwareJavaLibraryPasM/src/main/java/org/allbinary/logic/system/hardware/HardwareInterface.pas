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
// package org.allbinary.logic.system.hardware
unit HardwareInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HardwareComponentInterface, ABHashtable;

type
  {AB:TYPES}
  IHardwareInterface = interface(IJavaObject) ['IHardwareInterface']
        function getComponent(index: Integer): IHardwareComponentInterface;
        function toString: string;
        function compareTo(hardwareInterface_: IHardwareInterface): Boolean;
        function difference(hardwareInterface_: IHardwareInterface): TABHashtable<TObject, TObject>;
  end;
  THardwareInterface = IHardwareInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

