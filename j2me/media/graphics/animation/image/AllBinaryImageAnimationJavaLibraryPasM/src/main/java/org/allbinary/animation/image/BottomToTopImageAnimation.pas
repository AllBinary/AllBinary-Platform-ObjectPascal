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
unit BottomToTopImageAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, ImageSegmentAnimation;

type
  {AB:TYPES}
  TBottomToTopImageAnimation = class(TImageSegmentAnimation)
  public
    startHeight: Integer;
    currentHeight: Integer;
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

procedure TBottomToTopImageAnimation.InitFields;
begin
  
  
  Self.anchor := TAnchor.TOP_LEFT;
end;
    

constructor TBottomToTopImageAnimation.Create(image_: TImage; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(image_, TPrimitiveIntUtil.getArrayInstance(), animationBehavior_);
        InitFields;
        Self.setFrame((Self.getSize()) - (1));
end;
    

procedure TBottomToTopImageAnimation.nextFrame;
begin
        inherited previousFrame();
        Self.update();
end;
    

procedure TBottomToTopImageAnimation.previousFrame;
begin
        inherited nextFrame();
        Self.update();
end;
    

procedure TBottomToTopImageAnimation.setFrame(index: Integer);
begin
        inherited setFrame(index);
        Self.update();
end;
    

procedure TBottomToTopImageAnimation.update;
begin
        Self.startHeight := TJava.Divide((Self.getDrawHeight()) * (Self.getFrame()), Self.getSize());
        Self.currentHeight := (Self.getDrawHeight()) - (Self.startHeight);
end;
    

procedure TBottomToTopImageAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        graphics_.drawRegion(Self.getImage(), Self.getStartX(), Self.startHeight, Self.getDrawWidth(), Self.currentHeight, TSprite.TRANS_NONE, x, (y) + (Self.startHeight), Self.anchor);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

