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
// package org.allbinary.game.ag.layer.pickup
unit FallingPickupLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PickupLayer, RemoteInfo, TickableInterface, AllBinaryLayerManager, NamedInterface;

type
  {AB:TYPES}
  TFallingPickupLayer = class(TPickupLayer, ITickableInterface, INamedInterface)
  public
    class var NAME: string;
    function JavaObject: TObject;
        constructor Create(remoteInfo_: TRemoteInfo);
        procedure processTick(allBinaryLayerManager_: TAllBinaryLayerManager); virtual;
        function implmentsTickableInterface: Boolean; virtual;
  end;

implementation
uses
  NullAnimationFactory, CountedPickedUpLayerInterfaceFactory, PointFactory, Rectangle, ViewPosition;


{AB:CODE}

function TFallingPickupLayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TFallingPickupLayer.Create(remoteInfo_: TRemoteInfo);
begin
        inherited Create(TFallingPickupLayer.NAME, remoteInfo_, 0, TCountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY, TNullAnimationFactory.getFactoryInstance().getInstance(0), TRectangle.Create(TPointFactory.getInstance().ZERO_ZERO, 0, 0), TViewPosition.getInstanceD());
end;
    

procedure TFallingPickupLayer.processTick(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
        Self.setPosition(Self.x, (Self.y) + (1), Self.z);
end;
    

function TFallingPickupLayer.implmentsTickableInterface: Boolean;
begin
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  TFallingPickupLayer.NAME := 'FallingPickupLayer';
  {AB:END}

end.

