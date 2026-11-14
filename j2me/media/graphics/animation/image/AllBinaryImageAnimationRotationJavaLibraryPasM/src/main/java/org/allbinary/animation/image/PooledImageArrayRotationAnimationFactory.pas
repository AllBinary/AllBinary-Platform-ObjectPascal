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
unit PooledImageArrayRotationAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, AnimationInterfaceFactoryInterface, ScaleProperties, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  // TWB - Adjustments should be done in the resource creation and not at the animation level
  TPooledImageArrayRotationAnimationFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    allBinaryImageRotationAnimationInfo: TObject;
    animationBehaviorFactory: TAnimationBehaviorFactory;
    procedure InitFields;
    function JavaObject: TObject;
        class function createFactory(image_: TImage; animationBehaviorFactory_: TAnimationBehaviorFactory): TPooledImageArrayRotationAnimationFactory; static;
        class function createDXY(image_: TImage; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TPooledImageArrayRotationAnimationFactory; static;
        constructor Create(image_: TImage; width: Integer; height: Integer; dx: Integer; dy: Integer; angleIncrement: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation
uses
  ImageArrayRotationAnimationInfo, AdjustedImageArrayRotationAnimation, GameConfigurationCentral, NullUtil, AngleFactory, ImageToRotationImageArrayUtil;


{AB:CODE}

procedure TPooledImageArrayRotationAnimationFactory.InitFields;
begin
  Self.allBinaryImageRotationAnimationInfo := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  
end;

function TPooledImageArrayRotationAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

// throws Exception
class function TPooledImageArrayRotationAnimationFactory.createFactory(image_: TImage; animationBehaviorFactory_: TAnimationBehaviorFactory): TPooledImageArrayRotationAnimationFactory;
var
  totalAngle: Integer;
  angleIncrement: Integer;
begin
        totalAngle := Integer(Trunc(TAngleFactory.getInstance().TOTAL_ANGLE));
        angleIncrement := ((totalAngle) div (TGameConfigurationCentral.getInstance().getGameControlFidelity()));
        Exit(TPooledImageArrayRotationAnimationFactory.Create(image_, image_.getWidth(), image_.getHeight(), -(TJava.SignedRightShift(image_.getWidth(), 2)), -(TJava.SignedRightShift(image_.getHeight(), 2)), angleIncrement, animationBehaviorFactory_));
end;
    

// throws Exception
class function TPooledImageArrayRotationAnimationFactory.createDXY(image_: TImage; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TPooledImageArrayRotationAnimationFactory;
var
  totalAngle: Integer;
  angleIncrement: Integer;
begin
        totalAngle := Integer(Trunc(TAngleFactory.getInstance().TOTAL_ANGLE));
        angleIncrement := ((totalAngle) div (TGameConfigurationCentral.getInstance().getGameControlFidelity()));
        Exit(TPooledImageArrayRotationAnimationFactory.Create(image_, image_.getWidth(), image_.getHeight(), dx, dy, angleIncrement, animationBehaviorFactory_));
end;
    

constructor TPooledImageArrayRotationAnimationFactory.Create(image_: TImage; width: Integer; height: Integer; dx: Integer; dy: Integer; angleIncrement: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
var
  totalAngle: Integer;
  imageArray: TArray<TImage>;
begin
    inherited Create;
    InitFields;
        Self.animationBehaviorFactory := animationBehaviorFactory_;
        totalAngle := Integer(Trunc(TAngleFactory.getInstance().TOTAL_ANGLE));
        imageArray := TImageToRotationImageArrayUtil.getInstance().generate(image_, angleIncrement, totalAngle);
        Self.allBinaryImageRotationAnimationInfo := TJava.Box(TImageArrayRotationAnimationInfo.Create(imageArray, angleIncrement, totalAngle, dx, dy));
end;
    

// throws Exception
function TPooledImageArrayRotationAnimationFactory.getInstance(instanceId: Integer): TAnimation;
begin
        Exit(TAdjustedImageArrayRotationAnimation.createAdjustedImageArrayRotationAnimationInfo(TJava.Box(Self.allBinaryImageRotationAnimationInfo), Self.animationBehaviorFactory.getOrCreateInstance()));
end;
    

procedure TPooledImageArrayRotationAnimationFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

