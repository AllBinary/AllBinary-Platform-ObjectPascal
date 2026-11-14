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
// package org.allbinary.graphics.opengles.shader
unit SimpleShaderInitializer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ShaderInitializer;

type
  {AB:TYPES}
  TSimpleShaderInitializer = class(TShaderInitializer)
  public
    class var instanceC: TSimpleShaderInitializer;
    constructor Create;
        class function getInstance: TSimpleShaderInitializer; static;
  end;

implementation

{AB:CODE}

constructor TSimpleShaderInitializer.Create;
begin
  inherited Create;
end;
    

class function TSimpleShaderInitializer.getInstance: TSimpleShaderInitializer;
begin
        Exit(TSimpleShaderInitializer.instanceC);
end;

initialization
  {AB:INITIALIZATION}
  TSimpleShaderInitializer.instanceC := TSimpleShaderInitializer.Create();
  {AB:END}

end.

