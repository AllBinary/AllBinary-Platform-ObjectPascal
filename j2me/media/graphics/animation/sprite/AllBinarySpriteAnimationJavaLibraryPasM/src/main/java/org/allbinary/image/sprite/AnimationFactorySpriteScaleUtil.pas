{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.image.sprite
unit AnimationFactorySpriteScaleUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Sprite, OpenGLUtil, ImageCache, OpenGLESImageExclusionUtil, J2SEMath, ImageScaleUtil;

type
  {AB:TYPES}
  TAnimationFactorySpriteScaleUtil = class(TObject)
  public
    imageCache: TImageCache;
    imageScaleUtil: TImageScaleUtil;
    openGLUtil: TOpenGLUtil;
    j2seMath: TJ2SEMath;
    openGLESImageExclusionUtil: TOpenGLESImageExclusionUtil;
    class var instance: TAnimationFactorySpriteScaleUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAnimationFactorySpriteScaleUtil; static;
        function createImage(image_: TImage; width: Integer; height: Integer; scaleWidth: Integer; scaleHeight: Integer): TSprite; virtual;
  end;

implementation
uses
  SpriteFactory, ImageCacheFactory, LogUtil, StringMaker, CommonLabels, CommonStrings;


{AB:CODE}

procedure TAnimationFactorySpriteScaleUtil.InitFields;
begin
  Self.imageCache := TImageCacheFactory.getInstance();
  Self.imageScaleUtil := TImageScaleUtil.getInstance();
  Self.openGLUtil := TOpenGLUtil.getInstance();
  Self.j2seMath := TJ2SEMath.getInstance();
  Self.openGLESImageExclusionUtil := TOpenGLESImageExclusionUtil.getInstance();
end;

constructor TAnimationFactorySpriteScaleUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAnimationFactorySpriteScaleUtil.getInstance: TAnimationFactorySpriteScaleUtil;
begin
        Exit(TAnimationFactorySpriteScaleUtil.instance);
end;
    

// throws Exception
function TAnimationFactorySpriteScaleUtil.createImage(image_: TImage; width: Integer; height: Integer; scaleWidth: Integer; scaleHeight: Integer): TSprite;
var
  spriteFactory_: TSpriteFactory;
  sprite_: TSprite;
  scaledImage: TImage;
  scaleX: Single;
  scaleY: Single;
  width2: Integer;
  height2: Integer;
  multiplesOf16Width: Integer;
  by16Width: Integer;
  multiplesOf16Height: Integer;
  by16Height: Integer;
begin
        spriteFactory_ := TSpriteFactory.getInstance();
        
        
        if ((scaleWidth) <> (0)) and ((scaleHeight) <> (0)) then begin
            scaleX := ((scaleWidth)) / ((width));
            scaleY := ((scaleHeight)) / ((height));
            if ((((scaleX) = (1.0)) and ((scaleY) = (1.0)))) or ((((scaleX) = (0.0)) or ((scaleY) = (0.0)))) then begin
                scaledImage := Self.openGLUtil.addImage(image_);
                sprite_ := spriteFactory_.createSprite(scaledImage, width, height);
            end else begin
                if Self.openGLESImageExclusionUtil.isCustomScaling(image_) then begin
                    width2 := Self.j2seMath.round(((scaleWidth)) - (0.5));
                    height2 := Self.j2seMath.round(((scaleHeight)) - (0.5));
                    multiplesOf16Width := (width2) div (16);
                    by16Width := (multiplesOf16Width) * (16);
                    scaleX := ((by16Width)) / (width);
                    multiplesOf16Height := (height2) div (16);
                    by16Height := (multiplesOf16Height) * (16);
                    scaleY := ((by16Height)) / (height);
                    if (scaleWidth) < (width) then begin
                        scaleX := (scaleX) * (2.35);
                    end;
                    if (scaleHeight) < (height) then begin
                        scaleY := (scaleY) * (2.35);
                    end;
                end;
                scaledImage := Self.imageScaleUtil.createImage2(Self.imageCache, image_, scaleX, 1.0, scaleY, 1.0, True);
                sprite_ := spriteFactory_.createSprite(scaledImage, Integer(Trunc(((width) * (scaleX)))), Integer(Trunc(((height) * (scaleY)))));
            end;
        end else begin
            scaledImage := Self.openGLUtil.addImage(image_);
            sprite_ := spriteFactory_.createSprite(scaledImage, width, height);
        end;
        Exit(sprite_);
end;

initialization
  {AB:INITIALIZATION}
  TAnimationFactorySpriteScaleUtil.instance := TAnimationFactorySpriteScaleUtil.Create();
  {AB:END}

end.

