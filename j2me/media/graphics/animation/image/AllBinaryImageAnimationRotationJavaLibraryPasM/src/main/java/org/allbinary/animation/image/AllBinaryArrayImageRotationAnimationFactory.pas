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
unit AllBinaryArrayImageRotationAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, BaseImageAnimationFactory;

type
  {AB:TYPES}
  TAllBinaryArrayImageRotationAnimationFactory = class(TBaseImageAnimationFactory)
  public
    imageArray: TArray<TImage>;
    angleIncrement: Integer;
    procedure InitFields;
        class function createFactory(image_: TImage; dx: Integer; dy: Integer): TAllBinaryArrayImageRotationAnimationFactory; static;
        class function createFactoryA(image_: TImage; dx: Integer; dy: Integer; angleIncrement: Integer): TAllBinaryArrayImageRotationAnimationFactory; static;
        constructor Create(image_: TImage; width: Integer; height: Integer; angleIncrement: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
        procedure init;
        procedure initDXY(dx: Integer; dy: Integer);
        function getInstance(instanceId: Integer): TAnimation; override;
        procedure setImageArray(imageArray: TArray<TImage>); virtual;
        function getAngleIncrement: Integer; virtual;
  end;

implementation
uses
  ImageArrayRotationAnimation, AdjustedImageArrayRotationAnimation, NullImage, GameConfigurationCentral, PrimitiveIntUtil, AngleFactory, AngleInfo, ImageToRotationImageArrayUtil;


{AB:CODE}

procedure TAllBinaryArrayImageRotationAnimationFactory.InitFields;
begin
  Self.imageArray := TNullImage.NULL_IMAGE_ARRAY;
  
end;
    

// throws Exception
class function TAllBinaryArrayImageRotationAnimationFactory.createFactory(image_: TImage; dx: Integer; dy: Integer): TAllBinaryArrayImageRotationAnimationFactory;
var
  arrayImageRotationAnimationFactory: TAllBinaryArrayImageRotationAnimationFactory;
begin
        arrayImageRotationAnimationFactory := TAllBinaryArrayImageRotationAnimationFactory.Create(image_, image_.getWidth(), image_.getHeight(), TJava.Divide(TAngleFactory.getInstance().TOTAL_ANGLE, TGameConfigurationCentral.getInstance().getGameControlFidelity()), TAnimationBehaviorFactory.getInstance());
        arrayImageRotationAnimationFactory.initDXY(dx, dy);
        Exit(arrayImageRotationAnimationFactory);
end;
    

// throws Exception
class function TAllBinaryArrayImageRotationAnimationFactory.createFactoryA(image_: TImage; dx: Integer; dy: Integer; angleIncrement: Integer): TAllBinaryArrayImageRotationAnimationFactory;
var
  arrayImageRotationAnimationFactory: TAllBinaryArrayImageRotationAnimationFactory;
begin
        arrayImageRotationAnimationFactory := TAllBinaryArrayImageRotationAnimationFactory.Create(image_, image_.getWidth(), image_.getHeight(), angleIncrement, TAnimationBehaviorFactory.getInstance());
        arrayImageRotationAnimationFactory.initDXY(dx, dy);
        Exit(arrayImageRotationAnimationFactory);
end;
    

constructor TAllBinaryArrayImageRotationAnimationFactory.Create(image_: TImage; width: Integer; height: Integer; angleIncrement: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
        inherited Create(image_, TPrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory_);
        InitFields;
        Self.angleIncrement := angleIncrement;
        Self.init();
end;
    

// throws Exception
procedure TAllBinaryArrayImageRotationAnimationFactory.init;
begin
        Self.setImageArray(TImageToRotationImageArrayUtil.getInstance().generate(Self.getImage(), Self.getAngleIncrement(), Integer(Trunc(TAngleFactory.getInstance().TOTAL_ANGLE))));
end;
    

procedure TAllBinaryArrayImageRotationAnimationFactory.initDXY(dx: Integer; dy: Integer);
begin
        Self.animationFactoryInitializationVisitor.dx := dx;
        Self.animationFactoryInitializationVisitor.dy := dy;
        Self.animationFactoryInitializationVisitor.originalDx := dx;
        Self.animationFactoryInitializationVisitor.originalDy := dy;
end;
    

// throws Exception
function TAllBinaryArrayImageRotationAnimationFactory.getInstance(instanceId: Integer): TAnimation;
var
  scaledImageArray: TArray<TImage>;
  size: Integer;
  image_: TImage;
  index: Integer;
begin
        scaledImageArray := TJava.NewArray<TImage>(System.Length(Self.imageArray));
        size := System.Length(scaledImageArray);
        image_ := Self.getImage();
        for index := 0 to size - 1 do begin
            scaledImageArray[index] := Self.animationFactoryImageScaleUtil.createImage(image_, image_.getWidth(), image_.getHeight(), Self.scaleProperties.scaleWidth, Self.scaleProperties.scaleHeight);
        end;
        if ((Self.animationFactoryInitializationVisitor.dx) <> (0)) or ((Self.animationFactoryInitializationVisitor.dy) <> (0)) then begin
            Self.animationFactoryImageScaleUtil.processAdjust(Self);
            Exit(TAdjustedImageArrayRotationAnimation.Create(scaledImageArray, TAngleInfo.getInstance(SmallInt(Self.getAngleIncrement())), Integer(Trunc(TAngleFactory.getInstance().TOTAL_ANGLE)), Self.animationFactoryInitializationVisitor.dx, Self.animationFactoryInitializationVisitor.dy, Self.animationBehaviorFactory.getOrCreateInstance()));
        end else begin
            Exit(TImageArrayRotationAnimation.Create(scaledImageArray, TAngleInfo.getInstance(SmallInt(Self.getAngleIncrement())), Integer(Trunc(TAngleFactory.getInstance().TOTAL_ANGLE)), Self.animationBehaviorFactory.getOrCreateInstance()));
        end;
end;
    

procedure TAllBinaryArrayImageRotationAnimationFactory.setImageArray(imageArray: TArray<TImage>);
begin
        Self.imageArray := imageArray;
end;
    

function TAllBinaryArrayImageRotationAnimationFactory.getAngleIncrement: Integer;
begin
        Exit(Self.angleIncrement);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

