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
unit AdjustedSpriteIndexedAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, Sprite, AnimationBehavior, BasicColor, SpriteIndexedAnimation;

type
  {AB:TYPES}
  TAdjustedSpriteIndexedAnimation = class(TSpriteIndexedAnimation)
  public
    dx: Integer;
    dy: Integer;
    procedure InitFields;
        constructor Create(sprite_: TSprite; image_: TImage; basicColorArray: TArray<TBasicColor>; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
        procedure paintFrame(graphics_: TGraphics; frame: Integer; x: Integer; y: Integer); override;
        procedure paintXY(g: TGraphics; x: Integer; y: Integer); override;
        procedure paint(g: TGraphics); override;
  end;

implementation
uses
  BasicColorUtil;


{AB:CODE}

procedure TAdjustedSpriteIndexedAnimation.InitFields;
begin
  
  
end;
    

constructor TAdjustedSpriteIndexedAnimation.Create(sprite_: TSprite; image_: TImage; basicColorArray: TArray<TBasicColor>; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(sprite_, image_, basicColorArray, animationBehavior_);
        InitFields;
        Self.dx := dx;
        Self.dy := dy;
end;
    

procedure TAdjustedSpriteIndexedAnimation.paintFrame(graphics_: TGraphics; frame: Integer; x: Integer; y: Integer);
begin
        Self.setFrame(frame);
        Self.sprite.setPosition((x) + (Self.dx), (y) + (Self.dy));
        inherited paint(graphics_);
end;
    

procedure TAdjustedSpriteIndexedAnimation.paintXY(g: TGraphics; x: Integer; y: Integer);
begin
        Self.sprite.setPosition((x) + (Self.dx), (y) + (Self.dy));
        inherited paint(g);
end;
    

procedure TAdjustedSpriteIndexedAnimation.paint(g: TGraphics);
begin
        Self.sprite.setPosition(Self.dx, Self.dy);
        inherited paint(g);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

