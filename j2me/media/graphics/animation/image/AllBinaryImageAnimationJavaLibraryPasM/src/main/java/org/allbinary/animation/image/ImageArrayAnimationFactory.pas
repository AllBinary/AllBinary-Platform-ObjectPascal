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
unit ImageArrayAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Animation, AnimationBehaviorFactory, AnimationInterfaceFactoryInterface, ScaleProperties, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TImageArrayAnimationFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    dx: Integer;
    dy: Integer;
    imageArray: TArray<TImage>;
    animationBehaviorFactory: TAnimationBehaviorFactory;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(imageArray: TArray<TImage>; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation
uses
  ImageArrayAnimation, AdjustedImageArrayAnimation, AnimationBehavior, ForcedLogUtil;


{AB:CODE}

procedure TImageArrayAnimationFactory.InitFields;
begin
  Self.dx := 0;
  Self.dy := 0;
  
  
end;

function TImageArrayAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TImageArrayAnimationFactory.Create(imageArray: TArray<TImage>; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
    inherited Create;
    InitFields;
        Self.imageArray := imageArray;
        Self.animationBehaviorFactory := animationBehaviorFactory_;
        Self.dx := dx;
        Self.dy := dy;
end;
    

// throws Exception
function TImageArrayAnimationFactory.getInstance(instanceId: Integer): TAnimation;
begin
        if ((Self.dx) <> (0)) or ((Self.dy) <> (0)) then begin
            Exit(TAdjustedImageArrayAnimation.Create(Self.imageArray, Self.dx, Self.dy, Self.animationBehaviorFactory.getOrCreateInstance()));
        end else begin
            Exit(TImageArrayAnimation.Create(Self.imageArray, TAnimationBehavior.getInstance()));
        end;
end;
    

procedure TImageArrayAnimationFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

