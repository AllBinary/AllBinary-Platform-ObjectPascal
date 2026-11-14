{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
unit OpenGLCapabilities;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TOpenGLCapabilities = class(TObject)
  public
    CUSTOM_GL_SURFACE_VIEW: Boolean;
    VERSION_1_0: string;
    VERSION_1_1: string;
    VERSION_2_0: string;
    VERSION_3_0: string;
    VERSION_3_1: string;
    VERSION_3_2: string;
    VERSION_HIGHER_THAN_EXISTS: string;
    glVersion: string;
    shaderVersion: Integer;
    glInstanceVersion: string;
    maxTextureSize: Integer;
    class var instance: TOpenGLCapabilities;
    procedure InitFields;
        class function getInstance: TOpenGLCapabilities; static;
        constructor Create;
        function isInitialized: Boolean; virtual;
        procedure initCapabilities(gl: TObject); virtual;
        function isGlExtensionDrawTexture: Boolean; virtual;
        function getGlVersion: string; virtual;
        function isVertexBufferObjectSupport: Boolean; virtual;
        function isTextureSizeValid(widthAndHeight: Integer): Boolean; virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure TOpenGLCapabilities.InitFields;
begin
  Self.CUSTOM_GL_SURFACE_VIEW := True;
  Self.VERSION_1_0 := '1.0';
  Self.VERSION_1_1 := '1.1';
  Self.VERSION_2_0 := '2.0';
  Self.VERSION_3_0 := '3.0';
  Self.VERSION_3_1 := '3.1';
  Self.VERSION_3_2 := '3.2';
  Self.VERSION_HIGHER_THAN_EXISTS := '999.999';
  Self.glVersion := TStringUtil.getInstance().EMPTY_STRING;
  Self.shaderVersion := 0;
  Self.glInstanceVersion := TStringUtil.getInstance().EMPTY_STRING;
  Self.maxTextureSize := 64;
end;
    

class function TOpenGLCapabilities.getInstance: TOpenGLCapabilities;
begin
        Exit(TOpenGLCapabilities.instance);
end;
    

constructor TOpenGLCapabilities.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TOpenGLCapabilities.isInitialized: Boolean;
begin
        Exit(True);
end;
    

procedure TOpenGLCapabilities.initCapabilities(gl: TObject);
begin
end;
    

function TOpenGLCapabilities.isGlExtensionDrawTexture: Boolean;
begin
        Exit(False);
end;
    

function TOpenGLCapabilities.getGlVersion: string;
begin
        Exit(Self.glVersion);
end;
    

function TOpenGLCapabilities.isVertexBufferObjectSupport: Boolean;
begin
        Exit(False);
end;
    

function TOpenGLCapabilities.isTextureSizeValid(widthAndHeight: Integer): Boolean;
begin
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLCapabilities.instance := TOpenGLCapabilities.Create();
  {AB:END}

end.

