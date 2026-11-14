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
// package org.allbinary.animation.image
unit ImageAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, BaseImageAnimationFactory;

type
  {AB:TYPES}
  TImageAnimationFactory = class(TBaseImageAnimationFactory)
  public
        class function createFactory(image_: TImage): TImageAnimationFactory; static;
        constructor Create(image_: TImage; width: Integer; height: Integer; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function getInstance(instanceId: Integer): TAnimation; override;
  end;

implementation
uses
  ImageAnimation, AdjustedImageAnimation, OpenGLUtil, PrimitiveIntUtil;


{AB:CODE}
    

// throws Exception
class function TImageAnimationFactory.createFactory(image_: TImage): TImageAnimationFactory;
begin
        Exit(TImageAnimationFactory.Create(image_, image_.getWidth(), image_.getHeight(), 0, 0, TAnimationBehaviorFactory.getInstance()));
end;
    

constructor TImageAnimationFactory.Create(image_: TImage; width: Integer; height: Integer; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
        inherited Create(image_, TPrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory_);
end;
    

// throws Exception
function TImageAnimationFactory.getInstance(instanceId: Integer): TAnimation;
var
  scaledImage: TImage;
  openGLUtil_: TOpenGLUtil;
begin
        scaledImage := Self.animationFactoryImageScaleUtil.createImage(Self.getImage(), Self.animationFactoryInitializationVisitor.width, Self.animationFactoryInitializationVisitor.height, Self.scaleProperties.scaleWidth, Self.scaleProperties.scaleHeight);
        openGLUtil_ := TOpenGLUtil.getInstance();
        scaledImage := openGLUtil_.addImage(scaledImage);
        if ((Self.animationFactoryInitializationVisitor.dx) <> (0)) or ((Self.animationFactoryInitializationVisitor.dy) <> (0)) then begin
            Self.animationFactoryImageScaleUtil.processAdjust(Self);
            Exit(TAdjustedImageAnimation.Create(scaledImage, Self.animationFactoryInitializationVisitor.dx, Self.animationFactoryInitializationVisitor.dy, Self.animationBehaviorFactory.getOrCreateInstance()));
        end else begin
            Exit(TImageAnimation.Create(scaledImage, Self.animationBehaviorFactory.getOrCreateInstance()));
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

