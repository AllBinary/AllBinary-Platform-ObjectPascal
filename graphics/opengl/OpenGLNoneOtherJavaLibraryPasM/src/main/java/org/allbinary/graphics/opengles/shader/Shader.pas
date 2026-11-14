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
unit Shader;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TShader = class(TObject)
  public
    shaderName: string;
    shaderStringList: TBasicArrayList;
    shaderAsString: string;
    shaderHandle: Integer;
    procedure InitFields;
    constructor Create;
  end;

implementation
uses
  StringUtil, BasicArrayListUtil;


{AB:CODE}

procedure TShader.InitFields;
begin
  Self.shaderName := TStringUtil.getInstance().EMPTY_STRING;
  Self.shaderStringList := TBasicArrayListUtil.getInstance().getImmutableInstance();
  Self.shaderAsString := TStringUtil.getInstance().EMPTY_STRING;
  
end;

constructor TShader.Create;
begin
  inherited Create;
  InitFields;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

