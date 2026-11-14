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
unit TopToBottomImageAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, ImageSegmentAnimation;

type
  {AB:TYPES}
  TTopToBottomImageAnimation = class(TImageSegmentAnimation)
  public
    currentHeight: Integer;
    anchor: Integer;
    procedure InitFields;
        constructor Create(image_: TImage; sequenceArray: TArray<Integer>; animationBehavior_: TAnimationBehavior);
        procedure nextFrame; override;
        procedure previousFrame; override;
        procedure setFrame(index: Integer); override;
        procedure update;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation
uses
  Sprite, Anchor;


{AB:CODE}

procedure TTopToBottomImageAnimation.InitFields;
begin
  
  Self.anchor := TAnchor.TOP_LEFT;
end;
    

constructor TTopToBottomImageAnimation.Create(image_: TImage; sequenceArray: TArray<Integer>; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(image_, sequenceArray, animationBehavior_);
        InitFields;
        Self.currentHeight := 0;
        if (Self.getSequence()[0]) = (-1) then begin
            Self.setFrame((Self.getSize()) - (1));
        end;
end;
    

procedure TTopToBottomImageAnimation.nextFrame;
begin
        if (Self.getSequence()[0]) = (-1) then begin
            inherited previousFrame();
        end else begin
            inherited nextFrame();
        end;
        Self.update();
end;
    

procedure TTopToBottomImageAnimation.previousFrame;
begin
        if (Self.getSequence()[0]) = (-1) then begin
            inherited nextFrame();
        end else begin
            inherited previousFrame();
        end;
        Self.update();
end;
    

procedure TTopToBottomImageAnimation.setFrame(index: Integer);
begin
        inherited setFrame(index);
        Self.update();
end;
    

procedure TTopToBottomImageAnimation.update;
begin
        Self.currentHeight := TJava.Divide((Self.getDrawHeight()) * (Self.getFrame()), Self.getSize());
end;
    

procedure TTopToBottomImageAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        graphics_.drawRegion(Self.getImage(), Self.getStartX(), Self.getStartY(), Self.getDrawWidth(), Self.currentHeight, TSprite.TRANS_NONE, x, y, Self.anchor);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

