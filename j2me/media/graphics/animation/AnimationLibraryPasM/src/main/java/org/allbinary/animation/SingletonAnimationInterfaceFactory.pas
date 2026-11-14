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
unit SingletonAnimationInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ScaleProperties, Animation, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TSingletonAnimationInterfaceFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IProceduralAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    animationInterface: TAnimation;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(animationInterface: TAnimation);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        function getInstanceAnimation(animationInterface: TAnimation): TAnimation; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation

{AB:CODE}

procedure TSingletonAnimationInterfaceFactory.InitFields;
begin
  
end;

function TSingletonAnimationInterfaceFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TSingletonAnimationInterfaceFactory.Create(animationInterface: TAnimation);
begin
    inherited Create;
    InitFields;
        Self.animationInterface := animationInterface;
end;
    

// throws Exception
function TSingletonAnimationInterfaceFactory.getInstance(instanceId: Integer): TAnimation;
begin
        Exit(Self.animationInterface);
end;
    

// throws Exception
function TSingletonAnimationInterfaceFactory.getInstanceAnimation(animationInterface: TAnimation): TAnimation;
begin
        Exit(Self.animationInterface);
end;
    

procedure TSingletonAnimationInterfaceFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

