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
unit ImageArrayAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, IndexedAnimation, CircularIndexUtil;

type
  {AB:TYPES}
  TImageArrayAnimation = class(TIndexedAnimation)
  public
    imageArray: TArray<TImage>;
    totalFrames: Integer;
    circularIndexUtil: TCircularIndexUtil;
    anchor: Integer;
    procedure InitFields;
        constructor Create(imageArray: TArray<TImage>; animationBehavior_: TAnimationBehavior);
        function getAnimationSize: Integer; override;
        procedure nextFrame; override;
        procedure previousFrame; override;
        procedure setFrame(index: Integer); override;
        function getFrame: Integer; override;
        function getSize: Integer; override;
        procedure setSequence(sequence: TArray<Integer>); override;
        function getSequence: TArray<Integer>; override;
        function getImage(index: Integer): TImage; virtual;
        function getImageArray: TArray<TImage>; virtual;
        procedure setImageArray(imageArray: TArray<TImage>); virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation
uses
  NullImage, Anchor, PrimitiveIntUtil;


{AB:CODE}

procedure TImageArrayAnimation.InitFields;
begin
  Self.imageArray := TNullImage.NULL_IMAGE_ARRAY;
  
  Self.circularIndexUtil := TCircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL;
  Self.anchor := TAnchor.TOP_LEFT;
end;
    

constructor TImageArrayAnimation.Create(imageArray: TArray<TImage>; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(animationBehavior_);
        InitFields;
        Self.setImageArray(imageArray);
end;
    

// throws Exception
function TImageArrayAnimation.getAnimationSize: Integer;
begin
        Exit(Self.getSize());
end;
    

procedure TImageArrayAnimation.nextFrame;
begin
        Self.circularIndexUtil.next();
end;
    

procedure TImageArrayAnimation.previousFrame;
begin
        Self.circularIndexUtil.previous();
end;
    

procedure TImageArrayAnimation.setFrame(index: Integer);
begin
        Self.circularIndexUtil.setIndex(index);
end;
    

function TImageArrayAnimation.getFrame: Integer;
begin
        Exit(Self.circularIndexUtil.getIndex());
end;
    

function TImageArrayAnimation.getSize: Integer;
begin
        Exit(Self.totalFrames);
end;
    

procedure TImageArrayAnimation.setSequence(sequence: TArray<Integer>);
begin
end;
    

function TImageArrayAnimation.getSequence: TArray<Integer>;
begin
        Exit(TPrimitiveIntUtil.getArrayInstance());
end;
    

function TImageArrayAnimation.getImage(index: Integer): TImage;
begin
        Exit(Self.imageArray[index]);
end;
    

function TImageArrayAnimation.getImageArray: TArray<TImage>;
begin
        Exit(Self.imageArray);
end;
    

procedure TImageArrayAnimation.setImageArray(imageArray: TArray<TImage>);
begin
        Self.imageArray := imageArray;
        Self.totalFrames := System.Length(imageArray);
        Self.circularIndexUtil := TCircularIndexUtil.createInstance(Self.totalFrames);
end;
    

procedure TImageArrayAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        graphics_.drawImage(Self.imageArray[Self.circularIndexUtil.getIndex()], x, y, Self.anchor);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

