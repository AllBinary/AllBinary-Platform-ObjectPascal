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
// package org.allbinary.image.opengles
unit OpenGLImageFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, PlatformBitmapBaseFactory, PlatformTextureBaseFactory;

type
  {AB:TYPES}
  TOpenGLImageFactory = class(TObject)
  public
    class var NULL_OPENGL_IMAGE_FACTORY: TOpenGLImageFactory;
    constructor Create;
        function getInstance(image_: TImage; bitmapFactory: TPlatformBitmapBaseFactory; textureFactory: TPlatformTextureBaseFactory): TImage; virtual;
  end;

implementation

{AB:CODE}

constructor TOpenGLImageFactory.Create;
begin
  inherited Create;
end;
    

function TOpenGLImageFactory.getInstance(image_: TImage; bitmapFactory: TPlatformBitmapBaseFactory; textureFactory: TPlatformTextureBaseFactory): TImage;
begin
        raise SysUtils.Exception.Create('');
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLImageFactory.NULL_OPENGL_IMAGE_FACTORY := TOpenGLImageFactory.Create();
  {AB:END}

end.

