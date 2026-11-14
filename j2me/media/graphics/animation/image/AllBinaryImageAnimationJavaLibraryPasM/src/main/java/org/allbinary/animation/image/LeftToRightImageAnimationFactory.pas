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
unit LeftToRightImageAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, BaseImageAnimationFactory;

type
  {AB:TYPES}
  TLeftToRightImageAnimationFactory = class(TBaseImageAnimationFactory)
  public
        constructor Create(image_: TImage; sequenceArray: TArray<Integer>; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function getInstance(instanceId: Integer): TAnimation; override;
  end;

implementation
uses
  LeftToRightImageAnimation, AdjustedLeftToRightImageAnimation;


{AB:CODE}
    

constructor TLeftToRightImageAnimationFactory.Create(image_: TImage; sequenceArray: TArray<Integer>; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
        inherited Create(image_, sequenceArray, image_.getWidth(), image_.getHeight(), dx, dy, animationBehaviorFactory_);
end;
    

// throws Exception
function TLeftToRightImageAnimationFactory.getInstance(instanceId: Integer): TAnimation;
var
  scaledImage: TImage;
begin
        scaledImage := Self.animationFactoryImageScaleUtil.createImage(Self.getImage(), Self.animationFactoryInitializationVisitor.width, Self.animationFactoryInitializationVisitor.height, Self.scaleProperties.scaleWidth, Self.scaleProperties.scaleHeight);
        if ((Self.animationFactoryInitializationVisitor.dx) <> (0)) or ((Self.animationFactoryInitializationVisitor.dy) <> (0)) then begin
            Self.animationFactoryImageScaleUtil.processAdjust(Self);
            Exit(TAdjustedLeftToRightImageAnimation.Create(scaledImage, Self.getSequenceArray(), Self.animationFactoryInitializationVisitor.dx, Self.animationFactoryInitializationVisitor.dy, Self.animationBehaviorFactory.getOrCreateInstance()));
        end else begin
            Exit(TLeftToRightImageAnimation.Create(scaledImage, Self.getSequenceArray(), Self.animationBehaviorFactory.getOrCreateInstance()));
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

