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
unit ImageAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, IndexedAnimation;

type
  {AB:TYPES}
  TImageAnimation = class(TIndexedAnimation)
  public
    image: TImage;
    anchor: Integer;
    procedure InitFields;
        constructor Create(image_: TImage; animationBehavior_: TAnimationBehavior);
        function getAnimationSize: Integer; override;
        procedure nextFrame; override;
        procedure previousFrame; override;
        procedure setFrame(index: Integer); override;
        function getFrame: Integer; override;
        function getSize: Integer; override;
        procedure setSequence(sequence: TArray<Integer>); override;
        function getSequence: TArray<Integer>; override;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
        function getImage: TImage; virtual;
        procedure close; virtual;
        procedure finalize; virtual;
  end;

implementation
uses
  DisposalUtil, Anchor, PrimitiveIntUtil;


{AB:CODE}

procedure TImageAnimation.InitFields;
begin
  
  Self.anchor := TAnchor.TOP_LEFT;
end;
    

constructor TImageAnimation.Create(image_: TImage; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(animationBehavior_);
        InitFields;
        Self.image := image_;
end;
    

// throws Exception
function TImageAnimation.getAnimationSize: Integer;
begin
        Exit(Self.getSize());
end;
    

procedure TImageAnimation.nextFrame;
begin
end;
    

procedure TImageAnimation.previousFrame;
begin
end;
    

procedure TImageAnimation.setFrame(index: Integer);
begin
end;
    

function TImageAnimation.getFrame: Integer;
begin
        Exit(0);
end;
    

function TImageAnimation.getSize: Integer;
begin
        Exit(1);
end;
    

procedure TImageAnimation.setSequence(sequence: TArray<Integer>);
begin
end;
    

function TImageAnimation.getSequence: TArray<Integer>;
begin
        Exit(TPrimitiveIntUtil.getArrayInstance());
end;
    

procedure TImageAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        graphics_.drawImage(Self.image, x, y, Self.anchor);
end;
    

function TImageAnimation.getImage: TImage;
begin
        Exit(Self.image);
end;
    

// throws Exception
procedure TImageAnimation.close;
begin
        TDisposalUtil.getInstance().disposeImage(Self.image);
end;
    

// throws Throwable
procedure TImageAnimation.finalize;
begin
        TDisposalUtil.getInstance().disposeImage(Self.image);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

