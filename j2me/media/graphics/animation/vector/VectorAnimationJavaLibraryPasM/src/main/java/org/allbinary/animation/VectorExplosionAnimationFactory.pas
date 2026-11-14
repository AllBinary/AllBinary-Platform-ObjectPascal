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
unit VectorExplosionAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicColor, VectorExplosionGenerator, AnimationBehaviorFactory, Animation, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TVectorExplosionAnimationFactory = class(TInterfacedObject, IProceduralAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    vectorExplosionGenerator: TVectorExplosionGenerator;
    basicColor: TBasicColor;
    animationBehaviorFactory: TAnimationBehaviorFactory;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(basicColor_: TBasicColor; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function getInstanceAnimation(animationInterface: TAnimation): TAnimation; virtual;
        procedure setBasicColorP(basicColor_: TBasicColor);
        function getBasicColorP: TBasicColor;
  end;

implementation
uses
  VectorAnimationInterface, VectorRotationAnimation, BasicColorFactory;


{AB:CODE}

procedure TVectorExplosionAnimationFactory.InitFields;
begin
  Self.vectorExplosionGenerator := TVectorExplosionGenerator.getInstance();
  Self.basicColor := TBasicColorFactory.getInstance().WHITE;
  
end;

function TVectorExplosionAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TVectorExplosionAnimationFactory.Create(basicColor_: TBasicColor; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
    inherited Create;
    InitFields;
        Self.animationBehaviorFactory := animationBehaviorFactory_;
        Self.setBasicColorP(basicColor_);
end;
    

// throws Exception
function TVectorExplosionAnimationFactory.getInstanceAnimation(animationInterface: TAnimation): TAnimation;
var
  vectorRotationAnimationInterface: IVectorAnimationInterface;
  frame: Integer;
  framePoints: TArray<TArray<Integer>>;
  points: TArray<TArray<TArray<Integer>>>;
begin
        vectorRotationAnimationInterface := (TJava.ToObject(animationInterface) as IVectorAnimationInterface);
        frame := vectorRotationAnimationInterface.getFrame();
        framePoints := vectorRotationAnimationInterface.getPoints(frame);
        points := Self.vectorExplosionGenerator.getInstance(framePoints, 6, Self.vectorExplosionGenerator.ROTATION);
        Exit(TVectorRotationAnimation.Create(points, Self.getBasicColorP(), Self.animationBehaviorFactory.getOrCreateInstance()));
end;
    

procedure TVectorExplosionAnimationFactory.setBasicColorP(basicColor_: TBasicColor);
begin
        Self.basicColor := basicColor_;
end;
    

function TVectorExplosionAnimationFactory.getBasicColorP: TBasicColor;
begin
        Exit(Self.basicColor);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

