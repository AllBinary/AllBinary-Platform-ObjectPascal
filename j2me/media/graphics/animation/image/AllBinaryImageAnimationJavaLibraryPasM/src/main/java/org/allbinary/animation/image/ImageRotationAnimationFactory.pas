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
unit ImageRotationAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, BaseImageAnimationFactory;

type
  {AB:TYPES}
  TImageRotationAnimationFactory = class(TBaseImageAnimationFactory)
  public
    angleIncrement: SmallInt;
    procedure InitFields;
        constructor Create(image_: TImage; width: Integer; height: Integer; dx: Integer; dy: Integer; angleIncrement: SmallInt; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function getInstance(instanceId: Integer): TAnimation; override;
        function getAngleIncrementP: SmallInt; virtual;
  end;

implementation
uses
  ImageBaseRotationAnimation, AdjustedImageBaseRotationAnimation, GameConfigurationCentral, PrimitiveIntUtil, AngleFactory, AngleInfo;


{AB:CODE}

procedure TImageRotationAnimationFactory.InitFields;
begin
  
end;
    

constructor TImageRotationAnimationFactory.Create(image_: TImage; width: Integer; height: Integer; dx: Integer; dy: Integer; angleIncrement: SmallInt; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
        inherited Create(image_, TPrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory_);
        InitFields;
        Self.angleIncrement := angleIncrement;
        Self.animationFactoryInitializationVisitor.dx := dx;
        Self.animationFactoryInitializationVisitor.dy := dy;
end;
    

// throws Exception
function TImageRotationAnimationFactory.getInstance(instanceId: Integer): TAnimation;
begin
        if ((Self.animationFactoryInitializationVisitor.dx) <> (0)) or ((Self.animationFactoryInitializationVisitor.dy) <> (0)) then begin
            Self.animationFactoryImageScaleUtil.processAdjust(Self);
            Exit(TAdjustedImageBaseRotationAnimation.Create(Self.getImage(), TAngleInfo.getInstance(Self.angleIncrement), TAngleFactory.getInstance().TOTAL_ANGLE, Self.animationFactoryInitializationVisitor.dx, Self.animationFactoryInitializationVisitor.dy, Self.animationBehaviorFactory.getOrCreateInstance()));
        end else begin
            Exit(TImageBaseRotationAnimation.Create(Self.getImage(), TAngleInfo.getInstance(Self.angleIncrement), TAngleFactory.getInstance().TOTAL_ANGLE, Self.animationBehaviorFactory.getOrCreateInstance()));
        end;
end;
    

function TImageRotationAnimationFactory.getAngleIncrementP: SmallInt;
begin
        Exit(Self.angleIncrement);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

