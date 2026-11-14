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
unit ImageCaptionIndexedAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, AnimationInterfaceFactoryInterface, AnimationFactoryImageScaleUtil, AnimationFactorySpriteScaleUtil, ScaleProperties, Sound, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TImageCaptionIndexedAnimationFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    animationFactoryImageScaleUtil: TAnimationFactoryImageScaleUtil;
    animationFactorySpriteScaleUtil: TAnimationFactorySpriteScaleUtil;
    captionImage: TImage;
    spriteMovieImage: TImage;
    frameWidth: Integer;
    frameHeight: Integer;
    captionDx: Integer;
    captionDy: Integer;
    dx: Integer;
    dy: Integer;
    time: Integer;
    soundInterface: TSound;
    scaleProperties: TScaleProperties;
    animationBehaviorFactory: TAnimationBehaviorFactory;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(captionImage: TImage; spriteMovieImage: TImage; soundInterface: TSound; frameWidth: Integer; frameHeight: Integer; captionDx: Integer; captionDy: Integer; dx: Integer; dy: Integer; time: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation
uses
  SpriteIndexedAnimation, Sprite, Player, IndexedAnimation, CaptionIndexedAnimation, ImageAnimation, BasicColorUtil, ForcedLogUtil;


{AB:CODE}

procedure TImageCaptionIndexedAnimationFactory.InitFields;
begin
  Self.animationFactoryImageScaleUtil := TAnimationFactoryImageScaleUtil.getInstance();
  Self.animationFactorySpriteScaleUtil := TAnimationFactorySpriteScaleUtil.getInstance();
  
  
  
  
  
  
  
  
  
  
  Self.scaleProperties := TScaleProperties.instance;
  
end;

function TImageCaptionIndexedAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TImageCaptionIndexedAnimationFactory.Create(captionImage: TImage; spriteMovieImage: TImage; soundInterface: TSound; frameWidth: Integer; frameHeight: Integer; captionDx: Integer; captionDy: Integer; dx: Integer; dy: Integer; time: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
    inherited Create;
    InitFields;
        if (animationBehaviorFactory_) = (TAnimationBehaviorFactory.getInstance()) then begin
            TForcedLogUtil.log('Using default AnimationBehaviorFactory with IndexedAnimationFactory', TJava.Box(Self));
        end;
        Self.captionImage := captionImage;
        Self.spriteMovieImage := spriteMovieImage;
        Self.frameWidth := frameWidth;
        Self.frameHeight := frameHeight;
        Self.captionDx := captionDx;
        Self.captionDy := captionDy;
        Self.dx := dx;
        Self.dy := dy;
        Self.time := time;
        Self.soundInterface := soundInterface;
        Self.animationBehaviorFactory := animationBehaviorFactory_;
end;
    

// throws Exception
function TImageCaptionIndexedAnimationFactory.getInstance(instanceId: Integer): TAnimation;
var
  scaledImage: TImage;
  animationInterface: TAnimation;
  sprite_: TSprite;
  movieIndexedAnimationInterface: TIndexedAnimation;
  player_: IPlayer;
begin
        scaledImage := Self.animationFactoryImageScaleUtil.createImage(Self.captionImage, Self.captionImage.getWidth(), Self.captionImage.getHeight(), Self.scaleProperties.scaleWidth, Self.scaleProperties.scaleHeight);
        animationInterface := TImageAnimation.Create(scaledImage, Self.animationBehaviorFactory.getOrCreateInstance());
        sprite_ := Self.animationFactorySpriteScaleUtil.createImage(Self.spriteMovieImage, Self.frameWidth, Self.frameHeight, Self.scaleProperties.scaleWidth, Self.scaleProperties.scaleHeight);
        movieIndexedAnimationInterface := TSpriteIndexedAnimation.Create(sprite_, Self.spriteMovieImage, TBasicColorUtil.getInstance().ZERO_ARRAY, Self.animationBehaviorFactory.getOrCreateInstance());
        player_ := Self.soundInterface.getPlayerP();
        if (player_) = (nil) then begin
            raise SysUtils.Exception.Create('Sound Was not Initialized');
        end;
        Exit(TCaptionIndexedAnimation.Create(animationInterface, movieIndexedAnimationInterface, player_, Self.captionDx, Self.captionDy, Self.dx, Self.dy, Self.time, Self.animationBehaviorFactory.getOrCreateInstance()));
end;
    

procedure TImageCaptionIndexedAnimationFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
        Self.scaleProperties := scaleProperties_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

