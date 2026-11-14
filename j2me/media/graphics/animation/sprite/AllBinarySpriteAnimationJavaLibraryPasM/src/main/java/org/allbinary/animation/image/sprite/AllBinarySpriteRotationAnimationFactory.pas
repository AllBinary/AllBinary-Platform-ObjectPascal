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
unit AllBinarySpriteRotationAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, ProceduralAnimationInterfaceFactoryInterface, BaseImageAnimationFactory, AnimationFactorySpriteScaleUtil, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TAllBinarySpriteRotationAnimationFactory = class(TBaseImageAnimationFactory, IProceduralAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    animationFactorySpriteScaleUtil: TAnimationFactorySpriteScaleUtil;
    procedure InitFields;
    function JavaObject: TObject;
        class function createWHDY(image_: TImage; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinarySpriteRotationAnimationFactory; static;
        class function createWH(image_: TImage; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinarySpriteRotationAnimationFactory; static;
        class function createDXY(image_: TImage; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinarySpriteRotationAnimationFactory; static;
        class function createDXYQ(image_: TImage; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinarySpriteRotationAnimationFactory; static;
        class function createQ(image_: TImage; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinarySpriteRotationAnimationFactory; static;
        class function createWHF(image_: TImage; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinarySpriteRotationAnimationFactory; static;
        constructor Create(image_: TImage; sequenceArray: TArray<Integer>; width: Integer; height: Integer; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
        procedure init(dx: Integer; dy: Integer); virtual;
        procedure initWH(dx: Integer; dy: Integer);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        function getInstanceAnimation(animationInterface: TAnimation): TAnimation; virtual;
  end;

implementation
uses
  AllBinarySpriteRotationAnimation, AllBinaryAdjustedSpriteRotationAnimation, Sprite, ForcedLogUtil, PrimitiveIntUtil;


{AB:CODE}

procedure TAllBinarySpriteRotationAnimationFactory.InitFields;
begin
  Self.animationFactorySpriteScaleUtil := TAnimationFactorySpriteScaleUtil.getInstance();
end;

function TAllBinarySpriteRotationAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

// throws Exception
class function TAllBinarySpriteRotationAnimationFactory.createWHDY(image_: TImage; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinarySpriteRotationAnimationFactory;
var
  spriteRotationAnimationFactory: TAllBinarySpriteRotationAnimationFactory;
begin
        spriteRotationAnimationFactory := TAllBinarySpriteRotationAnimationFactory.Create(image_, TPrimitiveIntUtil.getArrayInstance(), (TJava.SignedRightShift(image_.getHeight(), 2)), (TJava.SignedRightShift(image_.getHeight(), 2)), 0, 0, animationBehaviorFactory_);
        spriteRotationAnimationFactory.initWH(dx, dy);
        Exit(spriteRotationAnimationFactory);
end;
    

// throws Exception
class function TAllBinarySpriteRotationAnimationFactory.createWH(image_: TImage; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinarySpriteRotationAnimationFactory;
begin
        Exit(TAllBinarySpriteRotationAnimationFactory.createWHDY(image_, 0, 0, animationBehaviorFactory_));
end;
    

// throws Exception
class function TAllBinarySpriteRotationAnimationFactory.createDXY(image_: TImage; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinarySpriteRotationAnimationFactory;
var
  spriteRotationAnimationFactory: TAllBinarySpriteRotationAnimationFactory;
begin
        spriteRotationAnimationFactory := TAllBinarySpriteRotationAnimationFactory.Create(image_, TPrimitiveIntUtil.getArrayInstance(), image_.getHeight(), image_.getHeight(), 0, 0, animationBehaviorFactory_);
        spriteRotationAnimationFactory.init(dx, dy);
        Exit(spriteRotationAnimationFactory);
end;
    

// throws Exception
class function TAllBinarySpriteRotationAnimationFactory.createDXYQ(image_: TImage; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinarySpriteRotationAnimationFactory;
var
  spriteRotationAnimationFactory: TAllBinarySpriteRotationAnimationFactory;
begin
        spriteRotationAnimationFactory := TAllBinarySpriteRotationAnimationFactory.Create(image_, TPrimitiveIntUtil.getArrayInstance(), (TJava.SignedRightShift(image_.getHeight(), 2)), (TJava.SignedRightShift(image_.getHeight(), 2)), 0, 0, animationBehaviorFactory_);
        spriteRotationAnimationFactory.init(dx, dy);
        Exit(spriteRotationAnimationFactory);
end;
    

// throws Exception
class function TAllBinarySpriteRotationAnimationFactory.createQ(image_: TImage; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinarySpriteRotationAnimationFactory;
begin
        Exit(TAllBinarySpriteRotationAnimationFactory.Create(image_, TPrimitiveIntUtil.getArrayInstance(), (TJava.SignedRightShift(image_.getHeight(), 2)), (TJava.SignedRightShift(image_.getHeight(), 2)), 0, 0, animationBehaviorFactory_));
end;
    

// throws Exception
class function TAllBinarySpriteRotationAnimationFactory.createWHF(image_: TImage; animationBehaviorFactory_: TAnimationBehaviorFactory): TAllBinarySpriteRotationAnimationFactory;
begin
        Exit(TAllBinarySpriteRotationAnimationFactory.Create(image_, TPrimitiveIntUtil.getArrayInstance(), image_.getHeight(), image_.getHeight(), 0, 0, animationBehaviorFactory_));
end;
    

constructor TAllBinarySpriteRotationAnimationFactory.Create(image_: TImage; sequenceArray: TArray<Integer>; width: Integer; height: Integer; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
        inherited Create(image_, sequenceArray, width, height, dx, dy, animationBehaviorFactory_);
        InitFields;
        if (animationBehaviorFactory_) = (TAnimationBehaviorFactory.getInstance()) then begin
            TForcedLogUtil.log('Using default AnimationBehaviorFactory with IndexedAnimationFactory', TJava.Box(Self));
        end;
end;
    

procedure TAllBinarySpriteRotationAnimationFactory.init(dx: Integer; dy: Integer);
begin
        Self.animationFactoryInitializationVisitor.dx := dx;
        Self.animationFactoryInitializationVisitor.dy := dy;
end;
    

procedure TAllBinarySpriteRotationAnimationFactory.initWH(dx: Integer; dy: Integer);
begin
        Self.init(dx, dy);
        Self.animationFactoryInitializationVisitor.dx := (Self.animationFactoryInitializationVisitor.dx) + (TJava.Divide(-Self.animationFactoryInitializationVisitor.width, 5));
        Self.animationFactoryInitializationVisitor.dy := (Self.animationFactoryInitializationVisitor.dy) + (TJava.Divide(-Self.animationFactoryInitializationVisitor.height, 5));
end;
    

// throws Exception
function TAllBinarySpriteRotationAnimationFactory.getInstance(instanceId: Integer): TAnimation;
var
  sprite_: TSprite;
begin
        sprite_ := Self.animationFactorySpriteScaleUtil.createImage(Self.getImage(), Self.animationFactoryInitializationVisitor.width, Self.animationFactoryInitializationVisitor.height, Self.scaleProperties.scaleWidth, Self.scaleProperties.scaleHeight);
        if ((Self.animationFactoryInitializationVisitor.dx) <> (0)) or ((Self.animationFactoryInitializationVisitor.dy) <> (0)) then begin
            Exit(TAllBinaryAdjustedSpriteRotationAnimation.Create(sprite_, Self.getImage(), Self.animationFactoryInitializationVisitor.dx, Self.animationFactoryInitializationVisitor.dy, Self.animationBehaviorFactory.getOrCreateInstance()));
        end else begin
            Exit(TAllBinarySpriteRotationAnimation.Create(sprite_, Self.getImage(), Self.animationBehaviorFactory.getOrCreateInstance()));
        end;
end;
    

// throws Exception
function TAllBinarySpriteRotationAnimationFactory.getInstanceAnimation(animationInterface: TAnimation): TAnimation;
begin
        Exit(Self.getInstance(0));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

