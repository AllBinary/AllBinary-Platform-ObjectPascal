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
unit ImageArrayBaseRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, RotationAnimation, AngleInfo, ImageModifierUtil;

type
  {AB:TYPES}
  TImageArrayBaseRotationAnimation = class(TRotationAnimation)
  public
    imageModifierUtil: TImageModifierUtil;
    originalImageArray: TArray<TImage>;
    imageArray: TArray<TImage>;
    currentImage: TImage;
    totalFrames: Integer;
    anchor: Integer;
    procedure InitFields;
        constructor Create(originalImageArray: TArray<TImage>; angleInfo_: TAngleInfo; animationBehavior_: TAnimationBehavior);
        function getAnimationSize: Integer; override;
        procedure setAlpha(alpha: Integer); override;
        procedure nextRotation; override;
        procedure previousRotation; override;
        procedure setFrame(index2: Integer); override;
        procedure setSequence(sequence: TArray<Integer>); override;
        function getSequence: TArray<Integer>; override;
        procedure setImageArray(imageArray: TArray<TImage>); virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
        procedure close; virtual;
        procedure finalize; virtual;
  end;

implementation
uses
  NullImage, DisposalUtil, Anchor, PrimitiveIntUtil, CircularIndexUtil;


{AB:CODE}

procedure TImageArrayBaseRotationAnimation.InitFields;
begin
  Self.imageModifierUtil := TImageModifierUtil.getInstanceOrCreate();
  
  Self.imageArray := TNullImage.NULL_IMAGE_ARRAY;
  
  
  Self.anchor := TAnchor.TOP_LEFT;
end;
    

constructor TImageArrayBaseRotationAnimation.Create(originalImageArray: TArray<TImage>; angleInfo_: TAngleInfo; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(angleInfo_, TCircularIndexUtil.createInstance(TJava.Divide(360, angleInfo_.getAngleIncrementInfo().getAngleIncrement())), animationBehavior_);
        InitFields;
        Self.originalImageArray := originalImageArray;
        Self.setImageArray(Self.imageModifierUtil.getImageArray(originalImageArray));
        Self.currentImage := Self.imageArray[Self.circularIndexUtil.getIndex()];
end;
    

// throws Exception
function TImageArrayBaseRotationAnimation.getAnimationSize: Integer;
begin
        Exit(Self.getSize());
end;
    

procedure TImageArrayBaseRotationAnimation.setAlpha(alpha: Integer);
var
  index: Integer;
begin
        if (Self.alphaP) <> (alpha) then begin
            inherited setAlpha(alpha);
            Self.imageModifierUtil.reset();
            index := Self.circularIndexUtil.getIndex();
            Self.imageModifierUtil.setAlpha(Self.originalImageArray[index], Self.imageArray[index], index, Self.alphaP);
        end;
end;
    

procedure TImageArrayBaseRotationAnimation.nextRotation;
var
  index: Integer;
begin
        inherited nextRotation();
        index := Self.circularIndexUtil.getIndex();
        Self.imageModifierUtil.setAlpha(Self.originalImageArray[index], Self.imageArray[index], index, Self.alphaP);
        Self.currentImage := Self.imageArray[index];
end;
    

procedure TImageArrayBaseRotationAnimation.previousRotation;
var
  index: Integer;
begin
        inherited previousRotation();
        index := Self.circularIndexUtil.getIndex();
        Self.imageModifierUtil.setAlpha(Self.originalImageArray[index], Self.imageArray[index], index, Self.alphaP);
        Self.currentImage := Self.imageArray[index];
end;
    

procedure TImageArrayBaseRotationAnimation.setFrame(index2: Integer);
var
  index: Integer;
begin
        inherited setFrame(index2);
        index := Self.circularIndexUtil.getIndex();
        Self.imageModifierUtil.setAlpha(Self.originalImageArray[index], Self.imageArray[index], index, Self.alphaP);
        Self.currentImage := Self.imageArray[index];
end;
    

procedure TImageArrayBaseRotationAnimation.setSequence(sequence: TArray<Integer>);
begin
end;
    

function TImageArrayBaseRotationAnimation.getSequence: TArray<Integer>;
begin
        Exit(TPrimitiveIntUtil.getArrayInstance());
end;
    

procedure TImageArrayBaseRotationAnimation.setImageArray(imageArray: TArray<TImage>);
begin
        Self.imageArray := imageArray;
        Self.totalFrames := System.Length(imageArray);
        Self.circularIndexUtil := TCircularIndexUtil.createInstance(Self.totalFrames);
end;
    

procedure TImageArrayBaseRotationAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        graphics_.drawImage(Self.currentImage, x, y, Self.anchor);
end;
    

// throws Exception
procedure TImageArrayBaseRotationAnimation.close;
var
  disposalUtil_: TDisposalUtil;
  size2: Integer;
  index: Integer;
  size: Integer;
begin
        disposalUtil_ := TDisposalUtil.getInstance();
        size2 := System.Length(Self.imageArray);
        for index := 0 to size2 - 1 do begin
            disposalUtil_.disposeImage(Self.imageArray[index]);
        end;
        size := System.Length(Self.originalImageArray);
        for index := 0 to size - 1 do begin
            disposalUtil_.disposeImage(Self.originalImageArray[index]);
        end;
        disposalUtil_.disposeImage(Self.currentImage);
end;
    

// throws Throwable
procedure TImageArrayBaseRotationAnimation.finalize;
var
  disposalUtil_: TDisposalUtil;
  size2: Integer;
  index: Integer;
  size: Integer;
begin
        disposalUtil_ := TDisposalUtil.getInstance();
        size2 := System.Length(Self.imageArray);
        for index := 0 to size2 - 1 do begin
            disposalUtil_.disposeImage(Self.imageArray[index]);
        end;
        size := System.Length(Self.originalImageArray);
        for index := 0 to size - 1 do begin
            disposalUtil_.disposeImage(Self.originalImageArray[index]);
        end;
        disposalUtil_.disposeImage(Self.currentImage);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

