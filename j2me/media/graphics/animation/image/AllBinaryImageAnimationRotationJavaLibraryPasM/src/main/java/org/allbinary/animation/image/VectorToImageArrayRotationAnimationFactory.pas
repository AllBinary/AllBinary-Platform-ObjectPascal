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
unit VectorToImageArrayRotationAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, BasicColor, ScaleProperties, VectorInfo, BaseImageAnimationFactory;

type
  {AB:TYPES}
  TVectorToImageArrayRotationAnimationFactory = class(TBaseImageAnimationFactory)
  public
    imageArray: TArray<TImage>;
    angleIncrement: Integer;
    procedure InitFields;
        constructor Create(vectorInfo_: TVectorInfo; basicColor_: TBasicColor; animationBehaviorFactory_: TAnimationBehaviorFactory);
        procedure init; virtual;
        function getInstance(instanceId: Integer): TAnimation; override;
        function getAngleIncrement: Integer; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); override;
  end;

implementation
uses
  AdjustedImageArrayRotationAnimation, NullImage, VectorAnimation, GameConfigurationCentral, AnimationFrameToImageUtil, PrimitiveIntUtil, AngleFactory, AngleInfo, ImageToRotationImageArrayUtil;


{AB:CODE}

procedure TVectorToImageArrayRotationAnimationFactory.InitFields;
begin
  Self.imageArray := TNullImage.NULL_IMAGE_ARRAY;
  
end;
    

constructor TVectorToImageArrayRotationAnimationFactory.Create(vectorInfo_: TVectorInfo; basicColor_: TBasicColor; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
        inherited Create(TAnimationFrameToImageUtil.getInstance().getInstanceTranslate(vectorInfo_.getWidth(), vectorInfo_.getHeight(), TVectorAnimation.createVectorAnimation(vectorInfo_.getPoints(), basicColor_, animationBehaviorFactory_.getOrCreateInstance())), TPrimitiveIntUtil.getArrayInstance(), 0, 0, 0, 0, animationBehaviorFactory_);
        InitFields;
        Self.init();
end;
    

// throws Exception
procedure TVectorToImageArrayRotationAnimationFactory.init;
var
  angleFactory_: TAngleFactory;
begin
        angleFactory_ := TAngleFactory.getInstance();
        Self.angleIncrement := TJava.Divide(angleFactory_.TOTAL_ANGLE, TGameConfigurationCentral.getInstance().getGameControlFidelity());
        Self.imageArray := TImageToRotationImageArrayUtil.getInstance().generate(Self.getImage(), Self.getAngleIncrement(), Integer(Trunc(angleFactory_.TOTAL_ANGLE)));
end;
    

// throws Exception
function TVectorToImageArrayRotationAnimationFactory.getInstance(instanceId: Integer): TAnimation;
begin
        if ((Self.animationFactoryInitializationVisitor.dx) <> (0)) or ((Self.animationFactoryInitializationVisitor.dy) <> (0)) then begin
            Exit(TAdjustedImageArrayRotationAnimation.Create(Self.imageArray, TAngleInfo.getInstance(SmallInt(Self.getAngleIncrement())), Integer(Trunc(TAngleFactory.getInstance().TOTAL_ANGLE)), Self.animationFactoryInitializationVisitor.dx, Self.animationFactoryInitializationVisitor.dy, Self.animationBehaviorFactory.getOrCreateInstance()));
        end else begin
            Exit(TAdjustedImageArrayRotationAnimation.createAnimation(Self.imageArray, TAngleInfo.getInstance(SmallInt(Self.angleIncrement)), Integer(Trunc(TAngleFactory.getInstance().TOTAL_ANGLE)), Self.animationBehaviorFactory.getOrCreateInstance()));
        end;
end;
    

function TVectorToImageArrayRotationAnimationFactory.getAngleIncrement: Integer;
begin
        Exit(Self.angleIncrement);
end;
    

procedure TVectorToImageArrayRotationAnimationFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

