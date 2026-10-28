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
// package org.allbinary.game.input
unit PCKeyFactory;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, PositionStrings, CommonPhoneStrings, CommonSeps, PCGameKey, Input;

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

  TPCKeyFactory = class(TObject)
  public
    UNKNOWN: TPCGameKey;
    ENTER: TPCGameKey;
    _A: TPCGameKey;
    _B: TPCGameKey;
    _C: TPCGameKey;
    _D: TPCGameKey;
    _E: TPCGameKey;
    _F: TPCGameKey;
    _G: TPCGameKey;
    _H: TPCGameKey;
    _I: TPCGameKey;
    _J: TPCGameKey;
    _K: TPCGameKey;
    _L: TPCGameKey;
    _M: TPCGameKey;
    _N: TPCGameKey;
    _O: TPCGameKey;
    _P: TPCGameKey;
    _Q: TPCGameKey;
    _R: TPCGameKey;
    _S: TPCGameKey;
    _T: TPCGameKey;
    _U: TPCGameKey;
    _V: TPCGameKey;
    _W: TPCGameKey;
    _X: TPCGameKey;
    _Y: TPCGameKey;
    _Z: TPCGameKey;
    a: TPCGameKey;
    b: TPCGameKey;
    c: TPCGameKey;
    d: TPCGameKey;
    e: TPCGameKey;
    f: TPCGameKey;
    g: TPCGameKey;
    h: TPCGameKey;
    i: TPCGameKey;
    j: TPCGameKey;
    k: TPCGameKey;
    l: TPCGameKey;
    m: TPCGameKey;
    n: TPCGameKey;
    o: TPCGameKey;
    p: TPCGameKey;
    q: TPCGameKey;
    r: TPCGameKey;
    s: TPCGameKey;
    t: TPCGameKey;
    u: TPCGameKey;
    v: TPCGameKey;
    w: TPCGameKey;
    x: TPCGameKey;
    y: TPCGameKey;
    z: TPCGameKey;
    ZERO: TPCGameKey;
    ONE: TPCGameKey;
    TWO: TPCGameKey;
    THREE: TPCGameKey;
    FOUR: TPCGameKey;
    FIVE: TPCGameKey;
    SIX: TPCGameKey;
    SEVEN: TPCGameKey;
    EIGHT: TPCGameKey;
    NINE: TPCGameKey;
    DPAD_UP: TPCGameKey;
    DPAD_DOWN: TPCGameKey;
    DPAD_LEFT: TPCGameKey;
    DPAD_RIGHT: TPCGameKey;
    DPAD_UP2: TPCGameKey;
    DPAD_DOWN2: TPCGameKey;
    DPAD_LEFT2: TPCGameKey;
    DPAD_RIGHT2: TPCGameKey;
    COMMA: TPCGameKey;
    SPACE: TPCGameKey;
    DEL: TPCGameKey;
    STAR: TPCGameKey;
    QUESTION: TPCGameKey;
    PERIOD: TPCGameKey;
    ESCAPE: TPCGameKey;
    BACK_SPACE: TPCGameKey;
    class var SINGLETON: TPCKeyFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TPCKeyFactory; static;
        function isSubmission(input: TInput): Boolean; virtual;
        function isDelete(input: TInput): Boolean; virtual;
        function isBackSpace(input: TInput): Boolean; virtual;
        function isUp(input: TInput): Boolean; virtual;
        function isDown(input: TInput): Boolean; virtual;
        function isLeft(input: TInput): Boolean; virtual;
        function isRight(input: TInput): Boolean; virtual;
        function isEnter(input: TInput): Boolean; virtual;
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


procedure TPCKeyFactory.InitFields;
begin
  Self.UNKNOWN := TPCGameKey.Create(254, 'UNKNOWN');
  Self.ENTER := TPCGameKey.Create(13, 'Enter');
  Self._A := TPCGameKey.Create(65, 'A');
  Self._B := TPCGameKey.Create(66, 'B');
  Self._C := TPCGameKey.Create(67, 'C');
  Self._D := TPCGameKey.Create(68, 'D');
  Self._E := TPCGameKey.Create(69, 'E');
  Self._F := TPCGameKey.Create(70, 'F');
  Self._G := TPCGameKey.Create(71, 'G');
  Self._H := TPCGameKey.Create(72, 'H');
  Self._I := TPCGameKey.Create(73, 'I');
  Self._J := TPCGameKey.Create(74, 'J');
  Self._K := TPCGameKey.Create(75, 'K');
  Self._L := TPCGameKey.Create(76, 'L');
  Self._M := TPCGameKey.Create(77, 'M');
  Self._N := TPCGameKey.Create(78, 'N');
  Self._O := TPCGameKey.Create(79, 'O');
  Self._P := TPCGameKey.Create(80, 'P');
  Self._Q := TPCGameKey.Create(81, 'Q');
  Self._R := TPCGameKey.Create(82, 'R');
  Self._S := TPCGameKey.Create(83, 'S');
  Self._T := TPCGameKey.Create(84, 'T');
  Self._U := TPCGameKey.Create(85, 'U');
  Self._V := TPCGameKey.Create(86, 'V');
  Self._W := TPCGameKey.Create(87, 'W');
  Self._X := TPCGameKey.Create(88, 'X');
  Self._Y := TPCGameKey.Create(89, 'Y');
  Self._Z := TPCGameKey.Create(90, 'Z');
  Self.a := TPCGameKey.Create(97, 'a');
  Self.b := TPCGameKey.Create(98, 'b');
  Self.c := TPCGameKey.Create(99, 'c');
  Self.d := TPCGameKey.Create(100, 'd');
  Self.e := TPCGameKey.Create(101, 'e');
  Self.f := TPCGameKey.Create(102, 'f');
  Self.g := TPCGameKey.Create(103, 'g');
  Self.h := TPCGameKey.Create(104, 'h');
  Self.i := TPCGameKey.Create(105, 'i');
  Self.j := TPCGameKey.Create(106, 'j');
  Self.k := TPCGameKey.Create(107, 'k');
  Self.l := TPCGameKey.Create(108, 'l');
  Self.m := TPCGameKey.Create(109, 'm');
  Self.n := TPCGameKey.Create(110, 'n');
  Self.o := TPCGameKey.Create(111, 'o');
  Self.p := TPCGameKey.Create(112, 'p');
  Self.q := TPCGameKey.Create(113, 'q');
  Self.r := TPCGameKey.Create(114, 'r');
  Self.s := TPCGameKey.Create(115, 's');
  Self.t := TPCGameKey.Create(116, 't');
  Self.u := TPCGameKey.Create(117, 'u');
  Self.v := TPCGameKey.Create(118, 'v');
  Self.w := TPCGameKey.Create(119, 'w');
  Self.x := TPCGameKey.Create(120, TPositionStrings.getInstance().X);
  Self.y := TPCGameKey.Create(121, TPositionStrings.getInstance().Y);
  Self.z := TPCGameKey.Create(122, 'z');
  Self.ZERO := TPCGameKey.Create(48, TCommonPhoneStrings.getInstance().ZERO);
  Self.ONE := TPCGameKey.Create(49, TCommonPhoneStrings.getInstance().ONE);
  Self.TWO := TPCGameKey.Create(50, TCommonPhoneStrings.getInstance().TWO);
  Self.THREE := TPCGameKey.Create(51, TCommonPhoneStrings.getInstance().THREE);
  Self.FOUR := TPCGameKey.Create(52, TCommonPhoneStrings.getInstance().FOUR);
  Self.FIVE := TPCGameKey.Create(53, TCommonPhoneStrings.getInstance().FIVE);
  Self.SIX := TPCGameKey.Create(54, TCommonPhoneStrings.getInstance().SIX);
  Self.SEVEN := TPCGameKey.Create(55, TCommonPhoneStrings.getInstance().SEVEN);
  Self.EIGHT := TPCGameKey.Create(56, TCommonPhoneStrings.getInstance().EIGHT);
  Self.NINE := TPCGameKey.Create(57, TCommonPhoneStrings.getInstance().NINE);
  Self.DPAD_UP := TPCGameKey.Create(38, TCommonPhoneStrings.getInstance().UP);
  Self.DPAD_DOWN := TPCGameKey.Create(40, TCommonPhoneStrings.getInstance().DOWN);
  Self.DPAD_LEFT := TPCGameKey.Create(37, TCommonPhoneStrings.getInstance().LEFT);
  Self.DPAD_RIGHT := TPCGameKey.Create(39, TCommonPhoneStrings.getInstance().RIGHT);
  Self.DPAD_UP2 := Self.DPAD_UP;
  Self.DPAD_DOWN2 := Self.DPAD_DOWN;
  Self.DPAD_LEFT2 := Self.DPAD_LEFT;
  Self.DPAD_RIGHT2 := Self.DPAD_RIGHT;
  Self.COMMA := TPCGameKey.Create(44, 'COMMA');
  Self.SPACE := TPCGameKey.Create(32, 'SPACE');
  Self.DEL := TPCGameKey.Create(46, 'DEL');
  Self.STAR := TPCGameKey.Create(42, TCommonPhoneStrings.getInstance().STAR);
  Self.QUESTION := TPCGameKey.Create(47, '?');
  Self.PERIOD := TPCGameKey.Create(46, TCommonSeps.getInstance().PERIOD);
  Self.ESCAPE := TPCGameKey.Create(27, 'Esc');
  Self.BACK_SPACE := TPCGameKey.Create(8, 'Backspace');
end;

constructor TPCKeyFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TPCKeyFactory.getInstance: TPCKeyFactory;
begin
        Exit(TPCKeyFactory.SINGLETON);
end;
    

function TPCKeyFactory.isSubmission(input: TInput): Boolean;
begin
        if (input) = (Self.ENTER) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TPCKeyFactory.isDelete(input: TInput): Boolean;
begin
        if (input) = (Self.DEL) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TPCKeyFactory.isBackSpace(input: TInput): Boolean;
begin
        if (input) = (Self.BACK_SPACE) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TPCKeyFactory.isUp(input: TInput): Boolean;
begin
        if ((input) = (Self.DPAD_UP)) or ((input) = (Self.DPAD_UP2)) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TPCKeyFactory.isDown(input: TInput): Boolean;
begin
        if ((input) = (Self.DPAD_DOWN)) or ((input) = (Self.DPAD_DOWN2)) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TPCKeyFactory.isLeft(input: TInput): Boolean;
begin
        if ((input) = (Self.DPAD_LEFT)) or ((input) = (Self.DPAD_LEFT2)) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TPCKeyFactory.isRight(input: TInput): Boolean;
begin
        if ((input) = (Self.DPAD_RIGHT)) or ((input) = (Self.DPAD_RIGHT2)) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TPCKeyFactory.isEnter(input: TInput): Boolean;
begin
        if (input) = (Self.ENTER) then begin
            Exit(True);
        end;
        Exit(False);
end;

initialization
  TPCKeyFactory.SINGLETON := TPCKeyFactory.Create();

end.

