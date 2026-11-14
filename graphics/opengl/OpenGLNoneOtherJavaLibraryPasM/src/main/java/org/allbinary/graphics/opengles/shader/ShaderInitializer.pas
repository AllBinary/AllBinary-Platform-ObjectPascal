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
unit ShaderInitializer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, CommonStrings, Shader;

type
  {AB:TYPES}
  TShaderInitializer = class(TObject)
  public
    commonStrings: TCommonStrings;
    class var instance: TShaderInitializer;
    procedure InitFields;
    constructor Create;
        class function getInstance: TShaderInitializer; static;
        function init(gl: IGL10; shader: TArray<TShader>; attributeArray: TArray<string>): Integer; virtual;
  end;

implementation

{AB:CODE}

procedure TShaderInitializer.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
end;

constructor TShaderInitializer.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TShaderInitializer.getInstance: TShaderInitializer;
begin
        Exit(TShaderInitializer.instance);
end;
    

function TShaderInitializer.init(gl: IGL10; shader: TArray<TShader>; attributeArray: TArray<string>): Integer;
begin
        Exit(-1);
end;

initialization
  {AB:INITIALIZATION}
  TShaderInitializer.instance := TShaderInitializer.Create();
  {AB:END}

end.

