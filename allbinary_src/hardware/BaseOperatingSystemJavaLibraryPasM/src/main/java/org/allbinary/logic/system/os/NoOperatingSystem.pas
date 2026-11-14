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
unit NoOperatingSystem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GenericOperatingSystem;

type
  {AB:TYPES}
  TNoOperatingSystem = class(TGenericOperatingSystem)
  public
    class var NO_OPERATING_SYSTEM: TGenericOperatingSystem;
        constructor Create;
  end;

implementation

{AB:CODE}
    

constructor TNoOperatingSystem.Create;
begin
    inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TNoOperatingSystem.NO_OPERATING_SYSTEM := TGenericOperatingSystem.Create();
  {AB:END}

end.

