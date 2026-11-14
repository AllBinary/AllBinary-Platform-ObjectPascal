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
// package org.allbinary.game.layer.weapon
unit WeaponLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL, Graphics, Animation, CollidableBaseBehavior, WeaponProperties, MultiPlayerGameLayer, RemoteInfo, ScoreableInterface, TickableInterface, Rectangle, AllBinaryLayer, AllBinaryLayerManager, Movement, ViewPositionBase, CollidableWeaponBehavior, NamedInterface;

type
  {AB:TYPES}
  TWeaponLayer = class(TMultiPlayerGameLayer, ITickableInterface, INamedInterface)
  public
    animationInterface: TAnimation;
    initAnimationInterface: TAnimation;
    destroyedAnimationInterface: TAnimation;
    sourceLayerInterface: TAllBinaryLayer;
    totalDamage: Integer;
    initDamage: Integer;
    destroyed: Boolean;
    scoreableInterface: IScoreableInterface;
    movement: TMovement;
    weaponProperties: TWeaponProperties;
    multiPlayerType: Integer;
    collidableWeaponBehavior: TCollidableWeaponBehavior;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(name: string; remoteInfo_: TRemoteInfo; multiPlayerType: Integer; movement_: TMovement; animationInterface: TAnimation; destroyedAnimationInterface: TAnimation; rectangle_: TRectangle; viewPosition: TViewPositionBase);
        procedure setCollidableInferface(collidableInferface: TCollidableBaseBehavior); virtual;
        procedure initXYZ(x: Integer; y: Integer; z: Integer); virtual;
        procedure init(sourceLayerInterface: TAllBinaryLayer; angle: Integer; otherAngle: Integer; weaponProperties_: TWeaponProperties; scoreable: IScoreableInterface); virtual;
        procedure setGroupInterfaces; virtual;
        procedure processTick(allBinaryLayerManager_: TAllBinaryLayerManager); virtual;
        function isDestroyed: Boolean; virtual;
        procedure damage(damage: Integer; damageType: Integer); virtual;
        procedure givePoints(total: Integer); virtual;
        function isExhausted: Boolean; virtual;
        function getDamage(damageType: Integer): Integer; virtual;
        procedure setDestroyed(destroyed: Boolean); virtual;
        function getInitDamage: Integer; virtual;
        procedure setAnimationInterface(animationInterface: TAnimation); virtual;
        function getAnimationInterface: TAnimation; virtual;
        function getInitAnimationInterfaceP: TAnimation; virtual;
        procedure setInitAnimationInterfaceP(initAnimationInterface: TAnimation); virtual;
        function getDestroyedAnimationInterface: TAnimation; virtual;
        function getOwnerLayerInterface: TAllBinaryLayer; virtual;
        procedure setOwnerLayerInterface(sourceLayerInterface: TAllBinaryLayer); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
        function getMovement: TMovement; virtual;
        procedure setMovement(movement_: TMovement); virtual;
        function getType: Integer; virtual;
        class function getStaticType: Integer; static;
        function getMultiPlayerType: Integer; virtual;
        procedure setWeaponPropertiesP(weaponProperties_: TWeaponProperties); virtual;
        function getWeaponPropertiesP: TWeaponProperties; virtual;
        function implmentsTickableInterface: Boolean; virtual;
        procedure set_(gl_: IGL); virtual;
  end;

implementation
uses
  IndexedAnimation, NullAnimationFactory, DestroyedLayerProcessor, GameConfigurationUtil, BasicGroupFactory, NoScoreable, ViewPosition;


{AB:CODE}

procedure TWeaponLayer.InitFields;
begin
  Self.animationInterface := TNullAnimationFactory.getFactoryInstance().getInstance(0);
  
  
  Self.sourceLayerInterface := TAllBinaryLayer.NULL_ALLBINARY_LAYER;
  
  
  Self.destroyed := True;
  Self.scoreableInterface := TNoScoreable.getInstance();
  
  Self.weaponProperties := TWeaponProperties.NULL_WEAPON_PROPERTIES;
  
  Self.collidableWeaponBehavior := TCollidableWeaponBehavior.getNullInstance();
end;

function TWeaponLayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TWeaponLayer.Create(name: string; remoteInfo_: TRemoteInfo; multiPlayerType: Integer; movement_: TMovement; animationInterface: TAnimation; destroyedAnimationInterface: TAnimation; rectangle_: TRectangle; viewPosition: TViewPositionBase);
begin
        inherited Create(remoteInfo_, TBasicGroupFactory.getInstance().NONE_ARRAY, name, rectangle_, viewPosition);
        InitFields;
        Self.initAnimationInterface := animationInterface;
        Self.setAnimationInterface(animationInterface);
        Self.destroyedAnimationInterface := destroyedAnimationInterface;
        Self.movement := movement_;
        Self.multiPlayerType := multiPlayerType;
end;
    

procedure TWeaponLayer.setCollidableInferface(collidableInferface: TCollidableBaseBehavior);
begin
        inherited setCollidableInferface(collidableInferface);
        Self.collidableWeaponBehavior := TCollidableWeaponBehavior(TJava.ToObject(Self.getCollidableInferface()));
end;
    

// throws Exception
procedure TWeaponLayer.initXYZ(x: Integer; y: Integer; z: Integer);
begin
        Self.x := x;
        Self.y := y;
        Self.z := z;
end;
    

// throws Exception
procedure TWeaponLayer.init(sourceLayerInterface: TAllBinaryLayer; angle: Integer; otherAngle: Integer; weaponProperties_: TWeaponProperties; scoreable: IScoreableInterface);
begin
        Self.setWeaponPropertiesP(weaponProperties_);
        Self.setReadyForExplosion(False);
        Self.setAnimationInterface(Self.getInitAnimationInterfaceP());
        Self.setOwnerLayerInterface(sourceLayerInterface);
        Self.collidableWeaponBehavior.init(sourceLayerInterface);
        Self.setGroupInterfaces();
        if (scoreable) <> (nil) then begin
            Self.scoreableInterface := scoreable;
        end;
        Self.totalDamage := 0;
        Self.initDamage := weaponProperties_.getDamage();
        Self.setDestroyed(False);
        Self.movement.init(weaponProperties_.getSpeed(), angle, otherAngle);
end;
    

procedure TWeaponLayer.setGroupInterfaces;
var
  basicGroupFactory_: TBasicGroupFactory;
begin
        basicGroupFactory_ := TBasicGroupFactory.getInstance();
        if (Self.sourceLayerInterface.getGroupInterface()[0]) = (basicGroupFactory_.ENEMY) then begin
            Self.setGroupInterface(basicGroupFactory_.ENEMY_ARRAY);
        end else begin
            Self.setGroupInterface(Self.sourceLayerInterface.getGroupInterface());
        end;
end;
    

// throws Exception
procedure TWeaponLayer.processTick(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  collidableWeaponBehavior_: TCollidableWeaponBehavior;
  indexedAnimationInterface: TIndexedAnimation;
  currentFrame: Integer;
begin
        if (Self.isExhausted()) and (not (Self.isDestroyed())) then begin
            if Self.isReadyForExplosion() then begin
                indexedAnimationInterface := TIndexedAnimation(TJava.ToObject(Self.getAnimationInterface()));
                currentFrame := indexedAnimationInterface.getFrame();
                if (currentFrame) < ((indexedAnimationInterface.getAnimationSize()) - (1)) then begin
                    indexedAnimationInterface.nextFrame();
                end else begin
                    Self.setDestroyed(True);
                end;
            end else begin
                collidableWeaponBehavior_ := TCollidableWeaponBehavior(TJava.ToObject(Self.getCollidableInferface()));
                if collidableWeaponBehavior_.isCollided() then begin
                    Self.setAnimationInterface(Self.destroyedAnimationInterface);
                    Self.getMovement().stop();
                    Self.setReadyForExplosion(True);
                end else begin
                    Self.setDestroyed(True);
                end;
            end;
        end;
        Self.movement.process(Self);
        Self.totalDamage := (Self.totalDamage) + (Self.weaponProperties.getDissipation());
end;
    

function TWeaponLayer.isDestroyed: Boolean;
begin
        Exit(Self.destroyed);
end;
    

procedure TWeaponLayer.damage(damage: Integer; damageType: Integer);
begin
        Self.totalDamage := (Self.totalDamage) + ((damage) * (damage));
end;
    

procedure TWeaponLayer.givePoints(total: Integer);
begin
        Self.scoreableInterface.addPoints((TGameConfigurationUtil.getInstance().getCompetitionValue()) * (total));
end;
    

function TWeaponLayer.isExhausted: Boolean;
begin
        if ((Self.totalDamage) > (Self.getInitDamage())) or ((Self.totalDamage) < (0)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TWeaponLayer.getDamage(damageType: Integer): Integer;
var
  total: Integer;
begin
        if not (Self.isExhausted()) then begin
            total := (Self.getInitDamage()) - (Self.totalDamage);
            Self.givePoints(total);
            Exit(total);
        end;
        Exit(0);
end;
    

procedure TWeaponLayer.setDestroyed(destroyed: Boolean);
begin
        Self.destroyed := destroyed;
        if Self.isDestroyed() then begin
            Self.scoreableInterface := TNoScoreable.getInstance();
            TDestroyedLayerProcessor.getInstance().add(Self);
        end;
end;
    

function TWeaponLayer.getInitDamage: Integer;
begin
        Exit(Self.initDamage);
end;
    

procedure TWeaponLayer.setAnimationInterface(animationInterface: TAnimation);
begin
        Self.animationInterface := animationInterface;
end;
    

function TWeaponLayer.getAnimationInterface: TAnimation;
begin
        Exit(Self.animationInterface);
end;
    

function TWeaponLayer.getInitAnimationInterfaceP: TAnimation;
begin
        Exit(Self.initAnimationInterface);
end;
    

procedure TWeaponLayer.setInitAnimationInterfaceP(initAnimationInterface: TAnimation);
begin
        Self.initAnimationInterface := initAnimationInterface;
end;
    

function TWeaponLayer.getDestroyedAnimationInterface: TAnimation;
begin
        Exit(Self.destroyedAnimationInterface);
end;
    

function TWeaponLayer.getOwnerLayerInterface: TAllBinaryLayer;
begin
        Exit(Self.sourceLayerInterface);
end;
    

procedure TWeaponLayer.setOwnerLayerInterface(sourceLayerInterface: TAllBinaryLayer);
begin
        Self.sourceLayerInterface := sourceLayerInterface;
end;
    

procedure TWeaponLayer.paint(graphics_: TGraphics);
var
  viewPosition: TViewPositionBase;
begin
        viewPosition := Self.getViewPosition();
        Self.animationInterface.paintXY(graphics_, (viewPosition.getX()) - (Self.getHalfWidth()), (viewPosition.getY()) - (Self.getHalfHeight()));
end;
    

procedure TWeaponLayer.paintThreed(graphics_: TGraphics);
var
  viewPosition: TViewPositionBase;
begin
        viewPosition := Self.getViewPosition();
        Self.animationInterface.paintThreedXYZ(graphics_, (viewPosition.getX()) - (Self.getHalfWidth()), (viewPosition.getY()) - (Self.getHalfHeight()), (viewPosition.getZ()) - (Self.getHalfDepth()));
end;
    

function TWeaponLayer.getMovement: TMovement;
begin
        Exit(Self.movement);
end;
    

procedure TWeaponLayer.setMovement(movement_: TMovement);
begin
        Self.movement := movement_;
end;
    

function TWeaponLayer.getType: Integer;
begin
        Exit(TWeaponLayer.getStaticType());
end;
    

class function TWeaponLayer.getStaticType: Integer;
begin
        Exit(0);
end;
    

function TWeaponLayer.getMultiPlayerType: Integer;
begin
        Exit(Self.multiPlayerType);
end;
    

procedure TWeaponLayer.setWeaponPropertiesP(weaponProperties_: TWeaponProperties);
begin
        Self.weaponProperties := weaponProperties_;
end;
    

function TWeaponLayer.getWeaponPropertiesP: TWeaponProperties;
begin
        Exit(Self.weaponProperties);
end;
    

function TWeaponLayer.implmentsTickableInterface: Boolean;
begin
        Exit(True);
end;
    

// throws Exception
procedure TWeaponLayer.set_(gl_: IGL);
begin
        Self.initAnimationInterface.set_(gl_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

