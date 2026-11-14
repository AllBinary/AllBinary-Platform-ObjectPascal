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
unit PickupLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL, Graphics, Animation, MultiPlayerGameLayer, RemoteInfo, Rectangle, ViewPositionBase, PickedUpLayerInterfaceFactoryInterface, PickedUpLayerInterface, PickupableInterface, GroupInterfaceCompositeInterface, LayerInterface, NamedInterface, PaintableInterface, PositionInterface;

type
  {AB:TYPES}
  TPickupLayer = class(TMultiPlayerGameLayer, IPickedUpLayerInterface, IPickupableInterface, IGroupInterfaceCompositeInterface, ILayerInterface, INamedInterface, IPaintableInterface, IPositionInterface)
  public
    pickedUpLayerInterfaceFactoryInterface: IPickedUpLayerInterfaceFactoryInterface;
    destroyed: Boolean;
    animationInterface: TAnimation;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(name: string; remoteInfo_: TRemoteInfo; total: Integer; pickedUpLayerInterfaceFactoryInterface_: IPickedUpLayerInterfaceFactoryInterface; animationInterface: TAnimation; rectangle_: TRectangle; viewPosition: TViewPositionBase);
        procedure init(pickedUpLayerInterfaceFactoryInterface_: IPickedUpLayerInterfaceFactoryInterface; animationInterface: TAnimation); virtual;
        procedure initXYZ(x: Integer; y: Integer; z: Integer); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
        function getPickedUpLayerInterfaceFactoryInterface: IPickedUpLayerInterfaceFactoryInterface; virtual;
        procedure setPickedUp; virtual;
        function isDestroyed: Boolean; virtual;
        procedure setDestroyed(destroyed: Boolean); virtual;
        procedure damage(damage: Integer; damageType: Integer); virtual;
        function getDamage(damageType: Integer): Integer; virtual;
        procedure set_(gl_: IGL); virtual;
  end;

implementation
uses
  CountedPickedUpLayerInterfaceFactory, NullAnimationFactory, CollidableAlwaysPickupNeverCollideBehaviorFactory, DestroyedLayerProcessor, BasicGroupFactory, OpenGLSurfaceChangedInterface;


{AB:CODE}

procedure TPickupLayer.InitFields;
begin
  Self.pickedUpLayerInterfaceFactoryInterface := TCountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
  
  Self.animationInterface := TNullAnimationFactory.getFactoryInstance().getInstance(0);
end;

function TPickupLayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPickupLayer.Create(name: string; remoteInfo_: TRemoteInfo; total: Integer; pickedUpLayerInterfaceFactoryInterface_: IPickedUpLayerInterfaceFactoryInterface; animationInterface: TAnimation; rectangle_: TRectangle; viewPosition: TViewPositionBase);
begin
        inherited Create(remoteInfo_, TBasicGroupFactory.getInstance().NONE_ARRAY, name, rectangle_, viewPosition);
        InitFields;
        Self.setCollidableInferface(TCollidableAlwaysPickupNeverCollideBehaviorFactory.getInstance().createBehavior());
        Self.setLayerWidth(10);
        Self.setLayerHeight(10);
        Self.init(pickedUpLayerInterfaceFactoryInterface_, animationInterface);
end;
    

procedure TPickupLayer.init(pickedUpLayerInterfaceFactoryInterface_: IPickedUpLayerInterfaceFactoryInterface; animationInterface: TAnimation);
begin
        Self.pickedUpLayerInterfaceFactoryInterface := pickedUpLayerInterfaceFactoryInterface_;
        Self.animationInterface := animationInterface;
        Self.setDestroyed(False);
end;
    

procedure TPickupLayer.initXYZ(x: Integer; y: Integer; z: Integer);
begin
        Self.setPosition(x, y, z);
end;
    

procedure TPickupLayer.paint(graphics_: TGraphics);
var
  viewPosition: TViewPositionBase;
  viewX: Integer;
  viewY: Integer;
begin
        viewPosition := Self.getViewPosition();
        viewX := viewPosition.getX();
        viewY := viewPosition.getY();
        Self.animationInterface.paintXY(graphics_, viewX, viewY);
end;
    

procedure TPickupLayer.paintThreed(graphics_: TGraphics);
var
  viewPosition: TViewPositionBase;
  viewX: Integer;
  viewY: Integer;
begin
        viewPosition := Self.getViewPosition();
        viewX := viewPosition.getX();
        viewY := viewPosition.getY();
        Self.animationInterface.paintThreedXYZ(graphics_, viewX, viewY, 3);
end;
    

function TPickupLayer.getPickedUpLayerInterfaceFactoryInterface: IPickedUpLayerInterfaceFactoryInterface;
begin
        Exit(Self.pickedUpLayerInterfaceFactoryInterface);
end;
    

procedure TPickupLayer.setPickedUp;
begin
        Self.setDestroyed(True);
end;
    

function TPickupLayer.isDestroyed: Boolean;
begin
        Exit(Self.destroyed);
end;
    

procedure TPickupLayer.setDestroyed(destroyed: Boolean);
begin
        Self.destroyed := destroyed;
        if Self.isDestroyed() then begin
            TDestroyedLayerProcessor.getInstance().add(Self);
        end;
end;
    

procedure TPickupLayer.damage(damage: Integer; damageType: Integer);
begin
end;
    

function TPickupLayer.getDamage(damageType: Integer): Integer;
begin
        Exit(0);
end;
    

// throws Exception
procedure TPickupLayer.set_(gl_: IGL);
var
  openGLSurfaceChangedInterface_: IOpenGLSurfaceChangedInterface;
begin
        openGLSurfaceChangedInterface_ := (TJava.ToObject(Self.animationInterface) as IOpenGLSurfaceChangedInterface);
        openGLSurfaceChangedInterface_.set_(gl_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

