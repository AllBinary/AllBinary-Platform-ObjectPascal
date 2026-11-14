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
// package org.allbinary.animation.image
unit BottomToTopImageAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, BaseImageAnimationFactory;

type
  {AB:TYPES}
  TBottomToTopImageAnimationFactory = class(TBaseImageAnimationFactory)
  public
        constructor Create(image_: TImage; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function getInstance(instanceId: Integer): TAnimation; override;
  end;

implementation
uses
  BottomToTopImageAnimation, PrimitiveIntUtil;


{AB:CODE}
    

constructor TBottomToTopImageAnimationFactory.Create(image_: TImage; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
        inherited Create(image_, TPrimitiveIntUtil.getArrayInstance(), image_.getWidth(), image_.getHeight(), 0, 0, animationBehaviorFactory_);
end;
    

// throws Exception
function TBottomToTopImageAnimationFactory.getInstance(instanceId: Integer): TAnimation;
var
  scaledImage: TImage;
begin
        scaledImage := Self.animationFactoryImageScaleUtil.createImage(Self.getImage(), Self.animationFactoryInitializationVisitor.width, Self.animationFactoryInitializationVisitor.height, Self.scaleProperties.scaleWidth, Self.scaleProperties.scaleHeight);
        Exit(TBottomToTopImageAnimation.Create(scaledImage, Self.animationBehaviorFactory.getOrCreateInstance()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

