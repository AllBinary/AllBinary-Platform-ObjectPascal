{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.image.opengles
unit ModifierOpenGLESImageProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OpenGLESImageProcessor;

type
  {AB:TYPES}
  TModifierOpenGLESImageProcessor = class(TOpenGLESImageProcessor)
  public
    class var instanceC: TModifierOpenGLESImageProcessor;
    constructor Create;
        class function getInstance: TModifierOpenGLESImageProcessor; static;
  end;

implementation

{AB:CODE}

constructor TModifierOpenGLESImageProcessor.Create;
begin
  inherited Create;
end;
    

class function TModifierOpenGLESImageProcessor.getInstance: TModifierOpenGLESImageProcessor;
begin
        Exit(TModifierOpenGLESImageProcessor.instanceC);
end;

initialization
  {AB:INITIALIZATION}
  TModifierOpenGLESImageProcessor.instanceC := TModifierOpenGLESImageProcessor.Create();
  {AB:END}

end.

