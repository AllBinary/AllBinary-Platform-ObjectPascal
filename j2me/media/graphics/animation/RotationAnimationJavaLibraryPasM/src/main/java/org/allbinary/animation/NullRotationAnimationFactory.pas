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
unit NullRotationAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ScaleProperties, Animation, RotationAnimation, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TNullRotationAnimationFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IProceduralAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    NULL_ROTATION_ANIMATION_ARRAY: TArray<TRotationAnimation>;
    NULL_ANIMATION: TAnimation;
    class var NULL_ROTATION_ANIMATION_FACTORY: TNullRotationAnimationFactory;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        class function getFactoryInstance: TNullRotationAnimationFactory; static;
        function getInstance(instanceId: Integer): TAnimation; virtual;
        function getInstanceAnimation(animationInterface: TAnimation): TAnimation; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation
uses
  NullRotationAnimation2;


{AB:CODE}

procedure TNullRotationAnimationFactory.InitFields;
begin
  Self.NULL_ROTATION_ANIMATION_ARRAY := nil;
  Self.NULL_ANIMATION := TNullRotationAnimation2.Create();
end;

function TNullRotationAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TNullRotationAnimationFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TNullRotationAnimationFactory.getFactoryInstance: TNullRotationAnimationFactory;
begin
        Exit(TNullRotationAnimationFactory.NULL_ROTATION_ANIMATION_FACTORY);
end;
    

function TNullRotationAnimationFactory.getInstance(instanceId: Integer): TAnimation;
begin
        Exit(Self.NULL_ANIMATION);
end;
    

// throws Exception
function TNullRotationAnimationFactory.getInstanceAnimation(animationInterface: TAnimation): TAnimation;
begin
        Exit(Self.NULL_ANIMATION);
end;
    

procedure TNullRotationAnimationFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullRotationAnimationFactory.NULL_ROTATION_ANIMATION_FACTORY := TNullRotationAnimationFactory.Create();
  {AB:END}

end.

