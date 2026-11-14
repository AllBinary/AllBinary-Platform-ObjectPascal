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
unit ShaderManager;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, CommonStrings, BasicArrayList;

type
  {AB:TYPES}
  TShaderManager = class(TObject)
  public
    LOAD_SHADER: string;
    commonStrings: TCommonStrings;
    GL_VERTEX_SHADER: Integer;
    GL_FRAGMENT_SHADER: Integer;
    class var instance: TShaderManager;
    procedure InitFields;
        class function getInstance: TShaderManager; static;
        constructor Create(GL_VERTEX_SHADER: Integer; GL_FRAGMENT_SHADER: Integer);
        function load(gl: IGL10; resource: string; shaderAsStringArray: TArray<string>; shaderType: Integer): Integer; virtual;
        function loadShader(gl: IGL10; resource: string; stringList: TBasicArrayList; shaderType: Integer): Integer; virtual;
  end;

implementation

{AB:CODE}

procedure TShaderManager.InitFields;
begin
  Self.LOAD_SHADER := 'loadShader';
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;
    

class function TShaderManager.getInstance: TShaderManager;
begin
        Exit(TShaderManager.instance);
end;
    

constructor TShaderManager.Create(GL_VERTEX_SHADER: Integer; GL_FRAGMENT_SHADER: Integer);
begin
    inherited Create;
    InitFields;
        Self.GL_VERTEX_SHADER := GL_VERTEX_SHADER;
        Self.GL_FRAGMENT_SHADER := GL_FRAGMENT_SHADER;
end;
    

function TShaderManager.load(gl: IGL10; resource: string; shaderAsStringArray: TArray<string>; shaderType: Integer): Integer;
begin
        Exit(-1);
end;
    

function TShaderManager.loadShader(gl: IGL10; resource: string; stringList: TBasicArrayList; shaderType: Integer): Integer;
begin
        Exit(-1);
end;

initialization
  {AB:INITIALIZATION}
  TShaderManager.instance := TShaderManager.Create(-1, -1);
  {AB:END}

end.

