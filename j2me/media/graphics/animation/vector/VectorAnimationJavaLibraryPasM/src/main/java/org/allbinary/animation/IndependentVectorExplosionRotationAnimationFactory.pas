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
unit IndependentVectorExplosionRotationAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicColor, VectorInfo, VectorAnimationFactoryInterface, VectorExplosionGenerator, Animation, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TIndependentVectorExplosionRotationAnimationFactory = class(TInterfacedObject, IProceduralAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    framePoints: TArray<TArray<TArray<Integer>>>;
    vectorInfo: TVectorInfo;
    basicColor: TBasicColor;
    vectorAnimationFactoryInterface: IVectorAnimationFactoryInterface;
    vectorExplosionGenerator: TVectorExplosionGenerator;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(vectorInfo_: TVectorInfo; basicColor_: TBasicColor; vectorAnimationFactoryInterface_: IVectorAnimationFactoryInterface);
        procedure init; virtual;
        function getInstanceAnimation(animationInterface: TAnimation): TAnimation; virtual;
  end;

implementation
uses
  VectorRotationGenerator, IndexedAnimation, NullUtil;


{AB:CODE}

procedure TIndependentVectorExplosionRotationAnimationFactory.InitFields;
begin
  Self.framePoints := TNullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
  
  
  
  Self.vectorExplosionGenerator := TVectorExplosionGenerator.getInstance();
end;

function TIndependentVectorExplosionRotationAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TIndependentVectorExplosionRotationAnimationFactory.Create(vectorInfo_: TVectorInfo; basicColor_: TBasicColor; vectorAnimationFactoryInterface_: IVectorAnimationFactoryInterface);
begin
    inherited Create;
    InitFields;
        Self.vectorInfo := vectorInfo_;
        Self.basicColor := basicColor_;
        Self.vectorAnimationFactoryInterface := vectorAnimationFactoryInterface_;
        Self.init();
end;
    

// throws Exception
procedure TIndependentVectorExplosionRotationAnimationFactory.init;
begin
        Self.framePoints := TVectorRotationGenerator.getInstance().getInstance(Self.vectorInfo);
end;
    

// throws Exception
function TIndependentVectorExplosionRotationAnimationFactory.getInstanceAnimation(animationInterface: TAnimation): TAnimation;
var
  frame: Integer;
  rotationAnimationInterface: TIndexedAnimation;
  points: TArray<TArray<TArray<Integer>>>;
begin
        frame := 0;
        if (animationInterface) <> (nil) then begin
            rotationAnimationInterface := TIndexedAnimation(TJava.ToObject(animationInterface));
            frame := rotationAnimationInterface.getFrame();
        end;
        points := Self.vectorExplosionGenerator.getInstance(Self.framePoints[frame], 6, Self.vectorExplosionGenerator.ROTATION);
        Exit(Self.vectorAnimationFactoryInterface.getInstance(points, Self.basicColor));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

