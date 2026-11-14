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
// package org.allbinary.media.image
unit ImageCreationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image;

type
  {AB:TYPES}
  TImageCreationUtil = class(TObject)
  public
    class var instance: TImageCreationUtil;
        class function getInstance: TImageCreationUtil; static;
        constructor Create;
        function createImageWH(width: Integer; height: Integer): TImage; virtual;
        function createImage(width: Integer; height: Integer; maxScaleX: Single; maxScaleY: Single): TImage; virtual;
  end;

implementation
uses
  GameFeatureImageCacheFactory;


{AB:CODE}
    

class function TImageCreationUtil.getInstance: TImageCreationUtil;
begin
        Exit(TImageCreationUtil.instance);
end;
    

constructor TImageCreationUtil.Create;
begin
    inherited Create;
end;
    

// throws Exception
function TImageCreationUtil.createImageWH(width: Integer; height: Integer): TImage;
var
  image_: TImage;
begin
        image_ := TGameFeatureImageCacheFactory.getInstance().get(Self.ClassType.ClassName, width, height);
        Exit(image_);
end;
    

// throws Exception
function TImageCreationUtil.createImage(width: Integer; height: Integer; maxScaleX: Single; maxScaleY: Single): TImage;
var
  image_: TImage;
begin
        image_ := TGameFeatureImageCacheFactory.getInstance().get(Self.ClassType.ClassName, (Integer(Trunc(((width) * (maxScaleX))))) + (1), (Integer(Trunc(((height) * (maxScaleY))))) + (1));
        Exit(image_);
end;

initialization
  {AB:INITIALIZATION}
  TImageCreationUtil.instance := TImageCreationUtil.Create();
  {AB:END}

end.

