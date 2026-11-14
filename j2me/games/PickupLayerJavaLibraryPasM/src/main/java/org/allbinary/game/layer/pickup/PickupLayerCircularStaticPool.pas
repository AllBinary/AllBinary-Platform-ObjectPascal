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
unit PickupLayerCircularStaticPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayerCircularPool, PickedUpLayerInterface, PickedUpLayerInterfaceFactoryInterface;

type
  {AB:TYPES}
  TPickupLayerCircularStaticPool = class(TAllBinaryLayerCircularPool)
  public
    class var SINGLETON: TPickupLayerCircularStaticPool;
        constructor Create;
        class function getInstance: TPickupLayerCircularStaticPool; static;
        function getInstanceXYZ(pickedUpLayerInterfaceFactoryInterface_: IPickedUpLayerInterfaceFactoryInterface; x: Integer; y: Integer; z: Integer): IPickedUpLayerInterface; virtual;
  end;

implementation
uses
  PickupLayer;


{AB:CODE}
    

constructor TPickupLayerCircularStaticPool.Create;
begin
    inherited Create;
end;
    

class function TPickupLayerCircularStaticPool.getInstance: TPickupLayerCircularStaticPool;
begin
        Exit(TPickupLayerCircularStaticPool.SINGLETON);
end;
    

// throws Exception
function TPickupLayerCircularStaticPool.getInstanceXYZ(pickedUpLayerInterfaceFactoryInterface_: IPickedUpLayerInterfaceFactoryInterface; x: Integer; y: Integer; z: Integer): IPickedUpLayerInterface;
var
  pickupLayer_: TPickupLayer;
begin
        pickupLayer_ := TPickupLayer(TJava.ToObject(Self.getNextInstance()));
        pickupLayer_.initXYZ(x, y, z);
        pickupLayer_.init(pickedUpLayerInterfaceFactoryInterface_, pickedUpLayerInterfaceFactoryInterface_.getAnimationInterface());
        Exit(pickupLayer_);
end;

initialization
  {AB:INITIALIZATION}
  TPickupLayerCircularStaticPool.SINGLETON := TPickupLayerCircularStaticPool.Create();
  {AB:END}

end.

