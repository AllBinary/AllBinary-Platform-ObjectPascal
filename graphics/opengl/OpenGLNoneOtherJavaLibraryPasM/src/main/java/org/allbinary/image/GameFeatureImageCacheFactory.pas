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
// package org.allbinary.image
unit GameFeatureImageCacheFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ImageCache;

type
  {AB:TYPES}
  TGameFeatureImageCacheFactory = class(TObject)
  public
    constructor Create;
        class function getInstance: TImageCache; static;
        class procedure init; static;
        class procedure releaseAll; static;
  end;

implementation
uses
  ImageCacheFactory;


{AB:CODE}

constructor TGameFeatureImageCacheFactory.Create;
begin
  inherited Create;
end;
    

class function TGameFeatureImageCacheFactory.getInstance: TImageCache;
begin
        Exit(TImageCacheFactory.getInstance());
end;
    

class procedure TGameFeatureImageCacheFactory.init;
begin
        TImageCacheFactory.init();
end;
    

class procedure TGameFeatureImageCacheFactory.releaseAll;
begin
        TImageCacheFactory.getInstance().releaseAll();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

