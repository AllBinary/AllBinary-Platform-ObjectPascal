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
unit NullIndexedAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ScaleProperties, Animation, IndexedAnimation, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TNullIndexedAnimationFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IProceduralAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    NULL_ANIMATION: TAnimation;
    class var NULL_INDEXED_ANIMATION_ARRAY: TArray<TIndexedAnimation>;
    class var NULL_INDEXED_ANIMATION_FACTORY: TNullIndexedAnimationFactory;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        class function getFactoryInstance: TNullIndexedAnimationFactory; static;
        function getInstance(instanceId: Integer): TAnimation; virtual;
        function getInstanceAnimation(animationInterface: TAnimation): TAnimation; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation
uses
  NullIndexedAnimationInner;


{AB:CODE}

procedure TNullIndexedAnimationFactory.InitFields;
begin
  Self.NULL_ANIMATION := TNullIndexedAnimationInner.Create();
end;

function TNullIndexedAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TNullIndexedAnimationFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TNullIndexedAnimationFactory.getFactoryInstance: TNullIndexedAnimationFactory;
begin
        Exit(TNullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_FACTORY);
end;
    

// throws Exception
function TNullIndexedAnimationFactory.getInstance(instanceId: Integer): TAnimation;
begin
        Exit(Self.NULL_ANIMATION);
end;
    

// throws Exception
function TNullIndexedAnimationFactory.getInstanceAnimation(animationInterface: TAnimation): TAnimation;
begin
        Exit(Self.NULL_ANIMATION);
end;
    

procedure TNullIndexedAnimationFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_ARRAY := nil;
  TNullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_FACTORY := TNullIndexedAnimationFactory.Create();
  {AB:END}

end.

