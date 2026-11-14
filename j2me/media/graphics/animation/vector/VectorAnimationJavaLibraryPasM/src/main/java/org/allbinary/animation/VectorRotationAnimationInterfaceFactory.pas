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
// package org.allbinary.animation
unit VectorRotationAnimationInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicColor, ScaleProperties, AnimationBehaviorFactory, Animation, AnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TVectorRotationAnimationInterfaceFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    currentPoints: TArray<TArray<TArray<Integer>>>;
    basicColor: TBasicColor;
    animationBehaviorFactory: TAnimationBehaviorFactory;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(currentPoints: TArray<TArray<TArray<Integer>>>; basicColor_: TBasicColor; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
        function getBasicColorP: TBasicColor; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation
uses
  VectorRotationAnimation, BasicColorFactory, NullUtil;


{AB:CODE}

procedure TVectorRotationAnimationInterfaceFactory.InitFields;
begin
  Self.currentPoints := TNullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
  Self.basicColor := TBasicColorFactory.getInstance().WHITE;
  
end;

function TVectorRotationAnimationInterfaceFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TVectorRotationAnimationInterfaceFactory.Create(currentPoints: TArray<TArray<TArray<Integer>>>; basicColor_: TBasicColor; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
    inherited Create;
    InitFields;
        Self.currentPoints := currentPoints;
        Self.setBasicColorP(basicColor_);
        Self.animationBehaviorFactory := animationBehaviorFactory_;
end;
    

// throws Exception
function TVectorRotationAnimationInterfaceFactory.getInstance(instanceId: Integer): TAnimation;
begin
        Exit(TVectorRotationAnimation.Create(Self.currentPoints, Self.getBasicColorP(), Self.animationBehaviorFactory.getOrCreateInstance()));
end;
    

procedure TVectorRotationAnimationInterfaceFactory.setBasicColorP(basicColor_: TBasicColor);
begin
        Self.basicColor := basicColor_;
end;
    

function TVectorRotationAnimationInterfaceFactory.getBasicColorP: TBasicColor;
begin
        Exit(Self.basicColor);
end;
    

procedure TVectorRotationAnimationInterfaceFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

