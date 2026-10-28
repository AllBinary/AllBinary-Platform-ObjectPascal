{
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer.unit
unit UnitLayer;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, J2MEUtil, ExplosionBasicSound, Animation, AnimationInterfaceFactoryInterface, FeaturedAnimationInterfaceFactoryInterfaceFactory, IndexedAnimation, NullAnimationFactory, NullIndexedAnimationFactory, ProceduralAnimationInterfaceFactoryInterface, RotationAnimation, CaptionAnimationHelper, CaptionAnimationHelperBase, AdjustedCircleAnimation, Direction, DamageFloaters, PtsDamageFloaters, WeaponProperties, Features, GameFeatureFactory, BasicHudFactory, Health, HealthBar, HealthBarTwodAnimation, Group, GroupCommonFactory, GameKeyEvent, GameKeyEventFactory, GameKeyEventUtil, VisibleCellPositionsSingleton, WaypointRTSFormInput, AdvancedRTSGameLayer, AdvancedRTSProperties, AllBinaryGameLayerManager, AllBinaryTiledLayer, CaptionResources, LinePathRelativeAnimation, PathAnimation, PathFindingLayerInterface, RTSLayer2LogHelper, RTSLayer2SelectedLogHelper, RTSLayerEvent, RTSLayerHudPaintable, RTSLayerLogHelper, RTSLayerSelectedLogHelper, RTSPlayerLayerInterface, SelectionHudPaintable, SensorActionFactory, SteeringVisitor, TiledLayerUtil, VehicleFrictionProperties, VehicleProperties, WaypointBehaviorBase, BuildingLayer, BuildingEventHandler, BuildingEventListenerInterface, CapitalEvent, CapitalEventHandlerFactory, LayerPartialCellPositionsUtil, SpecialDownGameInputProcessor, SpecialFireGameInputProcessor, SpecialLeftGameInputProcessor, SpecialRightGameInputProcessor, SpecialUpGameInputProcessor, MultipassNoCacheWaypoint, NoCacheWaypoint, WaypointBase, WaypointEventHandlerFactory, RemoteInfo, BasicWeaponPart, SalvoInterface, VelocityProperties, TrackingEvent, TrackingEventHandler, TrackingEventListenerInterface, CellPositionFactory, GPoint, Rectangle, BasicColorFactory, NullPaintable, Paintable, AllBinaryLayer, AllBinaryLayerManager, Layer, LayerInterfaceFactoryInterface, StdUtil, BasicDecimal, SmallIntegerSingletonFactory, AngleFactory, AngleInfo, FrameUtil, LayerDistanceUtil, NamedAngle, AttackSound, SecondaryPlayerQueueFactory, Sound, BasicGeographicMap, BasicGeographicMapCellPositionFactory, GeographicMapCellHistory, GeographicMapCellPosition, GeographicMapCompositeInterface, SimpleGeographicMapCellPositionFactory, DropCellPositionHistory, RaceTrackGeographicMap, CommonPhoneStrings, ABHashtable, BasicArrayList, BasicArrayListD, BasicArrayListS, ViewPositionBase, UnitWaypointBehavior;

type
  TJavaVector<E> = class
  private
    FItems: TArray<E>;
    procedure DeleteAt(const AIndex: Integer);
  public
    constructor Create; overload;
    constructor Create(const AInitialCapacity: Integer); overload;
    function add(const AItem: E): Boolean; overload;
    procedure add(const AIndex: Integer; const AItem: E); overload;
    procedure addElement(const AItem: E);
    function get(const AIndex: Integer): E;
    function elementAt(const AIndex: Integer): E;
    function set_(const AIndex: Integer; const AItem: E): E;
    procedure setElementAt(const AItem: E; const AIndex: Integer);
    function remove(const AIndex: Integer): E; overload;
    function remove(const AObject: TObject): Boolean; overload;
    function removeElement(const AItem: E): Boolean;
    procedure removeElementAt(const AIndex: Integer);
    function contains(const AItem: E): Boolean;
    function size: Integer;
    function isEmpty: Boolean;
    procedure clear;
    function toArray: TArray<E>;
  end;

  TJavaRandom = class
  public
    constructor Create; overload;
    constructor Create(const ASeed: Int64); overload;
    procedure setSeed(const ASeed: Int64);
    function nextInt: Integer; overload;
    function nextInt(const ABound: Integer): Integer; overload;
  end;

  TJava = class
  public
    class function NewArray<T>(const ALength: Integer): TArray<T>; static;
    class function NewArray2<T>(const ALength1, ALength2: Integer): TArray<TArray<T>>; static;
    class function NewArray3<T>(const ALength1, ALength2, ALength3: Integer): TArray<TArray<TArray<T>>>; static;
    class procedure ArrayCopy<T>(const ASource: TArray<T>; const ASourcePos: Integer; var ADestination: TArray<T>; const ADestinationPos, ALength: Integer); overload; static;
    class procedure ArrayCopy(const ASource: TArray<WideChar>; const ASourcePos: Integer; var ADestination: TArray<WideChar>; const ADestinationPos, ALength: Integer); overload; static;
    class procedure ArrayCopy(const ASource: TObject; const ASourcePos: Integer; ADestination: TObject; const ADestinationPos, ALength: Integer); overload; static;
    class procedure GetChars(const ASource: string; const ASourceStart, ASourceEnd: Integer; var ADestination: TArray<WideChar>; const ADestinationStart: Integer); static;
    class function NewString(const AValue: string): string; overload; static;
    class function NewString(const AValue: TArray<WideChar>; const AOffset: Integer = 0; const ACount: Integer = -1): string; overload; static;
    class function NewString(const AValue: TArray<ShortInt>; const AOffset: Integer = 0; const ACount: Integer = -1): string; overload; static;
    class function NewString(const AValue: TArray<ShortInt>; const AEncoding: string): string; overload; static;
    class function GetBytes(const AValue: string): TArray<ShortInt>; static;
    class function ToString(const AValue: string): string; overload; static;
    class function ToString(const AValue: WideChar): string; overload; static;
    class function ToString(const AValue: Boolean): string; overload; static;
    class function ToString(const AValue: Integer): string; overload; static;
    class function ToString(const AValue: Int64): string; overload; static;
    class function ToString(const AValue: Double): string; overload; static;
    class function ToString(const AValue: TObject): string; overload; static;
    class function BoxString(const AValue: string): TObject; static;
    class function UnboxString(const AValue: TObject): string; static;
    class function LongBitsToDouble(const ABits: Int64): Double; static;
    class function IntBitsToFloat(const ABits: Integer): Single; static;
    class function HashCode(const AValue: TObject): Integer; static;
    class function GetProperty(const AName: string): string; static;
    class function FreeMemory: Int64; static;
    class function TotalMemory: Int64; static;
    class function MaxMemory: Int64; static;
    class function SignedRightShift(const AValue, AShift: Integer): Integer; overload; static;
    class function SignedRightShift(const AValue: Int64; const AShift: Integer): Int64; overload; static;
    class procedure Wait(const AValue: TObject; const ATimeoutMillis: Int64); static;
    class procedure MonitorEnter(const AValue: TObject); static;
    class procedure MonitorExit(const AValue: TObject); static;
    class procedure PrintStackTrace(const AException: SysUtils.Exception; const AStream: TStringStream); static;
    class function EnumerationHasMoreElements(const AEnumeration: TObject): Boolean; static;
    class function EnumerationNextElement(const AEnumeration: TObject): TObject; static;
    class function InterfaceToString(const AValue: Pointer): string; static;
    class function Assign<T>(var ADestination: T; const AValue: T): T; static;
    class function IfThen<T>(const ACondition: Boolean; const ATrue, AFalse: T): T; static;
    class function PreInc(var AValue: Integer): Integer; overload; static;
    class function PostInc(var AValue: Integer): Integer; overload; static;
    class function PreDec(var AValue: Integer): Integer; overload; static;
    class function PostDec(var AValue: Integer): Integer; overload; static;
    class function PreInc(var AValue: Int64): Int64; overload; static;
    class function PostInc(var AValue: Int64): Int64; overload; static;
    class function PreDec(var AValue: Int64): Int64; overload; static;
    class function PostDec(var AValue: Int64): Int64; overload; static;
    class procedure Nothing; static;
  end;

  TUnitLayer = class(TAdvancedRTSGameLayer, IBuildingEventListenerInterface, ITrackingEventListenerInterface)
  public
    basicColorFactory: TBasicColorFactory;
    groupCommonFactory: TGroupCommonFactory;
    layerPartialCellPositionsUtil: TLayerPartialCellPositionsUtil;
    layerDistanceUtil: TLayerDistanceUtil;
    angleFactory: TAngleFactory;
    cellPositionFactory: TCellPositionFactory;
    maxResourceLoad: SmallInt;
    vehicleProperties: TVehicleProperties;
    accelerationBasicDecimal: TBasicDecimal;
    decelerationBasicDecimal: TBasicDecimal;
    trackingEvent: TTrackingEvent;
    damageFloaters: TDamageFloaters;
    damageFloatersPaintableInterface: TPaintable;
    healthBar: TPaintable;
    moveSoundInterface: TSound;
    initResourceAnimation: TRotationAnimation;
    resourceAnimation: TIndexedAnimation;
    initPathAnimation: TPathAnimation;
    pathAnimation: TAnimation;
    captionAnimationHelper: TCaptionAnimationHelperBase;
    decalAnimation: TRotationAnimation;
    waypointLayerInterfaceFactoryInterface: ILayerInterfaceFactoryInterface;
    resourceLoad: Integer;
    weaponRange: Integer;
    rtsLogHelper: TRTSLayerLogHelper;
    rotationAnimationInterfaceP: TRotationAnimation;
    movementAngle: TNamedAngle;
    steeringInsideGeographicMapCellPosition: TGeographicMapCellPosition;
    sensorGeographicMapCellPositionList: TBasicArrayList;
    CAPITAL_EVENT: TCapitalEvent;
    class var partialPositionList: TBasicArrayList;
    class var SENSOR_RANGE_MULTIPLIER: Integer;
    class var MOVE_: string;
    procedure InitFields;
        constructor Create(remoteInfo: TRemoteInfo; parentLayer: IPathFindingLayerInterface; advancedRTSProperties: TAdvancedRTSProperties; groupInterface: TArray<TGroup>; rootName: string; name: string; vehicleProperties: TVehicleProperties; healthInterface: THealth; maxResourceLoad: Integer; moveSoundInterface: TSound; waypointLayerInterfaceFactoryInterface: ILayerInterfaceFactoryInterface; animationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; emptyAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; baseAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; buildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; verticleBuildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; decalAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; resourceAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface: IProceduralAnimationInterfaceFactoryInterface; rectangle: TRectangle; direction: TDirection; x: Integer; y: Integer; z: Integer; viewPosition: TViewPositionBase);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager: TAllBinaryGameLayerManager); virtual;
        procedure updateWaypointBehavior(geographicMapInterface: TBasicGeographicMap); virtual;
        procedure construct(rtsPlayerLayerInterface: IRTSPlayerLayerInterface); virtual;
        procedure updateSensorGeographicMapCellPositionList; virtual;
        function getSensorGeographicMapCellPositionList: TBasicArrayList; virtual;
        procedure select; virtual;
        procedure deselect; virtual;
        procedure setSelected(selected: Boolean); virtual;
        procedure setClosestGeographicMapCellHistory(pathsList: TBasicArrayList); virtual;
        procedure init(geographicMapCellHistory: TGeographicMapCellHistory; geographicMapCellPositionBasicArrayList: TBasicArrayList); virtual;
        procedure onMovement(trackingEvent: TTrackingEvent); virtual;
        procedure onMovementFound(trackingEvent: TTrackingEvent); virtual;
        procedure initRangeHack; virtual;
        procedure processBuiltTick(allBinaryLayerManager: TAllBinaryLayerManager); virtual;
        procedure teleportTo(geographicMapCellPosition: TGeographicMapCellPosition); virtual;
        function getCurrentGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        procedure fire(layerManager: TAllBinaryLayerManager; gameKeyEvent: TGameKeyEvent); virtual;
        procedure left; virtual;
        procedure right; virtual;
        procedure down; virtual;
        procedure up; virtual;
        procedure initInputProcessors; virtual;
        procedure processInput(layerManager: TAllBinaryLayerManager); virtual;
        procedure accelerate(accelerate: TBasicDecimal); virtual;
        procedure fireAll(layerManager: TAllBinaryLayerManager); virtual;
        procedure downgrade; virtual;
        procedure upgrade; virtual;
        procedure groundFriction; virtual;
        procedure trackTo(reason: string); virtual;
        procedure trackToDXY(dx: Integer; dy: Integer); virtual;
        function turnTo(dx: Integer; dy: Integer; targetAngle: Integer): Boolean;
        procedure handleDeltalX(dx: Integer; dy: Integer);
        procedure handleDeltalY(dx: Integer; dy: Integer);
        procedure trackToDXYTargetAngle(dx: Integer; dy: Integer; targetAngle: Integer);
        procedure fireOrMove; virtual;
        procedure move; virtual;
        procedure allStop; virtual;
        procedure paint(graphics: TGraphics); virtual;
        procedure onBuildingEvent(event: TRTSLayerEvent); virtual;
        function getVehicleProperties: TVehicleProperties; virtual;
        procedure damage(damage: Integer; damageType: Integer); virtual;
        function getDamage(damageType: Integer): Integer; virtual;
        procedure setDestroyed(destroyed: Boolean); virtual;
        function getLoad: Integer; virtual;
        procedure clearResourceAnimation; virtual;
        procedure setLoad(resource: Integer); virtual;
        procedure addLoad(resource: Integer); virtual;
        procedure handleCost(ownerLayer: IPathFindingLayerInterface); virtual;
        function createHudPaintable: TSelectionHudPaintable; virtual;
        function getHudPaintable: TSelectionHudPaintable; virtual;
        function getType: Integer; virtual;
        class function getStaticType: Integer; static;
        function getUnitWaypointBehavior: TUnitWaypointBehavior; virtual;
        function getTrackingEvent: TTrackingEvent; virtual;
        function getCaptionAnimationHelper: TCaptionAnimationHelperBase; virtual;
        function isSelfUpgradeable: Boolean; virtual;
        function getMaxResourceLoad: SmallInt; virtual;
        class function getPartialpositionlist: TBasicArrayList; static;
  end;

implementation
uses
  CollidableUnitBehavior, UnitWaypointBehavior2;



constructor TJavaVector<E>.Create;
begin
  inherited Create;
end;

constructor TJavaVector<E>.Create(const AInitialCapacity: Integer);
begin
  inherited Create;
end;

procedure TJavaVector<E>.DeleteAt(const AIndex: Integer);
var
  I, LastIndex: Integer;
begin
  LastIndex := Length(FItems) - 1;
  for I := AIndex to LastIndex - 1 do FItems[I] := FItems[I + 1];
  SetLength(FItems, LastIndex);
end;

function TJavaVector<E>.add(const AItem: E): Boolean;
begin
  addElement(AItem);
  Result := True;
end;

procedure TJavaVector<E>.add(const AIndex: Integer; const AItem: E);
var
  I, Count: Integer;
begin
  Count := Length(FItems);
  SetLength(FItems, Count + 1);
  for I := Count downto AIndex + 1 do FItems[I] := FItems[I - 1];
  FItems[AIndex] := AItem;
end;

procedure TJavaVector<E>.addElement(const AItem: E);
var
  I: Integer;
begin
  I := Length(FItems);
  SetLength(FItems, I + 1);
  FItems[I] := AItem;
end;

function TJavaVector<E>.get(const AIndex: Integer): E;
begin
  Result := FItems[AIndex];
end;

function TJavaVector<E>.elementAt(const AIndex: Integer): E;
begin
  Result := FItems[AIndex];
end;

function TJavaVector<E>.set_(const AIndex: Integer; const AItem: E): E;
begin
  Result := FItems[AIndex];
  FItems[AIndex] := AItem;
end;

procedure TJavaVector<E>.setElementAt(const AItem: E; const AIndex: Integer);
begin
  FItems[AIndex] := AItem;
end;

function TJavaVector<E>.remove(const AIndex: Integer): E;
begin
  Result := FItems[AIndex];
  DeleteAt(AIndex);
end;

function TJavaVector<E>.remove(const AObject: TObject): Boolean;
var
  I: Integer;
begin
  for I := 0 to Length(FItems) - 1 do
    if Pointer(FItems[I]) = Pointer(AObject) then begin
      DeleteAt(I);
      Exit(True);
    end;
  Result := False;
end;

function TJavaVector<E>.removeElement(const AItem: E): Boolean;
var
  I: Integer;
begin
  for I := 0 to Length(FItems) - 1 do
    if FItems[I] = AItem then begin
      DeleteAt(I);
      Exit(True);
    end;
  Result := False;
end;

procedure TJavaVector<E>.removeElementAt(const AIndex: Integer);
begin
  DeleteAt(AIndex);
end;

function TJavaVector<E>.contains(const AItem: E): Boolean;
var
  I: Integer;
begin
  for I := 0 to Length(FItems) - 1 do
    if FItems[I] = AItem then Exit(True);
  Result := False;
end;

function TJavaVector<E>.size: Integer;
begin
  Result := Length(FItems);
end;

function TJavaVector<E>.isEmpty: Boolean;
begin
  Result := Length(FItems) = 0;
end;

procedure TJavaVector<E>.clear;
begin
  SetLength(FItems, 0);
end;

function TJavaVector<E>.toArray: TArray<E>;
begin
  Result := Copy(FItems);
end;


constructor TJavaRandom.Create;
begin
  inherited Create;
  Randomize;
end;

constructor TJavaRandom.Create(const ASeed: Int64);
begin
  inherited Create;
  setSeed(ASeed);
end;

procedure TJavaRandom.setSeed(const ASeed: Int64);
begin
  RandSeed := Integer(ASeed xor (ASeed shr 32));
end;

function TJavaRandom.nextInt: Integer;
begin
  Result := Random(High(Integer));
  if Random(2) = 0 then Result := -Result;
end;

function TJavaRandom.nextInt(const ABound: Integer): Integer;
begin
  if ABound <= 0 then raise SysUtils.Exception.Create('bound must be positive');
  Result := Random(ABound);
end;


class function TJava.NewArray<T>(const ALength: Integer): TArray<T>;
begin
  Result := nil;
  SetLength(Result, ALength);
end;

class function TJava.NewArray2<T>(const ALength1, ALength2: Integer): TArray<TArray<T>>;
var
  I: Integer;
begin
  Result := nil;
  SetLength(Result, ALength1);
  for I := 0 to ALength1 - 1 do
    SetLength(Result[I], ALength2);
end;

class function TJava.NewArray3<T>(const ALength1, ALength2, ALength3: Integer): TArray<TArray<TArray<T>>>;
var
  I, J: Integer;
begin
  Result := nil;
  SetLength(Result, ALength1);
  for I := 0 to ALength1 - 1 do begin
    SetLength(Result[I], ALength2);
    for J := 0 to ALength2 - 1 do
      SetLength(Result[I][J], ALength3);
  end;
end;

class procedure TJava.ArrayCopy<T>(const ASource: TArray<T>; const ASourcePos: Integer; var ADestination: TArray<T>; const ADestinationPos, ALength: Integer);
var
  I: Integer;
  Values: TArray<T>;
begin
  Values := nil;
  SetLength(Values, ALength);
  for I := 0 to ALength - 1 do
    Values[I] := ASource[ASourcePos + I];
  for I := 0 to ALength - 1 do
    ADestination[ADestinationPos + I] := Values[I];
end;

class procedure TJava.ArrayCopy(const ASource: TArray<WideChar>; const ASourcePos: Integer; var ADestination: TArray<WideChar>; const ADestinationPos, ALength: Integer);
var
  I: Integer;
  Values: TArray<WideChar>;
begin
  Values := nil;
  SetLength(Values, ALength);
  for I := 0 to ALength - 1 do Values[I] := ASource[ASourcePos + I];
  for I := 0 to ALength - 1 do ADestination[ADestinationPos + I] := Values[I];
end;

class procedure TJava.ArrayCopy(const ASource: TObject; const ASourcePos: Integer; ADestination: TObject; const ADestinationPos, ALength: Integer);
begin
  { Java Object-erased arrays cannot be inspected without their element type. }
end;

class procedure TJava.GetChars(const ASource: string; const ASourceStart, ASourceEnd: Integer; var ADestination: TArray<WideChar>; const ADestinationStart: Integer);
var
  I: Integer;
begin
  for I := ASourceStart to ASourceEnd - 1 do
    ADestination[ADestinationStart + I - ASourceStart] := ASource[I + 1];
end;

class function TJava.NewString(const AValue: string): string;
begin
  Result := AValue;
end;

class function TJava.NewString(const AValue: TArray<WideChar>; const AOffset: Integer; const ACount: Integer): string;
var
  I, Count: Integer;
begin
  Count := ACount;
  if Count < 0 then Count := Length(AValue) - AOffset;
  SetLength(Result, Count);
  for I := 0 to Count - 1 do Result[I + 1] := AValue[AOffset + I];
end;

class function TJava.NewString(const AValue: TArray<ShortInt>; const AOffset: Integer; const ACount: Integer): string;
var
  I, Count: Integer;
begin
  Count := ACount;
  if Count < 0 then Count := Length(AValue) - AOffset;
  SetLength(Result, Count);
  for I := 0 to Count - 1 do Result[I + 1] := Char(Byte(AValue[AOffset + I]));
end;

class function TJava.NewString(const AValue: TArray<ShortInt>; const AEncoding: string): string;
begin
  Result := NewString(AValue, 0, Length(AValue));
end;

class function TJava.GetBytes(const AValue: string): TArray<ShortInt>;
var
  I: Integer;
begin
  Result := nil;
  SetLength(Result, Length(AValue));
  for I := 1 to Length(AValue) do
    Result[I - 1] := ShortInt(Byte(AValue[I]));
end;

class function TJava.ToString(const AValue: string): string;
begin
  Result := AValue;
end;

class function TJava.ToString(const AValue: WideChar): string;
begin
  Result := AValue;
end;

class function TJava.ToString(const AValue: Boolean): string;
begin
  Result := BoolToStr(AValue, True);
end;

class function TJava.ToString(const AValue: Integer): string;
begin
  Result := IntToStr(AValue);
end;

class function TJava.ToString(const AValue: Int64): string;
begin
  Result := IntToStr(AValue);
end;

class function TJava.ToString(const AValue: Double): string;
begin
  Result := FloatToStr(AValue);
end;

class function TJava.ToString(const AValue: TObject): string;
begin
  if AValue = nil then Result := 'null' else if AValue is TStringStream then Result := TStringStream(AValue).DataString else Result := AValue.ClassName;
end;

class function TJava.BoxString(const AValue: string): TObject;
begin
  Result := TStringStream.Create(AValue);
end;

class function TJava.UnboxString(const AValue: TObject): string;
begin
  if AValue = nil then Result := '' else if AValue is TStringStream then Result := TStringStream(AValue).DataString else Result := AValue.ClassName;
end;

class function TJava.GetProperty(const AName: string): string;
begin
  Result := GetEnvironmentVariable(AName);
  if AName = 'user.home' then begin
    Result := GetEnvironmentVariable('USERPROFILE');
    if Result = '' then Result := GetEnvironmentVariable('HOME');
  end else if AName = 'os.name' then begin
    Result := GetEnvironmentVariable('OS');
    if Result = '' then Result := {$IFDEF WINDOWS}'Windows'{$ELSE}'Unix'{$ENDIF};
  end else if AName = 'os.arch' then begin
    Result := GetEnvironmentVariable('PROCESSOR_ARCHITECTURE');
    if Result = '' then Result := {$IFDEF CPU64}'64-bit'{$ELSE}'32-bit'{$ENDIF};
  end else if AName = 'os.version' then
    Result := GetEnvironmentVariable('OS');
end;

class function TJava.FreeMemory: Int64;
var
  HeapStatus: THeapStatus;
begin
  HeapStatus := GetHeapStatus;
  Result := HeapStatus.TotalFree;
end;

class function TJava.TotalMemory: Int64;
var
  HeapStatus: THeapStatus;
begin
  HeapStatus := GetHeapStatus;
  Result := Int64(HeapStatus.TotalAllocated) + Int64(HeapStatus.TotalFree);
end;

class function TJava.MaxMemory: Int64;
var
  HeapStatus: THeapStatus;
begin
  HeapStatus := GetHeapStatus;
  Result := HeapStatus.TotalAddrSpace;
end;

class function TJava.LongBitsToDouble(const ABits: Int64): Double;
begin
  Result := 0.0;
  Move(ABits, Result, SizeOf(Result));
end;

class function TJava.IntBitsToFloat(const ABits: Integer): Single;
begin
  Result := 0.0;
  Move(ABits, Result, SizeOf(Result));
end;

class function TJava.HashCode(const AValue: TObject): Integer;
begin
  if AValue = nil then Result := 0 else Result := Integer(PtrUInt(AValue));
end;

class function TJava.SignedRightShift(const AValue, AShift: Integer): Integer;
var
  Shift: Integer;
begin
  Shift := AShift and 31;
  if Shift = 0 then Result := AValue
  else if AValue >= 0 then Result := AValue shr Shift
  else Result := not (not AValue shr Shift);
end;

class function TJava.SignedRightShift(const AValue: Int64; const AShift: Integer): Int64;
var
  Shift: Integer;
begin
  Shift := AShift and 63;
  if Shift = 0 then Result := AValue
  else if AValue >= 0 then Result := AValue shr Shift
  else Result := not (not AValue shr Shift);
end;

class procedure TJava.Wait(const AValue: TObject; const ATimeoutMillis: Int64);
begin
  if ATimeoutMillis > 0 then Sleep(Cardinal(ATimeoutMillis));
end;

class procedure TJava.MonitorEnter(const AValue: TObject);
begin
  { FPC has no TObject monitor equivalent. }
end;

class procedure TJava.MonitorExit(const AValue: TObject);
begin
end;

class procedure TJava.PrintStackTrace(const AException: SysUtils.Exception; const AStream: TStringStream);
begin
  if (AException <> nil) and (AStream <> nil) then
    AStream.WriteString(AException.ClassName + ': ' + AException.Message);
end;

class function TJava.EnumerationHasMoreElements(const AEnumeration: TObject): Boolean;
begin
  Result := (AEnumeration is TList) and (TList(AEnumeration).Count > 0);
end;

class function TJava.EnumerationNextElement(const AEnumeration: TObject): TObject;
var
  List: TList;
begin
  Result := nil;
  if not (AEnumeration is TList) then Exit;
  List := TList(AEnumeration);
  if List.Count = 0 then Exit;
  Result := TObject(List[0]);
  List.Delete(0);
end;

class function TJava.InterfaceToString(const AValue: Pointer): string;
begin
  if AValue = nil then Result := 'null' else Result := 'interface';
end;

class function TJava.Assign<T>(var ADestination: T; const AValue: T): T;
begin
  ADestination := AValue;
  Result := AValue;
end;

class function TJava.IfThen<T>(const ACondition: Boolean; const ATrue, AFalse: T): T;
begin
  if ACondition then Result := ATrue else Result := AFalse;
end;

class function TJava.PreInc(var AValue: Integer): Integer;
begin
  Inc(AValue); Result := AValue;
end;
class function TJava.PostInc(var AValue: Integer): Integer;
begin
  Result := AValue; Inc(AValue);
end;
class function TJava.PreDec(var AValue: Integer): Integer;
begin
  Dec(AValue); Result := AValue;
end;
class function TJava.PostDec(var AValue: Integer): Integer;
begin
  Result := AValue; Dec(AValue);
end;

class function TJava.PreInc(var AValue: Int64): Int64;
begin
  Inc(AValue); Result := AValue;
end;
class function TJava.PostInc(var AValue: Int64): Int64;
begin
  Result := AValue; Inc(AValue);
end;
class function TJava.PreDec(var AValue: Int64): Int64;
begin
  Dec(AValue); Result := AValue;
end;
class function TJava.PostDec(var AValue: Int64): Int64;
begin
  Result := AValue; Dec(AValue);
end;

class procedure TJava.Nothing;
begin
end;


procedure TUnitLayer.InitFields;
begin
  Self.basicColorFactory := TBasicColorFactory.getInstance();
  Self.groupCommonFactory := TGroupCommonFactory.getInstance();
  Self.layerPartialCellPositionsUtil := TLayerPartialCellPositionsUtil.getInstance();
  Self.layerDistanceUtil := TLayerDistanceUtil.getInstance();
  Self.angleFactory := TAngleFactory.getInstance();
  Self.cellPositionFactory := TCellPositionFactory.getInstance();
  
  
  Self.accelerationBasicDecimal := TBasicDecimal.Create(1600);
  Self.decelerationBasicDecimal := TBasicDecimal.Create(-1000);
  
  
  
  
  
  
  Self.resourceAnimation := TIndexedAnimation(TNullIndexedAnimationFactory.getFactoryInstance().getInstance(0));
  
  Self.pathAnimation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
  Self.captionAnimationHelper := TCaptionAnimationHelper.Create(TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(TCaptionResources.getInstance().RESOURCE).getInstance(0), -23, -25, 6, 0);
  
  
  Self.resourceLoad := 0;
  
  Self.rtsLogHelper := TRTSLayerLogHelper.getInstance();
  
  Self.movementAngle := Self.angleFactory.NOT_ANGLE;
  Self.steeringInsideGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
  Self.sensorGeographicMapCellPositionList := TBasicArrayListD.Create();
  Self.CAPITAL_EVENT := TCapitalEvent.Create(Self);
end;
    

constructor TUnitLayer.Create(remoteInfo: TRemoteInfo; parentLayer: IPathFindingLayerInterface; advancedRTSProperties: TAdvancedRTSProperties; groupInterface: TArray<TGroup>; rootName: string; name: string; vehicleProperties: TVehicleProperties; healthInterface: THealth; maxResourceLoad: Integer; moveSoundInterface: TSound; waypointLayerInterfaceFactoryInterface: ILayerInterfaceFactoryInterface; animationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; emptyAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; baseAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; buildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; verticleBuildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; decalAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; resourceAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface: IProceduralAnimationInterfaceFactoryInterface; rectangle: TRectangle; direction: TDirection; x: Integer; y: Integer; z: Integer; viewPosition: TViewPositionBase);
begin
        inherited Create(remoteInfo, parentLayer, advancedRTSProperties, groupInterface, rootName, name, healthInterface, TWaypointRTSFormInput.Create(groupInterface, True), animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition);
        InitFields;
        Self.setCollidableInferface(TCollidableUnitBehavior.Create(True));
        Self.waypointLayerInterfaceFactoryInterface := waypointLayerInterfaceFactoryInterface;
        Self.maxResourceLoad := maxResourceLoad;
        Self.moveSoundInterface := moveSoundInterface;
        if TFeatures.getInstance().isFeature(TGameFeatureFactory.getInstance().DAMAGE_FLOATERS) then begin
            Self.damageFloaters := TPtsDamageFloaters.Create(Self);
            Self.damageFloatersPaintableInterface := Self.damageFloaters;
        end else begin
            Self.damageFloatersPaintableInterface := TNullPaintable.getInstance();
            Self.damageFloaters := TDamageFloaters.Create();
        end;
        if TFeatures.getInstance().isFeature(TGameFeatureFactory.getInstance().HEALTH_BARS) then begin
            Self.healthBar := THealthBar.Create(Self, Self.getHealthInterface(), THealthBarTwodAnimation.Create(TAllBinaryLayer(Self), TBasicHudFactory.getInstance().BOTTOMLEFT), -1);
        end else begin
            Self.healthBar := TNullPaintable.getInstance();
        end;
        Self.decalAnimation := TRotationAnimation(decalAnimationInterfaceFactoryInterface.getInstance(0));
        Self.initResourceAnimation := TRotationAnimation(resourceAnimationInterfaceFactoryInterface.getInstance(0));
        Self.initResourceAnimation.setFrameByDirection(direction);
        Self.decalAnimation.setFrameByDirection(direction);
        Self.rotationAnimationInterfaceP := TRotationAnimation(Self.indexedButShouldBeRotationAnimationInterface);
        Self.rotationAnimationInterfaceP.setFrameByDirection(direction);
        Self.setMaxLevel(12);
        Self.vehicleProperties := vehicleProperties;
        Self.trackingEvent := TTrackingEvent.Create(Self);
        Self.initPathAnimation := TPathAnimation.Create(Self, TLinePathRelativeAnimation.getInstance());
end;
    

// throws Exception
procedure TUnitLayer.setAllBinaryGameLayerManager(allBinaryGameLayerManager: TAllBinaryGameLayerManager);
begin
        inherited setAllBinaryGameLayerManager(allBinaryGameLayerManager);
        Self.initPathAnimation.setAllBinaryGameLayerManager(allBinaryGameLayerManager);
end;
    

// throws Exception
procedure TUnitLayer.updateWaypointBehavior(geographicMapInterface: TBasicGeographicMap);
var
  hashtable: TABHashtable<TObject, TObject>;
  features: TFeatures;
  waypoint: TWaypointBase;
begin
        hashtable := TStdUtil.getInstance().createHashtable();
        hashtable.put(Self.groupCommonFactory.ID, Self.getGroupInterface());
        hashtable.put(TLayer.ID, Self);
        hashtable.put(TAllBinaryGameLayerManager.ID, Self.allBinaryGameLayerManagerP);
        Self.setWaypointBehavior(TUnitWaypointBehavior2.Create(Self, TAdvancedRTSGameLayer(Self.waypointLayerInterfaceFactoryInterface.getNextInstance(hashtable, Self.x, Self.y, Self.z))));
        features := TFeatures.getInstance();
        waypoint := TJava.IfThen<Variant>(TJ2MEUtil.isHTML(), TMultipassNoCacheWaypoint.Create(Self, TAttackSound.getInstance()), TNoCacheWaypoint.Create(Self, TAttackSound.getInstance()));
        Self.getWaypointBehavior().setWaypoint(waypoint);
        inherited updateWaypointBehavior(geographicMapInterface);
        Self.initRangeHack();
end;
    

// throws Exception
procedure TUnitLayer.construct(rtsPlayerLayerInterface: IRTSPlayerLayerInterface);
begin
        inherited construct(rtsPlayerLayerInterface);
        TTrackingEventHandler.getInstance().addListenerInterface(Self);
        TWaypointEventHandlerFactory.getInstance(Self.getGroupInterface()[0]).addListenerInterface(Self.getUnitWaypointBehavior());
        TBuildingEventHandler.getInstance().addListenerInterface(Self);
        Self.getUnitWaypointBehavior().setCurrentPathGeographicMapCellPosition(Self.getCurrentGeographicMapCellPosition());
        Self.updateSensorGeographicMapCellPositionList();
        Self.getUnitWaypointBehavior().setLastPathGeographicMapCellPosition(Self.getUnitWaypointBehavior().getCurrentPathGeographicMapCellPosition());
end;
    

// throws Exception
procedure TUnitLayer.updateSensorGeographicMapCellPositionList;
var
  currentGeographicMapCellPosition: TGeographicMapCellPosition;
  sensorRange: Integer;
  geographicMapCompositeInterface: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  tiledLayer: TAllBinaryTiledLayer;
  totalCells: Integer;
  geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
  column: Integer;
  row: Integer;
  lastColumn: Integer;
  lastRow: Integer;
  firstColumn: Integer;
  firstRow: Integer;
  geographicMapCellPosition: TGeographicMapCellPosition;
  index2: Integer;
  index: Integer;
begin
        if TVisibleCellPositionsSingleton.getInstance().shouldProcess() then begin
            currentGeographicMapCellPosition := Self.getCurrentGeographicMapCellPosition();
            Self.sensorGeographicMapCellPositionList.clear();
            Self.sensorGeographicMapCellPositionList.add(currentGeographicMapCellPosition);
            sensorRange := (Self.weaponRange) * (TUnitLayer.SENSOR_RANGE_MULTIPLIER);
            geographicMapCompositeInterface := IGeographicMapCompositeInterface(Pointer(Self.allBinaryGameLayerManagerP));
            geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface()[0];
            tiledLayer := geographicMapInterface.getAllBinaryTiledLayer();
            totalCells := (((sensorRange) / (tiledLayer.getCellHeight()))) / (2);
            geographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory();
            column := currentGeographicMapCellPosition.getColumn();
            row := currentGeographicMapCellPosition.getRow();
            lastColumn := (column) + (totalCells);
            lastRow := (row) + (totalCells);
            if (lastColumn) > (tiledLayer.getColumns()) then begin
                lastColumn := tiledLayer.getColumns();
            end;
            if (lastRow) > (tiledLayer.getRows()) then begin
                lastRow := tiledLayer.getRows();
            end;
            firstColumn := (column) - (totalCells);
            firstRow := (row) - (totalCells);
            if (firstColumn) < (0) then begin
                firstColumn := 0;
            end;
            if (firstRow) < (0) then begin
                firstRow := 0;
            end;
            for index := (lastColumn) - (1) downto firstColumn do begin
                for index2 := (lastRow) - (1) downto firstRow do begin
                    geographicMapCellPosition := geographicMapCellPositionFactory.getAt(index, index2);
                    if not (Self.sensorGeographicMapCellPositionList.contains(geographicMapCellPosition)) then begin
                        Self.sensorGeographicMapCellPositionList.add(geographicMapCellPosition);
                    end;
                end;
            end;
        end;
end;
    

function TUnitLayer.getSensorGeographicMapCellPositionList: TBasicArrayList;
begin
        Exit(Self.sensorGeographicMapCellPositionList);
end;
    

procedure TUnitLayer.select;
begin
        Self.pathAnimation := Self.initPathAnimation;
        inherited select();
end;
    

procedure TUnitLayer.deselect;
begin
        Self.pathAnimation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
        inherited deselect();
end;
    

procedure TUnitLayer.setSelected(selected: Boolean);
begin
        inherited setSelected(selected);
        if selected then begin
            if Self.debug then begin
                Self.rtsLogHelper := TRTSLayerSelectedLogHelper.getInstance();
            end;
            Self.rtsLayer2LogHelper := TRTSLayer2SelectedLogHelper.getInstance();
        end else begin
            if Self.debug then begin
                Self.rtsLogHelper := TRTSLayerLogHelper.getInstance();
            end;
            Self.rtsLayer2LogHelper := TRTSLayer2LogHelper.getInstance();
        end;
end;
    

// throws Exception
procedure TUnitLayer.setClosestGeographicMapCellHistory(pathsList: TBasicArrayList);
var
  closestIndex: Integer;
  shortestDistance: Integer;
  currentDistance: Integer;
  geographicMapCellPositionBasicArrayList: TBasicArrayList;
  geographicMapCellPosition: TGeographicMapCellPosition;
  index: Integer;
begin
        Self.rtsLogHelper.setClosestGeographicMapCellHistory(Self, pathsList);
        closestIndex := -1;
        shortestDistance := High(Integer);
        currentDistance := High(Integer);
        for index := (pathsList.size()) - (1) downto 0 do begin
            geographicMapCellPositionBasicArrayList := TBasicArrayList(pathsList.get(index));
            geographicMapCellPosition := TGeographicMapCellPosition(geographicMapCellPositionBasicArrayList.get((geographicMapCellPositionBasicArrayList.size()) - (1)));
            currentDistance := Self.layerDistanceUtil.getDistanceAt(Self, geographicMapCellPosition.getMidPoint());
            if (currentDistance) < (shortestDistance) then begin
                shortestDistance := currentDistance;
                closestIndex := index;
            end;
        end;
        if (closestIndex) >= (0) then begin
            geographicMapCellPositionBasicArrayList := TBasicArrayList(pathsList.get(closestIndex));
            geographicMapCellPosition := TGeographicMapCellPosition(geographicMapCellPositionBasicArrayList.get(0));
            Self.teleportTo(geographicMapCellPosition);
        end;
end;
    

// throws Exception
procedure TUnitLayer.init(geographicMapCellHistory: TGeographicMapCellHistory; geographicMapCellPositionBasicArrayList: TBasicArrayList);
begin
        geographicMapCellHistory.trackAll(geographicMapCellPositionBasicArrayList);
end;
    

procedure TUnitLayer.onMovement(trackingEvent: TTrackingEvent);
var
  layerInterface: TAdvancedRTSGameLayer;
begin
        try
            layerInterface := TAdvancedRTSGameLayer(trackingEvent.getLayerInterface());
            if (layerInterface.getGroupInterface()[0]) <> (Self.getGroupInterface()[0]) then begin
                Self.getUnitWaypointBehavior().getPossibleTargetList().add(layerInterface);
                layerInterface.onMovementFound(Self.getTrackingEvent());
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'onMovement', e);
            end;
        end;
end;
    

// throws Exception
procedure TUnitLayer.onMovementFound(trackingEvent: TTrackingEvent);
var
  layerInterface: TAdvancedRTSGameLayer;
begin
        layerInterface := TAdvancedRTSGameLayer(trackingEvent.getLayerInterface());
        if (layerInterface.getGroupInterface()[0]) <> (Self.getGroupInterface()[0]) then begin
            Self.getUnitWaypointBehavior().getPossibleTargetList().add(layerInterface);
        end;
end;
    

procedure TUnitLayer.initRangeHack;
var
  basicWeaponPart: TBasicWeaponPart;
  weaponProperties: TWeaponProperties;
  sensorRange: Integer;
begin
        basicWeaponPart := TBasicWeaponPart(Self.getPartInterfaceArray()[0]);
        weaponProperties := basicWeaponPart.getWeaponProperties();
        Self.weaponRange := weaponProperties.getRange();
        Self.initRangeAnimation := TAdjustedCircleAnimation.createW(Self.weaponRange, Self.weaponRange, Self.getWidth(), Self.basicColorFactory.GREEN);
        sensorRange := (Self.weaponRange) * (TUnitLayer.SENSOR_RANGE_MULTIPLIER);
        Self.initSensorRangeAnimation := TAdjustedCircleAnimation.createW(sensorRange, sensorRange, Self.getWidth(), Self.basicColorFactory.RED);
        Self.getUnitWaypointBehavior().initRange(Self.weaponRange);
        Self.fireTimeHelper.delay := (Integer(Trunc(weaponProperties.getReloadTime())));
end;
    

// throws Exception
procedure TUnitLayer.processBuiltTick(allBinaryLayerManager: TAllBinaryLayerManager);
var
  currentFrame: Integer;
  size: Integer;
begin
        if not (not (Self.getHealthInterface().Finished)) then begin
            if Self.isReadyForExplosion() then begin
                currentFrame := Self.destroyAnimationInterface.getFrame();
                size := (Self.destroyAnimationInterface.getSize()) - (1);
                if (currentFrame) = (size) then begin
                    if not (not (Self.getHealthInterface().Finished)) then begin
                        Self.setDestroyed(True);
                    end;
                end else begin
                    Self.destroyAnimationInterface.nextFrame();
                end;
            end else begin
                Self.setAnimationInterface(Self.destroyAnimationInterface);
                TSecondaryPlayerQueueFactory.getInstance().add(TExplosionBasicSound.getInstance());
                Self.shakeListener.onSmallShakeEvent();
                Self.vibration.vibrate(Self.duration, 0, 0);
                Self.setReadyForExplosion(True);
            end;
        end else begin
            inherited processBuiltTick(allBinaryLayerManager);
        end;
        Self.captionAnimationHelper.tick();
        Self.getUnitWaypointBehavior().processTick(allBinaryLayerManager);
end;
    

procedure TUnitLayer.teleportTo(geographicMapCellPosition: TGeographicMapCellPosition);
var
  point: TGPoint;
begin
        point := geographicMapCellPosition.getMidPoint();
        Self.setPosition((point.getX()) - (Self.getHalfWidth()), (point.getY()) - (Self.getHalfHeight()), Self.z);
end;
    

// throws Exception
function TUnitLayer.getCurrentGeographicMapCellPosition: TGeographicMapCellPosition;
var
  geographicMapCompositeInterface: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  geographicMapCellPosition: TGeographicMapCellPosition;
  raceTrackGeographicMap: TRaceTrackGeographicMap;
begin
        geographicMapCompositeInterface := IGeographicMapCompositeInterface(Pointer(Self.allBinaryGameLayerManagerP));
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface()[0];
        geographicMapCellPosition := geographicMapInterface.getCellPositionAtXY((Self.x) + (Self.getHalfWidth()), (Self.y) + (Self.getHalfHeight()));
        raceTrackGeographicMap := TRaceTrackGeographicMap(geographicMapInterface);
        if not (raceTrackGeographicMap.isValid(geographicMapCellPosition)) then begin
            raise SysUtils.Exception.Create('Position is not really on the map: ' + TJava.ToString(geographicMapCellPosition));
        end;
        Exit(geographicMapCellPosition);
end;
    

// throws Exception
procedure TUnitLayer.fire(layerManager: TAllBinaryLayerManager; gameKeyEvent: TGameKeyEvent);
begin
        if Self.fireTimeHelper.isTimeTNT() then begin
            Self.fireAll(layerManager);
        end else begin
            Self.reload();
        end;
end;
    

// throws Exception
procedure TUnitLayer.left;
begin
        Self.initResourceAnimation.previousRotation();
        Self.decalAnimation.previousRotation();
        Self.rotationAnimationInterfaceP.previousRotation();
end;
    

// throws Exception
procedure TUnitLayer.right;
begin
        Self.initResourceAnimation.nextRotation();
        Self.decalAnimation.nextRotation();
        Self.rotationAnimationInterfaceP.nextRotation();
end;
    

procedure TUnitLayer.down;
var
  velocityProperties: TVelocityProperties;
begin
        velocityProperties := Self.getVehicleProperties().getVelocityProperties();
        if not (velocityProperties.isOverXYMaxForwardVelocity()) then begin
            Self.accelerate(Self.decelerationBasicDecimal);
        end;
end;
    

procedure TUnitLayer.up;
var
  velocityProperties: TVelocityProperties;
begin
        velocityProperties := Self.getVehicleProperties().getVelocityProperties();
        if not (velocityProperties.isOverXYMaxForwardVelocity()) then begin
            Self.accelerate(Self.accelerationBasicDecimal);
        end;
end;
    

procedure TUnitLayer.initInputProcessors;
begin
        Self.inputProcessorArray[TCanvas.RIGHT] := TSpecialRightGameInputProcessor.Create(Self);
        Self.inputProcessorArray[TCanvas.LEFT] := TSpecialLeftGameInputProcessor.Create(Self);
        Self.inputProcessorArray[TCanvas.KEY_NUM0] := TSpecialFireGameInputProcessor.Create(Self);
        Self.inputProcessorArray[TCanvas.KEY_POUND] := Self.inputProcessorArray[TCanvas.KEY_NUM0];
        Self.inputProcessorArray[TCanvas.DOWN] := TSpecialDownGameInputProcessor.Create(Self);
        Self.inputProcessorArray[TCanvas.UP] := TSpecialUpGameInputProcessor.Create(Self);
        inherited initInputProcessors();
end;
    

// throws Exception
procedure TUnitLayer.processInput(layerManager: TAllBinaryLayerManager);
var
  list: TBasicArrayList;
  size: Integer;
  anyType: TObject;
  key: Integer;
  index: Integer;
begin
        list := Self.getGameKeyEventList();
        size := list.size();
        for index := 0 to size - 1 do begin
            anyType := list.get(index);
            key := TGameKeyEventUtil.getKey(anyType);
            Self.inputProcessorArray[key].processEvent(layerManager, TGameKeyEvent.NONE);
        end;
        list.clear();
        Self.groundFriction();
        Self.move();
end;
    

procedure TUnitLayer.accelerate(accelerate: TBasicDecimal);
begin
        Self.getVehicleProperties().getVelocityProperties().addVelocityi(accelerate.getUnscaled(), Integer(Trunc(Self.rotationAnimationInterfaceP.getAngleInfoP().getAngle())), 90);
end;
    

// throws Exception
procedure TUnitLayer.fireAll(layerManager: TAllBinaryLayerManager);
var
  angleInfo: TAngleInfo;
  angle: Integer;
  salvoInterface: ISalvoInterface;
begin
        angleInfo := Self.rotationAnimationInterfaceP.getAngleInfoP();
        angle := Integer(Trunc(((angleInfo.getAngle()) + (Self.slightAngle))));
        Self.hashtable.put(TSmallIntegerSingletonFactory.getInstance().getAt(1), TSmallIntegerSingletonFactory.getInstance().getAt(Integer(Trunc(TAngleFactory.getInstance().getAt(angle).getValue()))));
        salvoInterface := ISalvoInterface(Pointer(Self.getPartInterfaceArray()[0]));
        salvoInterface.process(layerManager, SmallInt(angle), SmallInt(90));
end;
    

procedure TUnitLayer.downgrade;
begin
        if (Self.getLevel()) > (1) then begin
            inherited downgrade();
        end;
end;
    

procedure TUnitLayer.upgrade;
begin
        inherited upgrade();
        Self.initRangeHack();
end;
    

procedure TUnitLayer.groundFriction;
var
  vehicleFrictionProperties: TVehicleFrictionProperties;
begin
        vehicleFrictionProperties := Self.getVehicleProperties().getVehicleFrictionProperties();
        Self.getVehicleProperties().getVehicleFrictionProperties().friction(Self.getVehicleProperties().getVelocityProperties(), vehicleFrictionProperties.getTireFrictionNominator());
end;
    

// throws Exception
procedure TUnitLayer.trackTo(reason: string);
var
  waypointBehaviorBase: TWaypointBehaviorBase;
  nextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition;
  point: TGPoint;
  dx: Integer;
  dy: Integer;
begin
        waypointBehaviorBase := TWaypointBehaviorBase(Self.waypointBehaviorBase);
        nextUnvisitedPathGeographicMapCellPosition := waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition();
        point := nextUnvisitedPathGeographicMapCellPosition.getMidPoint();
        dx := (((Self.getXP()) + (Self.getHalfWidth()))) - (point.getX());
        dy := (((Self.getYP()) + (Self.getHalfHeight()))) - (point.getY());
        Self.rtsLogHelper.trackTo(Self, nextUnvisitedPathGeographicMapCellPosition, dx, dy, reason);
        Self.trackToDXY(dx, dy);
end;
    

// throws Exception
procedure TUnitLayer.trackToDXY(dx: Integer; dy: Integer);
var
  angleOfTarget: Integer;
begin
        angleOfTarget := 0;
        Self.trackToDXYTargetAngle(dx, dy, angleOfTarget);
end;
    

// throws Exception
function TUnitLayer.turnTo(dx: Integer; dy: Integer; targetAngle: Integer): Boolean;
var
  waypointBehaviorBase: TWaypointBehaviorBase;
  nextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition;
  evading: Boolean;
  angleInfo: TAngleInfo;
  angle: Integer;
  gameKeyEventFactory: TGameKeyEventFactory;
  deltaAngle2: Integer;
begin
        waypointBehaviorBase := TWaypointBehaviorBase(Self.waypointBehaviorBase);
        nextUnvisitedPathGeographicMapCellPosition := waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition();
        evading := False;
        if (Self.getUnitWaypointBehavior().getSensorAction()) = (TSensorActionFactory.getInstance().EVADE) then begin
            Self.rtsLogHelper.evade(Self);
            evading := True;
            targetAngle := (targetAngle) + (180);
        end;
        angleInfo := Self.rotationAnimationInterfaceP.getAngleInfoP();
        angle := TFrameUtil.getInstance().adjustAngleToFrameAngle((angleInfo.getAngle()) - (270));
        Self.rtsLogHelper.turnTo(Self, dx, dy, angleInfo, angle, Self.movementAngle, evading, targetAngle);
        gameKeyEventFactory := TGameKeyEventFactory.getInstance();
        if ((dx) = (0)) and ((dy) = (0)) then begin
            Self.rtsLogHelper.doneMoving(Self);
            Exit(True);
        end else if ((Integer(Trunc(Self.movementAngle.getValue())))) = (angle) then begin
            if ((dx) > (0)) and ((Self.movementAngle) = (Self.angleFactory.LEFT)) then begin
                Self.rtsLogHelper.movingLeft(Self);
                Exit(False);
            end;
            if ((dx) < (0)) and ((Self.movementAngle) = (Self.angleFactory.RIGHT)) then begin
                Self.rtsLogHelper.movingRight(Self);
                Exit(False);
            end;
            if ((dy) > (0)) and ((Self.movementAngle) = (Self.angleFactory.UP)) then begin
                Self.rtsLogHelper.movingUp(Self);
                Exit(False);
            end;
            if ((dy) < (0)) and ((Self.movementAngle) = (Self.angleFactory.DOWN)) then begin
                Self.rtsLogHelper.movingDown(Self);
                Exit(False);
            end;
            Self.rtsLogHelper.currentMoveEnded(Self);
            if ((Self.movementAngle) = (Self.angleFactory.LEFT)) or ((Self.movementAngle) = (Self.angleFactory.RIGHT)) then begin
                Self.handleDeltalY(dx, dy);
            end else if ((Self.movementAngle) = (Self.angleFactory.UP)) or ((Self.movementAngle) = (Self.angleFactory.DOWN)) then begin
                Self.handleDeltalX(dx, dy);
            end;
            Exit(True);
        end else begin
            if (nextUnvisitedPathGeographicMapCellPosition) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
                if (Self.steeringInsideGeographicMapCellPosition) <> (nextUnvisitedPathGeographicMapCellPosition) then begin
                    if ((Abs(dx)) > (Abs(dy))) and ((dy) <> (0)) then begin
                        Self.handleDeltalY(dx, dy);
                    end else if (dx) <> (0) then begin
                        Self.handleDeltalX(dx, dy);
                    end else begin
                        Self.handleDeltalY(dx, dy);
                    end;
                end;
                deltaAngle2 := (Self.movementAngle.getValue()) - (angle);
                if (deltaAngle2) > (0) then begin
                    Self.rtsLogHelper.rotateRight(Self);
                    Self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(Self, TCanvas.RIGHT));
                end else begin
                    Self.rtsLogHelper.rotateLeft(Self);
                    Self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(Self, TCanvas.LEFT));
                end;
                Exit(True);
            end else begin
                Self.rtsLogHelper.noRotation(Self);
            end;
            Exit(False);
        end;
end;
    

procedure TUnitLayer.handleDeltalX(dx: Integer; dy: Integer);
var
  waypointBehaviorBase: TWaypointBehaviorBase;
  nextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        waypointBehaviorBase := TWaypointBehaviorBase(Self.waypointBehaviorBase);
        nextUnvisitedPathGeographicMapCellPosition := waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition();
        if (dx) > (0) then begin
            Self.movementAngle := Self.angleFactory.LEFT;
            Self.steeringInsideGeographicMapCellPosition := nextUnvisitedPathGeographicMapCellPosition;
        end else begin
            Self.movementAngle := Self.angleFactory.RIGHT;
            Self.steeringInsideGeographicMapCellPosition := nextUnvisitedPathGeographicMapCellPosition;
        end;
        Self.rtsLogHelper.handle(Self, Self.movementAngle);
end;
    

procedure TUnitLayer.handleDeltalY(dx: Integer; dy: Integer);
var
  waypointBehaviorBase: TWaypointBehaviorBase;
  nextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        waypointBehaviorBase := TWaypointBehaviorBase(Self.waypointBehaviorBase);
        nextUnvisitedPathGeographicMapCellPosition := waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition();
        if (dy) > (0) then begin
            Self.movementAngle := Self.angleFactory.UP;
            Self.steeringInsideGeographicMapCellPosition := nextUnvisitedPathGeographicMapCellPosition;
        end else begin
            Self.movementAngle := Self.angleFactory.DOWN;
            Self.steeringInsideGeographicMapCellPosition := nextUnvisitedPathGeographicMapCellPosition;
        end;
        Self.rtsLogHelper.handle(Self, Self.movementAngle);
end;
    

// throws Exception
procedure TUnitLayer.trackToDXYTargetAngle(dx: Integer; dy: Integer; targetAngle: Integer);
var
  list: TBasicArrayList;
  steeringVisitor: TSteeringVisitor;
  anyType: TObject;
  index: Integer;
begin
        list := Self.getUnitWaypointBehavior().getSteeringVisitorList();
        if (list.size()) > (0) then begin
            for index := (list.size()) - (1) downto 0 do begin
                steeringVisitor := TSteeringVisitor(list.get(index));
                anyType := steeringVisitor.visit(Self);
                if (anyType) = (nil) then begin
                    list.removeAt(index);
                end;
            end;
            Self.fireOrMove();
        end else if not (Self.turnTo(dx, dy, targetAngle)) then begin
            Self.fireOrMove();
        end;
end;
    

// throws Exception
procedure TUnitLayer.fireOrMove;
var
  gameKeyEventFactory: TGameKeyEventFactory;
begin
        gameKeyEventFactory := TGameKeyEventFactory.getInstance();
        if Self.getUnitWaypointBehavior().needToMove() then begin
            Self.rtsLayer2LogHelper.steeringUp(Self);
            if (Self.showMoreCaptionStates) and (not (Self.captionAnimationHelper.isShowing())) then begin
                Self.captionAnimationHelper.update(TUnitLayer.MOVE_, Self.basicColorFactory.GREEN);
            end;
            Self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(Self, TCanvas.UP));
        end else begin
            Self.captionAnimationHelper.update(TCommonPhoneStrings.getInstance().FIRE, Self.basicColorFactory.RED);
            Self.rtsLayer2LogHelper.steeringFireOrStop(Self);
            Self.allStop();
            Self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(Self, TCanvas.KEY_NUM0));
            TTrackingEventHandler.getInstance().fireEvent(Self.getTrackingEvent());
        end;
end;
    

procedure TUnitLayer.move;
var
  velocityProperties: TVelocityProperties;
  velocityXScaled: Int64;
  velocityYScaled: Int64;
  geographicMapCompositeInterface: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  cellPosition: TGeographicMapCellPosition;
  allbinaryLayer: TAllBinaryLayer;
  tiledLayer: TAllBinaryTiledLayer;
  tiledLayerUtil: TTiledLayerUtil;
  x: Integer;
  y: Integer;
begin
        try
            velocityProperties := Self.getVehicleProperties().getVelocityProperties();
            velocityXScaled := Int64(Trunc(velocityProperties.getVelocityXBasicDecimalP().getScaled()));
            velocityYScaled := Int64(Trunc(velocityProperties.getVelocityYBasicDecimalP().getScaled()));
            Self.getUnitWaypointBehavior().move();
            if ((velocityXScaled) <> (0)) or ((velocityYScaled) <> (0)) then begin
                Self.getUnitWaypointBehavior().setMoving(True);
                geographicMapCompositeInterface := IGeographicMapCompositeInterface(Pointer(Self.allBinaryGameLayerManagerP));
                geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface()[0];
                Self.layerPartialCellPositionsUtil.getAllDXY(geographicMapInterface, Self, Integer(velocityXScaled), Integer(velocityYScaled), TUnitLayer.getPartialpositionlist());
                cellPosition := TGeographicMapCellPosition(TDropCellPositionHistory.getInstance().getCellPositionWithDrop(TUnitLayer.getPartialpositionlist()));
                if (cellPosition) = (Self.cellPositionFactory.NONE) then begin
                    tiledLayer := geographicMapInterface.getAllBinaryTiledLayer();
                    tiledLayerUtil := TTiledLayerUtil.getInstance();
                    x := (Self.x) + (Integer(velocityXScaled));
                    y := (Self.y) + (Integer(velocityYScaled));
                    x := tiledLayerUtil.keepOnMapX(tiledLayer, x, Self.getWidth());
                    y := tiledLayerUtil.keepOnMapY(tiledLayer, y, Self.getHeight());
                    Self.setPosition(x, y, Self.z);
                end else begin
                    allbinaryLayer := TDropCellPositionHistory.getInstance().getLayerInterface(cellPosition);
                    Self.getUnitWaypointBehavior().setMovingFromStopped(False);
                    Self.getUnitWaypointBehavior().addBuildingChase(allbinaryLayer, cellPosition);
                end;
            end;
            if Self.getUnitWaypointBehavior().isMoving() then begin
                TTrackingEventHandler.getInstance().fireEvent(Self.getTrackingEvent());
            end else begin
                Self.getUnitWaypointBehavior().setMovingFromStopped(False);
            end;
            if (Self.getUnitWaypointBehavior().isMovingFromStopped()) and (Self.isVisible()) then begin
                TSecondaryPlayerQueueFactory.getInstance().add(Self.moveSoundInterface);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'move', e);
            end;
        end;
end;
    

procedure TUnitLayer.allStop;
var
  velocityProperties: TVelocityProperties;
begin
        velocityProperties := Self.getVehicleProperties().getVelocityProperties();
        velocityProperties.getVelocityXBasicDecimalP().setint(0);
        velocityProperties.getVelocityYBasicDecimalP().setint(0);
end;
    

procedure TUnitLayer.paint(graphics: TGraphics);
var
  viewPosition: TViewPositionBase;
  viewX: Integer;
  viewY: Integer;
begin
        if Self.isVisible() then begin
            inherited paint(graphics);
            viewPosition := Self.getViewPosition();
            viewX := viewPosition.getX();
            viewY := viewPosition.getY();
            Self.decalAnimation.paintXY(graphics, viewX, viewY);
            Self.rangeAnimation.paintXY(graphics, viewX, viewY);
            Self.sensorRangeAnimation.paintXY(graphics, viewX, viewY);
            Self.damageFloatersPaintableInterface.paint(graphics);
            Self.healthBar.paint(graphics);
            Self.captionAnimationHelper.paintXY(graphics, viewX, viewY);
            Self.pathAnimation.paintXY(graphics, viewX, viewY);
            Self.resourceAnimation.paintXY(graphics, viewX, viewY);
        end;
end;
    

// throws Exception
procedure TUnitLayer.onBuildingEvent(event: TRTSLayerEvent);
var
  buildingLayer: TBuildingLayer;
begin
        buildingLayer := TBuildingLayer(event.getRtsLayer());
        Self.getUnitWaypointBehavior().moveAwayFromBuilding(buildingLayer);
end;
    

function TUnitLayer.getVehicleProperties: TVehicleProperties;
begin
        Exit(Self.vehicleProperties);
end;
    

// throws Exception
procedure TUnitLayer.damage(damage: Integer; damageType: Integer);
begin
        inherited damage(damage, damageType);
        Self.damageFloaters.add(damage);
        if (damage) > (0) then begin
            Self.getHealthInterface().damage(damage);
        end;
end;
    

// throws Exception
function TUnitLayer.getDamage(damageType: Integer): Integer;
begin
        Exit(0);
end;
    

// throws Exception
procedure TUnitLayer.setDestroyed(destroyed: Boolean);
var
  damage: Integer;
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, 'setDestroyed');
        inherited setDestroyed(destroyed);
        if Self.isDestroyed() then begin
            TWaypointEventHandlerFactory.getInstance(Self.getGroupInterface()[0]).removeListener(Self.getUnitWaypointBehavior());
            TTrackingEventHandler.getInstance().removeListener(Self);
            TBuildingEventHandler.getInstance().removeListener(Self);
            if not (not (Self.getHealthInterface().Finished)) then begin
                damage := Self.getHealthInterface().getMaxHealth();
                if (damage) > (10) then begin
                    TSecondaryPlayerQueueFactory.getInstance().add(TExplosionBasicSound.getInstance());
                    if (damage) < (100) then begin
                        Self.shakeListener.onSmallShakeEvent();
                        Self.vibration.vibrate(Self.duration, 0, 0);
                    end else if (damage) < (1000) then begin
                        Self.shakeListener.onMediumShakeEvent();
                        Self.vibration.vibrate((Self.duration) * (2), 0, 0);
                    end else if (damage) < (3000) then begin
                        Self.shakeListener.onLargeShakeEvent();
                        Self.vibration.vibrate((Self.duration) * (4), 0, 0);
                    end;
                end;
            end;
        end;
end;
    

function TUnitLayer.getLoad: Integer;
begin
        Exit(Self.resourceLoad);
end;
    

// throws Exception
procedure TUnitLayer.clearResourceAnimation;
begin
        Self.resourceAnimation := TIndexedAnimation(TNullIndexedAnimationFactory.getFactoryInstance().getInstance(0));
end;
    

// throws Exception
procedure TUnitLayer.setLoad(resource: Integer);
begin
        if (resource) > (0) then begin
            Self.resourceAnimation := Self.initResourceAnimation;
        end else begin
            Self.clearResourceAnimation();
        end;
        Self.resourceLoad := resource;
end;
    

procedure TUnitLayer.addLoad(resource: Integer);
begin
        Self.resourceLoad := (Self.resourceLoad) + (resource);
end;
    

// throws Exception
procedure TUnitLayer.handleCost(ownerLayer: IPathFindingLayerInterface);
begin
        if (Self.getLoad()) > (0) then begin
            Self.CAPITAL_EVENT.setValue(Self.getLoad());
            TCapitalEventHandlerFactory.getInstance(ownerLayer.getGroupInterface()[0]).fireEvent(Self.CAPITAL_EVENT);
            Self.setLoad(0);
        end;
end;
    

function TUnitLayer.createHudPaintable: TSelectionHudPaintable;
var
  rtsLayerHudPaintable: TRTSLayerHudPaintable;
begin
        rtsLayerHudPaintable := TRTSLayerHudPaintable.getInstance();
        rtsLayerHudPaintable.setBasicColorP(Self.allBinaryGameLayerManagerP.getForegroundBasicColor());
        rtsLayerHudPaintable.setRtsLayer(Self);
        Exit(rtsLayerHudPaintable);
end;
    

function TUnitLayer.getHudPaintable: TSelectionHudPaintable;
var
  rtsLayerHudPaintable: TRTSLayerHudPaintable;
begin
        rtsLayerHudPaintable := TRTSLayerHudPaintable.getInstance();
        Exit(rtsLayerHudPaintable);
end;
    

function TUnitLayer.getType: Integer;
begin
        Exit(TUnitLayer.getStaticType());
end;
    

class function TUnitLayer.getStaticType: Integer;
begin
        Exit(1);
end;
    

function TUnitLayer.getUnitWaypointBehavior: TUnitWaypointBehavior;
begin
        Exit(TUnitWaypointBehavior(Self.getWaypointBehavior()));
end;
    

function TUnitLayer.getTrackingEvent: TTrackingEvent;
begin
        Exit(Self.trackingEvent);
end;
    

function TUnitLayer.getCaptionAnimationHelper: TCaptionAnimationHelperBase;
begin
        Exit(Self.captionAnimationHelper);
end;
    

function TUnitLayer.isSelfUpgradeable: Boolean;
begin
        Exit(False);
end;
    

function TUnitLayer.getMaxResourceLoad: SmallInt;
begin
        Exit(Self.maxResourceLoad);
end;
    

class function TUnitLayer.getPartialpositionlist: TBasicArrayList;
begin
        Exit(TUnitLayer.partialPositionList);
end;

initialization
  TUnitLayer.partialPositionList := TBasicArrayListS.Create(4);
  TUnitLayer.SENSOR_RANGE_MULTIPLIER := 6;
  TUnitLayer.MOVE_ := 'Moving';

end.

