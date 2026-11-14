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
// package org.allbinary.image
unit ImageFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image;

type
  {AB:TYPES}
  // ImageCacheBaseJavaLibrary - J2ME
  TImageFactory = class(TObject)
  public
    class var instance: TImageFactory;
    constructor Create;
        class function getInstance: TImageFactory; static;
        function createImageUrl(url: string): TImage; virtual;
        function createImage(caller: string; width: Integer; height: Integer): TImage; virtual;
        function createImageFromInputStream(key: TObject; inputStream_: TInputStream): TImage; overload; virtual;
        function createImageFromInputStream(inputStream_: TInputStream): TImage; overload; virtual;
  end;

implementation
uses
  MIDPUtil;


{AB:CODE}

constructor TImageFactory.Create;
begin
  inherited Create;
end;
    

class function TImageFactory.getInstance: TImageFactory;
begin
        Exit(TImageFactory.instance);
end;
    

// throws Exception
function TImageFactory.createImageUrl(url: string): TImage;
begin
        Exit(TImage.createImage(url));
end;
    

// throws Exception
function TImageFactory.createImage(caller: string; width: Integer; height: Integer): TImage;
begin
        Exit(TMIDPUtil.getInstance().createImageWH(width, height));
end;
    

// throws Exception
function TImageFactory.createImageFromInputStream(key: TObject; inputStream_: TInputStream): TImage;
var
  image_: TImage;
begin
        image_ := TMIDPUtil.getInstance().createImageFromInputStream(inputStream_);
        Exit(image_);
end;
    

// throws Exception
function TImageFactory.createImageFromInputStream(inputStream_: TInputStream): TImage;
begin
        Exit(TMIDPUtil.getInstance().createImageFromInputStream(inputStream_));
end;

initialization
  {AB:INITIALIZATION}
  TImageFactory.instance := TImageFactory.Create();
  {AB:END}

end.

