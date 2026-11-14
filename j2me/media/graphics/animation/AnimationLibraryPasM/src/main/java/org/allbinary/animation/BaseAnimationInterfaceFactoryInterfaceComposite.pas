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
unit BaseAnimationInterfaceFactoryInterfaceComposite;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ScaleProperties, Animation, BasicAnimationInterfaceFactoryInterface, AnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TBaseAnimationInterfaceFactoryInterfaceComposite = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    basicAnimationInterfaceFactoryInterfaceArray: TArray<IBasicAnimationInterfaceFactoryInterface>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(basicAnimationInterfaceFactoryInterfaceArray: TArray<IBasicAnimationInterfaceFactoryInterface>);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        function getBasicAnimationInterfaceFactoryInterfaceArray: TArray<IBasicAnimationInterfaceFactoryInterface>; virtual;
        procedure setBasicAnimationInterfaceFactoryInterfaceArray(basicAnimationInterfaceFactoryInterfaceArray: TArray<IBasicAnimationInterfaceFactoryInterface>); virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation
uses
  NullAnimationFactory;


{AB:CODE}

procedure TBaseAnimationInterfaceFactoryInterfaceComposite.InitFields;
begin
  
end;

function TBaseAnimationInterfaceFactoryInterfaceComposite.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBaseAnimationInterfaceFactoryInterfaceComposite.Create(basicAnimationInterfaceFactoryInterfaceArray: TArray<IBasicAnimationInterfaceFactoryInterface>);
begin
    inherited Create;
    InitFields;
        Self.basicAnimationInterfaceFactoryInterfaceArray := basicAnimationInterfaceFactoryInterfaceArray;
end;
    

// throws Exception
function TBaseAnimationInterfaceFactoryInterfaceComposite.getInstance(instanceId: Integer): TAnimation;
begin
        Exit(TNullAnimationFactory.getFactoryInstance().getInstance(0));
end;
    

function TBaseAnimationInterfaceFactoryInterfaceComposite.getBasicAnimationInterfaceFactoryInterfaceArray: TArray<IBasicAnimationInterfaceFactoryInterface>;
begin
        Exit(Self.basicAnimationInterfaceFactoryInterfaceArray);
end;
    

procedure TBaseAnimationInterfaceFactoryInterfaceComposite.setBasicAnimationInterfaceFactoryInterfaceArray(basicAnimationInterfaceFactoryInterfaceArray: TArray<IBasicAnimationInterfaceFactoryInterface>);
begin
        Self.basicAnimationInterfaceFactoryInterfaceArray := basicAnimationInterfaceFactoryInterfaceArray;
end;
    

procedure TBaseAnimationInterfaceFactoryInterfaceComposite.setInitialScale(scaleProperties_: TScaleProperties);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

