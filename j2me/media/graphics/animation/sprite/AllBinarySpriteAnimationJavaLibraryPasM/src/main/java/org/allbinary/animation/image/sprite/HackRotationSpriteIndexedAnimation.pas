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
unit HackRotationSpriteIndexedAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, Sprite, AnimationBehavior, RotationAnimation, AngleInfo;

type
  {AB:TYPES}
  THackRotationSpriteIndexedAnimation = class(TRotationAnimation)
  public
    sprite: TSprite;
    image: TImage;
    procedure InitFields;
        constructor Create(sprite_: TSprite; image_: TImage; angleInfo_: TAngleInfo; animationBehavior_: TAnimationBehavior);
        function getAnimationSize: Integer; override;
        procedure paintFrame(g: TGraphics; frame: Integer; x: Integer; y: Integer); virtual;
        procedure paintXY(g: TGraphics; x: Integer; y: Integer); override;
        procedure paint(g: TGraphics); virtual;
        procedure nextRotation; override;
        procedure previousRotation; override;
        function getSize: Integer; override;
        procedure setFrame(frame: Integer); override;
        function getFrame: Integer; override;
        procedure setSequence(sequence: TArray<Integer>); override;
        function getSequence: TArray<Integer>; override;
  end;

implementation
uses
  PrimitiveIntUtil, CircularIndexUtil;


{AB:CODE}

procedure THackRotationSpriteIndexedAnimation.InitFields;
begin
  
  
end;
    

constructor THackRotationSpriteIndexedAnimation.Create(sprite_: TSprite; image_: TImage; angleInfo_: TAngleInfo; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(angleInfo_, TCircularIndexUtil.createInstance(TJava.Divide(360, angleInfo_.getAngleIncrementInfo().getAngleIncrement())), animationBehavior_);
        InitFields;
        Self.sprite := sprite_;
        Self.image := image_;
end;
    

// throws Exception
function THackRotationSpriteIndexedAnimation.getAnimationSize: Integer;
begin
        Exit(Self.getSize());
end;
    

procedure THackRotationSpriteIndexedAnimation.paintFrame(g: TGraphics; frame: Integer; x: Integer; y: Integer);
begin
        Self.setFrame(frame);
        Self.paintXY(g, x, y);
end;
    

procedure THackRotationSpriteIndexedAnimation.paintXY(g: TGraphics; x: Integer; y: Integer);
begin
        Self.sprite.setPosition(x, y);
        Self.paint(g);
end;
    

procedure THackRotationSpriteIndexedAnimation.paint(g: TGraphics);
begin
        Self.sprite.paint(g);
end;
    

procedure THackRotationSpriteIndexedAnimation.nextRotation;
begin
        Self.sprite.nextFrame();
end;
    

procedure THackRotationSpriteIndexedAnimation.previousRotation;
begin
        Self.sprite.prevFrame();
end;
    

function THackRotationSpriteIndexedAnimation.getSize: Integer;
begin
        Exit(Self.sprite.getRawFrameCount());
end;
    

procedure THackRotationSpriteIndexedAnimation.setFrame(frame: Integer);
begin
        Self.sprite.setFrame(frame);
end;
    

function THackRotationSpriteIndexedAnimation.getFrame: Integer;
begin
        Exit(Self.sprite.getFrame());
end;
    

procedure THackRotationSpriteIndexedAnimation.setSequence(sequence: TArray<Integer>);
begin
end;
    

function THackRotationSpriteIndexedAnimation.getSequence: TArray<Integer>;
begin
        Exit(TPrimitiveIntUtil.getArrayInstance());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

