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
unit AnimationFrameToImageUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation;

type
  {AB:TYPES}
  TAnimationFrameToImageUtil = class(TObject)
  public
    class var instance: TAnimationFrameToImageUtil;
    constructor Create;
        class function getInstance: TAnimationFrameToImageUtil; static;
        function getInstanceTranslate(width: Integer; height: Integer; animationInterface: TAnimation): TImage; virtual;
        function getInstanceWH(width: Integer; height: Integer; animationInterface: TAnimation): TImage; virtual;
  end;

implementation
uses
  GameFeatureImageCacheFactory, Graphics;


{AB:CODE}

constructor TAnimationFrameToImageUtil.Create;
begin
  inherited Create;
end;
    

class function TAnimationFrameToImageUtil.getInstance: TAnimationFrameToImageUtil;
begin
        Exit(TAnimationFrameToImageUtil.instance);
end;
    

// throws Exception
function TAnimationFrameToImageUtil.getInstanceTranslate(width: Integer; height: Integer; animationInterface: TAnimation): TImage;
var
  image_: TImage;
  graphics_: TGraphics;
  tranlateX: Integer;
  tranlateY: Integer;
begin
        image_ := TGameFeatureImageCacheFactory.getInstance().get(TJava.ToObject(TAnimationFrameToImageUtil.instance).ClassType.ClassName, (TJava.SignedRightShift(((width) * (3)), 1)), (TJava.SignedRightShift(((height) * (3)), 1)));
        graphics_ := image_.getGraphics();
        tranlateX := (TJava.SignedRightShift(width, 2));
        tranlateY := (TJava.SignedRightShift(height, 2));
        graphics_.translate(tranlateX, tranlateY);
        animationInterface.paintXY(graphics_, 0, 0);
        graphics_.translate(-tranlateX, -tranlateY);
        Exit(image_);
end;
    

// throws Exception
function TAnimationFrameToImageUtil.getInstanceWH(width: Integer; height: Integer; animationInterface: TAnimation): TImage;
var
  image_: TImage;
  graphics_: TGraphics;
begin
        image_ := TGameFeatureImageCacheFactory.getInstance().get(TJava.ToObject(TAnimationFrameToImageUtil.instance).ClassType.ClassName, width, height);
        graphics_ := image_.getGraphics();
        animationInterface.paintXY(graphics_, 0, 0);
        Exit(image_);
end;

initialization
  {AB:INITIALIZATION}
  TAnimationFrameToImageUtil.instance := TAnimationFrameToImageUtil.Create();
  {AB:END}

end.

