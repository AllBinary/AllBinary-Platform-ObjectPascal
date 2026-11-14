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
unit TopToBottomImageAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, BaseImageAnimationFactory;

type
  {AB:TYPES}
  TTopToBottomImageAnimationFactory = class(TBaseImageAnimationFactory)
  public
        constructor Create(image_: TImage; sequenceArray: TArray<Integer>; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function getInstance(instanceId: Integer): TAnimation; override;
  end;

implementation
uses
  TopToBottomImageAnimation;


{AB:CODE}
    

constructor TTopToBottomImageAnimationFactory.Create(image_: TImage; sequenceArray: TArray<Integer>; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
        inherited Create(image_, sequenceArray, image_.getWidth(), image_.getHeight(), 0, 0, animationBehaviorFactory_);
end;
    

// throws Exception
function TTopToBottomImageAnimationFactory.getInstance(instanceId: Integer): TAnimation;
var
  scaledImage: TImage;
begin
        scaledImage := Self.animationFactoryImageScaleUtil.createImage(Self.getImage(), Self.animationFactoryInitializationVisitor.width, Self.animationFactoryInitializationVisitor.height, Self.scaleProperties.scaleWidth, Self.scaleProperties.scaleHeight);
        Exit(TTopToBottomImageAnimation.Create(scaledImage, Self.getSequenceArray(), Self.animationBehaviorFactory.getOrCreateInstance()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

