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
unit SpriteIndexedAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, ProceduralAnimationInterfaceFactoryInterface, BaseImageAnimationFactory, BasicColor, AnimationFactorySpriteScaleUtil, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TSpriteIndexedAnimationFactory = class(TBaseImageAnimationFactory, IProceduralAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    animationFactorySpriteScaleUtil: TAnimationFactorySpriteScaleUtil;
    basicColorArray: TArray<TBasicColor>;
    procedure InitFields;
    function JavaObject: TObject;
        class function createCWHDXY(image_: TImage; basicColorArray: TArray<TBasicColor>; width: Integer; height: Integer; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TSpriteIndexedAnimationFactory; static;
        class function createCWH(image_: TImage; basicColorArray: TArray<TBasicColor>; width: Integer; height: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TSpriteIndexedAnimationFactory; static;
        class function createWH(image_: TImage; width: Integer; height: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TSpriteIndexedAnimationFactory; static;
        constructor Create(image_: TImage; basicColorArray: TArray<TBasicColor>; sequenceArray: TArray<Integer>; width: Integer; height: Integer; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
        procedure initHWH;
        function getInstance(instanceId: Integer): TAnimation; virtual;
        function getInstanceAnimation(animationInterface: TAnimation): TAnimation; virtual;
  end;

implementation
uses
  SpriteIndexedAnimation, AdjustedSpriteIndexedAnimation, Sprite, AndroidUtil, BasicColorUtil, PrimitiveIntUtil;


{AB:CODE}

procedure TSpriteIndexedAnimationFactory.InitFields;
begin
  Self.animationFactorySpriteScaleUtil := TAnimationFactorySpriteScaleUtil.getInstance();
  Self.basicColorArray := TBasicColorUtil.getInstance().ZERO_ARRAY;
end;

function TSpriteIndexedAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

// throws Exception
class function TSpriteIndexedAnimationFactory.createCWHDXY(image_: TImage; basicColorArray: TArray<TBasicColor>; width: Integer; height: Integer; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TSpriteIndexedAnimationFactory;
begin
        Exit(TSpriteIndexedAnimationFactory.Create(image_, basicColorArray, TPrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory_));
end;
    

// throws Exception
class function TSpriteIndexedAnimationFactory.createCWH(image_: TImage; basicColorArray: TArray<TBasicColor>; width: Integer; height: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TSpriteIndexedAnimationFactory;
var
  spriteIndexedAnimationFactory_: TSpriteIndexedAnimationFactory;
begin
        spriteIndexedAnimationFactory_ := TSpriteIndexedAnimationFactory.Create(image_, basicColorArray, TPrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory_);
        spriteIndexedAnimationFactory_.initHWH();
        Exit(spriteIndexedAnimationFactory_);
end;
    

// throws Exception
class function TSpriteIndexedAnimationFactory.createWH(image_: TImage; width: Integer; height: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TSpriteIndexedAnimationFactory;
begin
        Exit(TSpriteIndexedAnimationFactory.Create(image_, TBasicColorUtil.getInstance().ZERO_ARRAY, TPrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory_));
end;
    

constructor TSpriteIndexedAnimationFactory.Create(image_: TImage; basicColorArray: TArray<TBasicColor>; sequenceArray: TArray<Integer>; width: Integer; height: Integer; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
        inherited Create(image_, sequenceArray, width, height, dx, dy, animationBehaviorFactory_);
        InitFields;
        Self.basicColorArray := basicColorArray;
end;
    

procedure TSpriteIndexedAnimationFactory.initHWH;
begin
        Self.animationFactoryInitializationVisitor.dx := -(TJava.SignedRightShift(Self.animationFactoryInitializationVisitor.width, 2));
        Self.animationFactoryInitializationVisitor.dy := -(TJava.SignedRightShift(Self.animationFactoryInitializationVisitor.height, 2));
        if TAndroidUtil.isAndroid() then begin
            Self.animationFactoryInitializationVisitor.dx := (Self.animationFactoryInitializationVisitor.dx) + (3);
        end;
end;
    

// throws Exception
function TSpriteIndexedAnimationFactory.getInstance(instanceId: Integer): TAnimation;
var
  sprite_: TSprite;
begin
        sprite_ := Self.animationFactorySpriteScaleUtil.createImage(Self.getImage(), Self.animationFactoryInitializationVisitor.width, Self.animationFactoryInitializationVisitor.height, Self.scaleProperties.scaleWidth, Self.scaleProperties.scaleHeight);
        if ((Self.animationFactoryInitializationVisitor.dx) <> (0)) or ((Self.animationFactoryInitializationVisitor.dy) <> (0)) then begin
            Exit(TAdjustedSpriteIndexedAnimation.Create(sprite_, Self.getImage(), Self.basicColorArray, Self.animationFactoryInitializationVisitor.dx, Self.animationFactoryInitializationVisitor.dy, Self.animationBehaviorFactory.getOrCreateInstance()));
        end else begin
            Exit(TSpriteIndexedAnimation.Create(sprite_, Self.getImage(), Self.basicColorArray, Self.animationBehaviorFactory.getOrCreateInstance()));
        end;
end;
    

// throws Exception
function TSpriteIndexedAnimationFactory.getInstanceAnimation(animationInterface: TAnimation): TAnimation;
begin
        Exit(Self.getInstance(0));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

