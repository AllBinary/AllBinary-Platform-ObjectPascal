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
unit PlatformShaderComposite;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OpenGLProcessor, CompositeShaderUpdater, ShaderInitializer, ModelViewProjection, Shader, ShaderComposite;

type
  {AB:TYPES}
  TPlatformShaderComposite = class(TShaderComposite)
  public
        constructor Create(requiresOpenGLVersion: string; shaderArray: TArray<TShader>; compositeShaderUpdater_: TCompositeShaderUpdater; shaderInitializer_: TShaderInitializer; modelViewProjection_: TModelViewProjection; colorOpenGLProcessor: TOpenGLProcessor; vertexOpenGLProcessor: TOpenGLProcessor);
  end;

implementation
uses
  NullOpenGLProcessorFactory;


{AB:CODE}
    

constructor TPlatformShaderComposite.Create(requiresOpenGLVersion: string; shaderArray: TArray<TShader>; compositeShaderUpdater_: TCompositeShaderUpdater; shaderInitializer_: TShaderInitializer; modelViewProjection_: TModelViewProjection; colorOpenGLProcessor: TOpenGLProcessor; vertexOpenGLProcessor: TOpenGLProcessor);
begin
        inherited Create(requiresOpenGLVersion, shaderArray, compositeShaderUpdater_, shaderInitializer_, modelViewProjection_, colorOpenGLProcessor, vertexOpenGLProcessor, TNullOpenGLProcessorFactory.getInstance());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

