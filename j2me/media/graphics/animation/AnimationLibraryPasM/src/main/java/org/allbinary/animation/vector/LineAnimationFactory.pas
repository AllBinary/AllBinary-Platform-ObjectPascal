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
// package org.allbinary.animation.vector
unit LineAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, AnimationInterfaceFactoryInterface, BasicColor, ScaleProperties, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TLineAnimationFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    basicColor: TBasicColor;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(basicColor_: TBasicColor);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation
uses
  LineAnimation;


{AB:CODE}

procedure TLineAnimationFactory.InitFields;
begin
  
end;

function TLineAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TLineAnimationFactory.Create(basicColor_: TBasicColor);
begin
    inherited Create;
    InitFields;
        Self.basicColor := basicColor_;
end;
    

// throws Exception
function TLineAnimationFactory.getInstance(instanceId: Integer): TAnimation;
begin
        Exit(TLineAnimation.Create(Self.basicColor));
end;
    

procedure TLineAnimationFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

