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
// package org.allbinary.game.input.form
unit BuildingRTSFormInput;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, RTSPlayerGameInput, DemoLockedWithCostLayerInterfaceFactoryInterface, GeographicMapCellPositionAreaBase, RTSGameStrings, RTSLayer, RTSPlayerLayerInterface, Capital, LayerInterfaceFactoryImageItem, ABCustomItem, BuildingSound, BasicArrayList, CommonStrings, StringMaker, BooleanFactory, LockedFeatureNotificationUtil, LockedUtil, Group, AllBinaryGameLayerManager, GameNotificationEvent, GameNotificationEventHandler, CollidableDestroyableDamageableLayer, GPoint, BasicColorFactory, AllBinaryLayerManager, SmallIntegerSingletonFactory, StringUtil, ErrorSound, BasicGeographicMap, GeographicMapCellPosition, GeographicMapCellType, GeographicMapCompositeInterface, SimpleGeographicMapCellPositionFactory, DropCellPositionHistory, RaceTrackGeographicMapCellTypeFactory, RTSFormInput;

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

  TBuildingRTSFormInput = class(TRTSFormInput)
  public
    isUnitProducer: Boolean;
    buildOnPathGameNotificationEvent: TGameNotificationEvent;
    spotTakenGameNotificationEvent: TGameNotificationEvent;
    selectBuildSpotGameNotificationEvent: TGameNotificationEvent;
    roadCollisionGameNotificationEvent: TGameNotificationEvent;
    noMoneyGameNotificationEvent: TGameNotificationEvent;
    buildingCollisionGameNotificationEvent: TGameNotificationEvent;
    structureToCloseCollisionGameNotificationEvent: TGameNotificationEvent;
    buildingGameNotificationEvent: TGameNotificationEvent;
    mapEdgeGameNotificationEvent: TGameNotificationEvent;
    dropCellPositionHistory: TDropCellPositionHistory;
    procedure InitFields;
        constructor Create(groupInterface: TArray<TGroup>; isUnitProducer: Boolean);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager: TAllBinaryGameLayerManager); override;
        procedure processGameSpecific(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; itemIndex: Integer); override;
        function isPositionBlocked: Boolean; virtual;
        function isDemoLocked(item: TABCustomItem): Boolean;
        procedure buildFromMotionInput(rtsPlayerLayerInterface: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; itemIndex: Integer); virtual;
        function attemptBuild(rtsPlayerLayerInterface: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; layerInterface: TRTSLayer; itemIndex: Integer): Boolean; virtual;
        function isBuildAttemptValid(rtsPlayerLayerInterface: IRTSPlayerLayerInterface; layerInterface: TRTSLayer): Boolean; virtual;
        procedure add(rtsPlayerLayerInterface: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; layerInterface: TRTSLayer); virtual;
        function isSurroundingCellsOffMap(layerInterface: TRTSLayer): Boolean;
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


procedure TBuildingRTSFormInput.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
  Self.dropCellPositionHistory := TDropCellPositionHistory.getInstance();
end;
    

constructor TBuildingRTSFormInput.Create(groupInterface: TArray<TGroup>; isUnitProducer: Boolean);
var
  smallIntegerSingletonFactory: TSmallIntegerSingletonFactory;
  basicColorFactory: TBasicColorFactory;
begin
        inherited Create(groupInterface);
        InitFields;
        Self.isUnitProducer := isUnitProducer;
        smallIntegerSingletonFactory := TSmallIntegerSingletonFactory.getInstance();
        basicColorFactory := TBasicColorFactory.getInstance();
        Self.buildOnPathGameNotificationEvent := TGameNotificationEvent.Create(Self, TRTSGameStrings.getInstance().BUILD_ON_PATH, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, TBooleanFactory.getInstance().FALSE_);
        Self.spotTakenGameNotificationEvent := TGameNotificationEvent.Create(Self, TRTSGameStrings.getInstance().SPOT_TAKEN, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, TBooleanFactory.getInstance().FALSE_);
        Self.selectBuildSpotGameNotificationEvent := TGameNotificationEvent.Create(Self, TRTSGameStrings.getInstance().SELECT_BUILD_SPOT, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, TBooleanFactory.getInstance().FALSE_);
        Self.roadCollisionGameNotificationEvent := TGameNotificationEvent.Create(Self, TRTSGameStrings.getInstance().ROAD_COLLISION, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, TBooleanFactory.getInstance().FALSE_);
        Self.noMoneyGameNotificationEvent := TGameNotificationEvent.Create(Self, TRTSGameStrings.getInstance().NO_MONEY, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, TBooleanFactory.getInstance().FALSE_);
        Self.buildingCollisionGameNotificationEvent := TGameNotificationEvent.Create(Self, TRTSGameStrings.getInstance().BUILDING_COLLISION, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, TBooleanFactory.getInstance().FALSE_);
        Self.structureToCloseCollisionGameNotificationEvent := TGameNotificationEvent.Create(Self, TRTSGameStrings.getInstance().STRUCTURE_TO_CLOSE, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, TBooleanFactory.getInstance().FALSE_);
        Self.buildingGameNotificationEvent := TGameNotificationEvent.Create(Self, TRTSGameStrings.getInstance().BUILDING, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, TBooleanFactory.getInstance().FALSE_);
        Self.mapEdgeGameNotificationEvent := TGameNotificationEvent.Create(Self, TRTSGameStrings.getInstance().MAP_EDGE, smallIntegerSingletonFactory.getAt(2), basicColorFactory.PINK, TBooleanFactory.getInstance().FALSE_);
end;
    

// throws Exception
procedure TBuildingRTSFormInput.setAllBinaryGameLayerManager(allBinaryGameLayerManager: TAllBinaryGameLayerManager);
var
  geographicMapCompositeInterface: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
begin
        inherited setAllBinaryGameLayerManager(allBinaryGameLayerManager);
        geographicMapCompositeInterface := IGeographicMapCompositeInterface(Pointer(allBinaryGameLayerManager));
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface()[0];
        Self.buildOnPathGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.spotTakenGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.selectBuildSpotGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.roadCollisionGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.noMoneyGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.buildingCollisionGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.structureToCloseCollisionGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.buildingGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
        Self.mapEdgeGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
end;
    

// throws Exception
procedure TBuildingRTSFormInput.processGameSpecific(associatedRtsLayer: TCollidableDestroyableDamageableLayer; rtsPlayerLayerInterface: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; itemIndex: Integer);
begin
        inherited process(layerManager);
        Self.buildFromMotionInput(rtsPlayerLayerInterface, layerManager, item, itemIndex);
end;
    

function TBuildingRTSFormInput.isPositionBlocked: Boolean;
begin
        Exit(Self.dropCellPositionHistory.isCellPositionWithDrop(Self.getSelectedGeographicCellPosition()));
end;
    

function TBuildingRTSFormInput.isDemoLocked(item: TABCustomItem): Boolean;
var
  factoryItem: TLayerInterfaceFactoryImageItem;
  layerInterfaceFactoryInterface: IDemoLockedWithCostLayerInterfaceFactoryInterface;
begin
        factoryItem := TLayerInterfaceFactoryImageItem(item);
        layerInterfaceFactoryInterface := IDemoLockedWithCostLayerInterfaceFactoryInterface(Pointer(factoryItem.getLayerInterfaceFactoryInterface()));
        if (TLockedUtil.getInstance().isLocked()) and (layerInterfaceFactoryInterface.isDemoLocked()) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

// throws Exception
procedure TBuildingRTSFormInput.buildFromMotionInput(rtsPlayerLayerInterface: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; item: TABCustomItem; itemIndex: Integer);
var
  commonStrings: TCommonStrings;
  geographicMapCompositeInterface: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  geographicMapCellPosition: TGeographicMapCellPosition;
  geographicMapCellType: TGeographicMapCellType;
  raceTrackGeographicMapCellTypeFactory: TRaceTrackGeographicMapCellTypeFactory;
  rtsLayer: TRTSLayer;
  cellPoint: TGPoint;
begin
        commonStrings := TCommonStrings.getInstance();
        Self.logUtil.putF(commonStrings.START, Self, 'buildFromMotionInput');
        if (layerManager) = (nil) then begin
            raise SysUtils.Exception.Create('');
        end;
        geographicMapCompositeInterface := IGeographicMapCompositeInterface(Pointer(layerManager));
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface()[0];
        if Self.isDemoLocked(item) then begin
            rtsPlayerLayerInterface.add(TErrorSound.getInstance());
            TLockedFeatureNotificationUtil.getInstance().fireWithColor(geographicMapInterface.getForegroundBasicColor());
            Exit;
        end;
        geographicMapCellPosition := Self.getSelectedGeographicCellPosition();
        if (geographicMapCellPosition) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
            if not (Self.isPositionBlocked()) then begin
                geographicMapCellType := geographicMapInterface.getCellTypeAt(geographicMapCellPosition);
                raceTrackGeographicMapCellTypeFactory := TRaceTrackGeographicMapCellTypeFactory(geographicMapInterface.getGeographicMapCellTypeFactory());
                if not (raceTrackGeographicMapCellTypeFactory.isPath(geographicMapCellType)) then begin
                    if (Self.newUnconstructedRTSLayerInterfaceArray[itemIndex]) = (TCollidableDestroyableDamageableLayer.getNullInstance()) then begin
                        Self.newUnconstructedRTSLayerInterfaceArray[itemIndex] := Self.getInstance(layerManager, item, geographicMapCellPosition);
                    end else begin
                        rtsLayer := TRTSLayer(Self.newUnconstructedRTSLayerInterfaceArray[itemIndex]);
                        cellPoint := geographicMapCellPosition.getPoint();
                        rtsLayer.setPosition(cellPoint.getX(), cellPoint.getY(), cellPoint.getZ());
                        rtsLayer.geographicMapCellPositionAreaBase.update(geographicMapInterface);
                    end;
                    rtsLayer := TRTSLayer(Self.newUnconstructedRTSLayerInterfaceArray[itemIndex]);
                    Self.attemptBuild(rtsPlayerLayerInterface, layerManager, rtsLayer, itemIndex);
                end else begin
                    rtsPlayerLayerInterface.add(TErrorSound.getInstance());
                    if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()) then begin
                        TGameNotificationEventHandler.getInstance().fireEvent(Self.buildOnPathGameNotificationEvent);
                    end;
                end;
            end else begin
                rtsPlayerLayerInterface.add(TErrorSound.getInstance());
                if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()) then begin
                    TGameNotificationEventHandler.getInstance().fireEvent(Self.spotTakenGameNotificationEvent);
                end;
            end;
        end else begin
            rtsPlayerLayerInterface.add(TErrorSound.getInstance());
            if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()) then begin
                TGameNotificationEventHandler.getInstance().fireEvent(Self.selectBuildSpotGameNotificationEvent);
            end;
        end;
end;
    

// throws Exception
function TBuildingRTSFormInput.attemptBuild(rtsPlayerLayerInterface: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; layerInterface: TRTSLayer; itemIndex: Integer): Boolean;
var
  geographicMapCellPositionArea: TGeographicMapCellPositionAreaBase;
  occupyList: TBasicArrayList;
  geographicMapCellType: TGeographicMapCellType;
  geographicMapCompositeInterface: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  raceTrackGeographicMapCellTypeFactory: TRaceTrackGeographicMapCellTypeFactory;
  index: Integer;
  cost: Integer;
  capital: TCapital;
  stringBuffer: TStringMaker;
begin
        Self.logUtil.putF(TStringMaker.Create().append('Layer: ').append(TStringUtil.getInstance().toString(layerInterface)).toString(), Self, 'attemptBuild');
        geographicMapCellPositionArea := layerInterface.geographicMapCellPositionAreaBase;
        occupyList := geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList();
        if not (Self.isBuildAttemptValid(rtsPlayerLayerInterface, layerInterface)) then begin
            Exit(False);
        end;
        
        for index := (occupyList.size()) - (1) downto 0 do begin
            geographicMapCompositeInterface := IGeographicMapCompositeInterface(Pointer(layerManager));
            geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface()[0];
            geographicMapCellType := geographicMapInterface.getCellTypeAt(TGeographicMapCellPosition(occupyList.get(index)));
            raceTrackGeographicMapCellTypeFactory := TRaceTrackGeographicMapCellTypeFactory(geographicMapInterface.getGeographicMapCellTypeFactory());
            if raceTrackGeographicMapCellTypeFactory.isPath(geographicMapCellType) then begin
                rtsPlayerLayerInterface.add(TErrorSound.getInstance());
                if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()) then begin
                    TGameNotificationEventHandler.getInstance().fireEvent(Self.roadCollisionGameNotificationEvent);
                end;
                Exit(False);
            end;
        end;
        cost := layerInterface.getCost();
        capital := rtsPlayerLayerInterface.getCapital();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Trying to Build: ');
        stringBuffer.append(layerInterface.getName());
        stringBuffer.append(' for: $');
        stringBuffer.appendint(cost);
        stringBuffer.append(' with ');
        stringBuffer.appendint(Integer(Trunc(capital.getTotalMoney())));
        Self.logUtil.putF(stringBuffer.toString(), Self, 'attemptBuild');
        if (cost) <= (capital.getTotalMoney()) then begin
            layerInterface.construct(rtsPlayerLayerInterface);
            Self.newUnconstructedRTSLayerInterfaceArray[itemIndex] := TCollidableDestroyableDamageableLayer.getNullInstance();
            capital.removeMoney(cost);
            Self.add(TObject(Pointer(rtsPlayerLayerInterface)), layerManager, layerInterface);
            Exit(True);
        end else begin
            rtsPlayerLayerInterface.add(TErrorSound.getInstance());
            if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()) then begin
                TGameNotificationEventHandler.getInstance().fireEvent(Self.noMoneyGameNotificationEvent);
            end;
            Exit(False);
        end;
end;
    

// throws Exception
function TBuildingRTSFormInput.isBuildAttemptValid(rtsPlayerLayerInterface: IRTSPlayerLayerInterface; layerInterface: TRTSLayer): Boolean;
var
  geographicMapCellPositionArea: TGeographicMapCellPositionAreaBase;
  occupyList: TBasicArrayList;
begin
        geographicMapCellPositionArea := layerInterface.geographicMapCellPositionAreaBase;
        occupyList := geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList();
        if Self.dropCellPositionHistory.anyCellPositionWithDrop(occupyList) then begin
            rtsPlayerLayerInterface.add(TErrorSound.getInstance());
            if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()) then begin
                TGameNotificationEventHandler.getInstance().fireEvent(Self.buildingCollisionGameNotificationEvent);
            end;
            Exit(False);
        end;
        if (Self.isUnitProducer) and (Self.dropCellPositionHistory.anyCellPositionWithDrop(geographicMapCellPositionArea.getSurroundingGeographicMapCellPositionList())) then begin
            rtsPlayerLayerInterface.add(TErrorSound.getInstance());
            if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()) then begin
                TGameNotificationEventHandler.getInstance().fireEvent(Self.structureToCloseCollisionGameNotificationEvent);
            end;
            Exit(False);
        end else begin
            if Self.isSurroundingCellsOffMap(layerInterface) then begin
                rtsPlayerLayerInterface.add(TErrorSound.getInstance());
                if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()) then begin
                    TGameNotificationEventHandler.getInstance().fireEvent(Self.mapEdgeGameNotificationEvent);
                end;
                Exit(False);
            end;
        end;
        Exit(True);
end;
    

// throws Exception
procedure TBuildingRTSFormInput.add(rtsPlayerLayerInterface: IRTSPlayerLayerInterface; layerManager: TAllBinaryLayerManager; layerInterface: TRTSLayer);
var
  geographicMapCellPositionArea: TGeographicMapCellPositionAreaBase;
  occupyList: TBasicArrayList;
  rtsPlayerGameInput: TRTSPlayerGameInput;
begin
        geographicMapCellPositionArea := layerInterface.geographicMapCellPositionAreaBase;
        occupyList := geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList();
        Self.dropCellPositionHistory.addAll(occupyList, layerInterface);
        rtsPlayerGameInput := TRTSPlayerGameInput(rtsPlayerLayerInterface.getPlayerGameInput());
        rtsPlayerGameInput.setSelectedRTSLayer(layerInterface, Self.getSelectedGeographicCellPosition());
        layerManager.append(layerInterface);
        rtsPlayerLayerInterface.add(TBuildingSound.getInstance());
        if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface()) then begin
            TGameNotificationEventHandler.getInstance().fireEvent(Self.buildingGameNotificationEvent);
        end;
end;
    

function TBuildingRTSFormInput.isSurroundingCellsOffMap(layerInterface: TRTSLayer): Boolean;
var
  geographicMapCellPositionArea: TGeographicMapCellPositionAreaBase;
  occupyList: TBasicArrayList;
  surroundList: TBasicArrayList;
  occupySize: Integer;
  surroundSize: Integer;
  stringBuffer: TStringMaker;
  isSurroundOffMap: Boolean;
begin
        geographicMapCellPositionArea := layerInterface.geographicMapCellPositionAreaBase;
        occupyList := geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList();
        surroundList := geographicMapCellPositionArea.getSurroundingGeographicMapCellPositionList();
        occupySize := occupyList.size();
        surroundSize := surroundList.size();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('occupySize: ');
        stringBuffer.appendint(occupySize);
        stringBuffer.append(' surroundSize: ');
        stringBuffer.appendint(surroundSize);
        stringBuffer.append(' surroundList: ');
        stringBuffer.append(TStringUtil.getInstance().toString(surroundList));
        Self.logUtil.putF(stringBuffer.toString(), Self, 'isSurroundingCellsOffMap');
        isSurroundOffMap := False;
        if ((occupySize) = (1)) and ((surroundSize) <> (8)) then begin
            isSurroundOffMap := True;
        end else if ((occupySize) = (4)) and ((surroundSize) <> (12)) then begin
            isSurroundOffMap := True;
        end;
        if ((occupySize) = (0)) or (isSurroundOffMap) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;

initialization

end.

