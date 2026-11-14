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
unit UniformLightPositionOpenGLProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, ShaderComposite, OpenGLObject3dProcessor;

type
  {AB:TYPES}
  TUniformLightPositionOpenGLProcessor = class(TOpenGLObject3dProcessor)
  public
        constructor Create(shaderComposite_: TShaderComposite; handleIndex: Integer);
        procedure process(gl: IGL10; unused: TObject); override;
  end;

implementation

{AB:CODE}
    

constructor TUniformLightPositionOpenGLProcessor.Create(shaderComposite_: TShaderComposite; handleIndex: Integer);
begin
    inherited Create;
end;
    

procedure TUniformLightPositionOpenGLProcessor.process(gl: IGL10; unused: TObject);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

