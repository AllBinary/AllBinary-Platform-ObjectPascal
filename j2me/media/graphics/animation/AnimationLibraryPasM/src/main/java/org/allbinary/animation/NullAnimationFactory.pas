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
unit NullAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ScaleProperties, Animation, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TNullAnimationFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IProceduralAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    NULL_ANIMATION: TAnimation;
    EMPTY_ARRAY: TArray<TAnimation>;
    class var NULL_NOT_FOR_USE_ANIMATION_FACTORY: TNullAnimationFactory;
    class var NULL_ANIMATION_FACTORY: TNullAnimationFactory;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        class function getFactoryInstance: TNullAnimationFactory; static;
        function getInstance(instanceId: Integer): TAnimation; virtual;
        function getInstanceAnimation(animationInterface: TAnimation): TAnimation; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation
uses
  Graphics;


{AB:CODE}

procedure TNullAnimationFactory.InitFields;
begin
  Self.NULL_ANIMATION := TAnimation.Create() (* Java anonymous class body: implement it as a named class
        

    procedure T.paintXY(graphics: TGraphics; x: Integer; y: Integer);
begin
end;
*);
  Self.EMPTY_ARRAY := nil;
end;

function TNullAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TNullAnimationFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TNullAnimationFactory.getFactoryInstance: TNullAnimationFactory;
begin
        Exit(TNullAnimationFactory.NULL_ANIMATION_FACTORY);
end;
    

function TNullAnimationFactory.getInstance(instanceId: Integer): TAnimation;
begin
        Exit(Self.NULL_ANIMATION);
end;
    

// throws Exception
function TNullAnimationFactory.getInstanceAnimation(animationInterface: TAnimation): TAnimation;
begin
        Exit(Self.NULL_ANIMATION);
end;
    

procedure TNullAnimationFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY := TNullAnimationFactory.Create();
  TNullAnimationFactory.NULL_ANIMATION_FACTORY := TNullAnimationFactory.Create();
  {AB:END}

end.

