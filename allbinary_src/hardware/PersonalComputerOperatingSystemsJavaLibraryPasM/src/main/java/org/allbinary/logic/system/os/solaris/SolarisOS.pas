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
// package org.allbinary.logic.system.os.solaris
unit SolarisOS;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GenericOperatingSystem;

type
  {AB:TYPES}
  TSolarisOS = class(TGenericOperatingSystem)
  public
        constructor Create;
        function isAutoHide: Boolean; override;
  end;

implementation

{AB:CODE}
    

constructor TSolarisOS.Create;
begin
    inherited Create;
        Self.scalable := True;
end;
    

function TSolarisOS.isAutoHide: Boolean;
begin
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

