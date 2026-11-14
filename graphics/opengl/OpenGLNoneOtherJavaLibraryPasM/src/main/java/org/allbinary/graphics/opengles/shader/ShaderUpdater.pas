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
unit ShaderUpdater;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, EGLConfig, GL10, RendererStrings, CommonStrings;

type
  {AB:TYPES}
  TShaderUpdater = class(TObject)
  public
    commonStrings: TCommonStrings;
    rendererStrings: TRendererStrings;
    class var instance: TShaderUpdater;
    procedure InitFields;
    constructor Create;
        class function getInstance: TShaderUpdater; static;
        procedure onSurfaceCreated(gl: IGL10; eglConfig_: TEGLConfig); virtual;
  end;

implementation

{AB:CODE}

procedure TShaderUpdater.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  Self.rendererStrings := TRendererStrings.getInstance();
end;

constructor TShaderUpdater.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TShaderUpdater.getInstance: TShaderUpdater;
begin
        Exit(TShaderUpdater.instance);
end;
    

procedure TShaderUpdater.onSurfaceCreated(gl: IGL10; eglConfig_: TEGLConfig);
begin
end;

initialization
  {AB:INITIALIZATION}
  TShaderUpdater.instance := TShaderUpdater.Create();
  {AB:END}

end.

