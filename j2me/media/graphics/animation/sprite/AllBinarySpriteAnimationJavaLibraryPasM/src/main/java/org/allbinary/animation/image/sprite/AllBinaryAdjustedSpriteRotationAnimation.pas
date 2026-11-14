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
unit AllBinaryAdjustedSpriteRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, Sprite, AnimationBehavior, AllBinarySpriteRotationAnimation;

type
  {AB:TYPES}
  TAllBinaryAdjustedSpriteRotationAnimation = class(TAllBinarySpriteRotationAnimation)
  public
    dx: Integer;
    dy: Integer;
    procedure InitFields;
        constructor Create(sprite_: TSprite; image_: TImage; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
        procedure paintXY(g: TGraphics; x: Integer; y: Integer); override;
  end;

implementation

{AB:CODE}

procedure TAllBinaryAdjustedSpriteRotationAnimation.InitFields;
begin
  
  
end;
    

constructor TAllBinaryAdjustedSpriteRotationAnimation.Create(sprite_: TSprite; image_: TImage; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(sprite_, image_, animationBehavior_);
        InitFields;
        Self.dx := dx;
        Self.dy := dy;
end;
    

procedure TAllBinaryAdjustedSpriteRotationAnimation.paintXY(g: TGraphics; x: Integer; y: Integer);
begin
        Self.sprite.setPosition((x) + (Self.dx), (y) + (Self.dy));
        Self.paint(g);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

