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
unit AllBinarySpriteRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Sprite, AnimationBehavior, Direction, Angle, HackRotationSpriteIndexedAnimation;

type
  {AB:TYPES}
  TAllBinarySpriteRotationAnimation = class(THackRotationSpriteIndexedAnimation)
  public
        constructor Create(sprite_: TSprite; image_: TImage; animationBehavior_: TAnimationBehavior);
        procedure nextRotation; override;
        procedure previousRotation; override;
        procedure setFrameByDirection(direction_: TDirection); override;
        procedure setFrameToAngle(angle_: TAngle); override;
        procedure setFrame(index: Integer); override;
        procedure adjustFrameToAngle(angle_: TAngle); override;
        procedure adjustFrame(angle_: SmallInt); override;
  end;

implementation
uses
  AngleFactory, AngleInfo;


{AB:CODE}
    

constructor TAllBinarySpriteRotationAnimation.Create(sprite_: TSprite; image_: TImage; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(sprite_, image_, TAngleInfo.getInstance(SmallInt(Trunc((TJava.Divide(TAngleFactory.getInstance().TOTAL_ANGLE, sprite_.getRawFrameCount()))))), animationBehavior_);
        Self.angleInfo.adjustAngle(Self.sprite.getFrame());
end;
    

procedure TAllBinarySpriteRotationAnimation.nextRotation;
begin
        Self.sprite.nextFrame();
        Self.angleInfo.adjustAngle(Self.sprite.getFrame());
end;
    

procedure TAllBinarySpriteRotationAnimation.previousRotation;
begin
        Self.sprite.prevFrame();
        Self.angleInfo.adjustAngle(Self.sprite.getFrame());
end;
    

procedure TAllBinarySpriteRotationAnimation.setFrameByDirection(direction_: TDirection);
var
  angle_: TAngle;
begin
        angle_ := Self.directionUtil.getFrameAngle(direction_);
        Self.adjustFrameToAngle(angle_);
end;
    

procedure TAllBinarySpriteRotationAnimation.setFrameToAngle(angle_: TAngle);
begin
        Self.adjustFrameToAngle(angle_);
end;
    

procedure TAllBinarySpriteRotationAnimation.setFrame(index: Integer);
begin
        Self.sprite.setFrame(index);
        Self.angleInfo.adjustAngle(Self.getFrame());
end;
    

procedure TAllBinarySpriteRotationAnimation.adjustFrameToAngle(angle_: TAngle);
begin
        Self.adjustFrame(angle_.getValue());
end;
    

procedure TAllBinarySpriteRotationAnimation.adjustFrame(angle_: SmallInt);
begin
        Self.setFrame(Self.frameUtil.getFrameForAngle(angle_, Integer(Trunc(Self.angleInfo.getAngleIncrementInfo().getAngleIncrement()))));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

