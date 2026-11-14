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
// package org.allbinary.game.layer.special
unit CollidableDestroyableDamageableLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, DamageableInterface, DestroyableInterface, DestroyedEvent, Group, GameKeyEvent, AllBinaryGameLayerManager, CollidableCompositeLayer, PickedUpLayerInterfaceFactoryInterface, PickupBehavior, PickupCompositeInterface, PartInterface, Rectangle, AllBinaryLayerManager, StringMaker, ViewPositionBase, SpecialGameInputInterface, NamedInterface, PaintableInterface;

type
  {AB:TYPES}
  TCollidableDestroyableDamageableLayer = class(TCollidableCompositeLayer, IDestroyableInterface, IDamageableInterface, IPickupCompositeInterface, ISpecialGameInputInterface, INamedInterface, IPaintableInterface)
  public
    groupInterface: TArray<TGroup>;
    readyForExplosion: Boolean;
    initWidth: Integer;
    initHeight: Integer;
    initX: Integer;
    initY: Integer;
    initZ: Integer;
    partInterfaceArrayP: TArray<IPartInterface>;
    pickupBehavior: TPickupBehavior;
    allBinaryGameLayerManagerP: TAllBinaryGameLayerManager;
    isDraggable: Boolean;
    isDragged: Boolean;
    isDropped: Boolean;
    class var NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER: TObject;
    class var READYFOREXPLOSION_: string;
    procedure InitFields;
    function JavaObject: TObject;
        class function getNullInstance: TCollidableDestroyableDamageableLayer; static;
        constructor Create(groupInterface: TArray<TGroup>; name: string; layerInfo: TRectangle; viewPosition: TViewPositionBase);
        procedure initPosition; virtual;
        procedure initPositionXYZ(x: Integer; y: Integer; z: Integer); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure damage(damage: Integer; damageType: Integer); virtual;
        function getDamage(damageType: Integer): Integer; virtual;
        function isDestroyed: Boolean; virtual;
        function getGroupInterface: TArray<TGroup>; virtual;
        procedure setGroupInterface(teamInterface: TArray<TGroup>); virtual;
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager); virtual;
        function isReadyForExplosion: Boolean;
        procedure setReadyForExplosion(isReadyForExplosion: Boolean);
        function getInitWidth: Integer; virtual;
        function getInitHeight: Integer; virtual;
        function getInitX: Integer; virtual;
        function getInitY: Integer; virtual;
        procedure up; virtual;
        procedure down; virtual;
        procedure right; virtual;
        procedure left; virtual;
        procedure strafeLeft; virtual;
        procedure strafeRight; virtual;
        procedure fire(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); virtual;
        procedure special1(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); virtual;
        procedure special2(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); virtual;
        procedure special3(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); virtual;
        procedure special4(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); virtual;
        procedure special5(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); virtual;
        procedure upAnalog(yAnalogValue: Integer); virtual;
        procedure downAnalog(yAnalogValue: Integer); virtual;
        procedure rightAnalog(xAnalogValue: Integer); virtual;
        procedure leftAnalog(xAnalogValue: Integer); virtual;
        procedure rightTrigger(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent; xAnalogValue: Integer); virtual;
        procedure leftTrigger(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent; xAnalogValue: Integer); virtual;
        procedure onDestroyed(destroyedEvent_: TDestroyedEvent); virtual;
        function getPickupBehavior: TPickupBehavior; virtual;
        procedure setPickupBehavior(pickupBehavior_: TPickupBehavior); virtual;
        procedure addPart(pickedUpLayerInterfaceFactoryInterface_: IPickedUpLayerInterfaceFactoryInterface); virtual;
        procedure setPartInterfaceArray(partInterfaceArray: TArray<IPartInterface>); virtual;
        function getPartInterfaceArray: TArray<IPartInterface>; virtual;
        procedure toStringAppend(stringBuffer: TStringMaker); virtual;
        function toString: string; override;
  end;

implementation
uses
  CollidableNeverCollideBehaviorFactory, BasicGroupFactory, PartInterfaceUtil, RectangleFactory, NullUtil, StringUtil, PositionStrings, CommonSeps;


{AB:CODE}

procedure TCollidableDestroyableDamageableLayer.InitFields;
begin
  
  
  
  
  
  
  
  Self.partInterfaceArrayP := TPartInterfaceUtil.getZeroArray();
  
  Self.allBinaryGameLayerManagerP := TAllBinaryGameLayerManager.getNullInstance();
  Self.isDraggable := False;
  Self.isDragged := False;
  Self.isDropped := False;
end;

function TCollidableDestroyableDamageableLayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TCollidableDestroyableDamageableLayer.getNullInstance: TCollidableDestroyableDamageableLayer;
begin
        if (TCollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TCollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER := TCollidableDestroyableDamageableLayer.Create(TBasicGroupFactory.getInstance().NONE_ARRAY, TStringUtil.getInstance().EMPTY_STRING, TRectangleFactory.SINGLETON, TViewPositionBase.NULL_VIEW_POSITION);
        end;
        Exit(TCollidableDestroyableDamageableLayer(TJava.ToObject(TCollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER)));
end;
    

constructor TCollidableDestroyableDamageableLayer.Create(groupInterface: TArray<TGroup>; name: string; layerInfo: TRectangle; viewPosition: TViewPositionBase);
begin
        inherited Create(name, layerInfo, viewPosition, TCollidableNeverCollideBehaviorFactory.getInstance());
        InitFields;
        Self.initWidth := layerInfo.getWidth();
        Self.initHeight := layerInfo.getHeight();
        Self.groupInterface := groupInterface;
        Self.pickupBehavior := TPickupBehavior.getNullInstance();
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.initPosition;
begin
        Self.setPosition(Self.initX, Self.initY, Self.initZ);
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.initPositionXYZ(x: Integer; y: Integer; z: Integer);
begin
        Self.initX := x;
        Self.initY := y;
        Self.initZ := z;
end;
    

procedure TCollidableDestroyableDamageableLayer.paint(graphics_: TGraphics);
begin
        inherited paint(graphics_);
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.damage(damage: Integer; damageType: Integer);
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
function TCollidableDestroyableDamageableLayer.getDamage(damageType: Integer): Integer;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
function TCollidableDestroyableDamageableLayer.isDestroyed: Boolean;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

function TCollidableDestroyableDamageableLayer.getGroupInterface: TArray<TGroup>;
begin
        Exit(Self.groupInterface);
end;
    

procedure TCollidableDestroyableDamageableLayer.setGroupInterface(teamInterface: TArray<TGroup>);
begin
        Self.groupInterface := teamInterface;
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
begin
        Self.allBinaryGameLayerManagerP := allBinaryGameLayerManager_;
        if (Self.allBinaryGameLayerManagerP) = (nil) then begin
            raise SysUtils.Exception.Create('');
        end;
end;
    

function TCollidableDestroyableDamageableLayer.isReadyForExplosion: Boolean;
begin
        Exit(Self.readyForExplosion);
end;
    

procedure TCollidableDestroyableDamageableLayer.setReadyForExplosion(isReadyForExplosion: Boolean);
begin
        Self.readyForExplosion := isReadyForExplosion;
end;
    

function TCollidableDestroyableDamageableLayer.getInitWidth: Integer;
begin
        Exit(Self.initWidth);
end;
    

function TCollidableDestroyableDamageableLayer.getInitHeight: Integer;
begin
        Exit(Self.initHeight);
end;
    

function TCollidableDestroyableDamageableLayer.getInitX: Integer;
begin
        Exit(Self.initX);
end;
    

function TCollidableDestroyableDamageableLayer.getInitY: Integer;
begin
        Exit(Self.initY);
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.up;
begin
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.down;
begin
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.right;
begin
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.left;
begin
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.strafeLeft;
begin
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.strafeRight;
begin
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.fire(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.special1(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.special2(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.special3(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.special4(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.special5(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.upAnalog(yAnalogValue: Integer);
begin
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.downAnalog(yAnalogValue: Integer);
begin
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.rightAnalog(xAnalogValue: Integer);
begin
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.leftAnalog(xAnalogValue: Integer);
begin
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.rightTrigger(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent; xAnalogValue: Integer);
begin
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.leftTrigger(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent; xAnalogValue: Integer);
begin
end;
    

procedure TCollidableDestroyableDamageableLayer.onDestroyed(destroyedEvent_: TDestroyedEvent);
begin
end;
    

function TCollidableDestroyableDamageableLayer.getPickupBehavior: TPickupBehavior;
begin
        Exit(Self.pickupBehavior);
end;
    

procedure TCollidableDestroyableDamageableLayer.setPickupBehavior(pickupBehavior_: TPickupBehavior);
begin
        Self.pickupBehavior := pickupBehavior_;
end;
    

// throws Exception
procedure TCollidableDestroyableDamageableLayer.addPart(pickedUpLayerInterfaceFactoryInterface_: IPickedUpLayerInterfaceFactoryInterface);
begin
end;
    

procedure TCollidableDestroyableDamageableLayer.setPartInterfaceArray(partInterfaceArray: TArray<IPartInterface>);
begin
        Self.partInterfaceArrayP := partInterfaceArray;
end;
    

function TCollidableDestroyableDamageableLayer.getPartInterfaceArray: TArray<IPartInterface>;
begin
        Exit(Self.partInterfaceArrayP);
end;
    

procedure TCollidableDestroyableDamageableLayer.toStringAppend(stringBuffer: TStringMaker);
var
  commonSeps_: TCommonSeps;
  positionStrings_: TPositionStrings;
  groupInterfaceArray: TArray<TGroup>;
  size: Integer;
  index: Integer;
  pickupBehavior_: TPickupBehavior;
begin
        commonSeps_ := TCommonSeps.getInstance();
        positionStrings_ := TPositionStrings.getInstance();
        inherited toStringAppend(stringBuffer);
        stringBuffer.append(commonSeps_.NEW_LINE);
        groupInterfaceArray := Self.getGroupInterface();
        size := System.Length(groupInterfaceArray);
        for index := 0 to size - 1 do begin
            stringBuffer.append(groupInterfaceArray[index].toString());
            stringBuffer.append(commonSeps_.COMMA);
        end;
        pickupBehavior_ := Self.getPickupBehavior();
        if (pickupBehavior_) <> (nil) then begin
            stringBuffer.append(commonSeps_.NEW_LINE);
            stringBuffer.append(pickupBehavior_.toString());
        end;
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append(TCollidableDestroyableDamageableLayer.READYFOREXPLOSION_);
        stringBuffer.appendboolean(Self.readyForExplosion);
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append(Self.commonStrings.INIT);
        stringBuffer.append(commonSeps_.SPACE);
        stringBuffer.append(positionStrings_.X_LABEL);
        stringBuffer.appendint(Self.initX);
        stringBuffer.append(positionStrings_.Y_LABEL);
        stringBuffer.appendint(Self.initX);
        stringBuffer.append(positionStrings_.Z_LABEL);
        stringBuffer.appendint(Self.initZ);
end;
    

function TCollidableDestroyableDamageableLayer.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        Self.toStringAppend(stringBuffer);
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TCollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  TCollidableDestroyableDamageableLayer.READYFOREXPLOSION_ := 'ReadyForExplosion: ';
  {AB:END}

end.

