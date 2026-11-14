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
unit RotationAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ScaleProperties, Animation, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TRotationAnimationFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IProceduralAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    totalAngle: SmallInt;
    angleIncrement: SmallInt;
    procedure InitFields;
    function JavaObject: TObject;
        class function createFactory: TRotationAnimationFactory; static;
        constructor Create(totalAngle: SmallInt; angleIncrement: SmallInt);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        function getInstanceAnimation(animationInterface: TAnimation): TAnimation; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation
uses
  NullRotationAnimation, AnimationBehavior, GameConfigurationCentral, AngleFactory, AngleInfo;


{AB:CODE}

procedure TRotationAnimationFactory.InitFields;
begin
  
  
end;

function TRotationAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TRotationAnimationFactory.createFactory: TRotationAnimationFactory;
var
  totalAngle: SmallInt;
begin
        totalAngle := TAngleFactory.getInstance().TOTAL_ANGLE;
        Exit(TRotationAnimationFactory.Create(totalAngle, SmallInt(Trunc((TJava.Divide(totalAngle, TGameConfigurationCentral.getInstance().getGameControlFidelity()))))));
end;
    

constructor TRotationAnimationFactory.Create(totalAngle: SmallInt; angleIncrement: SmallInt);
begin
    inherited Create;
    InitFields;
        Self.totalAngle := totalAngle;
        Self.angleIncrement := angleIncrement;
end;
    

// throws Exception
function TRotationAnimationFactory.getInstance(instanceId: Integer): TAnimation;
begin
        Exit(TNullRotationAnimation.createTotalAngle(TAngleInfo.getInstance(Self.angleIncrement), Self.totalAngle, TAnimationBehavior.getInstance()));
end;
    

// throws Exception
function TRotationAnimationFactory.getInstanceAnimation(animationInterface: TAnimation): TAnimation;
begin
        Exit(TNullRotationAnimation.createTotalAngle(TAngleInfo.getInstance(Self.angleIncrement), Self.totalAngle, TAnimationBehavior.getInstance()));
end;
    

procedure TRotationAnimationFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

