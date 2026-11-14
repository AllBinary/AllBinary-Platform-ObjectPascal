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
// package org.allbinary.image.opengles
unit OpenGLImageUtilBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OpenGLBitmap, BasicColor;

type
  {AB:TYPES}
  TOpenGLImageUtilBase = class(TObject)
  public
    constructor Create;
        function paint(alphaBitmap: TOpenGLBitmap; originalBitmap: TOpenGLBitmap; index: Integer): TOpenGLBitmap; overload; virtual;
        function paint(colorBitmap: TOpenGLBitmap; originalBitmap: TOpenGLBitmap; alpha: Integer; basicColor_: TBasicColor): TOpenGLBitmap; overload; virtual;
        function createImage(name: string): TOpenGLBitmap; virtual;
        function createImageFromInputStream(inputStream_: TInputStream): TOpenGLBitmap; virtual;
  end;

implementation

{AB:CODE}

constructor TOpenGLImageUtilBase.Create;
begin
  inherited Create;
end;
    

function TOpenGLImageUtilBase.paint(alphaBitmap: TOpenGLBitmap; originalBitmap: TOpenGLBitmap; index: Integer): TOpenGLBitmap;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TOpenGLImageUtilBase.paint(colorBitmap: TOpenGLBitmap; originalBitmap: TOpenGLBitmap; alpha: Integer; basicColor_: TBasicColor): TOpenGLBitmap;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws IOException
function TOpenGLImageUtilBase.createImage(name: string): TOpenGLBitmap;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws IOException
function TOpenGLImageUtilBase.createImageFromInputStream(inputStream_: TInputStream): TOpenGLBitmap;
begin
        raise SysUtils.Exception.Create('');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

