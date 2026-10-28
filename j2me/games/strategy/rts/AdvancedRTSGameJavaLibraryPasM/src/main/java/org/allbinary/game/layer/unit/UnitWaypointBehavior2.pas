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
unit UnitWaypointBehavior2;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, J2MEUtil, Features, SteeringVisitor, AdvancedRTSGameLayer, MultipassWaypointPathRunnable, RTSLayer, WaypointPathRunnable, BasicArrayList, BasicArrayListD, CommonStrings, StringMaker, LogUtil, PathFindingLayerInterface, WaypointPathRunnableBase, CollidableDestroyableDamageableLayer, WaypointBase, TrackingEventHandler, GPoint, BasicColorFactory, AllBinaryLayer, AllBinaryLayerManager, NullUtil, BooleanFactory, LayerDistanceUtil, GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory, PathFindingThreadPool, ThreadPool, TimeDelayHelper, UnitWaypointStrings, UnitLayer, BuildingSteeringVisitor, UnitWaypointBehavior;

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

  TBuildingSteeringVisitor = class(TSteeringVisitor)
  public
    positionList: TBasicArrayList;
    procedure InitFields;
    constructor Create;
        function visit(anyType: TObject): TObject; override;
        function getPositionList: TBasicArrayList; virtual;
  end;
  TUnitWaypointBehavior2 = class(TUnitWaypointBehavior)
  public
    logUtil: TLogUtil;
    unitWaypointStrings: TUnitWaypointStrings;
    basicColorFactory: TBasicColorFactory;
    layerDistanceUtil: TLayerDistanceUtil;
    pathFindingThreadPool: TThreadPool;
    progressTimeDelayHelper: TTimeDelayHelper;
    wanderPathsList: TBasicArrayList;
    waypointPathRunnable: TWaypointPathRunnableBase;
    sensorRange: Integer;
    closeRange: Integer;
    nextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition;
    afterNextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition;
    waitingOnTargetPath: Boolean;
    waitingOnWaypointPath: Boolean;
    targetWithoutCachedPathLayerInterface: TCollidableDestroyableDamageableLayer;
    buildingSteeringVisitor: TBuildingSteeringVisitor;
    class var runningWaypointPathList: TBasicArrayList;
    class var TARGET_DISTANCE: string;
    class var TARGET_LAYER: string;
    procedure InitFields;
        constructor Create(ownerAdvancedRTSGameLayer: TUnitLayer; fakeWaypoint: TAdvancedRTSGameLayer);
        procedure initRange(weaponRange: Integer); override;
        function getNextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition; override;
        function isRunning: Boolean; override;
        procedure processTick(allBinaryLayerManager: TAllBinaryLayerManager); override;
        procedure onEnemyMovement(layerInterface: TAdvancedRTSGameLayer);
        procedure processPossibleTarget(layerInterface: TAdvancedRTSGameLayer; anotherTargetDistance: Integer);
        procedure teleportIfNoProgress;
        procedure setTarget(layerInterface: TAdvancedRTSGameLayer; anotherTargetDistance: Integer);
        procedure setTargetPath;
        procedure setGeographicMapCellHistoryPath(geographicMapCellPositionBasicArrayList: TBasicArrayList); override;
        procedure processWaypoint;
        procedure wander;
        function visitIfAtMidPoint(geographicMapCellPosition: TGeographicMapCellPosition): Boolean;
        procedure processTargetList;
        procedure processTargeting;
        procedure updateCurrentPathGeographicMapCellPosition;
        procedure setWaypointPath(waypointLayer: TAdvancedRTSGameLayer);
        procedure runWaypointPathTask(waypointLayer: TAdvancedRTSGameLayer);
        procedure removeWaypoint(waypointLayer: TRTSLayer; reason: string);
        procedure clearTarget; override;
        function isWaypointListEmptyOrOnlyTargets: Boolean; override;
        function isCloseRange(layerInterface: TAdvancedRTSGameLayer; targetDistance: Integer): Boolean;
        function isInSensorRange(layerInterface: TCollidableDestroyableDamageableLayer; targetDistance: Integer): Boolean; override;
        function getCurrentTargetingStateString: string; override;
        procedure addWaypointFromUser(advancedRTSGameLayer: TAdvancedRTSGameLayer); override;
        procedure addBuildingChase(allbinaryLayer: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition); override;
        function buildingChase(allbinaryLayer: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition): Boolean;
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


procedure TBuildingSteeringVisitor.InitFields;
begin
  Self.positionList := TBasicArrayListD.Create();
end;

constructor TBuildingSteeringVisitor.Create;
begin
  inherited Create;
  InitFields;
end;
    

    function TBuildingSteeringVisitor.visit(anyType: TObject): TObject;
var
  logUtil: TLogUtil;
  allbinaryLayer: TAllBinaryLayer;
  cellPosition: TGeographicMapCellPosition;
  clear: Boolean;
  commonStrings: TCommonStrings;
begin
            logUtil := TLogUtil.getInstance();
            try
                if (Self.getList().size()) > (0) then begin
                    allbinaryLayer := TAllBinaryLayer(Self.getList().get(0));
                    cellPosition := TGeographicMapCellPosition(Self.getPositionList().get(0));
                    clear := Self.buildingChase(allbinaryLayer, cellPosition);
                    if clear then begin
                        Self.getList().clear();
                        Self.positionList.clear();
                        Exit(TNullUtil.getInstance().NULL_OBJECT);
                    end;
                    Exit(TBooleanFactory.getInstance().FALSE_);
                end;
                Exit(TNullUtil.getInstance().NULL_OBJECT);
            except
                on e: SysUtils.Exception do begin
                commonStrings := TCommonStrings.getInstance();
                logUtil.put(commonStrings.EXCEPTION, Self, 'visit', e);
                Exit(TNullUtil.getInstance().NULL_OBJECT);
                end;
            end;
end;
    

    function TBuildingSteeringVisitor.getPositionList: TBasicArrayList;
begin
            Exit(Self.positionList);
end;

procedure TUnitWaypointBehavior2.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.unitWaypointStrings := TUnitWaypointStrings.getInstance();
  Self.basicColorFactory := TBasicColorFactory.getInstance();
  Self.layerDistanceUtil := TLayerDistanceUtil.getInstance();
  Self.pathFindingThreadPool := TPathFindingThreadPool.getInstance();
  
  
  
  Self.sensorRange := 0;
  Self.closeRange := 0;
  Self.nextUnvisitedPathGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
  Self.afterNextUnvisitedPathGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
  
  
  Self.targetWithoutCachedPathLayerInterface := TCollidableDestroyableDamageableLayer.getNullInstance();
  Self.buildingSteeringVisitor := TBuildingSteeringVisitor.Create();
end;
    

constructor TUnitWaypointBehavior2.Create(ownerAdvancedRTSGameLayer: TUnitLayer; fakeWaypoint: TAdvancedRTSGameLayer);
var
  features: TFeatures;
begin
        inherited Create(ownerAdvancedRTSGameLayer, fakeWaypoint);
        InitFields;
        Self.progressTimeDelayHelper := TTimeDelayHelper.Create(5000);
        Self.wanderPathsList := TBasicArrayListD.Create();
        features := TFeatures.getInstance();
        Self.waypointPathRunnable := TJava.IfThen<Variant>(TJ2MEUtil.isHTML(), TMultipassWaypointPathRunnable.Create(), TWaypointPathRunnable.Create());
end;
    

procedure TUnitWaypointBehavior2.initRange(weaponRange: Integer);
begin
        inherited initRange(weaponRange);
        Self.closeRange := weaponRange;
        Self.sensorRange := (weaponRange) * (4);
        Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.initRange(Self.associatedAdvancedRTSGameLayer, Self.closeRange, Self.sensorRange);
end;
    

function TUnitWaypointBehavior2.getNextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        Exit(Self.nextUnvisitedPathGeographicMapCellPosition);
end;
    

function TUnitWaypointBehavior2.isRunning: Boolean;
begin
        if Self.waypointPathRunnable.isRunning() then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.processTick(allBinaryLayerManager: TAllBinaryLayerManager);
begin
        if Self.waypointPathRunnable.isRunning() then begin
            if (Self.waypointPathsListP) <> (TUnitWaypointBehavior2.runningWaypointPathList) then begin
                Self.waypointPathRunnable.setRunning(False);
                if Self.waitingOnTargetPath then begin
                    Self.setTargetPath();
                end else if Self.waitingOnWaypointPath then begin
                    Self.setWaypointPath(TAdvancedRTSGameLayer(Self.waypointPathRunnable.getTargetLayer()));
                end else begin
                    raise SysUtils.Exception.Create('Should not happen');
                end;
            end else begin
                Exit;
            end;
        end;
        Self.processTargetList();
        if not (Self.waypointPathRunnable.isRunning()) then begin
            Self.processWaypoint();
        end else begin
            Exit;
        end;
        if not (Self.waypointPathRunnable.isRunning()) then begin
            Self.processTargeting();
        end else begin
            Exit;
        end;
        if not (Self.waypointPathRunnable.isRunning()) then begin
            Self.teleportIfNoProgress();
        end else begin
            Exit;
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.onEnemyMovement(layerInterface: TAdvancedRTSGameLayer);
var
  anotherTargetDistance: Integer;
begin
        anotherTargetDistance := Self.layerDistanceUtil.getDistance(Self.associatedAdvancedRTSGameLayer, layerInterface);
        if (layerInterface) = (Self.currentTargetLayerInterfaceP) then begin
            Self.setCurrentTargetDistance(anotherTargetDistance);
        end else begin
            Self.processPossibleTarget(layerInterface, anotherTargetDistance);
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.processPossibleTarget(layerInterface: TAdvancedRTSGameLayer; anotherTargetDistance: Integer);
var
  isShorterThanCurrentTargetDistance: Boolean;
  isCurrentTargetDestroyed: Boolean;
begin
        isShorterThanCurrentTargetDistance := (Self.getCurrentTargetDistance()) > (anotherTargetDistance);
        isCurrentTargetDestroyed := ((Self.currentTargetLayerInterfaceP) <> (TCollidableDestroyableDamageableLayer.getNullInstance())) and (Self.currentTargetLayerInterfaceP.isDestroyed());
        Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processPossibleTarget(Self.associatedAdvancedRTSGameLayer, Self, layerInterface, anotherTargetDistance, isShorterThanCurrentTargetDistance, isCurrentTargetDestroyed);
        if ((Self.isWaypointListEmptyOrOnlyTargets()) and (Self.isInSensorRange(layerInterface, anotherTargetDistance))) and (((isShorterThanCurrentTargetDistance) or (isCurrentTargetDestroyed))) then begin
            Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processSetTarget(Self.associatedAdvancedRTSGameLayer, Self, layerInterface, anotherTargetDistance);
            Self.setTarget(layerInterface, anotherTargetDistance);
        end else if (Self.isCloseRange(layerInterface, anotherTargetDistance)) and (((isShorterThanCurrentTargetDistance) or (isCurrentTargetDestroyed))) then begin
            Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processPossibleTargetCloser(Self.associatedAdvancedRTSGameLayer, Self, layerInterface, anotherTargetDistance);
            Self.setTarget(layerInterface, anotherTargetDistance);
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.teleportIfNoProgress;
var
  geographicMapCellPosition: TGeographicMapCellPosition;
begin
        if (Self.isTrackingWaypoint()) or (Self.associatedAdvancedRTSGameLayer.getParentLayer().isDestroyed()) then begin
            if (Self.progressTimeDelayHelper.isTimeTNT()) and ((Self.nextUnvisitedPathGeographicMapCellPosition) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) then begin
                Self.associatedAdvancedRTSGameLayer.teleportTo(Self.nextUnvisitedPathGeographicMapCellPosition);
            end;
            if Self.getCompleteTimeDelayHelper().isTimeTNT() then begin
                geographicMapCellPosition := TGeographicMapCellPosition(Self.currentGeographicMapCellHistoryP.getTracked().get((Self.currentGeographicMapCellHistoryP.getSize()) - (1)));
                Self.associatedAdvancedRTSGameLayer.teleportTo(geographicMapCellPosition);
            end;
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.setTarget(layerInterface: TAdvancedRTSGameLayer; anotherTargetDistance: Integer);
var
  geographicMapCellPosition: TGeographicMapCellPosition;
  pathFindingLayerInterface: IPathFindingLayerInterface;
  waypoint: TWaypointBase;
  list: TBasicArrayList;
begin
        Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.setTarget(Self.associatedAdvancedRTSGameLayer, Self, layerInterface, anotherTargetDistance);
        Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.TARGET, TBasicColorFactory.getInstance().GREEN);
        Self.associatedAdvancedRTSGameLayer.setLoad(0);
        Self.setCurrentTargetDistance(anotherTargetDistance);
        Self.setCurrentTargetLayerInterface(layerInterface);
        Self.setTrackingWaypoint(False);
        Self.targetList.clear();
        if (not (Self.isCloseRange(layerInterface, anotherTargetDistance))) and (Self.canInsertWaypoint(0, Self.currentTargetLayerInterfaceP)) then begin
            geographicMapCellPosition := Self.associatedAdvancedRTSGameLayer.getCurrentGeographicMapCellPosition();
            pathFindingLayerInterface := (IPathFindingLayerInterface(Pointer(Self.currentTargetLayerInterfaceP)));
            waypoint := pathFindingLayerInterface.getWaypointBehavior().getWaypoint();
            list := waypoint.getPathsListFromCacheOnly(geographicMapCellPosition);
            Self.setWaypointPathsList(list);
            if (Self.waypointPathsListP) = (nil) then begin
                Self.targetWithoutCachedPathLayerInterface := Self.currentTargetLayerInterfaceP;
            end else if (Self.waypointPathsListP.size()) <> (0) then begin
                Self.setTargetPath();
            end;
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.setTargetPath;
begin
        if (Self.currentTargetLayerInterfaceP) <> (TCollidableDestroyableDamageableLayer.getNullInstance()) then begin
            if Self.currentTargetLayerInterfaceP.isDestroyed() then begin
                Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.setTargetPath(Self.associatedAdvancedRTSGameLayer);
                Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.KILL, Self.basicColorFactory.ORANGE);
                Self.clearTarget();
                Exit;
            end;
            if (Self.currentTargetLayerInterfaceP) = (Self.waypointPathRunnable.getTargetLayer()) then begin
                Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.setTargetPathIgnoreNewPath(Self.associatedAdvancedRTSGameLayer, Self);
                Self.insertWaypoint(0, Self.currentTargetLayerInterfaceP);
                Self.setRandomGeographicMapCellHistory(Self.waypointPathsListP);
            end;
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.setGeographicMapCellHistoryPath(geographicMapCellPositionBasicArrayList: TBasicArrayList);
begin
        Self.setCurrentPathGeographicMapCellPosition(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        Self.nextUnvisitedPathGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
        inherited setGeographicMapCellHistoryPath(geographicMapCellPositionBasicArrayList);
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.processWaypoint;
var
  size: Integer;
  targetLayer: TAdvancedRTSGameLayer;
  geographicMapCellPosition: TGeographicMapCellPosition;
  list: TBasicArrayList;
  oldWaypointLayer: TAdvancedRTSGameLayer;
begin
        size := Self.targetList.size();
        if (size) > (0) then begin
            targetLayer := TAdvancedRTSGameLayer(Self.targetList.get(0));
            Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processWaypoint(Self.associatedAdvancedRTSGameLayer, Self, targetLayer, size);
            if targetLayer.isDestroyed() then begin
                Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.WAYPOINT_DESTROYED_SHORT, Self.basicColorFactory.YELLOW);
                Self.removeWaypoint(targetLayer, Self.unitWaypointStrings.WAYPOINT_DESTROYED);
            end else begin
                geographicMapCellPosition := Self.associatedAdvancedRTSGameLayer.getCurrentGeographicMapCellPosition();
                if Self.isTrackingWaypoint() then begin
                    Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processWaypointTracked(Self.associatedAdvancedRTSGameLayer, Self);
                    if Self.visitIfAtMidPoint(geographicMapCellPosition) then begin
                        Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processWaypointTrackedVisit(Self.associatedAdvancedRTSGameLayer, geographicMapCellPosition);
                    end;
                    if (Self.currentGeographicMapCellHistoryP.isAllVisited2()) and ((Self.currentTargetLayerInterfaceP) <> (TCollidableDestroyableDamageableLayer.getNullInstance())) then begin
                        oldWaypointLayer := TAdvancedRTSGameLayer(Self.currentTargetLayerInterfaceP);
                        oldWaypointLayer.getWaypointBehavior().getWaypoint().visit(Self.associatedAdvancedRTSGameLayer);
                        Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.ALL_VISITED_SHORT, Self.basicColorFactory.GREEN);
                        Self.removeWaypoint(TAdvancedRTSGameLayer(Self.currentTargetLayerInterfaceP), Self.unitWaypointStrings.ALL_VISITED);
                    end;
                end else if ((Self.currentTargetLayerInterfaceP) = (nil)) or (Self.waypointOverridesAttacking) then begin
                    list := targetLayer.getWaypointBehavior().getWaypoint().getPathsListFromCacheOnly(geographicMapCellPosition);
                    Self.setWaypointPathsList(list);
                    if (Self.waypointPathsListP) = (nil) then begin
                        Self.waitingOnWaypointPath := True;
                        Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.THINKING, Self.basicColorFactory.GREEN);
                        Self.runWaypointPathTask(targetLayer);
                        Exit;
                    end;
                    Self.setWaypointPath(targetLayer);
                end;
            end;
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.wander;
begin
        if Self.currentGeographicMapCellHistoryP.isAllVisited2() then begin
            Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.wander(Self.associatedAdvancedRTSGameLayer);
            Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.WANDERING, Self.basicColorFactory.RED);
            Self.wanderPathsList.clear();
            Self.wanderPathsList.add(Self.associatedAdvancedRTSGameLayer.getSurroundingGeographicMapCellPositionList());
            Self.setRandomGeographicMapCellHistory(Self.wanderPathsList);
        end;
        Self.visitIfAtMidPoint(Self.getCurrentPathGeographicMapCellPosition());
        Self.updateCurrentPathGeographicMapCellPosition();
        Self.associatedAdvancedRTSGameLayer.trackTo(Self.unitWaypointStrings.NEXT_PATH_NODE);
end;
    

function TUnitWaypointBehavior2.visitIfAtMidPoint(geographicMapCellPosition: TGeographicMapCellPosition): Boolean;
var
  unitLayer: TUnitLayer;
  point: TGPoint;
  afterNextPoint: TGPoint;
  beyondMidPoint: Boolean;
begin
        unitLayer := Self.associatedAdvancedRTSGameLayer;
        if ((geographicMapCellPosition) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and ((Self.nextUnvisitedPathGeographicMapCellPosition) = (geographicMapCellPosition)) then begin
            point := geographicMapCellPosition.getMidPoint();
            afterNextPoint := Self.afterNextUnvisitedPathGeographicMapCellPosition.getMidPoint();
            beyondMidPoint := True;
            if (geographicMapCellPosition.getColumn()) = (Self.afterNextUnvisitedPathGeographicMapCellPosition.getColumn()) then begin
            end else if (point.getX()) < (afterNextPoint.getX()) then begin
                if ((unitLayer.getXP()) + (unitLayer.getHalfWidth())) < (point.getX()) then begin
                    beyondMidPoint := False;
                end;
            end else begin
                if ((unitLayer.getXP()) + (unitLayer.getHalfWidth())) > (point.getX()) then begin
                    beyondMidPoint := False;
                end;
            end;
            if (geographicMapCellPosition.getRow()) = (Self.afterNextUnvisitedPathGeographicMapCellPosition.getRow()) then begin
            end else if (point.getY()) < (afterNextPoint.getY()) then begin
                if ((unitLayer.getYP()) + (unitLayer.getHalfHeight())) < (point.getY()) then begin
                    beyondMidPoint := False;
                end;
            end else begin
                if ((unitLayer.getYP()) + (unitLayer.getHalfHeight())) > (point.getY()) then begin
                    beyondMidPoint := False;
                end;
            end;
            if beyondMidPoint then begin
                Exit(Self.currentGeographicMapCellHistoryP.visit(geographicMapCellPosition));
            end;
        end;
        Exit(False);
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.processTargetList;
var
  layerInterface: TAdvancedRTSGameLayer;
  index: Integer;
begin
        Self.targetWithoutCachedPathLayerInterface := TCollidableDestroyableDamageableLayer.getNullInstance();
        for index := (Self.getPossibleTargetList().size()) - (1) downto 0 do begin
            layerInterface := TAdvancedRTSGameLayer(Self.getPossibleTargetList().get(index));
            if layerInterface.isDestroyed() then begin
                Self.getPossibleTargetList().remove(layerInterface);
            end else begin
                Self.onEnemyMovement(layerInterface);
            end;
        end;
        if (Self.targetWithoutCachedPathLayerInterface) <> (TCollidableDestroyableDamageableLayer.getNullInstance()) then begin
            Self.waitingOnTargetPath := True;
            Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.THINKING_ABOUT_TARGET, Self.basicColorFactory.GREEN);
            Self.runWaypointPathTask(TAdvancedRTSGameLayer(Self.currentTargetLayerInterfaceP));
        end;
        Self.getPossibleTargetList().clear();
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.processTargeting;
var
  dx: Integer;
  dy: Integer;
  point: TGPoint;
begin
        if ((Self.currentTargetLayerInterfaceP) <> (TCollidableDestroyableDamageableLayer.getNullInstance())) and (((Self.isInSensorRange(Self.currentTargetLayerInterfaceP, Self.getCurrentTargetDistance())) or (Self.isTrackingWaypoint()))) then begin
            if Self.currentTargetLayerInterfaceP.isDestroyed() then begin
                Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.targetDestroyed(Self.associatedAdvancedRTSGameLayer);
                Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.KILL, Self.basicColorFactory.ORANGE);
                Self.clearTarget();
                Exit;
            end;
            dx := 0;
            dy := 0;
            if Self.isTrackingWaypoint() then begin
                Self.updateCurrentPathGeographicMapCellPosition();
                point := Self.nextUnvisitedPathGeographicMapCellPosition.getMidPoint();
                dx := ((Self.associatedAdvancedRTSGameLayer.getXP()) + (Self.associatedAdvancedRTSGameLayer.getHalfWidth())) - (point.getX());
                dy := ((Self.associatedAdvancedRTSGameLayer.getYP()) + (Self.associatedAdvancedRTSGameLayer.getHalfHeight())) - (point.getY());
                Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processTargeting(Self.associatedAdvancedRTSGameLayer, dx, dy);
            end else begin
                Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.processTargetingNonWayPoint(Self.associatedAdvancedRTSGameLayer, dx, dy);
                dx := (((Self.associatedAdvancedRTSGameLayer.getXP()) + (Self.associatedAdvancedRTSGameLayer.getHalfWidth()))) - (((Self.currentTargetLayerInterfaceP.getXP()) + (Self.currentTargetLayerInterfaceP.getHalfWidth())));
                dy := (((Self.associatedAdvancedRTSGameLayer.getYP()) + (Self.associatedAdvancedRTSGameLayer.getHalfHeight()))) - (((Self.currentTargetLayerInterfaceP.getYP()) + (Self.currentTargetLayerInterfaceP.getHalfHeight())));
            end;
            Self.associatedAdvancedRTSGameLayer.trackToDXY(dx, dy);
        end else begin
            if Self.associatedAdvancedRTSGameLayer.getParentLayer().isDestroyed() then begin
                Self.wander();
            end else begin
                if Self.associatedAdvancedRTSGameLayer.showMoreCaptionStates then begin
                    Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.STOP, Self.basicColorFactory.YELLOW);
                end;
                Self.associatedAdvancedRTSGameLayer.allStop();
            end;
        end;
end;
    

procedure TUnitWaypointBehavior2.updateCurrentPathGeographicMapCellPosition;
begin
        Self.setLastPathGeographicMapCellPosition(Self.getCurrentPathGeographicMapCellPosition());
        Self.setCurrentPathGeographicMapCellPosition(Self.nextUnvisitedPathGeographicMapCellPosition);
        Self.nextUnvisitedPathGeographicMapCellPosition := Self.currentGeographicMapCellHistoryP.getFirstUnvisited();
        Self.afterNextUnvisitedPathGeographicMapCellPosition := Self.currentGeographicMapCellHistoryP.getAfterIfNotLast(Self.nextUnvisitedPathGeographicMapCellPosition);
        if (Self.getCurrentPathGeographicMapCellPosition()) <> (Self.nextUnvisitedPathGeographicMapCellPosition) then begin
            Self.progressTimeDelayHelper.setStartTimeTNT();
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.setWaypointPath(waypointLayer: TAdvancedRTSGameLayer);
var
  MAX: Integer;
begin
        if (Self.waypointPathsListP.size()) <> (0) then begin
            Self.setCurrentTargetLayerInterface(waypointLayer);
            MAX := High(Integer);
            Self.setCurrentTargetDistance(MAX);
            Self.setRandomGeographicMapCellHistory(Self.waypointPathsListP);
        end else begin
            waypointLayer.getWaypointBehavior().getWaypoint().visit(Self.associatedAdvancedRTSGameLayer);
            Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.ALREADY_THERE_SHORT, Self.basicColorFactory.YELLOW);
            Self.removeWaypoint(waypointLayer, Self.unitWaypointStrings.ALREADY_THERE);
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.runWaypointPathTask(waypointLayer: TAdvancedRTSGameLayer);
begin
        Self.setWaypointPathsList(TUnitWaypointBehavior2.runningWaypointPathList);
        if Self.waypointPathRunnable.isRunning() then begin
            raise SysUtils.Exception.Create('Should never be running here');
        end;
        Self.waypointPathRunnable.setRunning(True);
        Self.waypointPathRunnable.setUnitLayer(Self.associatedAdvancedRTSGameLayer);
        Self.waypointPathRunnable.setTargetLayer(waypointLayer);
        Self.pathFindingThreadPool.runTask(Self.waypointPathRunnable);
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.removeWaypoint(waypointLayer: TRTSLayer; reason: string);
begin
        Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.removeWaypoint(Self.associatedAdvancedRTSGameLayer, Self, waypointLayer, reason);
        Self.targetList.remove(waypointLayer);
        Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.removeWaypointList(Self.associatedAdvancedRTSGameLayer, Self, Self.targetList);
        if (Self.currentTargetLayerInterfaceP) = (waypointLayer) then begin
            Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.removeWaypointClear(Self.associatedAdvancedRTSGameLayer);
            Self.clearTarget();
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.clearTarget;
var
  MAX: Integer;
begin
        Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.clearTarget(Self.associatedAdvancedRTSGameLayer);
        Self.setCurrentTargetLayerInterface(TCollidableDestroyableDamageableLayer.getNullInstance());
        Self.setTrackingWaypoint(False);
        MAX := High(Integer);
        Self.setCurrentTargetDistance(MAX);
        TTrackingEventHandler.getInstance().fireEvent(Self.associatedAdvancedRTSGameLayer.getTrackingEvent());
end;
    

function TUnitWaypointBehavior2.isWaypointListEmptyOrOnlyTargets: Boolean;
var
  list: TBasicArrayList;
  layerInterface: TAdvancedRTSGameLayer;
  index: Integer;
begin
        list := Self.targetList;
        if (list.size()) = (0) then begin
            Exit(True);
        end;
        for index := (list.size()) - (1) downto 0 do begin
            layerInterface := TAdvancedRTSGameLayer(list.get(index));
            if layerInterface.isWaypointListEmptyOrOnlyTargets() then begin
                Exit(False);
            end;
        end;
        Exit(True);
end;
    

function TUnitWaypointBehavior2.isCloseRange(layerInterface: TAdvancedRTSGameLayer; targetDistance: Integer): Boolean;
begin
        Exit((targetDistance) < ((Self.closeRange) + (layerInterface.getHalfHeight())));
end;
    

function TUnitWaypointBehavior2.isInSensorRange(layerInterface: TCollidableDestroyableDamageableLayer; targetDistance: Integer): Boolean;
begin
        Exit((targetDistance) < ((Self.sensorRange) + (layerInterface.getHalfHeight())));
end;
    

function TUnitWaypointBehavior2.getCurrentTargetingStateString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        if (Self.currentTargetLayerInterfaceP) <> (TCollidableDestroyableDamageableLayer.getNullInstance()) then begin
            stringBuffer.append(TUnitWaypointBehavior2.TARGET_LAYER);
            stringBuffer.append(Self.commonSeps.SPACE);
            stringBuffer.append(Self.currentTargetLayerInterfaceP.getName());
            stringBuffer.append(' with ');
            stringBuffer.append(TUnitWaypointBehavior2.TARGET_DISTANCE);
            stringBuffer.append(Self.commonSeps.SPACE);
            stringBuffer.appendint(Integer(Trunc(Self.getCurrentTargetDistance())));
        end;
        Exit(stringBuffer.toString());
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.addWaypointFromUser(advancedRTSGameLayer: TAdvancedRTSGameLayer);
begin
        if advancedRTSGameLayer.isDestroyed() then begin
            raise SysUtils.Exception.Create('Trying to add a dead: ' + TJava.ToString(advancedRTSGameLayer));
        end;
        Self.associatedAdvancedRTSGameLayer.waypoint2LogHelperP.addWaypointFromUser(Self.associatedAdvancedRTSGameLayer, advancedRTSGameLayer);
        Self.targetList.clear();
        Self.targetList.add(advancedRTSGameLayer);
        Self.clearTarget();
end;
    

// throws Exception
procedure TUnitWaypointBehavior2.addBuildingChase(allbinaryLayer: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition);
begin
        if not (Self.buildingSteeringVisitor.getList().contains(allbinaryLayer)) then begin
            Self.buildingSteeringVisitor.getList().add(allbinaryLayer);
            Self.buildingSteeringVisitor.getPositionList().add(cellPosition);
        end;
        if not (Self.getSteeringVisitorList().contains(Self.buildingSteeringVisitor)) then begin
            Self.getSteeringVisitorList().add(Self.buildingSteeringVisitor);
        end;
end;
    

// throws Exception
function TUnitWaypointBehavior2.buildingChase(allbinaryLayer: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition): Boolean;
begin
        Exit(Self.associatedAdvancedRTSGameLayer.buildingChase(allbinaryLayer, cellPosition));
end;

initialization
  TUnitWaypointBehavior2.runningWaypointPathList := TBasicArrayListD.Create();
  TUnitWaypointBehavior2.TARGET_DISTANCE := 'Target Distance';
  TUnitWaypointBehavior2.TARGET_LAYER := 'Target Layer';

end.

