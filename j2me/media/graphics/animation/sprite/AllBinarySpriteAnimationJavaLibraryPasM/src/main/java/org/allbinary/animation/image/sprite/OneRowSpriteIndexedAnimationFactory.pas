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
unit OneRowSpriteIndexedAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, BaseImageAnimationFactory, AnimationFactorySpriteScaleUtil;

type
  {AB:TYPES}
  TOneRowSpriteIndexedAnimationFactory = class(TBaseImageAnimationFactory)
  public
    animationFactorySpriteScaleUtil: TAnimationFactorySpriteScaleUtil;
    procedure InitFields;
        class function createFactoryDX(image_: TImage; dx: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TOneRowSpriteIndexedAnimationFactory; static;
        class function createFactoryDXY(image_: TImage; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TOneRowSpriteIndexedAnimationFactory; static;
        class function createFactoryWH(image_: TImage; width: Integer; height: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TOneRowSpriteIndexedAnimationFactory; static;
        class function createFactory(image_: TImage; animationBehaviorFactory_: TAnimationBehaviorFactory): TOneRowSpriteIndexedAnimationFactory; static;
        constructor Create(image_: TImage; sequenceArray: TArray<Integer>; width: Integer; height: Integer; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
        procedure init(dx: Integer; dy: Integer); virtual;
        procedure initW(dx: Integer); virtual;
        function getInstance(instanceId: Integer): TAnimation; override;
  end;

implementation
uses
  SpriteIndexedAnimation, AdjustedSpriteIndexedAnimation, Sprite, BasicColorUtil, PrimitiveIntUtil;


{AB:CODE}

procedure TOneRowSpriteIndexedAnimationFactory.InitFields;
begin
  Self.animationFactorySpriteScaleUtil := TAnimationFactorySpriteScaleUtil.getInstance();
end;
    

// throws Exception
class function TOneRowSpriteIndexedAnimationFactory.createFactoryDX(image_: TImage; dx: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TOneRowSpriteIndexedAnimationFactory;
var
  oneRowSpriteIndexedAnimationFactory_: TOneRowSpriteIndexedAnimationFactory;
begin
        oneRowSpriteIndexedAnimationFactory_ := TOneRowSpriteIndexedAnimationFactory.Create(image_, TPrimitiveIntUtil.getArrayInstance(), image_.getHeight(), image_.getHeight(), 0, 0, animationBehaviorFactory_);
        oneRowSpriteIndexedAnimationFactory_.initW(dx);
        Exit(oneRowSpriteIndexedAnimationFactory_);
end;
    

// throws Exception
class function TOneRowSpriteIndexedAnimationFactory.createFactoryDXY(image_: TImage; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TOneRowSpriteIndexedAnimationFactory;
var
  oneRowSpriteIndexedAnimationFactory_: TOneRowSpriteIndexedAnimationFactory;
begin
        oneRowSpriteIndexedAnimationFactory_ := TOneRowSpriteIndexedAnimationFactory.Create(image_, TPrimitiveIntUtil.getArrayInstance(), image_.getHeight(), image_.getHeight(), 0, 0, animationBehaviorFactory_);
        oneRowSpriteIndexedAnimationFactory_.init(dx, dy);
        Exit(oneRowSpriteIndexedAnimationFactory_);
end;
    

// throws Exception
class function TOneRowSpriteIndexedAnimationFactory.createFactoryWH(image_: TImage; width: Integer; height: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TOneRowSpriteIndexedAnimationFactory;
begin
        Exit(TOneRowSpriteIndexedAnimationFactory.Create(image_, TPrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory_));
end;
    

// throws Exception
class function TOneRowSpriteIndexedAnimationFactory.createFactory(image_: TImage; animationBehaviorFactory_: TAnimationBehaviorFactory): TOneRowSpriteIndexedAnimationFactory;
begin
        Exit(TOneRowSpriteIndexedAnimationFactory.Create(image_, TPrimitiveIntUtil.getArrayInstance(), image_.getHeight(), image_.getHeight(), 0, 0, animationBehaviorFactory_));
end;
    

constructor TOneRowSpriteIndexedAnimationFactory.Create(image_: TImage; sequenceArray: TArray<Integer>; width: Integer; height: Integer; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
        inherited Create(image_, sequenceArray, width, height, dx, dy, animationBehaviorFactory_);
        InitFields;
end;
    

procedure TOneRowSpriteIndexedAnimationFactory.init(dx: Integer; dy: Integer);
begin
        Self.animationFactoryInitializationVisitor.dx := dx;
        Self.animationFactoryInitializationVisitor.dy := dy;
end;
    

procedure TOneRowSpriteIndexedAnimationFactory.initW(dx: Integer);
begin
        Self.init(dx, 0);
        Self.animationFactoryInitializationVisitor.dx := (Self.animationFactoryInitializationVisitor.dx) + (-(TJava.SignedRightShift(Self.animationFactoryInitializationVisitor.width, 2)));
end;
    

// throws Exception
function TOneRowSpriteIndexedAnimationFactory.getInstance(instanceId: Integer): TAnimation;
var
  sprite_: TSprite;
begin
        sprite_ := Self.animationFactorySpriteScaleUtil.createImage(Self.getImage(), Self.animationFactoryInitializationVisitor.width, Self.animationFactoryInitializationVisitor.height, Self.scaleProperties.scaleWidth, Self.scaleProperties.scaleHeight);
        if ((Self.animationFactoryInitializationVisitor.dx) <> (0)) or ((Self.animationFactoryInitializationVisitor.dy) <> (0)) then begin
            Exit(TAdjustedSpriteIndexedAnimation.Create(sprite_, Self.getImage(), TBasicColorUtil.getInstance().ZERO_ARRAY, Self.animationFactoryInitializationVisitor.dx, Self.animationFactoryInitializationVisitor.dy, Self.animationBehaviorFactory.getOrCreateInstance()));
        end else begin
            Exit(TSpriteIndexedAnimation.Create(sprite_, Self.getImage(), TBasicColorUtil.getInstance().ZERO_ARRAY, Self.animationBehaviorFactory.getOrCreateInstance()));
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

