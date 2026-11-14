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
// package org.allbinary.game.layer.pickup
unit PickedUpLayerInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, AllBinaryLayer, PickedUpLayerType, IconLayer, PickedUpLayerInterfaceFactoryBase;

type
  {AB:TYPES}
  TPickedUpLayerInterfaceFactory = class(TPickedUpLayerInterfaceFactoryBase)
  public
    pickedUpLayerType: TPickedUpLayerType;
    iconLayer: TIconLayer;
    animationInterface: TAnimation;
    procedure InitFields;
        constructor Create(pickeUpLayerType: TPickedUpLayerType; iconLayer_: TIconLayer; animationInterface: TAnimation);
        function getIconLayer: TAllBinaryLayer; override;
        function getAnimationInterface: TAnimation; override;
        function getPickedUpLayerType: TPickedUpLayerType; override;
  end;

implementation

{AB:CODE}

procedure TPickedUpLayerInterfaceFactory.InitFields;
begin
  
  
  
end;
    

constructor TPickedUpLayerInterfaceFactory.Create(pickeUpLayerType: TPickedUpLayerType; iconLayer_: TIconLayer; animationInterface: TAnimation);
begin
    inherited Create;
    InitFields;
        Self.pickedUpLayerType := pickeUpLayerType;
        Self.animationInterface := animationInterface;
        Self.iconLayer := iconLayer_;
end;
    

function TPickedUpLayerInterfaceFactory.getIconLayer: TAllBinaryLayer;
begin
        Exit(Self.iconLayer);
end;
    

function TPickedUpLayerInterfaceFactory.getAnimationInterface: TAnimation;
begin
        Exit(Self.animationInterface);
end;
    

function TPickedUpLayerInterfaceFactory.getPickedUpLayerType: TPickedUpLayerType;
begin
        Exit(Self.pickedUpLayerType);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

