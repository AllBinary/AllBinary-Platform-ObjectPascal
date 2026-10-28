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
unit UnitWaypointBehavior;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, PrimaryWaypointHelper, AdvancedRTSGameLayer, RTSLayerEvent, SensorAction, SensorActionFactory, WaypointBehaviorBase, BuildingLayer, CollidableDestroyableDamageableLayer, WaypointEventListenerInterface, BasicColorFactory, AllBinaryLayer, ForcedLogUtil, StringMaker, StringUtil, AllBinaryEventObject, EventStrings, GeographicMapCellHistory, GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory, CommonSeps, TimeDelayHelper, BasicArrayList, BasicArrayListD, BasicArrayListUtil, UnitLayer;

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

  TUnitWaypointBehavior = class(TWaypointBehaviorBase, IWaypointEventListenerInterface)
  public
    commonSeps: TCommonSeps;
    longWeaponRange: Integer;
    sensorAction: TSensorAction;
    completeTimeDelayHelper: TTimeDelayHelper;
    currentGeographicMapCellHistoryP: TGeographicMapCellHistory;
    lastPathGeographicMapCellPosition: TGeographicMapCellPosition;
    currentPathGeographicMapCellPosition: TGeographicMapCellPosition;
    FAKE_WAYPOINT_LAYER: TCollidableDestroyableDamageableLayer;
    targetList: TBasicArrayList;
    possibleTargetList: TBasicArrayList;
    associatedAdvancedRTSGameLayer: TUnitLayer;
    moving: Boolean;
    movingFromStopped: Boolean;
    waypointPathsListP: TBasicArrayList;
    currentTargetDistance: Integer;
    currentTargetLayerInterfaceP: TCollidableDestroyableDamageableLayer;
    trackingWaypoint: Boolean;
    repeatedToLong: TTimeDelayHelper;
    class var PATHING: string;
    procedure InitFields;
        constructor Create(associatedAdvancedRTSGameLayer: TUnitLayer; fakeWaypoint: TCollidableDestroyableDamageableLayer);
        procedure initRange(weaponRange: Integer); virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onWaypointEvent(event: TRTSLayerEvent); virtual;
        procedure addWaypointFromUser(advancedRTSGameLayer: TAdvancedRTSGameLayer); virtual;
        procedure addWaypointFromBuilding(advancedRTSGameLayer: TAdvancedRTSGameLayer);
        function isWaypointListEmptyOrOnlyTargets: Boolean; virtual;
        function insertWaypoint(index: Integer; rtsLayer: TCollidableDestroyableDamageableLayer): Boolean; virtual;
        procedure move; virtual;
        procedure setRandomGeographicMapCellHistory(pathsList: TBasicArrayList); virtual;
        procedure setGeographicMapCellHistoryPath(geographicMapCellPositionBasicArrayList: TBasicArrayList); virtual;
        function canInsertWaypoint(index: Integer; rtsLayer: TCollidableDestroyableDamageableLayer): Boolean; virtual;
        procedure addBuildingChase(allbinaryLayer: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition); virtual;
        procedure moveAwayFromBuilding(buildingLayer: TBuildingLayer); virtual;
        function needToMove: Boolean; virtual;
        function getMovementLogicAsString: string; virtual;
        function isMovingFromStopped: Boolean; virtual;
        procedure setMovingFromStopped(movingFromStopped: Boolean); virtual;
        procedure setWaypointPathsList(waypointPathsList: TBasicArrayList); virtual;
        function getWaypointPathsList: TBasicArrayList; virtual;
        function isMoving: Boolean; virtual;
        procedure setMoving(moving: Boolean); virtual;
        function isTrackingWaypoint: Boolean; virtual;
        function getPossibleTargetList: TBasicArrayList; virtual;
        procedure setLastPathGeographicMapCellPosition(lastPathGeographicMapCellPosition: TGeographicMapCellPosition); virtual;
        function getLastPathGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        procedure setCurrentPathGeographicMapCellPosition(currentPathGeographicMapCellPosition: TGeographicMapCellPosition); virtual;
        function getCurrentPathGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        procedure setSensorAction(sensorAction: TSensorAction); virtual;
        function getSensorAction: TSensorAction; virtual;
        procedure setCurrentTargetLayerInterface(currentTargetLayerInterface: TCollidableDestroyableDamageableLayer); virtual;
        function getCurrentTargetLayerInterface: TCollidableDestroyableDamageableLayer; virtual;
        procedure setCurrentTargetDistance(currentTargetDistance: Integer); virtual;
        function getCurrentTargetDistance: Integer; virtual;
        function getCompleteTimeDelayHelper: TTimeDelayHelper; virtual;
        function getCurrentGeographicMapCellHistory: TGeographicMapCellHistory; virtual;
        procedure setTrackingWaypoint(trackingWaypoint: Boolean); virtual;
  end;

implementation


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


procedure TUnitWaypointBehavior.InitFields;
begin
  Self.commonSeps := TCommonSeps.getInstance();
  Self.longWeaponRange := 0;
  Self.sensorAction := TSensorActionFactory.getInstance().ATTACK;
  
  
  Self.lastPathGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
  Self.currentPathGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
  
  
  
  
  Self.moving := False;
  Self.movingFromStopped := False;
  Self.waypointPathsListP := TBasicArrayListUtil.getInstance().getImmutableInstance();
  Self.currentTargetDistance := High(Integer);
  Self.currentTargetLayerInterfaceP := TCollidableDestroyableDamageableLayer.getNullInstance();
  
  Self.repeatedToLong := TTimeDelayHelper.Create(22000);
end;
    

constructor TUnitWaypointBehavior.Create(associatedAdvancedRTSGameLayer: TUnitLayer; fakeWaypoint: TCollidableDestroyableDamageableLayer);
begin
    inherited Create;
    InitFields;
        Self.associatedAdvancedRTSGameLayer := associatedAdvancedRTSGameLayer;
        Self.completeTimeDelayHelper := TTimeDelayHelper.Create(30000);
        Self.targetList := TBasicArrayListD.Create();
        Self.possibleTargetList := TBasicArrayListD.Create();
        Self.setWaypointPathsList(TBasicArrayListUtil.getInstance().getImmutableInstance());
        Self.currentGeographicMapCellHistoryP := TGeographicMapCellHistory.Create();
        Self.FAKE_WAYPOINT_LAYER := fakeWaypoint;
end;
    

procedure TUnitWaypointBehavior.initRange(weaponRange: Integer);
begin
        Self.longWeaponRange := (weaponRange) div (2);
end;
    

procedure TUnitWaypointBehavior.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, Self);
end;
    

// throws Exception
procedure TUnitWaypointBehavior.onWaypointEvent(event: TRTSLayerEvent);
var
  advancedRTSGameLayer: TAdvancedRTSGameLayer;
begin
        advancedRTSGameLayer := TAdvancedRTSGameLayer(event.getRtsLayer());
        Self.associatedAdvancedRTSGameLayer.waypointLogHelperP.onWaypointEvent(Self.associatedAdvancedRTSGameLayer, advancedRTSGameLayer);
        if Self.associatedAdvancedRTSGameLayer.isSelected() then begin
            Self.addWaypointFromUser(advancedRTSGameLayer);
        end else if advancedRTSGameLayer.shouldAddWaypointFromBuilding() then begin
            Self.addWaypointFromBuilding(advancedRTSGameLayer);
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior.addWaypointFromUser(advancedRTSGameLayer: TAdvancedRTSGameLayer);
begin
end;
    

// throws Exception
procedure TUnitWaypointBehavior.addWaypointFromBuilding(advancedRTSGameLayer: TAdvancedRTSGameLayer);
begin
        if ((advancedRTSGameLayer) = (TPrimaryWaypointHelper.getInstance().getWaypointLayer())) or ((advancedRTSGameLayer.getParentLayer()) = (Self.associatedAdvancedRTSGameLayer.getParentLayer())) then begin
            if not (Self.targetList.contains(advancedRTSGameLayer)) then begin
                Self.associatedAdvancedRTSGameLayer.waypointLogHelperP.addWaypointFromBuilding(Self.associatedAdvancedRTSGameLayer, advancedRTSGameLayer);
                if advancedRTSGameLayer.isDestroyed() then begin
                    raise SysUtils.Exception.Create('Trying to add a dead: ' + TJava.ToString(advancedRTSGameLayer));
                end;
                Self.targetList.add(advancedRTSGameLayer);
                Self.associatedAdvancedRTSGameLayer.waypointLogHelperP.addWaypointFromBuildingList(Self.associatedAdvancedRTSGameLayer, advancedRTSGameLayer, Self.targetList);
            end;
        end;
end;
    

function TUnitWaypointBehavior.isWaypointListEmptyOrOnlyTargets: Boolean;
begin
        Exit(False);
end;
    

// throws Exception
function TUnitWaypointBehavior.insertWaypoint(index: Integer; rtsLayer: TCollidableDestroyableDamageableLayer): Boolean;
begin
        if Self.canInsertWaypoint(index, rtsLayer) then begin
            Self.associatedAdvancedRTSGameLayer.waypointLogHelperP.insertWaypoint(Self.associatedAdvancedRTSGameLayer, index, rtsLayer, Self.getName());
            if rtsLayer.isDestroyed() then begin
                raise SysUtils.Exception.Create('Trying to add a dead: ' + TJava.ToString(rtsLayer));
            end;
            Self.targetList.addAt(index, rtsLayer);
            Self.associatedAdvancedRTSGameLayer.waypointLogHelperP.insertWaypointList(Self.associatedAdvancedRTSGameLayer, index, rtsLayer, Self.getName(), Self.targetList);
            Exit(True);
        end;
        Exit(False);
end;
    

procedure TUnitWaypointBehavior.move;
begin
        if Self.isMoving() then begin
            Self.setMovingFromStopped(False);
        end else begin
            Self.setMovingFromStopped(True);
        end;
        Self.setMoving(False);
end;
    

// throws Exception
procedure TUnitWaypointBehavior.setRandomGeographicMapCellHistory(pathsList: TBasicArrayList);
var
  size: Integer;
  geographicMapCellPositionBasicArrayList: TBasicArrayList;
begin
        size := pathsList.size();
        Self.associatedAdvancedRTSGameLayer.waypointLogHelperP.setRandomGeographicMapCellHistoryList(Self.associatedAdvancedRTSGameLayer, pathsList);
        if (size) > (0) then begin
            geographicMapCellPositionBasicArrayList := TBasicArrayList(TBasicArrayListUtil.getInstance().getRandom(pathsList));
            Self.setGeographicMapCellHistoryPath(geographicMapCellPositionBasicArrayList);
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior.setGeographicMapCellHistoryPath(geographicMapCellPositionBasicArrayList: TBasicArrayList);
begin
        Self.lastPathGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
        if Self.associatedAdvancedRTSGameLayer.showMoreCaptionStates then begin
            Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(TUnitWaypointBehavior.PATHING, TBasicColorFactory.getInstance().GREEN);
        end;
        Self.currentGeographicMapCellHistoryP.init();
        Self.associatedAdvancedRTSGameLayer.init(Self.currentGeographicMapCellHistoryP, geographicMapCellPositionBasicArrayList);
        Self.setTrackingWaypoint(True);
        Self.getCompleteTimeDelayHelper().setStartTimeTNT();
end;
    

function TUnitWaypointBehavior.canInsertWaypoint(index: Integer; rtsLayer: TCollidableDestroyableDamageableLayer): Boolean;
begin
        if (Self.targetList.size()) > (4) then begin
        end else if Self.targetList.contains(rtsLayer) then begin
        end else begin
            Exit(True);
        end;
        Exit(False);
end;
    

// throws Exception
procedure TUnitWaypointBehavior.addBuildingChase(allbinaryLayer: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition);
begin
end;
    

// throws Exception
procedure TUnitWaypointBehavior.moveAwayFromBuilding(buildingLayer: TBuildingLayer);
var
  geographicMapCellPosition: TGeographicMapCellPosition;
  list: TBasicArrayList;
  pathsList: TBasicArrayList;
begin
        geographicMapCellPosition := Self.associatedAdvancedRTSGameLayer.getCurrentGeographicMapCellPosition();
        list := buildingLayer.geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList();
        if list.contains(geographicMapCellPosition) then begin
            if Self.insertWaypoint(0, Self.FAKE_WAYPOINT_LAYER) then begin
                Self.associatedAdvancedRTSGameLayer.waypointLogHelperP.moveAwayFromBuilding(Self.associatedAdvancedRTSGameLayer);
                Self.setCurrentTargetLayerInterface(TCollidableDestroyableDamageableLayer(Self.FAKE_WAYPOINT_LAYER));
                pathsList := buildingLayer.getMoveOutOfBuildAreaPath(geographicMapCellPosition);
                Self.associatedAdvancedRTSGameLayer.setClosestGeographicMapCellHistory(pathsList);
            end;
        end;
end;
    

function TUnitWaypointBehavior.needToMove: Boolean;
var
  message: string;
begin
        Self.associatedAdvancedRTSGameLayer.waypointLogHelperP.needToMove(Self.associatedAdvancedRTSGameLayer, Self);
        if ((Self.isTrackingWaypoint()) or ((Self.sensorAction) = (TSensorActionFactory.getInstance().EVADE))) or ((((Self.currentTargetLayerInterfaceP) <> (TCollidableDestroyableDamageableLayer.getNullInstance())) and ((Self.getCurrentTargetDistance()) >= ((Self.longWeaponRange) + (Self.currentTargetLayerInterfaceP.getHalfHeight()))))) then begin
            Self.repeatedToLong.setStartTimeTNT();
            Exit(True);
        end;
        if Self.repeatedToLong.isTimeTNT() then begin
            message := 'Repeating too long: ' + TJava.ToString(Self.getMovementLogicAsString());
            TForcedLogUtil.log(message, Self.associatedAdvancedRTSGameLayer);
        end;
        Exit(False);
end;
    

function TUnitWaypointBehavior.getMovementLogicAsString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('isTrackingWaypoint: ');
        stringBuffer.appendboolean(Self.isTrackingWaypoint());
        stringBuffer.append(' sensorAction: ');
        stringBuffer.append(Self.sensorAction.name);
        stringBuffer.append(' getCurrentTargetLayerInterface: ');
        stringBuffer.append(TStringUtil.getInstance().toString(Self.currentTargetLayerInterfaceP));
        if (Self.currentTargetLayerInterfaceP) <> (TCollidableDestroyableDamageableLayer.getNullInstance()) then begin
            stringBuffer.append(' Target Range: ');
            stringBuffer.appendint(Self.getCurrentTargetDistance());
            stringBuffer.append(' >= ');
            stringBuffer.appendint(Integer(Trunc((Self.longWeaponRange) + (Self.currentTargetLayerInterfaceP.getHalfHeight()))));
        end;
        Exit(stringBuffer.toString());
end;
    

function TUnitWaypointBehavior.isMovingFromStopped: Boolean;
begin
        Exit(Self.movingFromStopped);
end;
    

procedure TUnitWaypointBehavior.setMovingFromStopped(movingFromStopped: Boolean);
begin
        Self.movingFromStopped := movingFromStopped;
end;
    

procedure TUnitWaypointBehavior.setWaypointPathsList(waypointPathsList: TBasicArrayList);
begin
        Self.waypointPathsListP := waypointPathsList;
end;
    

function TUnitWaypointBehavior.getWaypointPathsList: TBasicArrayList;
begin
        Exit(Self.waypointPathsListP);
end;
    

function TUnitWaypointBehavior.isMoving: Boolean;
begin
        Exit(Self.moving);
end;
    

procedure TUnitWaypointBehavior.setMoving(moving: Boolean);
begin
        Self.moving := moving;
end;
    

function TUnitWaypointBehavior.isTrackingWaypoint: Boolean;
begin
        Exit(Self.trackingWaypoint);
end;
    

function TUnitWaypointBehavior.getPossibleTargetList: TBasicArrayList;
begin
        Exit(Self.possibleTargetList);
end;
    

procedure TUnitWaypointBehavior.setLastPathGeographicMapCellPosition(lastPathGeographicMapCellPosition: TGeographicMapCellPosition);
begin
        Self.lastPathGeographicMapCellPosition := lastPathGeographicMapCellPosition;
end;
    

function TUnitWaypointBehavior.getLastPathGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        Exit(Self.lastPathGeographicMapCellPosition);
end;
    

procedure TUnitWaypointBehavior.setCurrentPathGeographicMapCellPosition(currentPathGeographicMapCellPosition: TGeographicMapCellPosition);
begin
        Self.currentPathGeographicMapCellPosition := currentPathGeographicMapCellPosition;
end;
    

function TUnitWaypointBehavior.getCurrentPathGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        Exit(Self.currentPathGeographicMapCellPosition);
end;
    

procedure TUnitWaypointBehavior.setSensorAction(sensorAction: TSensorAction);
begin
        Self.sensorAction := sensorAction;
end;
    

function TUnitWaypointBehavior.getSensorAction: TSensorAction;
begin
        Exit(Self.sensorAction);
end;
    

procedure TUnitWaypointBehavior.setCurrentTargetLayerInterface(currentTargetLayerInterface: TCollidableDestroyableDamageableLayer);
begin
        Self.currentTargetLayerInterfaceP := currentTargetLayerInterface;
end;
    

function TUnitWaypointBehavior.getCurrentTargetLayerInterface: TCollidableDestroyableDamageableLayer;
begin
        Exit(Self.currentTargetLayerInterfaceP);
end;
    

procedure TUnitWaypointBehavior.setCurrentTargetDistance(currentTargetDistance: Integer);
begin
        Self.currentTargetDistance := currentTargetDistance;
end;
    

function TUnitWaypointBehavior.getCurrentTargetDistance: Integer;
begin
        Exit(Self.currentTargetDistance);
end;
    

function TUnitWaypointBehavior.getCompleteTimeDelayHelper: TTimeDelayHelper;
begin
        Exit(Self.completeTimeDelayHelper);
end;
    

function TUnitWaypointBehavior.getCurrentGeographicMapCellHistory: TGeographicMapCellHistory;
begin
        Exit(Self.currentGeographicMapCellHistoryP);
end;
    

procedure TUnitWaypointBehavior.setTrackingWaypoint(trackingWaypoint: Boolean);
begin
        Self.trackingWaypoint := trackingWaypoint;
end;

initialization
  TUnitWaypointBehavior.PATHING := 'Pathing';

end.

