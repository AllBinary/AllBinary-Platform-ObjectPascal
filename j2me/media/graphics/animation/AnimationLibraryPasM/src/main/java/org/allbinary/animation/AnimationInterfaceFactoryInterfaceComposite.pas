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
unit AnimationInterfaceFactoryInterfaceComposite;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ScaleProperties, Animation, AnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TAnimationInterfaceFactoryInterfaceComposite = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    animationInterfaceFactoryInterfaceArray: TArray<IAnimationInterfaceFactoryInterface>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(basicAnimationInterfaceFactoryInterfaceArray: TArray<IAnimationInterfaceFactoryInterface>);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        function getAnimationInterfaceFactoryInterfaceArray: TArray<IAnimationInterfaceFactoryInterface>; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation
uses
  NullAnimationFactory;


{AB:CODE}

procedure TAnimationInterfaceFactoryInterfaceComposite.InitFields;
begin
  
end;

function TAnimationInterfaceFactoryInterfaceComposite.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAnimationInterfaceFactoryInterfaceComposite.Create(basicAnimationInterfaceFactoryInterfaceArray: TArray<IAnimationInterfaceFactoryInterface>);
begin
    inherited Create;
    InitFields;
        Self.animationInterfaceFactoryInterfaceArray := basicAnimationInterfaceFactoryInterfaceArray;
end;
    

// throws Exception
function TAnimationInterfaceFactoryInterfaceComposite.getInstance(instanceId: Integer): TAnimation;
begin
        Exit(TNullAnimationFactory.getFactoryInstance().getInstance(0));
end;
    

function TAnimationInterfaceFactoryInterfaceComposite.getAnimationInterfaceFactoryInterfaceArray: TArray<IAnimationInterfaceFactoryInterface>;
begin
        Exit(Self.animationInterfaceFactoryInterfaceArray);
end;
    

procedure TAnimationInterfaceFactoryInterfaceComposite.setInitialScale(scaleProperties_: TScaleProperties);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

