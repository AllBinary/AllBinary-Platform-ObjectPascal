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
unit SimultaneousCompoundIndexedAnimationInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, AnimationBehaviorFactory, AnimationInterfaceFactoryInterface, CompoundAnimationInterfaceFactory;

type
  {AB:TYPES}
  TSimultaneousCompoundIndexedAnimationInterfaceFactory = class(TCompoundAnimationInterfaceFactory)
  public
        constructor Create(basicAnimationInterfaceFactoryInterfaceArray: TArray<IAnimationInterfaceFactoryInterface>; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function createArray(size: Integer): TArray<TAnimation>; override;
        function createAnimation(animationArray: TArray<TAnimation>): TAnimation; override;
  end;

implementation
uses
  SimultaneousCompoundIndexedAnimation, ForcedLogUtil;


{AB:CODE}
    

constructor TSimultaneousCompoundIndexedAnimationInterfaceFactory.Create(basicAnimationInterfaceFactoryInterfaceArray: TArray<IAnimationInterfaceFactoryInterface>; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
        inherited Create(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory_);
end;
    

function TSimultaneousCompoundIndexedAnimationInterfaceFactory.createArray(size: Integer): TArray<TAnimation>;
begin
        Exit(TJava.NewArray<TAnimation>(size));
end;
    

function TSimultaneousCompoundIndexedAnimationInterfaceFactory.createAnimation(animationArray: TArray<TAnimation>): TAnimation;
begin
        Exit(TSimultaneousCompoundIndexedAnimation.Create(animationArray, Self.animationBehaviorFactory.getOrCreateInstance()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

