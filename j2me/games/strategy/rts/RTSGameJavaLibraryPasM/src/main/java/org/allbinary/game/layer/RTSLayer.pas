{
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit RTSLayer;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, RTSFormInput, MultiPlayerGameLayer, Animation, AnimationInterfaceFactoryInterface, IndexedAnimation, NullAnimationFactory, NullIndexedAnimationFactory, ProceduralAnimationInterfaceFactoryInterface, RotationAnimation, CaptionAnimationHelperBase, DestroyedLayerProcessor, Health, Group, GroupFactory, GameInputInterface, GameInputProcessor, GameInputProcessorUtil, GameKeyEventSourceInterface, InputFactory, NullRTSFormInputFactory, Waypoint2LogHelper, WaypointLogHelper, WaypointRunnableLogHelper, TickableInterface, TrackingEvent, TileLayerPositionIntoViewPosition, Rectangle, RectangleFactory, ScrollSelectionForm, AllBinaryLayer, AllBinaryLayerManager, BasicGeographicMap, TimeDelayHelper, ViewPositionEventHandler, RemoteInfo, StdUtil, StringUtil, LayerDistanceUtil, GeographicMapCellHistory, GeographicMapCellPosition, GeographicMapCompositeInterface, ABHashtable, BasicArrayList, ViewPositionBase, RTSLayer2LogHelper, GeographicMapCellPositionAreaBase, AllBinaryGameLayerManager, RTSPlayerLayerInterface, RTSLayerUtil, PathFindingLayerInterface, SelectionHudPaintable, WaypointBehaviorBase, RTSInterface;

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

  TRTSLayer = class(TMultiPlayerGameLayer, ITickableInterface, IGameInputInterface, IGameKeyEventSourceInterface, IRTSInterface, IPathFindingLayerInterface)
  public
    debug: Boolean;
    showMoreCaptionStates: Boolean;
    inputProcessorArray: TArray<TGameInputProcessor>;
    rtsLayer2LogHelper: TRTSLayer2LogHelper;
    waypointLogHelperP: TWaypointLogHelper;
    waypoint2LogHelperP: TWaypoint2LogHelper;
    waypointRunnableLogHelperP: TWaypointRunnableLogHelper;
    rtsFormInput: TRTSFormInput;
    verticleBuildAnimationInterface: TIndexedAnimation;
    rangeAnimation: TAnimation;
    initRangeAnimation: TAnimation;
    sensorRangeAnimation: TAnimation;
    initSensorRangeAnimation: TAnimation;
    baseAnimationInterface: TAnimation;
    buildFrameTimeHelper: TTimeDelayHelper;
    buildAnimationInterface: TAnimation;
    animationInterface: TAnimation;
    initAnimationInterface: TIndexedAnimation;
    indexedButShouldBeRotationAnimationInterface: TIndexedAnimation;
    emptyAnimationInterface: TIndexedAnimation;
    destroyAnimationInterface: TIndexedAnimation;
    fireTimeHelper: TTimeDelayHelper;
    rootName: string;
    hashtable: TABHashtable<TObject, TObject>;
    BUILD_VALUE: Integer;
    geographicMapCellPositionAreaBase: TGeographicMapCellPositionAreaBase;
    healthInterface: THealth;
    level: Integer;
    maxLevel: Integer;
    hackVerticleBuild: Integer;
    slightAngle: Integer;
    percentCompleteP: Integer;
    destroyed: Boolean;
    selected: Boolean;
    rtsLayerUtil: TRTSLayerUtil;
    layerDistanceUtil: TLayerDistanceUtil;
    class var id: Integer;
    class var MAIN_INDEX: Integer;
    class var SECONDARY_INDEX: Integer;
    procedure InitFields;
        class function createSimulatedInstance(remoteInfo: TRemoteInfo): TRTSLayer; static;
        constructor Create(remoteInfo: TRemoteInfo; groupInterface: TArray<TGroup>; rootName: string; name: string; healthInterface: THealth; rtsFormInput: TRTSFormInput; animationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; emptyAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; baseAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; buildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; verticleBuildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface: IProceduralAnimationInterfaceFactoryInterface; rectangle: TRectangle; x: Integer; y: Integer; viewPosition: TViewPositionBase);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager: TAllBinaryGameLayerManager); virtual;
        procedure updateWaypointBehavior(geographicMapInterface: TBasicGeographicMap); virtual;
        procedure construct(rtsPlayerLayerInterface: IRTSPlayerLayerInterface); virtual;
        procedure select; virtual;
        procedure deselect; virtual;
        procedure setSelected(selected: Boolean); virtual;
        function isSelected: Boolean; virtual;
        function getPercentComplete: Integer; virtual;
        function getScrollSelectionForm: TScrollSelectionForm; virtual;
        procedure initInputProcessors; virtual;
        procedure processBuiltTick(allBinaryLayerManager: TAllBinaryLayerManager); virtual;
        procedure processTick(allBinaryLayerManager: TAllBinaryLayerManager); virtual;
        procedure processInput(layerManager: TAllBinaryLayerManager); virtual;
        procedure reload; virtual;
        procedure onMovement(trackingEvent: TTrackingEvent); virtual;
        procedure onMovementFound(trackingEvent: TTrackingEvent); virtual;
        procedure paint(graphics: TGraphics); virtual;
        procedure damage(damage: Integer; damageType: Integer); virtual;
        function getSourceId: Integer; virtual;
        procedure downgrade; virtual;
        procedure upgrade; virtual;
        function isCompleted: Boolean; virtual;
        procedure build;
        function isSelfUpgradeable: Boolean; virtual;
        function getCost: Integer; virtual;
        function getDowngradeCost: Integer; virtual;
        function getUpgradeCost: Integer; virtual;
        function isUpgradeable: Boolean; virtual;
        function isDowngradeable: Boolean; virtual;
        function getLevel: Integer; virtual;
        procedure setLevel(level: Integer); virtual;
        function getVerticleBuildAnimationInterface: TAnimation; virtual;
        function getAnimationInterface: TAnimation; virtual;
        procedure setAnimationInterface(animationInterface: TAnimation); virtual;
        procedure setTarget(targetGameLayer: IPathFindingLayerInterface); virtual;
        function createHudPaintable: TSelectionHudPaintable; virtual;
        function getHudPaintable: TSelectionHudPaintable; virtual;
        function getMaxLevel: Integer; virtual;
        procedure setMaxLevel(maxLevel: Integer); virtual;
        function getHealthInterface: THealth; virtual;
        procedure setHealthInterface(healthInterface: THealth); virtual;
        function getRTSFormInput: TRTSFormInput; virtual;
        function isDestroyed: Boolean; virtual;
        procedure setDestroyed(destroyed: Boolean); virtual;
        function getEndGeographicMapCellPositionList: TBasicArrayList; virtual;
        function getGeographicMapCellPositionArea: TGeographicMapCellPositionAreaBase; virtual;
        function shouldHandleStartSameAsEnd: Boolean; virtual;
        procedure handleCost(ownerLayer: IPathFindingLayerInterface); virtual;
        function getWaypointBehavior: TWaypointBehaviorBase; virtual;
        function getParentLayer: IPathFindingLayerInterface; virtual;
        function getRTSLayer2LogHelper: TRTSLayer2LogHelper; virtual;
        function getWaypointLogHelper: TWaypointLogHelper; virtual;
        function getWaypoint2LogHelper: TWaypoint2LogHelper; virtual;
        function getWaypointRunnableLogHelper: TWaypointRunnableLogHelper; virtual;
        function shouldAddWaypointFromBuilding: Boolean; virtual;
        function getCaptionAnimationHelper: TCaptionAnimationHelperBase; virtual;
        function isShowMoreCaptionStates: Boolean; virtual;
        procedure init(geographicMapCellHistory: TGeographicMapCellHistory; geographicMapCellPositionBasicArrayList: TBasicArrayList); virtual;
        function getCurrentGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        function getTopLeftGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        function getMoveOutOfBuildAreaPath(geographicMapCellPosition: TGeographicMapCellPosition): TBasicArrayList; virtual;
        procedure setClosestGeographicMapCellHistory(pathsList: TBasicArrayList); virtual;
        procedure teleportTo(geographicMapCellPosition: TGeographicMapCellPosition); virtual;
        procedure setLoad(resource: Integer); virtual;
        function getSurroundingGeographicMapCellPositionList: TBasicArrayList; virtual;
        procedure trackTo(reason: string); virtual;
        procedure trackToDXY(dx: Integer; dy: Integer); virtual;
        function isWaypointListEmptyOrOnlyTargets: Boolean; virtual;
        function getTrackingEvent: TTrackingEvent; virtual;
        function buildingChase(allbinaryLayer: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition): Boolean; virtual;
        procedure allStop; virtual;
        class function getMinStaticType: Integer; static;
        class function getMaxStaticType: Integer; static;
        class function isRTSLayer(layerInterface: TAllBinaryLayer): Boolean; static;
        function implmentsTickableInterface: Boolean; virtual;
        function implmentsGameInputInterface: Boolean; virtual;
        function getRootName: string; virtual;
        function getRotationAnimationInterface: TRotationAnimation; virtual;
        procedure setFrame(index: Integer); virtual;
        procedure setRotationAnimationInterface(rotationAnimationInterface: TRotationAnimation); virtual;
  end;

implementation
uses
  GeographicMapCellPositionArea, AllBinaryTiledLayer;



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


procedure TRTSLayer.InitFields;
begin
  Self.debug := True;
  Self.showMoreCaptionStates := Self.debug;
  Self.inputProcessorArray := TJava.NewArray<TGameInputProcessor>(TInputFactory.getInstance().MAX);
  Self.rtsLayer2LogHelper := TRTSLayer2LogHelper.getInstance();
  Self.waypointLogHelperP := TWaypointLogHelper.getInstance();
  Self.waypoint2LogHelperP := TWaypoint2LogHelper.getInstance();
  Self.waypointRunnableLogHelperP := TWaypointRunnableLogHelper.getInstance();
  
  
  
  
  
  
  
  Self.buildFrameTimeHelper := TTimeDelayHelper.Create(50);
  
  
  
  
  
  
  Self.fireTimeHelper := TTimeDelayHelper.Create(700);
  
  Self.hashtable := TStdUtil.getInstance().createHashtable();
  Self.BUILD_VALUE := 63;
  
  Self.healthInterface := THealth.NULL_HEALTH;
  Self.level := 1;
  Self.maxLevel := 1;
  Self.hackVerticleBuild := Self.BUILD_VALUE;
  Self.slightAngle := 0;
  
  Self.destroyed := False;
  Self.selected := False;
  Self.rtsLayerUtil := TRTSLayerUtil.getInstance();
  Self.layerDistanceUtil := TLayerDistanceUtil.getInstance();
end;
    

// throws Exception
class function TRTSLayer.createSimulatedInstance(remoteInfo: TRemoteInfo): TRTSLayer;
var
  nullAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface;
  nullIndexedAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface;
begin
        nullAnimationInterfaceFactoryInterface := TNullAnimationFactory.getFactoryInstance();
        nullIndexedAnimationInterfaceFactoryInterface := TNullIndexedAnimationFactory.getFactoryInstance();
        Exit(TRTSLayer.Create(TRemoteInfo.REMOTE_INFO, TGroupFactory.getInstance().NULL_GROUP_ARRAY, TStringUtil.getInstance().EMPTY_STRING, TStringUtil.getInstance().EMPTY_STRING, THealth.NULL_HEALTH, TNullRTSFormInputFactory.getInstance(), nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, TNullIndexedAnimationFactory.getFactoryInstance(), TRectangleFactory.SINGLETON, 0, 0, TTileLayerPositionIntoViewPosition.Create()));
end;
    

constructor TRTSLayer.Create(remoteInfo: TRemoteInfo; groupInterface: TArray<TGroup>; rootName: string; name: string; healthInterface: THealth; rtsFormInput: TRTSFormInput; animationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; emptyAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; baseAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; buildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; verticleBuildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface: IProceduralAnimationInterfaceFactoryInterface; rectangle: TRectangle; x: Integer; y: Integer; viewPosition: TViewPositionBase);
var
  animation: TAnimation;
begin
        inherited Create(remoteInfo, groupInterface, name, rectangle, viewPosition);
        InitFields;
        Self.initInputProcessors();
        Self.rootName := rootName;
        Self.healthInterface := healthInterface;
        Self.rtsFormInput := rtsFormInput;
        Self.setPosition(x, y, Self.z);
        Self.verticleBuildAnimationInterface := TIndexedAnimation(verticleBuildAnimationInterfaceFactoryInterface.getInstance(0));
        Self.buildAnimationInterface := buildAnimationInterfaceFactoryInterface.getInstance(0);
        Self.baseAnimationInterface := baseAnimationInterfaceFactoryInterface.getInstance(0);
        Self.emptyAnimationInterface := TIndexedAnimation(emptyAnimationInterfaceFactoryInterface.getInstance(0));
        Self.indexedButShouldBeRotationAnimationInterface := TIndexedAnimation(animationInterfaceFactoryInterface.getInstance(0));
        Self.initAnimationInterface := Self.indexedButShouldBeRotationAnimationInterface;
        Self.destroyAnimationInterface := TIndexedAnimation(proceduralAnimationInterfaceFactoryInterface.getInstanceAnimation(Self.indexedButShouldBeRotationAnimationInterface));
        animation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
        Self.rangeAnimation := animation;
        Self.initRangeAnimation := animation;
        Self.sensorRangeAnimation := animation;
        Self.initSensorRangeAnimation := animation;
        Self.animationInterface := Self.initAnimationInterface;
        Self.geographicMapCellPositionAreaBase := TGeographicMapCellPositionArea.Create(Self);
end;
    

// throws Exception
procedure TRTSLayer.setAllBinaryGameLayerManager(allBinaryGameLayerManager: TAllBinaryGameLayerManager);
var
  geographicMapCompositeInterface: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  tiledLayer: TAllBinaryTiledLayer;
  viewPosition2: TTileLayerPositionIntoViewPosition;
begin
        inherited setAllBinaryGameLayerManager(allBinaryGameLayerManager);
        geographicMapCompositeInterface := IGeographicMapCompositeInterface(Pointer(Self.allBinaryGameLayerManagerP));
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface()[0];
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer();
        viewPosition2 := TTileLayerPositionIntoViewPosition(Self.getViewPosition());
        viewPosition2.setTiledLayer(tiledLayer);
        Self.updateWaypointBehavior(geographicMapInterface);
end;
    

// throws Exception
procedure TRTSLayer.updateWaypointBehavior(geographicMapInterface: TBasicGeographicMap);
begin
        Self.geographicMapCellPositionAreaBase.update(geographicMapInterface);
end;
    

// throws Exception
procedure TRTSLayer.construct(rtsPlayerLayerInterface: IRTSPlayerLayerInterface);
begin
        TViewPositionEventHandler.getInstance().addListener(TAllBinaryLayer(Self));
        Self.animationInterface := Self.buildAnimationInterface;
        Self.hackVerticleBuild := 0;
end;
    

procedure TRTSLayer.select;
begin
        Self.rangeAnimation := Self.initRangeAnimation;
        Self.sensorRangeAnimation := Self.initSensorRangeAnimation;
        Self.setSelected(True);
end;
    

procedure TRTSLayer.deselect;
var
  animation: TAnimation;
begin
        animation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
        Self.rangeAnimation := animation;
        Self.sensorRangeAnimation := animation;
        Self.setSelected(False);
end;
    

procedure TRTSLayer.setSelected(selected: Boolean);
begin
        Self.selected := selected;
end;
    

function TRTSLayer.isSelected: Boolean;
begin
        Exit(Self.selected);
end;
    

function TRTSLayer.getPercentComplete: Integer;
begin
        Exit(Self.percentCompleteP);
end;
    

function TRTSLayer.getScrollSelectionForm: TScrollSelectionForm;
begin
        Exit(TScrollSelectionForm.getNullScrollSelectionForm());
end;
    

procedure TRTSLayer.initInputProcessors;
begin
        TGameInputProcessorUtil.init(Self.inputProcessorArray);
end;
    

// throws Exception
procedure TRTSLayer.processBuiltTick(allBinaryLayerManager: TAllBinaryLayerManager);
begin
        Self.animationInterface := Self.indexedButShouldBeRotationAnimationInterface;
end;
    

procedure TRTSLayer.processTick(allBinaryLayerManager: TAllBinaryLayerManager);
begin
        try
            if Self.isCompleted() then begin
                Self.processBuiltTick(allBinaryLayerManager);
            end else begin
                Self.build();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'processTick', e);
            end;
        end;
end;
    

// throws Exception
procedure TRTSLayer.processInput(layerManager: TAllBinaryLayerManager);
begin
end;
    

procedure TRTSLayer.reload;
begin
end;
    

procedure TRTSLayer.onMovement(trackingEvent: TTrackingEvent);
begin
end;
    

// throws Exception
procedure TRTSLayer.onMovementFound(trackingEvent: TTrackingEvent);
begin
end;
    

procedure TRTSLayer.paint(graphics: TGraphics);
var
  viewPosition: TViewPositionBase;
  viewX: Integer;
  viewY: Integer;
begin
        inherited paintFirst(graphics);
        viewPosition := Self.getViewPosition();
        viewX := viewPosition.getX();
        viewY := viewPosition.getY();
        Self.getAnimationInterface().paintXY(graphics, viewX, viewY);
end;
    

// throws Exception
procedure TRTSLayer.damage(damage: Integer; damageType: Integer);
begin
end;
    

function TRTSLayer.getSourceId: Integer;
begin
        Exit(TRTSLayer.id);
end;
    

procedure TRTSLayer.downgrade;
begin
        Self.rtsLayerUtil.downgrade(Self);
end;
    

procedure TRTSLayer.upgrade;
begin
        Self.rtsLayerUtil.upgrade(Self);
end;
    

function TRTSLayer.isCompleted: Boolean;
begin
        if (Self.hackVerticleBuild) < (Self.BUILD_VALUE) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;
    

// throws Exception
procedure TRTSLayer.build;
begin
        if Self.buildFrameTimeHelper.isTimeTNT() then begin
            Self.animationInterface := Self.buildAnimationInterface;
            Self.verticleBuildAnimationInterface.nextFrame();
            Inc(Self.hackVerticleBuild);
        end;
        Self.percentCompleteP := ((100) * (Self.hackVerticleBuild)) div (Self.BUILD_VALUE);
        Self.getHudPaintable().updateInfo();
end;
    

function TRTSLayer.isSelfUpgradeable: Boolean;
begin
        Exit(True);
end;
    

function TRTSLayer.getCost: Integer;
begin
        Exit(Self.rtsLayerUtil.getCost(Self));
end;
    

function TRTSLayer.getDowngradeCost: Integer;
begin
        Exit(Self.rtsLayerUtil.getDowngradeCost(Self));
end;
    

function TRTSLayer.getUpgradeCost: Integer;
begin
        Exit(Self.rtsLayerUtil.getUpgradeCost(Self));
end;
    

function TRTSLayer.isUpgradeable: Boolean;
begin
        if (Self.getLevel()) < (Self.getMaxLevel()) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TRTSLayer.isDowngradeable: Boolean;
begin
        if (Self.getLevel()) > (1) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TRTSLayer.getLevel: Integer;
begin
        Exit(Self.level);
end;
    

procedure TRTSLayer.setLevel(level: Integer);
begin
        Self.level := level;
end;
    

function TRTSLayer.getVerticleBuildAnimationInterface: TAnimation;
begin
        Exit(Self.verticleBuildAnimationInterface);
end;
    

function TRTSLayer.getAnimationInterface: TAnimation;
begin
        Exit(Self.animationInterface);
end;
    

procedure TRTSLayer.setAnimationInterface(animationInterface: TAnimation);
begin
        Self.animationInterface := animationInterface;
end;
    

// throws Exception
procedure TRTSLayer.setTarget(targetGameLayer: IPathFindingLayerInterface);
var
  anotherTargetDistance: Integer;
  waypointBehaviorBase: TWaypointBehaviorBase;
begin
        anotherTargetDistance := Self.layerDistanceUtil.getDistance(TAllBinaryLayer(Self), TAllBinaryLayer(targetGameLayer));
        waypointBehaviorBase := Self.getWaypointBehavior();
        waypointBehaviorBase.setTargetWithDistance(IPathFindingLayerInterface(Pointer(targetGameLayer)), anotherTargetDistance);
end;
    

function TRTSLayer.createHudPaintable: TSelectionHudPaintable;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TRTSLayer.getHudPaintable: TSelectionHudPaintable;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TRTSLayer.getMaxLevel: Integer;
begin
        Exit(Self.maxLevel);
end;
    

procedure TRTSLayer.setMaxLevel(maxLevel: Integer);
begin
        Self.maxLevel := maxLevel;
end;
    

function TRTSLayer.getHealthInterface: THealth;
begin
        Exit(Self.healthInterface);
end;
    

procedure TRTSLayer.setHealthInterface(healthInterface: THealth);
begin
        Self.healthInterface := healthInterface;
end;
    

function TRTSLayer.getRTSFormInput: TRTSFormInput;
begin
        Exit(Self.rtsFormInput);
end;
    

// throws Exception
function TRTSLayer.isDestroyed: Boolean;
begin
        Exit(Self.destroyed);
end;
    

// throws Exception
procedure TRTSLayer.setDestroyed(destroyed: Boolean);
begin
        Self.destroyed := destroyed;
        if Self.isDestroyed() then begin
            TDestroyedLayerProcessor.getInstance().add(Self);
            TViewPositionEventHandler.getInstance().removeListener(Self);
        end;
end;
    

function TRTSLayer.getEndGeographicMapCellPositionList: TBasicArrayList;
begin
        Exit(Self.geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList());
end;
    

function TRTSLayer.getGeographicMapCellPositionArea: TGeographicMapCellPositionAreaBase;
begin
        Exit(Self.geographicMapCellPositionAreaBase);
end;
    

function TRTSLayer.shouldHandleStartSameAsEnd: Boolean;
begin
        Exit(True);
end;
    

// throws Exception
procedure TRTSLayer.handleCost(ownerLayer: IPathFindingLayerInterface);
begin
end;
    

function TRTSLayer.getWaypointBehavior: TWaypointBehaviorBase;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TRTSLayer.getParentLayer: IPathFindingLayerInterface;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TRTSLayer.getRTSLayer2LogHelper: TRTSLayer2LogHelper;
begin
        Exit(Self.rtsLayer2LogHelper);
end;
    

function TRTSLayer.getWaypointLogHelper: TWaypointLogHelper;
begin
        Exit(Self.waypointLogHelperP);
end;
    

function TRTSLayer.getWaypoint2LogHelper: TWaypoint2LogHelper;
begin
        Exit(Self.waypoint2LogHelperP);
end;
    

function TRTSLayer.getWaypointRunnableLogHelper: TWaypointRunnableLogHelper;
begin
        Exit(Self.waypointRunnableLogHelperP);
end;
    

function TRTSLayer.shouldAddWaypointFromBuilding: Boolean;
begin
        Exit(False);
end;
    

function TRTSLayer.getCaptionAnimationHelper: TCaptionAnimationHelperBase;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TRTSLayer.isShowMoreCaptionStates: Boolean;
begin
        Exit(Self.showMoreCaptionStates);
end;
    

// throws Exception
procedure TRTSLayer.init(geographicMapCellHistory: TGeographicMapCellHistory; geographicMapCellPositionBasicArrayList: TBasicArrayList);
begin
end;
    

// throws Exception
function TRTSLayer.getCurrentGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
function TRTSLayer.getTopLeftGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TRTSLayer.getMoveOutOfBuildAreaPath(geographicMapCellPosition: TGeographicMapCellPosition): TBasicArrayList;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
procedure TRTSLayer.setClosestGeographicMapCellHistory(pathsList: TBasicArrayList);
begin
end;
    

procedure TRTSLayer.teleportTo(geographicMapCellPosition: TGeographicMapCellPosition);
begin
end;
    

// throws Exception
procedure TRTSLayer.setLoad(resource: Integer);
begin
end;
    

// throws Exception
function TRTSLayer.getSurroundingGeographicMapCellPositionList: TBasicArrayList;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
procedure TRTSLayer.trackTo(reason: string);
begin
end;
    

// throws Exception
procedure TRTSLayer.trackToDXY(dx: Integer; dy: Integer);
begin
end;
    

function TRTSLayer.isWaypointListEmptyOrOnlyTargets: Boolean;
begin
        Exit(False);
end;
    

function TRTSLayer.getTrackingEvent: TTrackingEvent;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
function TRTSLayer.buildingChase(allbinaryLayer: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition): Boolean;
begin
        Exit(False);
end;
    

procedure TRTSLayer.allStop;
begin
end;
    

class function TRTSLayer.getMinStaticType: Integer;
begin
        Exit(1);
end;
    

class function TRTSLayer.getMaxStaticType: Integer;
begin
        Exit(4);
end;
    

class function TRTSLayer.isRTSLayer(layerInterface: TAllBinaryLayer): Boolean;
begin
        if ((layerInterface.getType()) >= (TRTSLayer.getMinStaticType())) and ((layerInterface.getType()) <= (TRTSLayer.getMaxStaticType())) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TRTSLayer.implmentsTickableInterface: Boolean;
begin
        Exit(True);
end;
    

function TRTSLayer.implmentsGameInputInterface: Boolean;
begin
        Exit(True);
end;
    

function TRTSLayer.getRootName: string;
begin
        Exit(Self.rootName);
end;
    

function TRTSLayer.getRotationAnimationInterface: TRotationAnimation;
begin
        Exit(TRotationAnimation(Self.indexedButShouldBeRotationAnimationInterface));
end;
    

procedure TRTSLayer.setFrame(index: Integer);
begin
        Self.getRotationAnimationInterface().setFrame(index);
end;
    

procedure TRTSLayer.setRotationAnimationInterface(rotationAnimationInterface: TRotationAnimation);
begin
        Self.indexedButShouldBeRotationAnimationInterface := rotationAnimationInterface;
end;

initialization
  TRTSLayer.id := 0;
  TRTSLayer.MAIN_INDEX := 0;
  TRTSLayer.SECONDARY_INDEX := 1;

end.

