// Generated Code Do Not Modify
// package org.allbinary.game.input
unit AndroidKeyFactory;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, KeyEvent, ActivityFractureUtil, CommonPhoneStrings, AbPathData, CommonStrings, LogUtil, AndroidGameKey, Input;

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

  TAndroidKeyFactory = class(TActivityFractureUtil)
  public
    logUtil: TLogUtil;
    UNKNOWN: TAndroidGameKey;
    KEYCODE_BUTTON_L1: TAndroidGameKey;
    KEYCODE_BUTTON_R1: TAndroidGameKey;
    KEYCODE_BUTTON_THUMBR: TAndroidGameKey;
    KEYCODE_BUTTON_THUMBL: TAndroidGameKey;
    KEYCODE_BUTTON_START: TAndroidGameKey;
    KEYCODE_BUTTON_MODE: TAndroidGameKey;
    KEYCODE_BUTTON_B: TAndroidGameKey;
    KEYCODE_BUTTON_A: TAndroidGameKey;
    KEYCODE_BUTTON_X: TAndroidGameKey;
    KEYCODE_BUTTON_Y: TAndroidGameKey;
    KEYCODE_BUTTON_L2: TAndroidGameKey;
    KEYCODE_BUTTON_R2: TAndroidGameKey;
    KEYCODE_BUTTON_SELECT: TAndroidGameKey;
    KEYCODE_BUTTON_C: TAndroidGameKey;
    KEYCODE_BUTTON_Z: TAndroidGameKey;
    KEYCODE_BUTTON_1: TAndroidGameKey;
    KEYCODE_BUTTON_10: TAndroidGameKey;
    KEYCODE_BUTTON_11: TAndroidGameKey;
    KEYCODE_BUTTON_12: TAndroidGameKey;
    KEYCODE_BUTTON_13: TAndroidGameKey;
    KEYCODE_BUTTON_14: TAndroidGameKey;
    KEYCODE_BUTTON_15: TAndroidGameKey;
    KEYCODE_BUTTON_16: TAndroidGameKey;
    KEYCODE_BUTTON_2: TAndroidGameKey;
    KEYCODE_BUTTON_3: TAndroidGameKey;
    KEYCODE_BUTTON_4: TAndroidGameKey;
    KEYCODE_BUTTON_5: TAndroidGameKey;
    KEYCODE_BUTTON_6: TAndroidGameKey;
    KEYCODE_BUTTON_7: TAndroidGameKey;
    KEYCODE_BUTTON_8: TAndroidGameKey;
    KEYCODE_BUTTON_9: TAndroidGameKey;
    SOFT_LEFT: TAndroidGameKey;
    SOFT_RIGHT: TAndroidGameKey;
    HOME: TAndroidGameKey;
    BACK: TAndroidGameKey;
    CALL: TAndroidGameKey;
    ENDCALL: TAndroidGameKey;
    ZERO: TAndroidGameKey;
    ONE: TAndroidGameKey;
    TWO: TAndroidGameKey;
    THREE: TAndroidGameKey;
    FOUR: TAndroidGameKey;
    FIVE: TAndroidGameKey;
    SIX: TAndroidGameKey;
    SEVEN: TAndroidGameKey;
    EIGHT: TAndroidGameKey;
    NINE: TAndroidGameKey;
    STAR: TAndroidGameKey;
    POUND: TAndroidGameKey;
    DPAD_UP: TAndroidGameKey;
    DPAD_DOWN: TAndroidGameKey;
    DPAD_LEFT: TAndroidGameKey;
    DPAD_RIGHT: TAndroidGameKey;
    DPAD_CENTER: TAndroidGameKey;
    VOLUME_UP: TAndroidGameKey;
    VOLUME_DOWN: TAndroidGameKey;
    POWER: TAndroidGameKey;
    CAMERA: TAndroidGameKey;
    CLEAR: TAndroidGameKey;
    A: TAndroidGameKey;
    B: TAndroidGameKey;
    C: TAndroidGameKey;
    D: TAndroidGameKey;
    E: TAndroidGameKey;
    F: TAndroidGameKey;
    G: TAndroidGameKey;
    H: TAndroidGameKey;
    I: TAndroidGameKey;
    J: TAndroidGameKey;
    K: TAndroidGameKey;
    L: TAndroidGameKey;
    M: TAndroidGameKey;
    N: TAndroidGameKey;
    O: TAndroidGameKey;
    P: TAndroidGameKey;
    Q: TAndroidGameKey;
    R: TAndroidGameKey;
    S: TAndroidGameKey;
    T: TAndroidGameKey;
    U: TAndroidGameKey;
    V: TAndroidGameKey;
    W: TAndroidGameKey;
    X: TAndroidGameKey;
    Y: TAndroidGameKey;
    Z: TAndroidGameKey;
    COMMA: TAndroidGameKey;
    PERIOD: TAndroidGameKey;
    ALT_LEFT: TAndroidGameKey;
    ALT_RIGHT: TAndroidGameKey;
    SHIFT_LEFT: TAndroidGameKey;
    SHIFT_RIGHT: TAndroidGameKey;
    TAB: TAndroidGameKey;
    SPACE: TAndroidGameKey;
    SYM: TAndroidGameKey;
    EXPLORER: TAndroidGameKey;
    ENVELOPE: TAndroidGameKey;
    ENTER: TAndroidGameKey;
    DEL: TAndroidGameKey;
    GRAVE: TAndroidGameKey;
    MINUS: TAndroidGameKey;
    EQUALS: TAndroidGameKey;
    LEFT_BRACKET: TAndroidGameKey;
    RIGHT_BRACKET: TAndroidGameKey;
    BACKSLASH: TAndroidGameKey;
    SEMICOLON: TAndroidGameKey;
    APOSTROPHE: TAndroidGameKey;
    SLASH: TAndroidGameKey;
    AT: TAndroidGameKey;
    NUM: TAndroidGameKey;
    HEADSETHOOK: TAndroidGameKey;
    FOCUS: TAndroidGameKey;
    PLUS: TAndroidGameKey;
    MENU: TAndroidGameKey;
    NOTIFICATION: TAndroidGameKey;
    SEARCH: TAndroidGameKey;
    procedure InitFields;
    constructor Create;
        procedure init; virtual;
        function isSubmission(input: TInput): Boolean; virtual;
        function isDelete(input: TInput): Boolean; virtual;
        function isBackSpace(input: TInput): Boolean; virtual;
        function isLeft(input: TInput): Boolean; virtual;
        function isRight(input: TInput): Boolean; virtual;
        function isUp(input: TInput): Boolean; virtual;
        function isDown(input: TInput): Boolean; virtual;
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


procedure TAndroidKeyFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.UNKNOWN := TAndroidGameKey.Create(TKeyEvent.KEYCODE_UNKNOWN, 'UNKNOWN');
  Self.KEYCODE_BUTTON_L1 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_R1 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_THUMBR := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_THUMBL := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_START := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_MODE := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_B := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_A := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_X := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_Y := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_L2 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_R2 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_SELECT := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_C := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_Z := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_1 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_10 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_11 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_12 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_13 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_14 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_15 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_16 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_2 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_3 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_4 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_5 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_6 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_7 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_8 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_9 := Self.UNKNOWN;
  Self.SOFT_LEFT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_SOFT_LEFT, 'SOFT_LEFT');
  Self.SOFT_RIGHT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_SOFT_RIGHT, 'SOFT_RIGHT');
  Self.HOME := TAndroidGameKey.Create(TKeyEvent.KEYCODE_HOME, 'HOME');
  Self.BACK := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BACK, 'BACK');
  Self.CALL := TAndroidGameKey.Create(TKeyEvent.KEYCODE_CALL, 'CALL');
  Self.ENDCALL := TAndroidGameKey.Create(TKeyEvent.KEYCODE_ENDCALL, 'ENDCALL');
  Self.ZERO := TAndroidGameKey.Create(TKeyEvent.KEYCODE_0, TCommonPhoneStrings.getInstance().ZERO);
  Self.ONE := TAndroidGameKey.Create(TKeyEvent.KEYCODE_1, TCommonPhoneStrings.getInstance().ONE);
  Self.TWO := TAndroidGameKey.Create(TKeyEvent.KEYCODE_2, TCommonPhoneStrings.getInstance().TWO);
  Self.THREE := TAndroidGameKey.Create(TKeyEvent.KEYCODE_3, TCommonPhoneStrings.getInstance().THREE);
  Self.FOUR := TAndroidGameKey.Create(TKeyEvent.KEYCODE_4, TCommonPhoneStrings.getInstance().FOUR);
  Self.FIVE := TAndroidGameKey.Create(TKeyEvent.KEYCODE_5, TCommonPhoneStrings.getInstance().FIVE);
  Self.SIX := TAndroidGameKey.Create(TKeyEvent.KEYCODE_6, TCommonPhoneStrings.getInstance().SIX);
  Self.SEVEN := TAndroidGameKey.Create(TKeyEvent.KEYCODE_7, TCommonPhoneStrings.getInstance().SEVEN);
  Self.EIGHT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_8, TCommonPhoneStrings.getInstance().EIGHT);
  Self.NINE := TAndroidGameKey.Create(TKeyEvent.KEYCODE_9, TCommonPhoneStrings.getInstance().NINE);
  Self.STAR := TAndroidGameKey.Create(TKeyEvent.KEYCODE_STAR, TCommonPhoneStrings.getInstance().STAR);
  Self.POUND := TAndroidGameKey.Create(TKeyEvent.KEYCODE_POUND, TCommonPhoneStrings.getInstance().POUND);
  Self.DPAD_UP := TAndroidGameKey.Create(TKeyEvent.KEYCODE_DPAD_UP, 'UP');
  Self.DPAD_DOWN := TAndroidGameKey.Create(TKeyEvent.KEYCODE_DPAD_DOWN, 'DOWN');
  Self.DPAD_LEFT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_DPAD_LEFT, 'LEFT');
  Self.DPAD_RIGHT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_DPAD_RIGHT, 'RIGHT');
  Self.DPAD_CENTER := TAndroidGameKey.Create(TKeyEvent.KEYCODE_DPAD_CENTER, 'CENTER');
  Self.VOLUME_UP := TAndroidGameKey.Create(TKeyEvent.KEYCODE_VOLUME_UP, 'VOLUME_UP');
  Self.VOLUME_DOWN := TAndroidGameKey.Create(TKeyEvent.KEYCODE_VOLUME_DOWN, 'VOLUME_DOWN');
  Self.POWER := TAndroidGameKey.Create(TKeyEvent.KEYCODE_POWER, 'POWER');
  Self.CAMERA := TAndroidGameKey.Create(TKeyEvent.KEYCODE_CAMERA, 'CAMERA');
  Self.CLEAR := TAndroidGameKey.Create(TKeyEvent.KEYCODE_CLEAR, 'CLEAR');
  Self.A := TAndroidGameKey.Create(TKeyEvent.KEYCODE_A, 'A');
  Self.B := TAndroidGameKey.Create(TKeyEvent.KEYCODE_B, 'B');
  Self.C := TAndroidGameKey.Create(TKeyEvent.KEYCODE_C, 'C');
  Self.D := TAndroidGameKey.Create(TKeyEvent.KEYCODE_D, 'D');
  Self.E := TAndroidGameKey.Create(TKeyEvent.KEYCODE_E, 'E');
  Self.F := TAndroidGameKey.Create(TKeyEvent.KEYCODE_F, 'F');
  Self.G := TAndroidGameKey.Create(TKeyEvent.KEYCODE_G, 'G');
  Self.H := TAndroidGameKey.Create(TKeyEvent.KEYCODE_H, 'H');
  Self.I := TAndroidGameKey.Create(TKeyEvent.KEYCODE_I, 'I');
  Self.J := TAndroidGameKey.Create(TKeyEvent.KEYCODE_J, 'J');
  Self.K := TAndroidGameKey.Create(TKeyEvent.KEYCODE_K, 'K');
  Self.L := TAndroidGameKey.Create(TKeyEvent.KEYCODE_L, 'L');
  Self.M := TAndroidGameKey.Create(TKeyEvent.KEYCODE_M, 'M');
  Self.N := TAndroidGameKey.Create(TKeyEvent.KEYCODE_N, 'N');
  Self.O := TAndroidGameKey.Create(TKeyEvent.KEYCODE_O, 'O');
  Self.P := TAndroidGameKey.Create(TKeyEvent.KEYCODE_P, 'P');
  Self.Q := TAndroidGameKey.Create(TKeyEvent.KEYCODE_Q, 'Q');
  Self.R := TAndroidGameKey.Create(TKeyEvent.KEYCODE_R, 'R');
  Self.S := TAndroidGameKey.Create(TKeyEvent.KEYCODE_S, 'S');
  Self.T := TAndroidGameKey.Create(TKeyEvent.KEYCODE_T, 'T');
  Self.U := TAndroidGameKey.Create(TKeyEvent.KEYCODE_U, 'U');
  Self.V := TAndroidGameKey.Create(TKeyEvent.KEYCODE_V, 'V');
  Self.W := TAndroidGameKey.Create(TKeyEvent.KEYCODE_W, 'W');
  Self.X := TAndroidGameKey.Create(TKeyEvent.KEYCODE_X, 'X');
  Self.Y := TAndroidGameKey.Create(TKeyEvent.KEYCODE_Y, 'Y');
  Self.Z := TAndroidGameKey.Create(TKeyEvent.KEYCODE_Z, 'Z');
  Self.COMMA := TAndroidGameKey.Create(TKeyEvent.KEYCODE_COMMA, 'COMMA');
  Self.PERIOD := TAndroidGameKey.Create(TKeyEvent.KEYCODE_PERIOD, TAbPathData.getInstance().EXTENSION_SEP);
  Self.ALT_LEFT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_ALT_LEFT, 'ALT_LEFT');
  Self.ALT_RIGHT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_ALT_RIGHT, 'ALT_RIGHT');
  Self.SHIFT_LEFT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_SHIFT_LEFT, 'SHIFT_LEFT');
  Self.SHIFT_RIGHT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_SHIFT_RIGHT, 'SHIFT_RIGHT');
  Self.TAB := TAndroidGameKey.Create(TKeyEvent.KEYCODE_TAB, 'TAB');
  Self.SPACE := TAndroidGameKey.Create(TKeyEvent.KEYCODE_SPACE, 'SPACE');
  Self.SYM := TAndroidGameKey.Create(TKeyEvent.KEYCODE_SYM, 'SYM');
  Self.EXPLORER := TAndroidGameKey.Create(TKeyEvent.KEYCODE_EXPLORER, 'EXPLORER');
  Self.ENVELOPE := TAndroidGameKey.Create(TKeyEvent.KEYCODE_ENVELOPE, 'ENVELOPE');
  Self.ENTER := TAndroidGameKey.Create(TKeyEvent.KEYCODE_ENTER, 'ENTER');
  Self.DEL := TAndroidGameKey.Create(TKeyEvent.KEYCODE_DEL, 'DEL');
  Self.GRAVE := TAndroidGameKey.Create(TKeyEvent.KEYCODE_GRAVE, 'GRAVE');
  Self.MINUS := TAndroidGameKey.Create(TKeyEvent.KEYCODE_MINUS, 'MINUS');
  Self.EQUALS := TAndroidGameKey.Create(TKeyEvent.KEYCODE_EQUALS, 'EQUALS');
  Self.LEFT_BRACKET := TAndroidGameKey.Create(TKeyEvent.KEYCODE_LEFT_BRACKET, 'LEFT_BRACKET');
  Self.RIGHT_BRACKET := TAndroidGameKey.Create(TKeyEvent.KEYCODE_RIGHT_BRACKET, 'RIGHT_BRACKET');
  Self.BACKSLASH := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BACKSLASH, 'BACKSLASH');
  Self.SEMICOLON := TAndroidGameKey.Create(TKeyEvent.KEYCODE_SEMICOLON, 'SEMICOLON');
  Self.APOSTROPHE := TAndroidGameKey.Create(TKeyEvent.KEYCODE_APOSTROPHE, 'APOSTROPHE');
  Self.SLASH := TAndroidGameKey.Create(TKeyEvent.KEYCODE_SLASH, 'SLASH');
  Self.AT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_AT, 'AT');
  Self.NUM := TAndroidGameKey.Create(TKeyEvent.KEYCODE_NUM, 'NUM');
  Self.HEADSETHOOK := TAndroidGameKey.Create(TKeyEvent.KEYCODE_HEADSETHOOK, 'HEADSETHOOK');
  Self.FOCUS := TAndroidGameKey.Create(TKeyEvent.KEYCODE_FOCUS, 'FOCUS');
  Self.PLUS := TAndroidGameKey.Create(TKeyEvent.KEYCODE_PLUS, 'PLUS');
  Self.MENU := TAndroidGameKey.Create(TKeyEvent.KEYCODE_MENU, 'MENU');
  Self.NOTIFICATION := TAndroidGameKey.Create(TKeyEvent.KEYCODE_NOTIFICATION, 'NOTIFICATION');
  Self.SEARCH := TAndroidGameKey.Create(TKeyEvent.KEYCODE_SEARCH, 'SEARCH');
end;

constructor TAndroidKeyFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TAndroidKeyFactory.init;
var
  commonStrings: TCommonStrings;
begin
        commonStrings := TCommonStrings.getInstance();
        Self.logUtil.putF('Start/End', Self, commonStrings.INIT);
end;
    

function TAndroidKeyFactory.isSubmission(input: TInput): Boolean;
begin
        if (input) = (Self.ENTER) then begin
            Exit(True);
        end else if (input) = (Self.DPAD_CENTER) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TAndroidKeyFactory.isDelete(input: TInput): Boolean;
begin
        Exit(False);
end;
    

function TAndroidKeyFactory.isBackSpace(input: TInput): Boolean;
begin
        if (input) = (Self.DEL) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TAndroidKeyFactory.isLeft(input: TInput): Boolean;
begin
        if (input) = (Self.DPAD_LEFT) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TAndroidKeyFactory.isRight(input: TInput): Boolean;
begin
        if (input) = (Self.DPAD_RIGHT) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TAndroidKeyFactory.isUp(input: TInput): Boolean;
begin
        if (input) = (Self.DPAD_UP) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TAndroidKeyFactory.isDown(input: TInput): Boolean;
begin
        if (input) = (Self.DPAD_DOWN) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TAndroidKeyFactory.isEnter(input: TInput): Boolean;
begin
        if (input) = (Self.DPAD_CENTER) then begin
            Exit(True);
        end else if (input) = (Self.ENTER) then begin
            Exit(True);
        end else if (input) = (Self.CALL) then begin
            Exit(True);
        end;
        Exit(False);
end;

initialization

end.

