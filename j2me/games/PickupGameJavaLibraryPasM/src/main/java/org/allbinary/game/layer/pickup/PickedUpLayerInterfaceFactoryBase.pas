{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer.pickup
unit PickedUpLayerInterfaceFactoryBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, AllBinaryLayer, PickedUpLayerType, PickedUpLayerInterfaceFactoryInterface;

type
  {AB:TYPES}
  TPickedUpLayerInterfaceFactoryBase = class(TInterfacedObject, IPickedUpLayerInterfaceFactoryInterface)
  public
    class var NULL_PICKED_UP_LAYER_FACTORY_BASE: TPickedUpLayerInterfaceFactoryBase;
    function JavaObject: TObject;
    constructor Create;
        function getIconLayer: TAllBinaryLayer; virtual;
        function getAnimationInterface: TAnimation; virtual;
        function getPickedUpLayerType: TPickedUpLayerType; virtual;
  end;

implementation

{AB:CODE}

function TPickedUpLayerInterfaceFactoryBase.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TPickedUpLayerInterfaceFactoryBase.Create;
begin
  inherited Create;
end;
    

function TPickedUpLayerInterfaceFactoryBase.getIconLayer: TAllBinaryLayer;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TPickedUpLayerInterfaceFactoryBase.getAnimationInterface: TAnimation;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TPickedUpLayerInterfaceFactoryBase.getPickedUpLayerType: TPickedUpLayerType;
begin
        raise SysUtils.Exception.Create('');
end;

initialization
  {AB:INITIALIZATION}
  TPickedUpLayerInterfaceFactoryBase.NULL_PICKED_UP_LAYER_FACTORY_BASE := TPickedUpLayerInterfaceFactoryBase.Create();
  {AB:END}

end.

