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
// package org.allbinary.emulator.device
unit TrueTypeFontUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, Image, BasicColor, OpenGLESImage, TrueTypeFontUtilBase;

type
  {AB:TYPES}
  TTrueTypeFontUtil = class(TTrueTypeFontUtilBase)
  public
    fontImage: TOpenGLESImage;
    class var instance: TTrueTypeFontUtil;
    procedure InitFields;
        class function getInstance: TTrueTypeFontUtil; static;
        constructor Create;
        function getAsTextureSize(textureSize: Integer): Integer; override;
        function getCellSize(cellSize: Integer): Integer; override;
        function getFontBitmap(filename: string; fontSize: Integer; cellSize: Integer; basicColor_: TBasicColor): TImage; virtual;
        procedure saveFontAtlasAsFile; virtual;
        function getFontBitmapGL(gl: IGL10; filename: string; cellSize: Integer; basicColor_: TBasicColor): TImage; virtual;
        function getFontWidths(filename: string; fontSize: Integer): TArray<Integer>; virtual;
  end;

implementation

{AB:CODE}

procedure TTrueTypeFontUtil.InitFields;
begin
  Self.fontImage := TOpenGLESImage.NULL_OPENGL_IMAGE;
end;
    

class function TTrueTypeFontUtil.getInstance: TTrueTypeFontUtil;
begin
        Exit(TTrueTypeFontUtil.instance);
end;
    

constructor TTrueTypeFontUtil.Create;
begin
        inherited Create(1);
        InitFields;
end;
    

function TTrueTypeFontUtil.getAsTextureSize(textureSize: Integer): Integer;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TTrueTypeFontUtil.getCellSize(cellSize: Integer): Integer;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TTrueTypeFontUtil.getFontBitmap(filename: string; fontSize: Integer; cellSize: Integer; basicColor_: TBasicColor): TImage;
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TTrueTypeFontUtil.saveFontAtlasAsFile;
begin
end;
    

function TTrueTypeFontUtil.getFontBitmapGL(gl: IGL10; filename: string; cellSize: Integer; basicColor_: TBasicColor): TImage;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TTrueTypeFontUtil.getFontWidths(filename: string; fontSize: Integer): TArray<Integer>;
begin
        raise SysUtils.Exception.Create('');
end;

initialization
  {AB:INITIALIZATION}
  TTrueTypeFontUtil.instance := TTrueTypeFontUtil.Create();
  {AB:END}

end.

