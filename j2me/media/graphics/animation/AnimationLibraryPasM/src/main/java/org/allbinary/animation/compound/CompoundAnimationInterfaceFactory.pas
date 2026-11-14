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
unit CompoundAnimationInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, AnimationBehaviorFactory, AnimationInterfaceFactoryInterface, ScaleProperties, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TCompoundAnimationInterfaceFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    basicAnimationInterfaceFactoryInterfaceArrayP: TArray<IAnimationInterfaceFactoryInterface>;
    animationBehaviorFactory: TAnimationBehaviorFactory;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(basicAnimationInterfaceFactoryInterfaceArray: TArray<IAnimationInterfaceFactoryInterface>; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        function createArray(size: Integer): TArray<TAnimation>; virtual;
        function createAnimation(animationInterfaceArray: TArray<TAnimation>): TAnimation; virtual;
        function getBasicAnimationInterfaceFactoryInterfaceArray: TArray<IAnimationInterfaceFactoryInterface>; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation
uses
  NullAnimationFactory, ForcedLogUtil;


{AB:CODE}

procedure TCompoundAnimationInterfaceFactory.InitFields;
begin
  
  
end;

function TCompoundAnimationInterfaceFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCompoundAnimationInterfaceFactory.Create(basicAnimationInterfaceFactoryInterfaceArray: TArray<IAnimationInterfaceFactoryInterface>; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
    inherited Create;
    InitFields;
        Self.basicAnimationInterfaceFactoryInterfaceArrayP := basicAnimationInterfaceFactoryInterfaceArray;
        Self.animationBehaviorFactory := animationBehaviorFactory_;
end;
    

// throws Exception
function TCompoundAnimationInterfaceFactory.getInstance(instanceId: Integer): TAnimation;
var
  size: Integer;
  animationInterfaceArray: TArray<TAnimation>;
  index: Integer;
begin
        size := System.Length(Self.basicAnimationInterfaceFactoryInterfaceArrayP);
        animationInterfaceArray := Self.createArray(size);
        for index := 0 to size - 1 do begin
            animationInterfaceArray[index] := Self.basicAnimationInterfaceFactoryInterfaceArrayP[index].getInstance(instanceId);
        end;
        Exit(Self.createAnimation(animationInterfaceArray));
end;
    

function TCompoundAnimationInterfaceFactory.createArray(size: Integer): TArray<TAnimation>;
begin
        Exit(TNullAnimationFactory.getFactoryInstance().EMPTY_ARRAY);
end;
    

function TCompoundAnimationInterfaceFactory.createAnimation(animationInterfaceArray: TArray<TAnimation>): TAnimation;
begin
        Exit(TNullAnimationFactory.getFactoryInstance().getInstance(0));
end;
    

function TCompoundAnimationInterfaceFactory.getBasicAnimationInterfaceFactoryInterfaceArray: TArray<IAnimationInterfaceFactoryInterface>;
begin
        Exit(Self.basicAnimationInterfaceFactoryInterfaceArrayP);
end;
    

procedure TCompoundAnimationInterfaceFactory.setInitialScale(scaleProperties_: TScaleProperties);
var
  size: Integer;
  index: Integer;
begin
        size := System.Length(Self.basicAnimationInterfaceFactoryInterfaceArrayP);
        for index := 0 to size - 1 do begin
            Self.basicAnimationInterfaceFactoryInterfaceArrayP[index].setInitialScale(scaleProperties_);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

