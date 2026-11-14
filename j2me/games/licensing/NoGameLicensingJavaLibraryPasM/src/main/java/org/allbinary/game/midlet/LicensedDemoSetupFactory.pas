{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.midlet
unit LicensedDemoSetupFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DemoSetup;

type
  {AB:TYPES}
  TLicensedDemoSetupFactory = class(TObject)
  public
    constructor Create;
        function getInstance: TDemoSetup; virtual;
  end;

implementation

{AB:CODE}

constructor TLicensedDemoSetupFactory.Create;
begin
  inherited Create;
end;
    

function TLicensedDemoSetupFactory.getInstance: TDemoSetup;
begin
        Exit(TDemoSetup.Create());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

