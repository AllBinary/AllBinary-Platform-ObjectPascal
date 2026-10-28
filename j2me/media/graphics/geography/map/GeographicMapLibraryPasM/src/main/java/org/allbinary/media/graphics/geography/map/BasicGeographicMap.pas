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
// package org.allbinary.media.graphics.geography.map
unit BasicGeographicMap;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, AllBinaryTiledLayer, BasicColor, Layer, MathUtil, BasicArrayList, BasicGeographicMapCellPositionFactory, GeographicMapCellPositionFactoryInterface, GeographicMapCellTypeFactory, GeographicMapCellPositionBaseFactory, GeographicMapCellPosition, GeographicMapCellType, SimpleGeographicMap, GeographicMapInterface;

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

  TBasicGeographicMap = class(TSimpleGeographicMap, IGeographicMapInterface)
  public
    mathUtil: TMathUtil;
    geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
    geographicMapCellPositionFactoryInterface: IGeographicMapCellPositionFactoryInterface;
    geographicMapCellTypeFactory: TGeographicMapCellTypeFactory;
    class var NULL_BASIC_GEOGRAPHIC_MAP_ARRAY: TArray<TBasicGeographicMap>;
    procedure InitFields;
        constructor Create(id: Integer; name: string; cellTypeIdToGeographicMapCellType: TArray<Integer>; tiledLayer: TAllBinaryTiledLayer; foregroundBasicColor: TBasicColor; backgroundBasicColor: TBasicColor; geographicMapCellPositionFactoryInterface: IGeographicMapCellPositionFactoryInterface; geographicMapCellPositionBaseFactory: TGeographicMapCellPositionBaseFactory; geographicMapCellTypeFactory: TGeographicMapCellTypeFactory);
        function getCellPosition(direction: Integer; oldGeographicMapCellPosition: TGeographicMapCellPosition): TGeographicMapCellPosition; virtual;
        function getCellPositionNoThrow(direction: Integer; oldGeographicMapCellPosition: TGeographicMapCellPosition): TGeographicMapCellPosition; virtual;
        function isOfFourDirections(oldGeographicMapCellPosition: TGeographicMapCellPosition; newGeographicMapCellPosition: TGeographicMapCellPosition): Boolean; virtual;
        function getCellPositionAtXY(x: Integer; y: Integer): TGeographicMapCellPosition; virtual;
        function getCellPositionAtXYNoThrow(x: Integer; y: Integer): TGeographicMapCellPosition; virtual;
        function isOnMap(geographicMapCellPosition: TGeographicMapCellPosition): Boolean; virtual;
        function getCellPositionAtNoThrow(x: Integer; y: Integer; x2: Integer; y2: Integer; geographicMapCellPositionList: TBasicArrayList): TBasicArrayList; virtual;
        function getCellPositionsAt(layer: TLayer; currentCellPositionArray: TArray<TArray<TGeographicMapCellPosition>>; cellPositionArray: TArray<TArray<TGeographicMapCellPosition>>): Boolean; virtual;
        function getCellTypeAtXY(x: Integer; y: Integer): TGeographicMapCellType; virtual;
        function getGeographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory; virtual;
        function getGeographicMapCellPositionFactoryInterface: IGeographicMapCellPositionFactoryInterface; virtual;
        function getGeographicMapCellTypeFactory: TGeographicMapCellTypeFactory; virtual;
  end;

implementation
uses
  SimpleGeographicMapCellPositionFactory;



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


procedure TBasicGeographicMap.InitFields;
begin
  Self.mathUtil := TMathUtil.getInstance();
  
  
  
end;
    

constructor TBasicGeographicMap.Create(id: Integer; name: string; cellTypeIdToGeographicMapCellType: TArray<Integer>; tiledLayer: TAllBinaryTiledLayer; foregroundBasicColor: TBasicColor; backgroundBasicColor: TBasicColor; geographicMapCellPositionFactoryInterface: IGeographicMapCellPositionFactoryInterface; geographicMapCellPositionBaseFactory: TGeographicMapCellPositionBaseFactory; geographicMapCellTypeFactory: TGeographicMapCellTypeFactory);
begin
        inherited Create(id, name, cellTypeIdToGeographicMapCellType, tiledLayer, foregroundBasicColor, backgroundBasicColor);
        InitFields;
        Self.geographicMapCellPositionFactoryInterface := geographicMapCellPositionFactoryInterface;
        Self.geographicMapCellPositionFactory := geographicMapCellPositionBaseFactory.getInstance(Self);
        Self.geographicMapCellTypeFactory := geographicMapCellTypeFactory;
end;
    

// throws Exception
function TBasicGeographicMap.getCellPosition(direction: Integer; oldGeographicMapCellPosition: TGeographicMapCellPosition): TGeographicMapCellPosition;
begin
        case direction of
            0: begin
                Exit(Self.geographicMapCellPositionFactory.getAt((oldGeographicMapCellPosition.getColumn()) - (1), oldGeographicMapCellPosition.getRow()));
            end;
            1: begin
                Exit(Self.geographicMapCellPositionFactory.getAt((oldGeographicMapCellPosition.getColumn()) + (1), oldGeographicMapCellPosition.getRow()));
            end;
            2: begin
                Exit(Self.geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), (oldGeographicMapCellPosition.getRow()) - (1)));
            end;
            3: begin
                Exit(Self.geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), (oldGeographicMapCellPosition.getRow()) + (1)));
            end;
            else begin
                raise SysUtils.Exception.Create('Only Four Directions');
            end;
        end;
end;
    

// throws Exception
function TBasicGeographicMap.getCellPositionNoThrow(direction: Integer; oldGeographicMapCellPosition: TGeographicMapCellPosition): TGeographicMapCellPosition;
begin
        case direction of
            0: begin
                if ((oldGeographicMapCellPosition.getColumn()) - (1)) >= (0) then begin
                    Exit(Self.geographicMapCellPositionFactory.getAt((oldGeographicMapCellPosition.getColumn()) - (1), oldGeographicMapCellPosition.getRow()));
                end else begin
                    Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                end;
            end;
            1: begin
                if ((oldGeographicMapCellPosition.getColumn()) + (1)) < (Self.getAllBinaryTiledLayer().getColumns()) then begin
                    Exit(Self.geographicMapCellPositionFactory.getAt((oldGeographicMapCellPosition.getColumn()) + (1), oldGeographicMapCellPosition.getRow()));
                end else begin
                    Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                end;
            end;
            2: begin
                if ((oldGeographicMapCellPosition.getRow()) - (1)) >= (0) then begin
                    Exit(Self.geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), (oldGeographicMapCellPosition.getRow()) - (1)));
                end else begin
                    Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                end;
            end;
            3: begin
                if ((oldGeographicMapCellPosition.getRow()) + (1)) < (Self.getAllBinaryTiledLayer().getRows()) then begin
                    Exit(Self.geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), (oldGeographicMapCellPosition.getRow()) + (1)));
                end else begin
                    Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                end;
            end;
            else begin
                Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
            end;
        end;
end;
    

// throws Exception
function TBasicGeographicMap.isOfFourDirections(oldGeographicMapCellPosition: TGeographicMapCellPosition; newGeographicMapCellPosition: TGeographicMapCellPosition): Boolean;
var
  index: Integer;
begin
        for index := 0 to 4 - 1 do begin
            if (newGeographicMapCellPosition) = (Self.getCellPositionNoThrow(index, oldGeographicMapCellPosition)) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

// throws Exception
function TBasicGeographicMap.getCellPositionAtXY(x: Integer; y: Integer): TGeographicMapCellPosition;
var
  allBinaryTiledLayer: TAllBinaryTiledLayer;
  i_column: Integer;
  i_row: Integer;
begin
        allBinaryTiledLayer := Self.getAllBinaryTiledLayer();
        i_column := Self.mathUtil.abs((x) / (allBinaryTiledLayer.getCellHeight()));
        i_row := Self.mathUtil.abs((y) / (allBinaryTiledLayer.getCellWidth()));
        Exit(Self.geographicMapCellPositionFactory.getAt(i_column, i_row));
end;
    

function TBasicGeographicMap.getCellPositionAtXYNoThrow(x: Integer; y: Integer): TGeographicMapCellPosition;
var
  allBinaryTiledLayer: TAllBinaryTiledLayer;
  i_column: Integer;
  i_row: Integer;
begin
        allBinaryTiledLayer := Self.getAllBinaryTiledLayer();
        i_column := Self.mathUtil.abs((x) / (allBinaryTiledLayer.getCellHeight()));
        i_row := Self.mathUtil.abs((y) / (allBinaryTiledLayer.getCellWidth()));
        if ((allBinaryTiledLayer.getColumns()) > (i_column)) and ((allBinaryTiledLayer.getRows()) > (i_row)) then begin
            try
                Exit(Self.geographicMapCellPositionFactory.getAt(i_column, i_row));
            except
                on e: SysUtils.Exception do begin
                Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                end;
            end;
        end else begin
            Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        end;
end;
    

// throws Exception
function TBasicGeographicMap.isOnMap(geographicMapCellPosition: TGeographicMapCellPosition): Boolean;
var
  allBinaryTiledLayer: TAllBinaryTiledLayer;
  i_column: Integer;
  i_row: Integer;
begin
        allBinaryTiledLayer := Self.getAllBinaryTiledLayer();
        i_column := geographicMapCellPosition.getColumn();
        i_row := geographicMapCellPosition.getRow();
        if ((allBinaryTiledLayer.getColumns()) > (i_column)) and ((allBinaryTiledLayer.getRows()) > (i_row)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

// throws Exception
function TBasicGeographicMap.getCellPositionAtNoThrow(x: Integer; y: Integer; x2: Integer; y2: Integer; geographicMapCellPositionList: TBasicArrayList): TBasicArrayList;
var
  allBinaryTiledLayer: TAllBinaryTiledLayer;
  i_columnMin: Integer;
  i_rowMin: Integer;
  i_columnMax: Integer;
  i_rowMax: Integer;
  rowIndex: Integer;
  columnIndex: Integer;
begin
        geographicMapCellPositionList.clear();
        allBinaryTiledLayer := Self.getAllBinaryTiledLayer();
        i_columnMin := Self.mathUtil.abs((x) / (allBinaryTiledLayer.getCellHeight()));
        i_rowMin := Self.mathUtil.abs((y) / (allBinaryTiledLayer.getCellWidth()));
        i_columnMax := (Self.mathUtil.abs((x2) / (allBinaryTiledLayer.getCellHeight()))) + (1);
        i_rowMax := (Self.mathUtil.abs((y2) / (allBinaryTiledLayer.getCellWidth()))) + (1);
        for columnIndex := i_columnMin to i_columnMax - 1 do begin
            for rowIndex := i_rowMin to i_rowMax - 1 do begin
                if ((allBinaryTiledLayer.getColumns()) > (columnIndex)) and ((allBinaryTiledLayer.getRows()) > (rowIndex)) then begin
                    geographicMapCellPositionList.add(Self.geographicMapCellPositionFactory.getAt(columnIndex, rowIndex));
                end;
            end;
        end;
        Exit(geographicMapCellPositionList);
end;
    

// throws Exception
function TBasicGeographicMap.getCellPositionsAt(layer: TLayer; currentCellPositionArray: TArray<TArray<TGeographicMapCellPosition>>; cellPositionArray: TArray<TArray<TGeographicMapCellPosition>>): Boolean;
var
  hasChanged: Boolean;
  size: Integer;
  size2: Integer;
  xPortion: Integer;
  yPortion: Integer;
  x: Integer;
  y: Integer;
  index2: Integer;
  index: Integer;
begin
        hasChanged := False;
        size := System.Length(cellPositionArray);
        size2 := System.Length(cellPositionArray[0]);
        xPortion := (layer.getXP()) / (((size) - (1)));
        yPortion := (layer.getYP()) / (((size) - (1)));
        for index := 0 to size - 1 do begin
            for index2 := 0 to size2 - 1 do begin
                x := (xPortion) * (index);
                y := (yPortion) * (index);
                cellPositionArray[index][index2] := Self.getCellPositionAtXY(x, y);
                if (currentCellPositionArray[index][index2]) <> (cellPositionArray[index][index2]) then begin
                    hasChanged := True;
                end;
            end;
        end;
        Exit(hasChanged);
end;
    

// throws Exception
function TBasicGeographicMap.getCellTypeAtXY(x: Integer; y: Integer): TGeographicMapCellType;
var
  cellPosition: TGeographicMapCellPosition;
begin
        cellPosition := Self.getCellPositionAtXY(x, y);
        Exit(Self.getCellTypeAt(cellPosition));
end;
    

function TBasicGeographicMap.getGeographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
begin
        Exit(Self.geographicMapCellPositionFactory);
end;
    

function TBasicGeographicMap.getGeographicMapCellPositionFactoryInterface: IGeographicMapCellPositionFactoryInterface;
begin
        Exit(Self.geographicMapCellPositionFactoryInterface);
end;
    

function TBasicGeographicMap.getGeographicMapCellTypeFactory: TGeographicMapCellTypeFactory;
begin
        Exit(Self.geographicMapCellTypeFactory);
end;

initialization
  TBasicGeographicMap.NULL_BASIC_GEOGRAPHIC_MAP_ARRAY := TJava.NewArray<TBasicGeographicMap>(0);

end.

