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
// package org.allbinary.animation.compound
unit CompoundRotationAnimationInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, AnimationBehaviorFactory, AnimationInterfaceFactoryInterface, CompoundAnimationInterfaceFactory;

type
  {AB:TYPES}
  TCompoundRotationAnimationInterfaceFactory = class(TCompoundAnimationInterfaceFactory)
  public
        constructor Create(basicAnimationInterfaceFactoryInterfaceArray: TArray<IAnimationInterfaceFactoryInterface>; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function createArray(size: Integer): TArray<TAnimation>; override;
        function createAnimation(animationInterfaceArray: TArray<TAnimation>): TAnimation; override;
  end;

implementation
uses
  CompoundRotationAnimation, RotationAnimation, ForcedLogUtil;


{AB:CODE}
    

constructor TCompoundRotationAnimationInterfaceFactory.Create(basicAnimationInterfaceFactoryInterfaceArray: TArray<IAnimationInterfaceFactoryInterface>; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
        inherited Create(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory_);
        if (animationBehaviorFactory_) = (TAnimationBehaviorFactory.getInstance()) then begin
            TForcedLogUtil.log('Using default AnimationBehaviorFactory with IndexedAnimationFactory', TJava.Box(Self));
        end;
end;
    

function TCompoundRotationAnimationInterfaceFactory.createArray(size: Integer): TArray<TAnimation>;
begin
        Exit(TJava.NewArray<TAnimation>(size));
end;
    

function TCompoundRotationAnimationInterfaceFactory.createAnimation(animationInterfaceArray: TArray<TAnimation>): TAnimation;
begin
        Exit(TCompoundRotationAnimation.Create(TArray<TRotationAnimation>(animationInterfaceArray), Self.animationBehaviorFactory.getOrCreateInstance()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

