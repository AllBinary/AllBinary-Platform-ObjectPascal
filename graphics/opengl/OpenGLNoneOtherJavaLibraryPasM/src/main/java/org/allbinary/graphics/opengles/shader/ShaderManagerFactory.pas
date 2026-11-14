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
unit ShaderManagerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ShaderManager;

type
  {AB:TYPES}
  TShaderManagerFactory = class(TObject)
  public
    class var instance: TShaderManagerFactory;
    constructor Create;
        class function getInstance: TShaderManagerFactory; static;
        function create_: TShaderManager; virtual;
  end;

implementation

{AB:CODE}

constructor TShaderManagerFactory.Create;
begin
  inherited Create;
end;
    

class function TShaderManagerFactory.getInstance: TShaderManagerFactory;
begin
        Exit(TShaderManagerFactory.instance);
end;
    

function TShaderManagerFactory.create_: TShaderManager;
begin
        Exit(TShaderManager.getInstance());
end;

initialization
  {AB:INITIALIZATION}
  TShaderManagerFactory.instance := TShaderManagerFactory.Create();
  {AB:END}

end.

