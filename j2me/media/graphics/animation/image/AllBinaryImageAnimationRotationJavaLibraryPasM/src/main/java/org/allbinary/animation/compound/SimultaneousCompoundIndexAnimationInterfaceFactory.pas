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
unit SimultaneousCompoundIndexAnimationInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, AnimationBehaviorFactory, AnimationInterfaceFactoryInterface, IndexedAnimation, ScaleProperties, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TSimultaneousCompoundIndexAnimationInterfaceFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    basicAnimationInterfaceFactoryInterfaceArray: TArray<IAnimationInterfaceFactoryInterface>;
    animationBehaviorFactory: TAnimationBehaviorFactory;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(basicAnimationInterfaceFactoryInterfaceArray: TArray<IAnimationInterfaceFactoryInterface>; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        function getOrCreate(animationInterfaceArray: TArray<TIndexedAnimation>): TAnimation; virtual;
        function getBasicAnimationInterfaceFactoryInterfaceArray: TArray<IAnimationInterfaceFactoryInterface>; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation
uses
  SimultaneousCompoundIndexAnimation, ForcedLogUtil;


{AB:CODE}

procedure TSimultaneousCompoundIndexAnimationInterfaceFactory.InitFields;
begin
  
  
end;

function TSimultaneousCompoundIndexAnimationInterfaceFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TSimultaneousCompoundIndexAnimationInterfaceFactory.Create(basicAnimationInterfaceFactoryInterfaceArray: TArray<IAnimationInterfaceFactoryInterface>; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
    inherited Create;
    InitFields;
        Self.basicAnimationInterfaceFactoryInterfaceArray := basicAnimationInterfaceFactoryInterfaceArray;
        Self.animationBehaviorFactory := animationBehaviorFactory_;
end;
    

// throws Exception
function TSimultaneousCompoundIndexAnimationInterfaceFactory.getInstance(instanceId: Integer): TAnimation;
var
  size: Integer;
  animationInterfaceArray: TArray<TIndexedAnimation>;
  index: Integer;
begin
        size := System.Length(Self.basicAnimationInterfaceFactoryInterfaceArray);
        animationInterfaceArray := TJava.NewArray<TIndexedAnimation>(size);
        for index := 0 to size - 1 do begin
            animationInterfaceArray[index] := TIndexedAnimation(TJava.ToObject(Self.basicAnimationInterfaceFactoryInterfaceArray[index].getInstance(instanceId)));
        end;
        Exit(Self.getOrCreate(animationInterfaceArray));
end;
    

function TSimultaneousCompoundIndexAnimationInterfaceFactory.getOrCreate(animationInterfaceArray: TArray<TIndexedAnimation>): TAnimation;
begin
        Exit(TSimultaneousCompoundIndexAnimation.Create(animationInterfaceArray, Self.animationBehaviorFactory.getOrCreateInstance()));
end;
    

function TSimultaneousCompoundIndexAnimationInterfaceFactory.getBasicAnimationInterfaceFactoryInterfaceArray: TArray<IAnimationInterfaceFactoryInterface>;
begin
        Exit(Self.basicAnimationInterfaceFactoryInterfaceArray);
end;
    

procedure TSimultaneousCompoundIndexAnimationInterfaceFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

