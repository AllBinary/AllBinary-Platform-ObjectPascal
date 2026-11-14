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
unit NullSpecialAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ScaleProperties, Animation, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TNullSpecialAnimationFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IProceduralAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    class var NULL_SPECIAL_ANIMATION_FACTORY: TNullSpecialAnimationFactory;
    function JavaObject: TObject;
        constructor Create;
        class function getFactoryInstance: TNullSpecialAnimationFactory; static;
        function getInstance(instanceId: Integer): TAnimation; virtual;
        function getInstanceAnimation(animationInterface: TAnimation): TAnimation; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation
uses
  SpecialAnimation;


{AB:CODE}

function TNullSpecialAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TNullSpecialAnimationFactory.Create;
begin
    inherited Create;
end;
    

class function TNullSpecialAnimationFactory.getFactoryInstance: TNullSpecialAnimationFactory;
begin
        Exit(TNullSpecialAnimationFactory.NULL_SPECIAL_ANIMATION_FACTORY);
end;
    

// throws Exception
function TNullSpecialAnimationFactory.getInstance(instanceId: Integer): TAnimation;
begin
        Exit(TSpecialAnimation.getInstance());
end;
    

// throws Exception
function TNullSpecialAnimationFactory.getInstanceAnimation(animationInterface: TAnimation): TAnimation;
begin
        Exit(TSpecialAnimation.getInstance());
end;
    

procedure TNullSpecialAnimationFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullSpecialAnimationFactory.NULL_SPECIAL_ANIMATION_FACTORY := TNullSpecialAnimationFactory.Create();
  {AB:END}

end.

