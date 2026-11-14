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
unit OpenGLImageCacheFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ImageCache;

type
  {AB:TYPES}
  // OpenGLESNullImageJavaLibrary
  TOpenGLImageCacheFactory = class(TObject)
  public
    class var IMAGE_CACHE: TImageCache;
    constructor Create;
        class function getInstance: TImageCache; static;
        class procedure init; static;
  end;

implementation

{AB:CODE}

constructor TOpenGLImageCacheFactory.Create;
begin
  inherited Create;
end;
    

class function TOpenGLImageCacheFactory.getInstance: TImageCache;
begin
        Exit(TOpenGLImageCacheFactory.IMAGE_CACHE);
end;
    

class procedure TOpenGLImageCacheFactory.init;
begin
        if (TOpenGLImageCacheFactory.IMAGE_CACHE) = (nil) then begin
        end;
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLImageCacheFactory.IMAGE_CACHE := TImageCache.NULL_IMAGE_CACHE;
  {AB:END}

end.

