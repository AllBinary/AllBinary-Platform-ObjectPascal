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
// package org.allbinary.media.graphics.geography.pathfinding
unit PathFinder;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, AllBinaryTiledLayer, NullUtil, LogUtil, MathUtil, CommonStrings, BasicGeographicMap, BasicGeographicMapCellPositionFactory, GeographicMapCellPosition, GeographicMapCellType, RaceTrackGeographicMapCellType, BasicArrayList, BasicArrayListD, BasicArrayListUtil, MultipassState, PathFindingNode, PathFindingNodeCost, GeographicPathFinderBase;

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

  TPathFinder = class(TGeographicPathFinderBase)
  public
    logUtil: TLogUtil;
    basicArrayListUtil: TBasicArrayListUtil;
    mathUtil: TMathUtil;
    openPriorityQueue: TPriorityQueue<TPathFindingNodeCost>;
    closedSet: THashSet<TPathFindingNodeCost>;
    geographicMapInterface: TObject;
    costArray: TArray<TArray<TPathFindingNodeCost>>;
    procedure InitFields;
    constructor Create;
        procedure init(geographicMapInterface: TBasicGeographicMap); virtual;
        function searchTotalPath(startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList; totalPaths: Integer): TBasicArrayList; override;
        function searchTotalPathN(startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList; totalPaths: Integer; multipassState: TMultipassState): TBasicArrayList; override;
        function search(startPathFindingNode: TPathFindingNode; endPathFindingNode: TPathFindingNode): TBasicArrayList; virtual;
        procedure searchStart(startPathFindingNode: TPathFindingNode; endPathFindingNode: TPathFindingNode; multipassState: TMultipassState); virtual;
        function searchN(startPathFindingNode: TPathFindingNode; endPathFindingNode: TPathFindingNode; multipassState: TMultipassState): TBasicArrayList; virtual;
        function findPath(start: TGeographicMapCellPosition; target: TGeographicMapCellPosition): TBasicArrayList; virtual;
        procedure findPathStart(start: TGeographicMapCellPosition; target: TGeographicMapCellPosition; multipassState: TMultipassState); virtual;
        function findPathEnd(start: TGeographicMapCellPosition; target: TGeographicMapCellPosition; multipassState: TMultipassState): TBasicArrayList; virtual;
        function extractPath(start: TGeographicMapCellPosition; current: TPathFindingNodeCost): TBasicArrayList;
  end;

implementation
uses
  PathFindingNodeCostInfo;



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


procedure TPathFinder.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicArrayListUtil := TBasicArrayListUtil.getInstance();
  Self.mathUtil := TMathUtil.getInstance();
  Self.openPriorityQueue := TPriorityQueue<TPathFindingNodeCost>.Create();
  Self.closedSet := THashSet<TPathFindingNodeCost>.Create();
  Self.geographicMapInterface := TNullUtil.getInstance().NULL_OBJECT;
  Self.costArray := TPathFindingNodeCost.NULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY;
end;

constructor TPathFinder.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws Exception
procedure TPathFinder.init(geographicMapInterface: TBasicGeographicMap);
var
  tiledLayer: TAllBinaryTiledLayer;
  basicGeographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
  node: TPathFindingNodeCost;
  sizeX: Integer;
  sizeY: Integer;
  geographicMapCellType: TGeographicMapCellType;
  raceTrackGeographicMapCellType: TRaceTrackGeographicMapCellType;
  row: Integer;
  column: Integer;
begin
        Self.geographicMapInterface := geographicMapInterface;
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer();
        Self.costArray := TJava.NewArray2<TPathFindingNodeCost>(tiledLayer.getColumns(), tiledLayer.getRows());
        basicGeographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory();
        
        sizeX := System.Length(Self.costArray);
        sizeY := System.Length(Self.costArray[0]);
        for column := 0 to sizeX - 1 do begin
            for row := 0 to sizeY - 1 do begin
                geographicMapCellType := geographicMapInterface.getCellTypeAt(basicGeographicMapCellPositionFactory.getAt(column, row));
                raceTrackGeographicMapCellType := TRaceTrackGeographicMapCellType(geographicMapCellType);
                node := TPathFindingNodeCost.Create(TNullUtil.getInstance().NULL_OBJECT, basicGeographicMapCellPositionFactory.getAt(column, row), TPathFindingNodeCostInfo.Create(Int64(Trunc(raceTrackGeographicMapCellType.getTravelCost())), Int64(-1)));
                Self.costArray[column][row] := node;
            end;
        end;
end;
    

function TPathFinder.searchTotalPath(startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList; totalPaths: Integer): TBasicArrayList;
var
  commonStrings: TCommonStrings;
begin
        try
            Exit(Self.search(TPathFindingNode(startPathFindingNodeList.get(0)), TPathFindingNode(endPathFindingNodeList.get(0))));
        except
            on e: SysUtils.Exception do begin
            commonStrings := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings.EXCEPTION, Self, 'search', e);
            Exit(Self.basicArrayListUtil.getImmutableInstance());
            end;
        end;
end;
    

// throws Exception
function TPathFinder.searchTotalPathN(startPathFindingNodeList: TBasicArrayList; endPathFindingNodeList: TBasicArrayList; totalPaths: Integer; multipassState: TMultipassState): TBasicArrayList;
begin
        if (multipassState.step) = (0) then begin
            Inc(multipassState.step);
        end else if (multipassState.step) = (1) then begin
            Self.searchStart(TPathFindingNode(startPathFindingNodeList.get(0)), TPathFindingNode(endPathFindingNodeList.get(0)), multipassState);
        end else if (multipassState.step) = (2) then begin
            Exit(Self.searchN(TPathFindingNode(startPathFindingNodeList.get(0)), TPathFindingNode(endPathFindingNodeList.get(0)), multipassState));
        end;
        Exit(Self.basicArrayListUtil.getImmutableInstance());
end;
    

// throws Exception
function TPathFinder.search(startPathFindingNode: TPathFindingNode; endPathFindingNode: TPathFindingNode): TBasicArrayList;
var
  list: TBasicArrayList;
  pathList: TBasicArrayList;
begin
        list := Self.findPath(startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition);
        pathList := TBasicArrayListD.Create();
        pathList.add(list);
        Exit(pathList);
end;
    

// throws Exception
procedure TPathFinder.searchStart(startPathFindingNode: TPathFindingNode; endPathFindingNode: TPathFindingNode; multipassState: TMultipassState);
begin
        Self.findPathStart(startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition, multipassState);
end;
    

// throws Exception
function TPathFinder.searchN(startPathFindingNode: TPathFindingNode; endPathFindingNode: TPathFindingNode; multipassState: TMultipassState): TBasicArrayList;
var
  list: TBasicArrayList;
  pathList: TBasicArrayList;
begin
        list := Self.findPathEnd(startPathFindingNode.geographicMapCellPosition, endPathFindingNode.geographicMapCellPosition, multipassState);
        if (list) = (nil) then begin
            Exit(Self.basicArrayListUtil.getImmutableInstance());
        end;
        pathList := TBasicArrayListD.Create();
        pathList.add(list);
        multipassState.iteration := 0;
        multipassState.step := 0;
        Exit(pathList);
end;
    

// throws Exception
function TPathFinder.findPath(start: TGeographicMapCellPosition; target: TGeographicMapCellPosition): TBasicArrayList;
var
  discoveryCalculation: Int64;
  node: TPathFindingNodeCost;
  targetColumn: Integer;
  targetRow: Integer;
  sizeX: Integer;
  sizeY: Integer;
  row: Integer;
  column: Integer;
  startNode: TPathFindingNodeCost;
  geographicMapInterface: TBasicGeographicMap;
  basicGeographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
  allBinaryTiledLayer: TAllBinaryTiledLayer;
  targetNode: TPathFindingNodeCost;
  current: TPathFindingNodeCost;
  neighbor: TPathFindingNodeCost;
  neighborInfo: TPathFindingNodeCostInfo;
  calculatedCost: Int64;
begin
        Self.openPriorityQueue.clear();
        Self.closedSet.clear();
        
        
        targetColumn := target.getColumn();
        targetRow := target.getRow();
        sizeX := System.Length(Self.costArray);
        sizeY := System.Length(Self.costArray[0]);
        for column := 0 to sizeX - 1 do begin
            for row := 0 to sizeY - 1 do begin
                discoveryCalculation := (Int64(Trunc(Self.mathUtil.abs((column) - (targetColumn))))) + (Self.mathUtil.abs((row) - (targetRow)));
                node := Self.costArray[column][row];
                node.pathFindingNodeCostInfoP.totalCostP := 0;
                node.pathFindingNodeCostInfoP.costToEndP := discoveryCalculation;
            end;
        end;
        startNode := Self.costArray[start.getColumn()][start.getRow()];
        Self.openPriorityQueue.add(startNode);
        geographicMapInterface := TBasicGeographicMap(Self.geographicMapInterface);
        basicGeographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory();
        allBinaryTiledLayer := geographicMapInterface.getAllBinaryTiledLayer();
        targetNode := Self.costArray[target.getColumn()][target.getRow()];
        
        repeat
            current := Self.openPriorityQueue.poll();
            Self.closedSet.add(current);
            if current.equals(targetNode) then begin
                Exit(Self.extractPath(start, current));
            end;
            
            
            
            for column := (current.geographicMapCellPosition.getColumn()) - (1) to (current.geographicMapCellPosition.getColumn()) + (2) - 1 do begin
                for row := (current.geographicMapCellPosition.getRow()) - (1) to (current.geographicMapCellPosition.getRow()) + (2) - 1 do begin
                    if (((((column) > (0)) and ((row) > (0))) and ((column) < (allBinaryTiledLayer.getColumns()))) and ((row) < (allBinaryTiledLayer.getRows()))) and (geographicMapInterface.isOnMap(basicGeographicMapCellPositionFactory.getAt(column, row))) then begin
                        neighbor := Self.costArray[column][row];
                        if Self.closedSet.contains(neighbor) then begin
                            Continue;
                        end;
                        neighborInfo := neighbor.pathFindingNodeCostInfoP;
                        calculatedCost := ((neighborInfo.costToEndP) + (neighborInfo.costFromStartP)) + (current.pathFindingNodeCostInfoP.totalCostP);
                        if ((calculatedCost) < (neighborInfo.totalCostP)) or (not (Self.openPriorityQueue.contains(neighbor))) then begin
                            neighborInfo.totalCostP := calculatedCost;
                            neighbor.parent := current;
                            if not (Self.openPriorityQueue.contains(neighbor)) then begin
                                if geographicMapInterface.isOfFourDirections(current.geographicMapCellPosition, neighbor.geographicMapCellPosition) then begin
                                    Self.openPriorityQueue.add(neighbor);
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        until not (not (Self.openPriorityQueue.isEmpty()));
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
procedure TPathFinder.findPathStart(start: TGeographicMapCellPosition; target: TGeographicMapCellPosition; multipassState: TMultipassState);
var
  discoveryCalculation: Int64;
  node: TPathFindingNodeCost;
  targetColumn: Integer;
  targetRow: Integer;
  sizeX: Integer;
  sizeY: Integer;
  row: Integer;
  column: Integer;
  startNode: TPathFindingNodeCost;
begin
        Self.openPriorityQueue.clear();
        Self.closedSet.clear();
        
        
        targetColumn := target.getColumn();
        targetRow := target.getRow();
        sizeX := System.Length(Self.costArray);
        sizeY := System.Length(Self.costArray[0]);
        for column := 0 to sizeX - 1 do begin
            for row := 0 to sizeY - 1 do begin
                discoveryCalculation := (Int64(Trunc(Self.mathUtil.abs((column) - (targetColumn))))) + (Self.mathUtil.abs((row) - (targetRow)));
                node := Self.costArray[column][row];
                node.pathFindingNodeCostInfoP.totalCostP := 0;
                node.pathFindingNodeCostInfoP.costToEndP := discoveryCalculation;
            end;
        end;
        startNode := Self.costArray[start.getColumn()][start.getRow()];
        Self.openPriorityQueue.add(startNode);
        Inc(multipassState.step);
end;
    

// throws Exception
function TPathFinder.findPathEnd(start: TGeographicMapCellPosition; target: TGeographicMapCellPosition; multipassState: TMultipassState): TBasicArrayList;
var
  geographicMapInterface: TBasicGeographicMap;
  basicGeographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
  allBinaryTiledLayer: TAllBinaryTiledLayer;
  targetNode: TPathFindingNodeCost;
  current: TPathFindingNodeCost;
  total: Integer;
  neighbor: TPathFindingNodeCost;
  neighborInfo: TPathFindingNodeCostInfo;
  calculatedCost: Int64;
  row: Integer;
  column: Integer;
begin
        geographicMapInterface := TBasicGeographicMap(Self.geographicMapInterface);
        basicGeographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory();
        allBinaryTiledLayer := geographicMapInterface.getAllBinaryTiledLayer();
        targetNode := Self.costArray[target.getColumn()][target.getRow()];
        
        total := 0;
        repeat
            current := Self.openPriorityQueue.poll();
            Self.closedSet.add(current);
            if current.equals(targetNode) then begin
                Exit(Self.extractPath(start, current));
            end;
            
            
            
            for column := (current.geographicMapCellPosition.getColumn()) - (1) to (current.geographicMapCellPosition.getColumn()) + (2) - 1 do begin
                for row := (current.geographicMapCellPosition.getRow()) - (1) to (current.geographicMapCellPosition.getRow()) + (2) - 1 do begin
                    if (((((column) > (0)) and ((row) > (0))) and ((column) < (allBinaryTiledLayer.getColumns()))) and ((row) < (allBinaryTiledLayer.getRows()))) and (geographicMapInterface.isOnMap(basicGeographicMapCellPositionFactory.getAt(column, row))) then begin
                        neighbor := Self.costArray[column][row];
                        if Self.closedSet.contains(neighbor) then begin
                            Continue;
                        end;
                        neighborInfo := neighbor.pathFindingNodeCostInfoP;
                        calculatedCost := ((neighborInfo.costToEndP) + (neighborInfo.costFromStartP)) + (current.pathFindingNodeCostInfoP.totalCostP);
                        if ((calculatedCost) < (neighborInfo.totalCostP)) or (not (Self.openPriorityQueue.contains(neighbor))) then begin
                            neighborInfo.totalCostP := calculatedCost;
                            neighbor.parent := current;
                            if not (Self.openPriorityQueue.contains(neighbor)) then begin
                                if geographicMapInterface.isOfFourDirections(current.geographicMapCellPosition, neighbor.geographicMapCellPosition) then begin
                                    Self.openPriorityQueue.add(neighbor);
                                end;
                            end;
                        end;
                    end;
                end;
            end;
            Inc(total);
            if (total) > (10) then begin
                Exit(Self.basicArrayListUtil.getImmutableInstance());
            end;
        until not (not (Self.openPriorityQueue.isEmpty()));
        raise SysUtils.Exception.Create('');
end;
    

function TPathFinder.extractPath(start: TGeographicMapCellPosition; current: TPathFindingNodeCost): TBasicArrayList;
var
  path: TBasicArrayList;
begin
        path := TBasicArrayListD.Create();
        while (current.parent) <> (TNullUtil.getInstance().NULL_OBJECT) do begin
            path.add(current.geographicMapCellPosition);
            current := TPathFindingNodeCost(current.parent);
        end;
        path.add(start);
        Self.basicArrayListUtil.reverse(path);
        Exit(path);
end;

initialization

end.

