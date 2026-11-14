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
unit CompositeShaderUpdater;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, EGLConfig, GL10, CommonSeps, ShaderUpdater;

type
  {AB:TYPES}
  TCompositeShaderUpdater = class(TShaderUpdater)
  public
    commonSeps: TCommonSeps;
    class var instanceC: TCompositeShaderUpdater;
    procedure InitFields;
        class function getInstance: TCompositeShaderUpdater; static;
        constructor Create(uniformBlockArray: TArray<string>; uniformArray: TArray<string>; attributeArray: TArray<string>; attributeHandleArray: TArray<Integer>);
        procedure onSurfaceCreated(gl: IGL10; eglConfig_: TEGLConfig; programHandle: Integer); virtual;
        procedure onSurfaceDestroyed(gl: IGL10); virtual;
  end;

implementation
uses
  NullUtil, StringUtil;


{AB:CODE}

procedure TCompositeShaderUpdater.InitFields;
begin
  Self.commonSeps := TCommonSeps.getInstance();
end;
    

class function TCompositeShaderUpdater.getInstance: TCompositeShaderUpdater;
begin
        Exit(TCompositeShaderUpdater.instanceC);
end;
    

constructor TCompositeShaderUpdater.Create(uniformBlockArray: TArray<string>; uniformArray: TArray<string>; attributeArray: TArray<string>; attributeHandleArray: TArray<Integer>);
begin
    inherited Create;
    InitFields;
end;
    

procedure TCompositeShaderUpdater.onSurfaceCreated(gl: IGL10; eglConfig_: TEGLConfig; programHandle: Integer);
begin
end;
    

procedure TCompositeShaderUpdater.onSurfaceDestroyed(gl: IGL10);
begin
end;

initialization
  {AB:INITIALIZATION}
  TCompositeShaderUpdater.instanceC := TCompositeShaderUpdater.Create(TStringUtil.getInstance().getArrayInstance(), TStringUtil.getInstance().getArrayInstance(), TStringUtil.getInstance().getArrayInstance(), TNullUtil.getInstance().NULL_INT_ARRAY);
  {AB:END}

end.

