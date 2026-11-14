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
unit RightToLeftImageAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, ImageSegmentAnimation;

type
  {AB:TYPES}
  TRightToLeftImageAnimation = class(TImageSegmentAnimation)
  public
    startWidth: Integer;
    currentWidth: Integer;
    anchor: Integer;
    procedure InitFields;
        constructor Create(image_: TImage; animationBehavior_: TAnimationBehavior);
        procedure nextFrame; override;
        procedure previousFrame; override;
        procedure setFrame(index: Integer); override;
        procedure update;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation
uses
  Sprite, Anchor, PrimitiveIntUtil;


{AB:CODE}

procedure TRightToLeftImageAnimation.InitFields;
begin
  
  
  Self.anchor := TAnchor.TOP_LEFT;
end;
    

constructor TRightToLeftImageAnimation.Create(image_: TImage; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(image_, TPrimitiveIntUtil.getArrayInstance(), animationBehavior_);
        InitFields;
        Self.setFrame((Self.getSize()) - (1));
end;
    

procedure TRightToLeftImageAnimation.nextFrame;
begin
        inherited previousFrame();
        Self.update();
end;
    

procedure TRightToLeftImageAnimation.previousFrame;
begin
        inherited nextFrame();
        Self.update();
end;
    

procedure TRightToLeftImageAnimation.setFrame(index: Integer);
begin
        inherited setFrame(index);
        Self.update();
end;
    

procedure TRightToLeftImageAnimation.update;
begin
        Self.startWidth := TJava.Divide((Self.getDrawWidth()) * (Self.getFrame()), Self.getSize());
        Self.currentWidth := (Self.getDrawWidth()) - (Self.startWidth);
end;
    

procedure TRightToLeftImageAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        graphics_.drawRegion(Self.getImage(), Self.startWidth, Self.getStartY(), Self.currentWidth, Self.getDrawHeight(), TSprite.TRANS_NONE, (x) + (Self.startWidth), y, Self.anchor);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

