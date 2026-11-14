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
unit TweenedImageAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, IndexedAnimation, CircularIndexUtil;

type
  {AB:TYPES}
  TTweenedImageAnimation = class(TIndexedAnimation)
  public
    image: TImage;
    dx: Integer;
    dy: Integer;
    totalFrames: Integer;
    circularIndexUtil: TCircularIndexUtil;
    anchor: Integer;
    procedure InitFields;
        constructor Create(image_: TImage; dx: Integer; dy: Integer; totalFrames: Integer; animationBehavior_: TAnimationBehavior);
        function getAnimationSize: Integer; override;
        procedure nextFrame; override;
        procedure previousFrame; override;
        procedure setFrame(index: Integer); override;
        function getFrame: Integer; override;
        function getSize: Integer; override;
        procedure setSequence(sequence: TArray<Integer>); override;
        function getSequence: TArray<Integer>; override;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
        procedure close; virtual;
        procedure finalize; virtual;
  end;

implementation
uses
  DisposalUtil, Anchor, PrimitiveIntUtil;


{AB:CODE}

procedure TTweenedImageAnimation.InitFields;
begin
  
  
  
  
  
  Self.anchor := TAnchor.TOP_LEFT;
end;
    

constructor TTweenedImageAnimation.Create(image_: TImage; dx: Integer; dy: Integer; totalFrames: Integer; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(animationBehavior_);
        InitFields;
        Self.image := image_;
        Self.dx := dx;
        Self.dy := dy;
        Self.totalFrames := totalFrames;
        Self.circularIndexUtil := TCircularIndexUtil.createInstance(Self.totalFrames);
end;
    

// throws Exception
function TTweenedImageAnimation.getAnimationSize: Integer;
begin
        Exit(Self.getSize());
end;
    

procedure TTweenedImageAnimation.nextFrame;
begin
        Self.circularIndexUtil.next();
end;
    

procedure TTweenedImageAnimation.previousFrame;
begin
        Self.circularIndexUtil.previous();
end;
    

procedure TTweenedImageAnimation.setFrame(index: Integer);
begin
        Self.circularIndexUtil.setIndex(index);
end;
    

function TTweenedImageAnimation.getFrame: Integer;
begin
        Exit(Self.circularIndexUtil.getIndex());
end;
    

function TTweenedImageAnimation.getSize: Integer;
begin
        Exit(Self.totalFrames);
end;
    

procedure TTweenedImageAnimation.setSequence(sequence: TArray<Integer>);
begin
end;
    

function TTweenedImageAnimation.getSequence: TArray<Integer>;
begin
        Exit(TPrimitiveIntUtil.getArrayInstance());
end;
    

procedure TTweenedImageAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
var
  frame: Integer;
  currentX: Integer;
  currentY: Integer;
begin
        frame := Self.getFrame();
        currentX := (Self.dx) * (frame);
        currentY := (Self.dy) * (frame);
        graphics_.drawImage(Self.image, (x) + (currentX), (y) + (currentY), Self.anchor);
end;
    

// throws Exception
procedure TTweenedImageAnimation.close;
begin
        TDisposalUtil.getInstance().disposeImage(Self.image);
end;
    

// throws Throwable
procedure TTweenedImageAnimation.finalize;
begin
        TDisposalUtil.getInstance().disposeImage(Self.image);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

