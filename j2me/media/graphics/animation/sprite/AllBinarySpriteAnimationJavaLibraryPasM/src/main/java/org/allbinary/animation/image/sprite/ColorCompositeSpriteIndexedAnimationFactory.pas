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
// package org.allbinary.animation.image.sprite
unit ColorCompositeSpriteIndexedAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, ProceduralAnimationInterfaceFactoryInterface, BaseImageAnimationFactory, BasicColor, AnimationFactorySpriteScaleUtil, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TColorCompositeSpriteIndexedAnimationFactory = class(TBaseImageAnimationFactory, IProceduralAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    animationFactorySpriteScaleUtil: TAnimationFactorySpriteScaleUtil;
    basicColorArray: TArray<TBasicColor>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(image_: TImage; basicColorArray: TArray<TBasicColor>; width: Integer; height: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        function getInstanceAnimation(animationInterface: TAnimation): TAnimation; virtual;
  end;

implementation
uses
  SpriteIndexedAnimation, Sprite, PrimitiveIntUtil;


{AB:CODE}

procedure TColorCompositeSpriteIndexedAnimationFactory.InitFields;
begin
  Self.animationFactorySpriteScaleUtil := TAnimationFactorySpriteScaleUtil.getInstance();
  
end;

function TColorCompositeSpriteIndexedAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TColorCompositeSpriteIndexedAnimationFactory.Create(image_: TImage; basicColorArray: TArray<TBasicColor>; width: Integer; height: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
        inherited Create(image_, TPrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory_);
        InitFields;
        Self.basicColorArray := basicColorArray;
end;
    

// throws Exception
function TColorCompositeSpriteIndexedAnimationFactory.getInstance(instanceId: Integer): TAnimation;
var
  sprite_: TSprite;
begin
        sprite_ := Self.animationFactorySpriteScaleUtil.createImage(Self.getImage(), Self.animationFactoryInitializationVisitor.width, Self.animationFactoryInitializationVisitor.height, Self.scaleProperties.scaleWidth, Self.scaleProperties.scaleHeight);
        Exit(TSpriteIndexedAnimation.Create(sprite_, Self.getImage(), Self.basicColorArray, Self.animationBehaviorFactory.getOrCreateInstance()));
end;
    

// throws Exception
function TColorCompositeSpriteIndexedAnimationFactory.getInstanceAnimation(animationInterface: TAnimation): TAnimation;
begin
        Exit(Self.getInstance(0));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

