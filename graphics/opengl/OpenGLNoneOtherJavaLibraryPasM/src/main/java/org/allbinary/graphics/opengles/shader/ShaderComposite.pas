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
unit ShaderComposite;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, OpenGLProcessor, ShaderInitializer, CompositeShaderUpdater, ModelViewProjection, OpenGLObject3dProcessor, Shader;

type
  {AB:TYPES}
  TShaderComposite = class(TObject)
  public
    disableProgramShaderOpenGLProcessor: TOpenGLProcessor;
    requiresOpenGLVersion: string;
    shaderArray: TArray<TShader>;
    shaderInitializer: TShaderInitializer;
    compositeShaderUpdater: TCompositeShaderUpdater;
    modelViewProjection: TModelViewProjection;
    colorOpenGLProcessor: TOpenGLProcessor;
    vertexOpenGLProcessor: TOpenGLProcessor;
    useProgramShaderOpenGLProcessor: TOpenGLProcessor;
    shaderMatrixOpenGLProcessor: TOpenGLProcessor;
    colorEnableVertexAttribArrayOpenGLProcessor: TOpenGLProcessor;
    normalEnableVertexAttribArrayOpenGLProcessor: TOpenGLProcessor;
    vertexEnableVertexAttribArrayOpenGLProcessor: TOpenGLProcessor;
    textureEnableVertexAttribArrayOpenGLProcessor: TOpenGLProcessor;
    colorDisableVertexAttribArrayOpenGLProcessor: TOpenGLProcessor;
    normalDisableVertexAttribArrayOpenGLProcessor: TOpenGLProcessor;
    vertexDisableVertexAttribArrayOpenGLProcessor: TOpenGLProcessor;
    textureDisableVertexAttribArrayOpenGLProcessor: TOpenGLProcessor;
    uniformLightPositionOpenGLProcessor: TOpenGLObject3dProcessor;
    uniformLightColorOpenGLProcessor: TOpenGLObject3dProcessor;
    uniformCameraPositionOpenGLProcessor: TOpenGLObject3dProcessor;
    uniformTextureUnitOpenGLProcessor: TOpenGLObject3dProcessor;
    programHandle: Integer;
    procedure InitFields;
        constructor Create(requiresOpenGLVersion: string; shaderArray: TArray<TShader>; compositeShaderUpdater_: TCompositeShaderUpdater; shaderInitializer_: TShaderInitializer; modelViewProjection_: TModelViewProjection; colorOpenGLProcessor: TOpenGLProcessor; vertexOpenGLProcessor: TOpenGLProcessor; disableProgramShaderOpenGLProcessor: TOpenGLProcessor);
        procedure init(gl: IGL10); virtual;
  end;

implementation
uses
  NullOpenGLTextureProcessor, NullOpenGLProcessorFactory, StringUtil;


{AB:CODE}

procedure TShaderComposite.InitFields;
begin
  
  
  
  
  
  
  
  
  Self.useProgramShaderOpenGLProcessor := TNullOpenGLProcessorFactory.getInstance();
  Self.shaderMatrixOpenGLProcessor := TNullOpenGLProcessorFactory.getInstance();
  Self.colorEnableVertexAttribArrayOpenGLProcessor := TNullOpenGLProcessorFactory.getInstance();
  Self.normalEnableVertexAttribArrayOpenGLProcessor := TNullOpenGLProcessorFactory.getInstance();
  Self.vertexEnableVertexAttribArrayOpenGLProcessor := TNullOpenGLProcessorFactory.getInstance();
  Self.textureEnableVertexAttribArrayOpenGLProcessor := TNullOpenGLProcessorFactory.getInstance();
  Self.colorDisableVertexAttribArrayOpenGLProcessor := TNullOpenGLProcessorFactory.getInstance();
  Self.normalDisableVertexAttribArrayOpenGLProcessor := TNullOpenGLProcessorFactory.getInstance();
  Self.vertexDisableVertexAttribArrayOpenGLProcessor := TNullOpenGLProcessorFactory.getInstance();
  Self.textureDisableVertexAttribArrayOpenGLProcessor := TNullOpenGLProcessorFactory.getInstance();
  Self.uniformLightPositionOpenGLProcessor := TNullOpenGLTextureProcessor.getInstance();
  Self.uniformLightColorOpenGLProcessor := TNullOpenGLTextureProcessor.getInstance();
  Self.uniformCameraPositionOpenGLProcessor := TNullOpenGLTextureProcessor.getInstance();
  Self.uniformTextureUnitOpenGLProcessor := TNullOpenGLTextureProcessor.getInstance();
  
end;
    

constructor TShaderComposite.Create(requiresOpenGLVersion: string; shaderArray: TArray<TShader>; compositeShaderUpdater_: TCompositeShaderUpdater; shaderInitializer_: TShaderInitializer; modelViewProjection_: TModelViewProjection; colorOpenGLProcessor: TOpenGLProcessor; vertexOpenGLProcessor: TOpenGLProcessor; disableProgramShaderOpenGLProcessor: TOpenGLProcessor);
begin
    inherited Create;
    InitFields;
        Self.requiresOpenGLVersion := requiresOpenGLVersion;
        Self.shaderArray := shaderArray;
        Self.shaderInitializer := shaderInitializer_;
        Self.compositeShaderUpdater := compositeShaderUpdater_;
        Self.modelViewProjection := modelViewProjection_;
        Self.colorOpenGLProcessor := colorOpenGLProcessor;
        Self.vertexOpenGLProcessor := vertexOpenGLProcessor;
        Self.disableProgramShaderOpenGLProcessor := disableProgramShaderOpenGLProcessor;
end;
    

procedure TShaderComposite.init(gl: IGL10);
begin
        Self.programHandle := Self.shaderInitializer.init(gl, Self.shaderArray, TStringUtil.getInstance().getArrayInstance());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

