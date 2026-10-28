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
// package org.allbinary.game.layer
unit AdvancedRTSGameLayer;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, AnimationInterfaceFactoryInterface, NullAnimationFactory, NullIndexedAnimationFactory, ProceduralAnimationInterfaceFactoryInterface, ShakeAnimationListener, Direction, DirectionFactory, GameTypeFactory, DestroyedEvent, DestroyedEventHandler, DestroyedEventListenerInterface, Health, Group, GroupFactory, GameKeyEventFactory, NullRTSFormInputFactory, RTSFormInput, BuildingEventHandler, UnitLayer, Waypoint2LogHelper, Waypoint2SelectedLogHelper, WaypointBase, WaypointLogHelper, WaypointRunnableLogHelper, WaypointRunnableSelectedLogHelper, WaypointSelectedLogHelper, RemoteInfo, NullTickable, TickableInterface, TileLayerPositionIntoViewPosition, Rectangle, RectangleFactory, AllBinaryLayer, StringUtil, AngleInfo, FrameUtil, AllBinaryVibrationME, BasicGeographicMap, GeographicMapCellPosition, GeographicMapCompositeInterface, GeographicMapDirectionUtil, BasicArrayList, ViewPositionBase, PathFindingLayerInterface, AdvancedRTSProperties, RTSPlayerLayerInterface, WaypointBehaviorBase, RTSLayer;

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

  TAdvancedRTSGameLayer = class(TRTSLayer, IDestroyedEventListenerInterface)
  public
    shakeListener: TShakeAnimationListener;
    vibration: TAllBinaryVibrationME;
    duration: Integer;
    parentLayer: IPathFindingLayerInterface;
    waypointBehaviorBase: ITickableInterface;
    procedure InitFields;
        class function createSimulated: TAdvancedRTSGameLayer; static;
        constructor Create(remoteInfo: TRemoteInfo; parentLayer: IPathFindingLayerInterface; advancedRTSProperties: TAdvancedRTSProperties; groupInterface: TArray<TGroup>; rootName: string; name: string; healthInterface: THealth; rtsFormInput: TRTSFormInput; animationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; emptyAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; baseAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; buildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; verticleBuildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface: IProceduralAnimationInterfaceFactoryInterface; rectangle: TRectangle; x: Integer; y: Integer; viewPosition: TViewPositionBase);
        procedure updateWaypointBehavior(geographicMapInterface: TBasicGeographicMap); virtual;
        procedure initVisibility(rtsPlayerLayerInterface: IRTSPlayerLayerInterface); virtual;
        procedure construct(rtsPlayerLayerInterface: IRTSPlayerLayerInterface); virtual;
        procedure setDestroyed(destroyed: Boolean); virtual;
        function getParentLayer: IPathFindingLayerInterface; virtual;
        procedure setParentLayer(parentLayer: IPathFindingLayerInterface); virtual;
        function getWaypointBehavior: TWaypointBehaviorBase; virtual;
        procedure setWaypointBehavior(unitWaypointHelper: TWaypointBehaviorBase); virtual;
        function getWaypointLogHelper: TWaypointLogHelper; virtual;
        function getWaypoint2LogHelper: TWaypoint2LogHelper; virtual;
        function getWaypointRunnableLogHelper: TWaypointRunnableLogHelper; virtual;
        function shouldAddWaypointFromBuilding: Boolean; virtual;
        function isWaypointListEmptyOrOnlyTargets: Boolean; virtual;
        function buildingChase(allbinaryLayer: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition): Boolean; virtual;
        function getSurroundingGeographicMapCellPositionList: TBasicArrayList; virtual;
        procedure setSelected(selected: Boolean); virtual;
        procedure onDestroyed(destroyedEvent: TDestroyedEvent); virtual;
  end;

implementation
uses
  NullPathFindingLayer, AdvancedRTSPlayerLayerInterface, RTSLayerUtil;



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


procedure TAdvancedRTSGameLayer.InitFields;
begin
  
  
  
  Self.parentLayer := TNullPathFindingLayer.NULL_PATH_FINDING_LAYER;
  Self.waypointBehaviorBase := TNullTickable.getInstance();
end;
    

// throws Exception
class function TAdvancedRTSGameLayer.createSimulated: TAdvancedRTSGameLayer;
var
  nullAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface;
  nullIndexedAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface;
begin
        nullAnimationInterfaceFactoryInterface := TNullAnimationFactory.getFactoryInstance();
        nullIndexedAnimationInterfaceFactoryInterface := TNullIndexedAnimationFactory.getFactoryInstance();
        Exit(TAdvancedRTSGameLayer.Create(TRemoteInfo.REMOTE_INFO, TNullPathFindingLayer.NULL_PATH_FINDING_LAYER, TAdvancedRTSProperties.createPropertiesSimulated(), TGroupFactory.getInstance().NULL_GROUP_ARRAY, TStringUtil.getInstance().EMPTY_STRING, TStringUtil.getInstance().EMPTY_STRING, THealth.NULL_HEALTH, TNullRTSFormInputFactory.getInstance(), nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, TNullIndexedAnimationFactory.getFactoryInstance(), TRectangleFactory.SINGLETON, 0, 0, TTileLayerPositionIntoViewPosition.Create()));
end;
    

constructor TAdvancedRTSGameLayer.Create(remoteInfo: TRemoteInfo; parentLayer: IPathFindingLayerInterface; advancedRTSProperties: TAdvancedRTSProperties; groupInterface: TArray<TGroup>; rootName: string; name: string; healthInterface: THealth; rtsFormInput: TRTSFormInput; animationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; emptyAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; baseAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; buildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; verticleBuildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface: IProceduralAnimationInterfaceFactoryInterface; rectangle: TRectangle; x: Integer; y: Integer; viewPosition: TViewPositionBase);
begin
        inherited Create(remoteInfo, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition);
        InitFields;
        Self.setVisible(False);
        Self.setWaypointBehavior(TWaypointBehaviorBase.Create());
        Self.shakeListener := advancedRTSProperties.shakeListener;
        Self.vibration := advancedRTSProperties.vibration;
        Self.duration := advancedRTSProperties.duration;
        Self.setParentLayer(parentLayer);
end;
    

// throws Exception
procedure TAdvancedRTSGameLayer.updateWaypointBehavior(geographicMapInterface: TBasicGeographicMap);
begin
        inherited updateWaypointBehavior(geographicMapInterface);
        Self.getWaypointBehavior().getWaypoint().setAllBinaryGameLayerManager(Self.allBinaryGameLayerManagerP);
end;
    

procedure TAdvancedRTSGameLayer.initVisibility(rtsPlayerLayerInterface: IRTSPlayerLayerInterface);
var
  advancedRTSPlayerLayerInterface: IAdvancedRTSPlayerLayerInterface;
begin
        advancedRTSPlayerLayerInterface := IAdvancedRTSPlayerLayerInterface(Pointer(rtsPlayerLayerInterface));
        if (advancedRTSPlayerLayerInterface.isLocalPlayer()) or ((advancedRTSPlayerLayerInterface.getGameType()) = (TGameTypeFactory.getInstance().BOT)) then begin
            Self.setVisible(True);
        end else begin
            Self.setVisible(False);
        end;
end;
    

// throws Exception
procedure TAdvancedRTSGameLayer.construct(rtsPlayerLayerInterface: IRTSPlayerLayerInterface);
begin
        inherited construct(rtsPlayerLayerInterface);
        Self.initVisibility(rtsPlayerLayerInterface);
        TBuildingEventHandler.getInstance().addListenerInterface(Self.getWaypointBehavior().getWaypoint());
end;
    

// throws Exception
procedure TAdvancedRTSGameLayer.setDestroyed(destroyed: Boolean);
begin
        inherited setDestroyed(destroyed);
        if Self.isDestroyed() then begin
            TBuildingEventHandler.getInstance().removeListener(Self.getWaypointBehavior().getWaypoint());
            TBuildingEventHandler.getInstance().removeListener(Self);
            TDestroyedEventHandler.getInstance().addListener(Self);
            TRTSLayerUtil.getInstance().destroyAndClear(Self.getWaypointBehavior().getOwnedWaypointList());
        end;
end;
    

function TAdvancedRTSGameLayer.getParentLayer: IPathFindingLayerInterface;
begin
        Exit(Self.parentLayer);
end;
    

procedure TAdvancedRTSGameLayer.setParentLayer(parentLayer: IPathFindingLayerInterface);
begin
        Self.parentLayer := parentLayer;
end;
    

function TAdvancedRTSGameLayer.getWaypointBehavior: TWaypointBehaviorBase;
begin
        Exit(TWaypointBehaviorBase(Self.waypointBehaviorBase));
end;
    

procedure TAdvancedRTSGameLayer.setWaypointBehavior(unitWaypointHelper: TWaypointBehaviorBase);
begin
        Self.waypointBehaviorBase := unitWaypointHelper;
end;
    

function TAdvancedRTSGameLayer.getWaypointLogHelper: TWaypointLogHelper;
begin
        Exit(Self.waypointLogHelperP);
end;
    

function TAdvancedRTSGameLayer.getWaypoint2LogHelper: TWaypoint2LogHelper;
begin
        Exit(Self.waypoint2LogHelperP);
end;
    

function TAdvancedRTSGameLayer.getWaypointRunnableLogHelper: TWaypointRunnableLogHelper;
begin
        Exit(Self.waypointRunnableLogHelperP);
end;
    

function TAdvancedRTSGameLayer.shouldAddWaypointFromBuilding: Boolean;
var
  parentAdvancedRTSGameLayer: TAdvancedRTSGameLayer;
begin
        if (Self.parentLayer) <> (TNullPathFindingLayer.NULL_PATH_FINDING_LAYER) then begin
            parentAdvancedRTSGameLayer := TAdvancedRTSGameLayer(Self.parentLayer);
            if (parentAdvancedRTSGameLayer.getType()) <> (TUnitLayer.getStaticType()) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

function TAdvancedRTSGameLayer.isWaypointListEmptyOrOnlyTargets: Boolean;
begin
        if (Self.getType()) <> (TUnitLayer.getStaticType()) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

// throws Exception
function TAdvancedRTSGameLayer.buildingChase(allbinaryLayer: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition): Boolean;
var
  geographicMapCellPosition: TGeographicMapCellPosition;
  buildingDirection: TDirection;
  angleInfo: TAngleInfo;
  angle: Integer;
  gameKeyEventFactory: TGameKeyEventFactory;
begin
        geographicMapCellPosition := Self.getCurrentGeographicMapCellPosition();
        buildingDirection := TGeographicMapDirectionUtil.getInstance().getDirectionFromCellPositionToAdjacentCellPosition(geographicMapCellPosition, cellPosition);
        angleInfo := Self.getRotationAnimationInterface().getAngleInfoP();
        angle := TFrameUtil.getInstance().adjustAngleToFrameAngle((angleInfo.getAngle()) + (90));
        gameKeyEventFactory := TGameKeyEventFactory.getInstance();
        if (buildingDirection) = (TDirectionFactory.getInstance().UP) then begin
            Self.rtsLayer2LogHelper.buildingAbove(Self);
            if ((angle) > (180)) and ((angle) < (360)) then begin
                Self.rtsLayer2LogHelper.buildingChaseLeft(Self, angle);
                Self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(Self, TCanvas.LEFT));
                if (angle) <= (190) then begin
                    Exit(True);
                end;
            end else begin
                Self.rtsLayer2LogHelper.buildingChaseRight(Self, angle);
                Self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(Self, TCanvas.RIGHT));
                if (angle) >= (170) then begin
                    Exit(True);
                end;
            end;
        end else if (buildingDirection) = (TDirectionFactory.getInstance().DOWN) then begin
            Self.rtsLayer2LogHelper.buildingDown(Self);
            if ((angle) > (180)) and ((angle) < (360)) then begin
                Self.rtsLayer2LogHelper.buildingChaseLeft(Self, angle);
                Self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(Self, TCanvas.RIGHT));
                if (angle) > (315) then begin
                    Exit(True);
                end;
            end else begin
                Self.rtsLayer2LogHelper.buildingChaseRight(Self, angle);
                Self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(Self, TCanvas.LEFT));
                if (angle) < (45) then begin
                    Exit(True);
                end;
            end;
        end else if (buildingDirection) = (TDirectionFactory.getInstance().LEFT) then begin
            Self.rtsLayer2LogHelper.buildingLeft();
            if ((angle) > (90)) and ((angle) < (270)) then begin
                Self.rtsLayer2LogHelper.buildingChaseDown(Self, angle);
                Self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(Self, TCanvas.LEFT));
                if (angle) < (135) then begin
                    Exit(True);
                end;
            end else begin
                Self.rtsLayer2LogHelper.buildingChaseUp(Self, angle);
                Self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(Self, TCanvas.RIGHT));
                if (angle) > (45) then begin
                    Exit(True);
                end;
            end;
        end else if (buildingDirection) = (TDirectionFactory.getInstance().RIGHT) then begin
            Self.rtsLayer2LogHelper.buildingRight();
            if ((angle) > (90)) and ((angle) < (270)) then begin
                Self.rtsLayer2LogHelper.buildingChaseDown(Self, angle);
                Self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(Self, TCanvas.RIGHT));
                if (angle) > (225) then begin
                    Exit(True);
                end;
            end else begin
                Self.rtsLayer2LogHelper.buildingChaseUp(Self, angle);
                Self.getGameKeyEventList().add(gameKeyEventFactory.getInstanceForKey(Self, TCanvas.LEFT));
                if ((angle) < (315)) and ((angle) > (180)) then begin
                    Exit(True);
                end;
            end;
        end else begin
            Exit(True);
        end;
        Exit(False);
end;
    

// throws Exception
function TAdvancedRTSGameLayer.getSurroundingGeographicMapCellPositionList: TBasicArrayList;
var
  geographicMapCompositeInterface: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
begin
        geographicMapCompositeInterface := IGeographicMapCompositeInterface(Pointer(Self.allBinaryGameLayerManagerP));
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface()[0];
        Self.geographicMapCellPositionAreaBase.update(geographicMapInterface);
        Exit(Self.geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList());
end;
    

procedure TAdvancedRTSGameLayer.setSelected(selected: Boolean);
begin
        inherited setSelected(selected);
        if Self.debug then begin
            if selected then begin
                Self.waypointLogHelperP := TWaypointSelectedLogHelper.getInstance();
                Self.waypoint2LogHelperP := TWaypoint2SelectedLogHelper.getInstance();
                Self.waypointRunnableLogHelperP := TWaypointRunnableSelectedLogHelper.getInstance();
            end else begin
                Self.waypointLogHelperP := TWaypointLogHelper.getInstance();
                Self.waypoint2LogHelperP := TWaypoint2LogHelper.getInstance();
                Self.waypointRunnableLogHelperP := TWaypointRunnableLogHelper.getInstance();
            end;
        end;
end;
    

procedure TAdvancedRTSGameLayer.onDestroyed(destroyedEvent: TDestroyedEvent);
var
  layerInterface: TAllBinaryLayer;
  waypoint: TWaypointBase;
begin
        try
            layerInterface := destroyedEvent.getLayerInterface();
            if (layerInterface) = (Self) then begin
                TDestroyedEventHandler.getInstance().removeListener(Self);
                waypoint := TWaypointBase(Self.getWaypointBehavior().getWaypoint());
                waypoint.reset();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'onDestroyed', e);
            end;
        end;
end;

initialization

end.

