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
// AB:CYCLE TYPES CollidableInterface CollidableBaseBehavior CollidableBaseBehaviorFactoryInterface CollidableBaseBehaviorFactory CollidableInterfaceCompositeInterface CollidableCompositeLayer
// The units CollidableInterface CollidableBaseBehavior CollidableBaseBehaviorFactoryInterface CollidableBaseBehaviorFactory CollidableInterfaceCompositeInterface CollidableCompositeLayer use each other in their interface sections, so their types are declared together here.
unit CycleTypesCollidableBaseBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, NamedInterface, CollisionType, Graphics, LogUtil, CommonStrings, LayerCollisionUtil, ArtificialIntelligenceInterface, Rectangle, StringMaker, ViewPositionBase, AllBinaryGameLayer;

type
  { Forward declarations like C++ so the cycle members can refer to each other }
  ICollidableInterface = interface;
  TCollidableBaseBehavior = class;
  ICollidableBaseBehaviorFactoryInterface = interface;
  TCollidableBaseBehaviorFactory = class;
  ICollidableInterfaceCompositeInterface = interface;
  TCollidableCompositeLayer = class;
  TCollidableInterface = ICollidableInterface;
  TCollidableBaseBehaviorFactoryInterface = ICollidableBaseBehaviorFactoryInterface;
  TCollidableInterfaceCompositeInterface = ICollidableInterfaceCompositeInterface;
  {AB:TYPES}
  { CollidableInterface }
  ICollidableInterface = interface(INamedInterface) ['ICollidableInterface']
        function isCollidable(ownerLayer: TCollidableCompositeLayer): Boolean;
        function isCollision(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface: TCollidableCompositeLayer): Boolean;
        procedure collide(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface: TCollidableCompositeLayer);
        function getCollisionTypeWith(layerInterface: TAllBinaryLayer): TCollisionType;
  end;

  { CollidableBaseBehavior }
  TCollidableBaseBehavior = class(TInterfacedObject, ICollidableInterface, INamedInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    layerCollisionUtil: TLayerCollisionUtil;
    collidable: Boolean;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(collidable: Boolean);
        procedure update; virtual;
        function getName: string; virtual;
        procedure setCollidable(collidable: Boolean); virtual;
        function isCollidable(ownerLayer: TCollidableCompositeLayer): Boolean; virtual;
        procedure collide(ownerLayer: TCollidableCompositeLayer; allbinaryCollidableLayer: TCollidableCompositeLayer); virtual;
        function isCollision(ownerLayer: TCollidableCompositeLayer; collisionLayer: TCollidableCompositeLayer): Boolean; virtual;
        function isCollisionInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface): Boolean; virtual;
        procedure collideInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface); virtual;
        procedure paint(ownerLayer: TCollidableCompositeLayer; graphics_: TGraphics); virtual;
        function getCollisionTypeWith(layerInterface: TAllBinaryLayer): TCollisionType; virtual;
  end;

  { CollidableBaseBehaviorFactoryInterface }
  ICollidableBaseBehaviorFactoryInterface = interface(IJavaObject) ['ICollidableBaseBehaviorFactoryInterface']
        function createBehavior: TCollidableBaseBehavior;
  end;

  { CollidableBaseBehaviorFactory }
  TCollidableBaseBehaviorFactory = class(TInterfacedObject, ICollidableBaseBehaviorFactoryInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function createBehavior: TCollidableBaseBehavior; virtual;
  end;

  { CollidableInterfaceCompositeInterface }
  ICollidableInterfaceCompositeInterface = interface(IJavaObject) ['ICollidableInterfaceCompositeInterface']
        function getCollidableInferface: TCollidableBaseBehavior;
  end;

  { CollidableCompositeLayer }
  TCollidableCompositeLayer = class(TAllBinaryGameLayer, ICollidableInterfaceCompositeInterface)
  public
    collidableInferface: TCollidableBaseBehavior;
    class var NULL_COLLIDABLE_COMPOSITE_LAYER: TObject;
    procedure InitFields;
    function JavaObject: TObject;
        class function getNullInstance: TCollidableCompositeLayer; static;
        constructor Create(name: string; layerInfo: TRectangle; viewPosition: TViewPositionBase; collidableBaseBehaviorFactory_: TCollidableBaseBehaviorFactory);
        function getArtificialIntelligenceInterface: IArtificialIntelligenceInterface; virtual;
        function getCollidableInferface: TCollidableBaseBehavior; virtual;
        procedure setCollidableInferface(collidableInferface: TCollidableBaseBehavior); virtual;
        function implmentsCollidableInterface: Boolean; virtual;
        procedure toStringAppend(stringBuffer: TStringMaker); virtual;
        function toString: string; override;
  end;


implementation
uses
  CollisionTypeFactory, CommonLabels, ArtificialIntelligence, CollidableNeverCollideBehaviorFactory, RectangleFactory, ForcedLogUtil, StringUtil, CommonSeps, NullUtil;


{AB:CODE}


procedure TCollidableBaseBehavior.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.layerCollisionUtil := TLayerCollisionUtil.getInstance();
  Self.collidable := True;
end;

function TCollidableBaseBehavior.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCollidableBaseBehavior.Create(collidable: Boolean);
begin
    inherited Create;
    InitFields;
        Self.collidable := collidable;
end;
    

procedure TCollidableBaseBehavior.update;
begin
end;
    

function TCollidableBaseBehavior.getName: string;
begin
        Exit(Self.ClassType.ClassName);
end;
    

procedure TCollidableBaseBehavior.setCollidable(collidable: Boolean);
begin
        Self.collidable := collidable;
end;
    

function TCollidableBaseBehavior.isCollidable(ownerLayer: TCollidableCompositeLayer): Boolean;
begin
        Exit(Self.collidable);
end;
    

// throws Exception
procedure TCollidableBaseBehavior.collide(ownerLayer: TCollidableCompositeLayer; allbinaryCollidableLayer: TCollidableCompositeLayer);
begin
        raise SysUtils.Exception.Create(TStringMaker.Create().append(Self.commonStrings.NOT_IMPLEMENTED).append(TCommonLabels.getInstance().COLON_SEP).append(Self.ClassType.ClassName).toString());
end;
    

function TCollidableBaseBehavior.isCollision(ownerLayer: TCollidableCompositeLayer; collisionLayer: TCollidableCompositeLayer): Boolean;
begin
        Exit(Self.layerCollisionUtil.isCollision(ownerLayer, collisionLayer));
end;
    

function TCollidableBaseBehavior.isCollisionInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface): Boolean;
begin
        Exit(Self.layerCollisionUtil.isCollision(ownerLayer, TAllBinaryLayer(TJava.ToObject(collidableInterfaceCompositeInterface_))));
end;
    

// throws Exception
procedure TCollidableBaseBehavior.collideInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface);
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

procedure TCollidableBaseBehavior.paint(ownerLayer: TCollidableCompositeLayer; graphics_: TGraphics);
begin
end;
    

function TCollidableBaseBehavior.getCollisionTypeWith(layerInterface: TAllBinaryLayer): TCollisionType;
begin
        Exit(TCollisionTypeFactory.getInstance().NONE);
end;



function TCollidableBaseBehaviorFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TCollidableBaseBehaviorFactory.Create;
begin
  inherited Create;
end;
    

function TCollidableBaseBehaviorFactory.createBehavior: TCollidableBaseBehavior;
begin
        raise SysUtils.Exception.Create('');
end;



procedure TCollidableCompositeLayer.InitFields;
begin
  Self.collidableInferface := TCollidableNeverCollideBehaviorFactory.getInstance().createBehavior();
end;

function TCollidableCompositeLayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TCollidableCompositeLayer.getNullInstance: TCollidableCompositeLayer;
begin
        if (TCollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TCollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER := TCollidableCompositeLayer.Create(TStringUtil.getInstance().EMPTY_STRING, TRectangleFactory.SINGLETON, TViewPositionBase.NULL_VIEW_POSITION, TCollidableNeverCollideBehaviorFactory.getInstance());
        end;
        Exit(TCollidableCompositeLayer(TJava.ToObject(TCollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER)));
end;
    

constructor TCollidableCompositeLayer.Create(name: string; layerInfo: TRectangle; viewPosition: TViewPositionBase; collidableBaseBehaviorFactory_: TCollidableBaseBehaviorFactory);
begin
        inherited Create(name, layerInfo, viewPosition);
        InitFields;
        if (collidableBaseBehaviorFactory_) <> (TCollidableNeverCollideBehaviorFactory.getInstance()) then begin
            Self.setCollidableInferface(collidableBaseBehaviorFactory_.createBehavior());
        end;
end;
    

function TCollidableCompositeLayer.getArtificialIntelligenceInterface: IArtificialIntelligenceInterface;
begin
        TForcedLogUtil.log(Self.commonStrings.NOT_IMPLEMENTED, Self);
        Exit(TArtificialIntelligence.getInstance());
end;
    

function TCollidableCompositeLayer.getCollidableInferface: TCollidableBaseBehavior;
begin
        Exit(Self.collidableInferface);
end;
    

procedure TCollidableCompositeLayer.setCollidableInferface(collidableInferface: TCollidableBaseBehavior);
begin
        Self.collidableInferface := collidableInferface;
end;
    

function TCollidableCompositeLayer.implmentsCollidableInterface: Boolean;
begin
        Exit(True);
end;
    

procedure TCollidableCompositeLayer.toStringAppend(stringBuffer: TStringMaker);
var
  commonSeps_: TCommonSeps;
begin
        commonSeps_ := TCommonSeps.getInstance();
        inherited toStringAppend(stringBuffer);
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append(Self.getCollidableInferface().toString());
end;
    

function TCollidableCompositeLayer.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        Self.toStringAppend(stringBuffer);
        Exit(stringBuffer.toString());
end;


initialization
  {AB:INITIALIZATION}
  TCollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.
