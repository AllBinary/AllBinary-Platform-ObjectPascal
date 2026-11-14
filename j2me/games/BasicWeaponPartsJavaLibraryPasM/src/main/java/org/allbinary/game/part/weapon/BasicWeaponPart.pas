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
// package org.allbinary.game.part.weapon
unit BasicWeaponPart;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, WeaponProperties, PartInterface, ScoreableInterface, RelativeRelationship, AllBinaryLayer, AllBinaryLayerManager, SalvoInterface, AnimationInterfaceCompositeInterface, PaintableInterface;

type
  {AB:TYPES}
  TBasicWeaponPart = class(TInterfacedObject, IPartInterface, ISalvoInterface, IAnimationInterfaceCompositeInterface, IPaintableInterface)
  public
    animationInterface: TAnimation;
    ownerLayerInterface: TAllBinaryLayer;
    weaponProperties: TWeaponProperties;
    scoreableInterface: IScoreableInterface;
    relativeRelationship: TRelativeRelationship;
    class var NULL_BASIC_WEAPON_PART: TBasicWeaponPart;
    procedure InitFields;
    function JavaObject: TObject;
        class function createBasicWeaponPart(animationInterface: TAnimation): TBasicWeaponPart; static;
        constructor Create(animationInterface: TAnimation; sourceLayerInterface: TAllBinaryLayer; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface; relativeRelationship_: TRelativeRelationship);
        procedure init(sourceLayerInterface: TAllBinaryLayer; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface; relativeRelationship_: TRelativeRelationship); virtual;
        procedure process(allbinaryLayerManager_: TAllBinaryLayerManager; angle: SmallInt; otherAngle: SmallInt); virtual;
        procedure processScore(allbinaryLayerManager_: TAllBinaryLayerManager; angle: SmallInt; otherAngle: SmallInt; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface); virtual;
        function getOwnerLayerInterface: TAllBinaryLayer; virtual;
        procedure setOwnerLayerInterface(ownerLayerInterface: TAllBinaryLayer); virtual;
        function getAnimationInterface: TAnimation; virtual;
        procedure setAnimationInterface(animationInterface: TAnimation); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
        function getWeaponProperties: TWeaponProperties; virtual;
        procedure setWeaponProperties(weaponProperties_: TWeaponProperties); virtual;
  end;

implementation
uses
  NullAnimationFactory, NoScoreable, CommonStrings, ViewPositionBase;


{AB:CODE}

procedure TBasicWeaponPart.InitFields;
begin
  Self.animationInterface := TNullAnimationFactory.getFactoryInstance().getInstance(0);
  Self.ownerLayerInterface := TAllBinaryLayer.NULL_ALLBINARY_LAYER;
  Self.weaponProperties := TWeaponProperties.NULL_WEAPON_PROPERTIES;
  Self.scoreableInterface := TNoScoreable.getInstance();
  Self.relativeRelationship := TRelativeRelationship.NULL_RELATIVE_RELATIONSHIP;
end;

function TBasicWeaponPart.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TBasicWeaponPart.createBasicWeaponPart(animationInterface: TAnimation): TBasicWeaponPart;
begin
        Exit(TBasicWeaponPart.Create(animationInterface, TAllBinaryLayer.NULL_ALLBINARY_LAYER, TWeaponProperties.NULL_WEAPON_PROPERTIES, TNoScoreable.getInstance(), TRelativeRelationship.NULL_RELATIVE_RELATIONSHIP));
end;
    

constructor TBasicWeaponPart.Create(animationInterface: TAnimation; sourceLayerInterface: TAllBinaryLayer; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface; relativeRelationship_: TRelativeRelationship);
begin
    inherited Create;
    InitFields;
        Self.init(sourceLayerInterface, weaponProperties_, scoreableInterface_, relativeRelationship_);
        Self.setAnimationInterface(animationInterface);
end;
    

procedure TBasicWeaponPart.init(sourceLayerInterface: TAllBinaryLayer; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface; relativeRelationship_: TRelativeRelationship);
begin
        Self.setOwnerLayerInterface(sourceLayerInterface);
        Self.setWeaponProperties(weaponProperties_);
        Self.scoreableInterface := scoreableInterface_;
        Self.relativeRelationship := relativeRelationship_;
end;
    

// throws Exception
procedure TBasicWeaponPart.process(allbinaryLayerManager_: TAllBinaryLayerManager; angle: SmallInt; otherAngle: SmallInt);
begin
        Self.processScore(allbinaryLayerManager_, angle, otherAngle, Self.getWeaponProperties(), Self.scoreableInterface);
end;
    

// throws Exception
procedure TBasicWeaponPart.processScore(allbinaryLayerManager_: TAllBinaryLayerManager; angle: SmallInt; otherAngle: SmallInt; weaponProperties_: TWeaponProperties; scoreableInterface_: IScoreableInterface);
begin
        raise SysUtils.Exception.Create(TCommonStrings.getInstance().NOT_IMPLEMENTED);
end;
    

function TBasicWeaponPart.getOwnerLayerInterface: TAllBinaryLayer;
begin
        Exit(Self.ownerLayerInterface);
end;
    

procedure TBasicWeaponPart.setOwnerLayerInterface(ownerLayerInterface: TAllBinaryLayer);
begin
        Self.ownerLayerInterface := ownerLayerInterface;
end;
    

function TBasicWeaponPart.getAnimationInterface: TAnimation;
begin
        Exit(Self.animationInterface);
end;
    

procedure TBasicWeaponPart.setAnimationInterface(animationInterface: TAnimation);
begin
        Self.animationInterface := animationInterface;
end;
    

procedure TBasicWeaponPart.paint(graphics_: TGraphics);
var
  viewPosition: TViewPositionBase;
  viewX: Integer;
  viewY: Integer;
begin
        viewPosition := Self.getOwnerLayerInterface().getViewPosition();
        viewX := viewPosition.getX();
        viewY := viewPosition.getY();
        Self.animationInterface.paintXY(graphics_, viewX, viewY);
end;
    

procedure TBasicWeaponPart.paintThreed(graphics_: TGraphics);
begin
end;
    

function TBasicWeaponPart.getWeaponProperties: TWeaponProperties;
begin
        Exit(Self.weaponProperties);
end;
    

procedure TBasicWeaponPart.setWeaponProperties(weaponProperties_: TWeaponProperties);
begin
        Self.weaponProperties := weaponProperties_;
end;

initialization
  {AB:INITIALIZATION}
  TBasicWeaponPart.NULL_BASIC_WEAPON_PART := TBasicWeaponPart.createBasicWeaponPart(TNullAnimationFactory.getFactoryInstance().getInstance(0));
  {AB:END}

end.

