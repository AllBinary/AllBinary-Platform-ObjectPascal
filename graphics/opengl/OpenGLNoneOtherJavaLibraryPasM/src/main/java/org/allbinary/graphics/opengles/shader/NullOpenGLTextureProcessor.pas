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
unit NullOpenGLTextureProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OpenGLObject3dProcessor;

type
  {AB:TYPES}
  TNullOpenGLTextureProcessor = class(TObject)
  public
    class var instance: TOpenGLObject3dProcessor;
    constructor Create;
        class function getInstance: TOpenGLObject3dProcessor; static;
  end;

implementation

{AB:CODE}

constructor TNullOpenGLTextureProcessor.Create;
begin
  inherited Create;
end;
    

class function TNullOpenGLTextureProcessor.getInstance: TOpenGLObject3dProcessor;
begin
        Exit(TNullOpenGLTextureProcessor.instance);
end;

initialization
  {AB:INITIALIZATION}
  TNullOpenGLTextureProcessor.instance := TOpenGLObject3dProcessor.Create();
  {AB:END}

end.

