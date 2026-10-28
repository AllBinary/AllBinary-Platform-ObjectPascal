// Generated Code Do Not Modify
// package org.allbinary.util
unit BasicArrayList;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JsType, StringMaker, CommonLabels, CommonSeps, JsMethod, JsConstructor, JsProperty, ArrayUtil;

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

  // This is a very fast and simple resizable list.
  TBasicArrayList = class(TObject)
  public
    arrayUtil: TArrayUtil;
    objectArray: TArray<TObject>;
    currentIndex: Integer;
    class var SIZE_: string;
    procedure InitFields;
        constructor Create(objectArray: TArray<TObject>);
        procedure addAt(index: Integer; element: TObject); virtual;
        function add(anyType: TObject): Boolean; virtual;
        function removeAt(index: Integer): TObject; virtual;
        function remove(anyType: TObject): Boolean; virtual;
        function removeAll2(list: TBasicArrayList): Boolean; virtual;
        function addAll2(list: TBasicArrayList): Boolean; virtual;
        function addAllList(list: TBasicArrayList): Boolean; virtual;
        function addAll(newObjectArray: TArray<TObject>): Boolean; virtual;
        procedure ensureCapacity(minSize: Integer); virtual;
        procedure trimToSize; virtual;
        function indexOf(anyType: TObject): Integer; virtual;
        function lastIndexOf(anyType: TObject): Integer; virtual;
        function get(index: Integer): TObject; virtual;
        function set_(index: Integer; element: TObject): TObject; virtual;
        procedure clear; virtual;
        function size: Integer; virtual;
        function isEmpty: Boolean; virtual;
        function contains(anyType: TObject): Boolean; virtual;
        function toArray: TArray<TObject>; virtual;
        function toArrayType(objectArray: TArray<TObject>): TArray<TObject>; virtual;
        function clone: TObject; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  BasicArrayListS;



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


procedure TBasicArrayList.InitFields;
begin
  Self.arrayUtil := TArrayUtil.getInstance();
  
  Self.currentIndex := 0;
end;
    

constructor TBasicArrayList.Create(objectArray: TArray<TObject>);
begin
    inherited Create;
    InitFields;
        Self.objectArray := objectArray;
end;
    

procedure TBasicArrayList.addAt(index: Integer; element: TObject);
var
  stringBuffer: TStringMaker;
begin
        if ((index) > (Self.currentIndex)) or ((index) < (0)) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TCommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(TBasicArrayList.SIZE_);
            stringBuffer.appendint(Self.currentIndex);
            raise SysUtils.Exception.Create(stringBuffer.toString());
        end;
        Self.ensureCapacity((Self.currentIndex) + (1));
        TJava.ArrayCopy<TObject>(Self.objectArray, index, Self.objectArray, (index) + (1), (Self.currentIndex) - (index));
        Self.objectArray[index] := element;
        Inc(Self.currentIndex);
end;
    

function TBasicArrayList.add(anyType: TObject): Boolean;
begin
        Self.ensureCapacity((Self.currentIndex) + (1));
        Self.objectArray[TJava.PostInc(Self.currentIndex)] := anyType;
        Exit(True);
end;
    

function TBasicArrayList.removeAt(index: Integer): TObject;
var
  stringBuffer: TStringMaker;
  oldValue: TObject;
  numMoved: Integer;
begin
        if (index) >= (Self.currentIndex) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TCommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(TBasicArrayList.SIZE_);
            stringBuffer.appendint(Self.currentIndex);
            raise SysUtils.Exception.Create(stringBuffer.toString());
        end;
        oldValue := Self.objectArray[index];
        numMoved := ((Self.currentIndex) - (index)) - (1);
        if (numMoved) > (0) then begin
            TJava.ArrayCopy<TObject>(Self.objectArray, (index) + (1), Self.objectArray, index, numMoved);
        end;
        Self.objectArray[TJava.PreDec(Self.currentIndex)] := nil;
        Exit(oldValue);
end;
    

function TBasicArrayList.remove(anyType: TObject): Boolean;
var
  numMoved: Integer;
  index: Integer;
begin
        if (anyType) = (nil) then begin
            for index := 0 to Self.currentIndex - 1 do begin
                if (Self.objectArray[index]) = (nil) then begin
                    numMoved := ((Self.currentIndex) - (index)) - (1);
                    if (numMoved) > (0) then begin
                        TJava.ArrayCopy<TObject>(Self.objectArray, (index) + (1), Self.objectArray, index, numMoved);
                    end;
                    Self.objectArray[TJava.PreDec(Self.currentIndex)] := nil;
                    Exit(True);
                end;
            end;
        end else begin
            for index := 0 to Self.currentIndex - 1 do begin
                if ((anyType) = (Self.objectArray[index])) or (anyType.equals(Self.objectArray[index])) then begin
                    numMoved := ((Self.currentIndex) - (index)) - (1);
                    if (numMoved) > (0) then begin
                        TJava.ArrayCopy<TObject>(Self.objectArray, (index) + (1), Self.objectArray, index, numMoved);
                    end;
                    Self.objectArray[TJava.PreDec(Self.currentIndex)] := nil;
                    Exit(True);
                end;
            end;
        end;
        Exit(False);
end;
    

function TBasicArrayList.removeAll2(list: TBasicArrayList): Boolean;
var
  result_: Boolean;
  size: Integer;
  index: Integer;
begin
        result_ := True;
        size := list.size();
        for index := 0 to size - 1 do begin
            if Self.remove(list.get(index)) then begin
            end else begin
                result_ := False;
            end;
        end;
        Exit(result_);
end;
    

function TBasicArrayList.addAll2(list: TBasicArrayList): Boolean;
var
  listSize: Integer;
  index: Integer;
begin
        Self.ensureCapacity((Self.currentIndex) + (list.currentIndex));
        listSize := list.currentIndex;
        for index := 0 to listSize - 1 do begin
            Self.objectArray[TJava.PostInc(Self.currentIndex)] := list.objectArray[index];
        end;
        Exit(True);
end;
    

function TBasicArrayList.addAllList(list: TBasicArrayList): Boolean;
var
  newObjectArray: TArray<TObject>;
begin
        newObjectArray := list.toArray();
        Exit(Self.addAll(newObjectArray));
end;
    

function TBasicArrayList.addAll(newObjectArray: TArray<TObject>): Boolean;
var
  numSize: Integer;
begin
        numSize := System.Length(newObjectArray);
        Self.ensureCapacity((Self.currentIndex) + (numSize));
        TJava.ArrayCopy<TObject>(newObjectArray, 0, Self.objectArray, Self.currentIndex, numSize);
        Self.currentIndex := (Self.currentIndex) + (numSize);
        Exit((numSize) <> (0));
end;
    

procedure TBasicArrayList.ensureCapacity(minSize: Integer);
var
  oldCapacity: Integer;
  newCapacity: Integer;
begin
        oldCapacity := System.Length(Self.objectArray);
        if (minSize) > (oldCapacity) then begin
            newCapacity := ((TJava.SignedRightShift(((oldCapacity) * (3)), 1))) + (1);
            if (newCapacity) < (minSize) then begin
                newCapacity := minSize;
            end;
            Self.objectArray := Self.arrayUtil.copyOf(Self.objectArray, newCapacity);
        end;
end;
    

procedure TBasicArrayList.trimToSize;
var
  oldCapacity: Integer;
begin
        oldCapacity := System.Length(Self.objectArray);
        if (Self.currentIndex) < (oldCapacity) then begin
            Self.objectArray := Self.arrayUtil.copyOf(Self.objectArray, Self.currentIndex);
        end;
end;
    

function TBasicArrayList.indexOf(anyType: TObject): Integer;
var
  i: Integer;
begin
        if (anyType) = (nil) then begin
            for i := 0 to Self.currentIndex - 1 do begin
                if (Self.objectArray[i]) = (nil) then begin
                    Exit(i);
                end;
            end;
        end else begin
            for i := 0 to Self.currentIndex - 1 do begin
                if anyType.equals(Self.objectArray[i]) then begin
                    Exit(i);
                end;
            end;
        end;
        Exit(-1);
end;
    

function TBasicArrayList.lastIndexOf(anyType: TObject): Integer;
var
  i: Integer;
begin
        if (anyType) = (nil) then begin
            for i := (Self.currentIndex) - (1) downto 0 do begin
                if (Self.objectArray[i]) = (nil) then begin
                    Exit(i);
                end;
            end;
        end else begin
            for i := (Self.currentIndex) - (1) downto 0 do begin
                if anyType.equals(Self.objectArray[i]) then begin
                    Exit(i);
                end;
            end;
        end;
        Exit(-1);
end;
    

function TBasicArrayList.get(index: Integer): TObject;
var
  stringBuffer: TStringMaker;
begin
        if (index) >= (Self.currentIndex) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TCommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(TBasicArrayList.SIZE_);
            stringBuffer.appendint(Self.currentIndex);
            raise SysUtils.Exception.Create(stringBuffer.toString());
        end;
        Exit(Self.objectArray[index]);
end;
    

function TBasicArrayList.set_(index: Integer; element: TObject): TObject;
var
  stringBuffer: TStringMaker;
  oldValue: TObject;
begin
        if (index) >= (Self.currentIndex) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TCommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(TBasicArrayList.SIZE_);
            stringBuffer.appendint(Self.currentIndex);
            raise SysUtils.Exception.Create(stringBuffer.toString());
        end;
        oldValue := Self.objectArray[index];
        Self.objectArray[index] := element;
        Exit(oldValue);
end;
    

procedure TBasicArrayList.clear;
var
  i: Integer;
begin
        for i := 0 to Self.currentIndex - 1 do begin
            Self.objectArray[i] := nil;
        end;
        Self.currentIndex := 0;
end;
    

function TBasicArrayList.size: Integer;
begin
        Exit(Self.currentIndex);
end;
    

function TBasicArrayList.isEmpty: Boolean;
begin
        Exit((Self.currentIndex) = (0));
end;
    

function TBasicArrayList.contains(anyType: TObject): Boolean;
begin
        Exit((Self.indexOf(anyType)) >= (0));
end;
    

function TBasicArrayList.toArray: TArray<TObject>;
begin
        Exit(Self.arrayUtil.copyOf(Self.objectArray, Self.currentIndex));
end;
    

function TBasicArrayList.toArrayType(objectArray: TArray<TObject>): TArray<TObject>;
begin
        if (System.Length(objectArray)) < (Self.currentIndex) then begin
            Exit(Self.arrayUtil.copyOfType(Self.objectArray, Self.currentIndex, TObject));
        end;
        TJava.ArrayCopy<TObject>(Self.objectArray, 0, objectArray, 0, Self.currentIndex);
        if (System.Length(objectArray)) > (Self.currentIndex) then begin
            objectArray[Self.currentIndex] := nil;
        end;
        Exit(objectArray);
end;
    

function TBasicArrayList.clone: TObject;
var
  size: Integer;
  list: TBasicArrayList;
  anyType: TObject;
  index: Integer;
begin
        size := Self.size();
        list := TBasicArrayListS.Create(size);
        
        for index := 0 to size - 1 do begin
            anyType := Self.objectArray[index];
            list.add(anyType);
        end;
        Exit(list);
end;
    

function TBasicArrayList.toString: string;
var
  COMMA_SEP: string;
  stringBuffer: TStringMaker;
  index: Integer;
begin
        COMMA_SEP := TCommonSeps.getInstance().COMMA_SEP;
        stringBuffer := TStringMaker.Create();
        for index := 0 to Self.currentIndex - 1 do begin
            stringBuffer.append(Self.objectArray[index].toString());
            stringBuffer.append(COMMA_SEP);
        end;
        Exit(stringBuffer.toString());
end;

initialization
  TBasicArrayList.SIZE_ := ', Size: ';

end.

