{
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.input
unit ABKeyEventWrapper;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JsType;

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

  TABKeyEventWrapper = class(TObject)
  public
    VK_ENTER: Integer;
    VK_BACK_SPACE: Integer;
    VK_TAB: Integer;
    VK_CANCEL: Integer;
    VK_CLEAR: Integer;
    VK_SHIFT: Integer;
    VK_CONTROL: Integer;
    VK_ALT: Integer;
    VK_PAUSE: Integer;
    VK_CAPS_LOCK: Integer;
    VK_ESCAPE: Integer;
    VK_SPACE: Integer;
    VK_PAGE_UP: Integer;
    VK_PAGE_DOWN: Integer;
    VK_END: Integer;
    VK_HOME: Integer;
    VK_LEFT: Integer;
    VK_UP: Integer;
    VK_RIGHT: Integer;
    VK_DOWN: Integer;
    VK_COMMA: Integer;
    VK_MINUS: Integer;
    VK_PERIOD: Integer;
    VK_SLASH: Integer;
    VK_0: Integer;
    VK_1: Integer;
    VK_2: Integer;
    VK_3: Integer;
    VK_4: Integer;
    VK_5: Integer;
    VK_6: Integer;
    VK_7: Integer;
    VK_8: Integer;
    VK_9: Integer;
    VK_SEMICOLON: Integer;
    VK_EQUALS: Integer;
    VK_A: Integer;
    VK_B: Integer;
    VK_C: Integer;
    VK_D: Integer;
    VK_E: Integer;
    VK_F: Integer;
    VK_G: Integer;
    VK_H: Integer;
    VK_I: Integer;
    VK_J: Integer;
    VK_K: Integer;
    VK_L: Integer;
    VK_M: Integer;
    VK_N: Integer;
    VK_O: Integer;
    VK_P: Integer;
    VK_Q: Integer;
    VK_R: Integer;
    VK_S: Integer;
    VK_T: Integer;
    VK_U: Integer;
    VK_V: Integer;
    VK_W: Integer;
    VK_X: Integer;
    VK_Y: Integer;
    VK_Z: Integer;
    VK_OPEN_BRACKET: Integer;
    VK_BACK_SLASH: Integer;
    VK_CLOSE_BRACKET: Integer;
    VK_NUMPAD0: Integer;
    VK_NUMPAD1: Integer;
    VK_NUMPAD2: Integer;
    VK_NUMPAD3: Integer;
    VK_NUMPAD4: Integer;
    VK_NUMPAD5: Integer;
    VK_NUMPAD6: Integer;
    VK_NUMPAD7: Integer;
    VK_NUMPAD8: Integer;
    VK_NUMPAD9: Integer;
    VK_MULTIPLY: Integer;
    VK_ADD: Integer;
    VK_SEPARATER: Integer;
    VK_SEPARATOR: Integer;
    VK_SUBTRACT: Integer;
    VK_DECIMAL: Integer;
    VK_DIVIDE: Integer;
    VK_DELETE: Integer;
    VK_NUM_LOCK: Integer;
    VK_SCROLL_LOCK: Integer;
    VK_F1: Integer;
    VK_F2: Integer;
    VK_F3: Integer;
    VK_F4: Integer;
    VK_F5: Integer;
    VK_F6: Integer;
    VK_F7: Integer;
    VK_F8: Integer;
    VK_F9: Integer;
    VK_F10: Integer;
    VK_F11: Integer;
    VK_F12: Integer;
    VK_F13: Integer;
    VK_F14: Integer;
    VK_F15: Integer;
    VK_F16: Integer;
    VK_F17: Integer;
    VK_F18: Integer;
    VK_F19: Integer;
    VK_F20: Integer;
    VK_F21: Integer;
    VK_F22: Integer;
    VK_F23: Integer;
    VK_F24: Integer;
    VK_PRINTSCREEN: Integer;
    VK_INSERT: Integer;
    VK_HELP: Integer;
    VK_META: Integer;
    VK_BACK_QUOTE: Integer;
    VK_QUOTE: Integer;
    VK_KP_UP: Integer;
    VK_KP_DOWN: Integer;
    VK_KP_LEFT: Integer;
    VK_KP_RIGHT: Integer;
    VK_DEAD_GRAVE: Integer;
    VK_DEAD_ACUTE: Integer;
    VK_DEAD_CIRCUMFLEX: Integer;
    VK_DEAD_TILDE: Integer;
    VK_DEAD_MACRON: Integer;
    VK_DEAD_BREVE: Integer;
    VK_DEAD_ABOVEDOT: Integer;
    VK_DEAD_DIAERESIS: Integer;
    VK_DEAD_ABOVERING: Integer;
    VK_DEAD_DOUBLEACUTE: Integer;
    VK_DEAD_CARON: Integer;
    VK_DEAD_CEDILLA: Integer;
    VK_DEAD_OGONEK: Integer;
    VK_DEAD_IOTA: Integer;
    VK_DEAD_VOICED_SOUND: Integer;
    VK_DEAD_SEMIVOICED_SOUND: Integer;
    VK_AMPERSAND: Integer;
    VK_ASTERISK: Integer;
    VK_QUOTEDBL: Integer;
    VK_LESS: Integer;
    VK_GREATER: Integer;
    VK_BRACELEFT: Integer;
    VK_BRACERIGHT: Integer;
    VK_AT: Integer;
    VK_COLON: Integer;
    VK_CIRCUMFLEX: Integer;
    VK_DOLLAR: Integer;
    VK_EURO_SIGN: Integer;
    VK_EXCLAMATION_MARK: Integer;
    VK_INVERTED_EXCLAMATION_MARK: Integer;
    VK_LEFT_PARENTHESIS: Integer;
    VK_NUMBER_SIGN: Integer;
    VK_PLUS: Integer;
    VK_RIGHT_PARENTHESIS: Integer;
    VK_UNDERSCORE: Integer;
    VK_WINDOWS: Integer;
    VK_CONTEXT_MENU: Integer;
    VK_FINAL: Integer;
    VK_CONVERT: Integer;
    VK_NONCONVERT: Integer;
    VK_ACCEPT: Integer;
    VK_MODECHANGE: Integer;
    VK_KANA: Integer;
    VK_KANJI: Integer;
    VK_ALPHANUMERIC: Integer;
    VK_KATAKANA: Integer;
    VK_HIRAGANA: Integer;
    VK_FULL_WIDTH: Integer;
    VK_HALF_WIDTH: Integer;
    VK_ROMAN_CHARACTERS: Integer;
    VK_ALL_CANDIDATES: Integer;
    VK_PREVIOUS_CANDIDATE: Integer;
    VK_CODE_INPUT: Integer;
    VK_JAPANESE_KATAKANA: Integer;
    VK_JAPANESE_HIRAGANA: Integer;
    VK_JAPANESE_ROMAN: Integer;
    VK_KANA_LOCK: Integer;
    VK_INPUT_METHOD_ON_OFF: Integer;
    VK_CUT: Integer;
    VK_COPY: Integer;
    VK_PASTE: Integer;
    VK_UNDO: Integer;
    VK_AGAIN: Integer;
    VK_FIND: Integer;
    VK_PROPS: Integer;
    VK_STOP: Integer;
    VK_COMPOSE: Integer;
    VK_ALT_GRAPH: Integer;
    VK_BEGIN: Integer;
    VK_UNDEFINED: Integer;
    class var instance: TABKeyEventWrapper;
    procedure InitFields;
    constructor Create;
        class function getInstance: TABKeyEventWrapper; static;
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


procedure TABKeyEventWrapper.InitFields;
begin
  Self.VK_ENTER := TKeyEvent.VK_ENTER;
  Self.VK_BACK_SPACE := TKeyEvent.VK_BACK_SPACE;
  Self.VK_TAB := TKeyEvent.VK_TAB;
  Self.VK_CANCEL := TKeyEvent.VK_CANCEL;
  Self.VK_CLEAR := TKeyEvent.VK_CLEAR;
  Self.VK_SHIFT := TKeyEvent.VK_SHIFT;
  Self.VK_CONTROL := TKeyEvent.VK_CONTROL;
  Self.VK_ALT := TKeyEvent.VK_ALT;
  Self.VK_PAUSE := TKeyEvent.VK_PAUSE;
  Self.VK_CAPS_LOCK := TKeyEvent.VK_CAPS_LOCK;
  Self.VK_ESCAPE := TKeyEvent.VK_ESCAPE;
  Self.VK_SPACE := TKeyEvent.VK_SPACE;
  Self.VK_PAGE_UP := TKeyEvent.VK_PAGE_UP;
  Self.VK_PAGE_DOWN := TKeyEvent.VK_PAGE_DOWN;
  Self.VK_END := TKeyEvent.VK_END;
  Self.VK_HOME := TKeyEvent.VK_HOME;
  Self.VK_LEFT := TKeyEvent.VK_LEFT;
  Self.VK_UP := TKeyEvent.VK_UP;
  Self.VK_RIGHT := TKeyEvent.VK_RIGHT;
  Self.VK_DOWN := TKeyEvent.VK_DOWN;
  Self.VK_COMMA := TKeyEvent.VK_COMMA;
  Self.VK_MINUS := TKeyEvent.VK_MINUS;
  Self.VK_PERIOD := TKeyEvent.VK_PERIOD;
  Self.VK_SLASH := TKeyEvent.VK_SLASH;
  Self.VK_0 := TKeyEvent.VK_0;
  Self.VK_1 := TKeyEvent.VK_1;
  Self.VK_2 := TKeyEvent.VK_2;
  Self.VK_3 := TKeyEvent.VK_3;
  Self.VK_4 := TKeyEvent.VK_4;
  Self.VK_5 := TKeyEvent.VK_5;
  Self.VK_6 := TKeyEvent.VK_6;
  Self.VK_7 := TKeyEvent.VK_7;
  Self.VK_8 := TKeyEvent.VK_8;
  Self.VK_9 := TKeyEvent.VK_9;
  Self.VK_SEMICOLON := TKeyEvent.VK_SEMICOLON;
  Self.VK_EQUALS := TKeyEvent.VK_EQUALS;
  Self.VK_A := TKeyEvent.VK_A;
  Self.VK_B := TKeyEvent.VK_B;
  Self.VK_C := TKeyEvent.VK_C;
  Self.VK_D := TKeyEvent.VK_D;
  Self.VK_E := TKeyEvent.VK_E;
  Self.VK_F := TKeyEvent.VK_F;
  Self.VK_G := TKeyEvent.VK_G;
  Self.VK_H := TKeyEvent.VK_H;
  Self.VK_I := TKeyEvent.VK_I;
  Self.VK_J := TKeyEvent.VK_J;
  Self.VK_K := TKeyEvent.VK_K;
  Self.VK_L := TKeyEvent.VK_L;
  Self.VK_M := TKeyEvent.VK_M;
  Self.VK_N := TKeyEvent.VK_N;
  Self.VK_O := TKeyEvent.VK_O;
  Self.VK_P := TKeyEvent.VK_P;
  Self.VK_Q := TKeyEvent.VK_Q;
  Self.VK_R := TKeyEvent.VK_R;
  Self.VK_S := TKeyEvent.VK_S;
  Self.VK_T := TKeyEvent.VK_T;
  Self.VK_U := TKeyEvent.VK_U;
  Self.VK_V := TKeyEvent.VK_V;
  Self.VK_W := TKeyEvent.VK_W;
  Self.VK_X := TKeyEvent.VK_X;
  Self.VK_Y := TKeyEvent.VK_Y;
  Self.VK_Z := TKeyEvent.VK_Z;
  Self.VK_OPEN_BRACKET := TKeyEvent.VK_OPEN_BRACKET;
  Self.VK_BACK_SLASH := TKeyEvent.VK_BACK_SLASH;
  Self.VK_CLOSE_BRACKET := TKeyEvent.VK_CLOSE_BRACKET;
  Self.VK_NUMPAD0 := TKeyEvent.VK_NUMPAD0;
  Self.VK_NUMPAD1 := TKeyEvent.VK_NUMPAD1;
  Self.VK_NUMPAD2 := TKeyEvent.VK_NUMPAD2;
  Self.VK_NUMPAD3 := TKeyEvent.VK_NUMPAD3;
  Self.VK_NUMPAD4 := TKeyEvent.VK_NUMPAD4;
  Self.VK_NUMPAD5 := TKeyEvent.VK_NUMPAD5;
  Self.VK_NUMPAD6 := TKeyEvent.VK_NUMPAD6;
  Self.VK_NUMPAD7 := TKeyEvent.VK_NUMPAD7;
  Self.VK_NUMPAD8 := TKeyEvent.VK_NUMPAD8;
  Self.VK_NUMPAD9 := TKeyEvent.VK_NUMPAD9;
  Self.VK_MULTIPLY := TKeyEvent.VK_MULTIPLY;
  Self.VK_ADD := TKeyEvent.VK_ADD;
  Self.VK_SEPARATER := TKeyEvent.VK_SEPARATER;
  Self.VK_SEPARATOR := TKeyEvent.VK_SEPARATOR;
  Self.VK_SUBTRACT := TKeyEvent.VK_SUBTRACT;
  Self.VK_DECIMAL := TKeyEvent.VK_DECIMAL;
  Self.VK_DIVIDE := TKeyEvent.VK_DIVIDE;
  Self.VK_DELETE := TKeyEvent.VK_DELETE;
  Self.VK_NUM_LOCK := TKeyEvent.VK_NUM_LOCK;
  Self.VK_SCROLL_LOCK := TKeyEvent.VK_SCROLL_LOCK;
  Self.VK_F1 := TKeyEvent.VK_F1;
  Self.VK_F2 := TKeyEvent.VK_F2;
  Self.VK_F3 := TKeyEvent.VK_F3;
  Self.VK_F4 := TKeyEvent.VK_F4;
  Self.VK_F5 := TKeyEvent.VK_F5;
  Self.VK_F6 := TKeyEvent.VK_F6;
  Self.VK_F7 := TKeyEvent.VK_F7;
  Self.VK_F8 := TKeyEvent.VK_F8;
  Self.VK_F9 := TKeyEvent.VK_F9;
  Self.VK_F10 := TKeyEvent.VK_F10;
  Self.VK_F11 := TKeyEvent.VK_F11;
  Self.VK_F12 := TKeyEvent.VK_F12;
  Self.VK_F13 := TKeyEvent.VK_F13;
  Self.VK_F14 := TKeyEvent.VK_F14;
  Self.VK_F15 := TKeyEvent.VK_F15;
  Self.VK_F16 := TKeyEvent.VK_F16;
  Self.VK_F17 := TKeyEvent.VK_F17;
  Self.VK_F18 := TKeyEvent.VK_F18;
  Self.VK_F19 := TKeyEvent.VK_F19;
  Self.VK_F20 := TKeyEvent.VK_F20;
  Self.VK_F21 := TKeyEvent.VK_F21;
  Self.VK_F22 := TKeyEvent.VK_F22;
  Self.VK_F23 := TKeyEvent.VK_F23;
  Self.VK_F24 := TKeyEvent.VK_F24;
  Self.VK_PRINTSCREEN := TKeyEvent.VK_PRINTSCREEN;
  Self.VK_INSERT := TKeyEvent.VK_INSERT;
  Self.VK_HELP := TKeyEvent.VK_HELP;
  Self.VK_META := TKeyEvent.VK_META;
  Self.VK_BACK_QUOTE := TKeyEvent.VK_BACK_QUOTE;
  Self.VK_QUOTE := TKeyEvent.VK_QUOTE;
  Self.VK_KP_UP := TKeyEvent.VK_KP_UP;
  Self.VK_KP_DOWN := TKeyEvent.VK_KP_DOWN;
  Self.VK_KP_LEFT := TKeyEvent.VK_KP_LEFT;
  Self.VK_KP_RIGHT := TKeyEvent.VK_KP_RIGHT;
  Self.VK_DEAD_GRAVE := TKeyEvent.VK_DEAD_GRAVE;
  Self.VK_DEAD_ACUTE := TKeyEvent.VK_DEAD_ACUTE;
  Self.VK_DEAD_CIRCUMFLEX := TKeyEvent.VK_DEAD_CIRCUMFLEX;
  Self.VK_DEAD_TILDE := TKeyEvent.VK_DEAD_TILDE;
  Self.VK_DEAD_MACRON := TKeyEvent.VK_DEAD_MACRON;
  Self.VK_DEAD_BREVE := TKeyEvent.VK_DEAD_BREVE;
  Self.VK_DEAD_ABOVEDOT := TKeyEvent.VK_DEAD_ABOVEDOT;
  Self.VK_DEAD_DIAERESIS := TKeyEvent.VK_DEAD_DIAERESIS;
  Self.VK_DEAD_ABOVERING := TKeyEvent.VK_DEAD_ABOVERING;
  Self.VK_DEAD_DOUBLEACUTE := TKeyEvent.VK_DEAD_DOUBLEACUTE;
  Self.VK_DEAD_CARON := TKeyEvent.VK_DEAD_CARON;
  Self.VK_DEAD_CEDILLA := TKeyEvent.VK_DEAD_CEDILLA;
  Self.VK_DEAD_OGONEK := TKeyEvent.VK_DEAD_OGONEK;
  Self.VK_DEAD_IOTA := TKeyEvent.VK_DEAD_IOTA;
  Self.VK_DEAD_VOICED_SOUND := TKeyEvent.VK_DEAD_VOICED_SOUND;
  Self.VK_DEAD_SEMIVOICED_SOUND := TKeyEvent.VK_DEAD_SEMIVOICED_SOUND;
  Self.VK_AMPERSAND := TKeyEvent.VK_AMPERSAND;
  Self.VK_ASTERISK := TKeyEvent.VK_ASTERISK;
  Self.VK_QUOTEDBL := TKeyEvent.VK_QUOTEDBL;
  Self.VK_LESS := TKeyEvent.VK_LESS;
  Self.VK_GREATER := TKeyEvent.VK_GREATER;
  Self.VK_BRACELEFT := TKeyEvent.VK_BRACELEFT;
  Self.VK_BRACERIGHT := TKeyEvent.VK_BRACERIGHT;
  Self.VK_AT := TKeyEvent.VK_AT;
  Self.VK_COLON := TKeyEvent.VK_COLON;
  Self.VK_CIRCUMFLEX := TKeyEvent.VK_CIRCUMFLEX;
  Self.VK_DOLLAR := TKeyEvent.VK_DOLLAR;
  Self.VK_EURO_SIGN := TKeyEvent.VK_EURO_SIGN;
  Self.VK_EXCLAMATION_MARK := TKeyEvent.VK_EXCLAMATION_MARK;
  Self.VK_INVERTED_EXCLAMATION_MARK := TKeyEvent.VK_INVERTED_EXCLAMATION_MARK;
  Self.VK_LEFT_PARENTHESIS := TKeyEvent.VK_LEFT_PARENTHESIS;
  Self.VK_NUMBER_SIGN := TKeyEvent.VK_NUMBER_SIGN;
  Self.VK_PLUS := TKeyEvent.VK_PLUS;
  Self.VK_RIGHT_PARENTHESIS := TKeyEvent.VK_RIGHT_PARENTHESIS;
  Self.VK_UNDERSCORE := TKeyEvent.VK_UNDERSCORE;
  Self.VK_WINDOWS := TKeyEvent.VK_WINDOWS;
  Self.VK_CONTEXT_MENU := TKeyEvent.VK_CONTEXT_MENU;
  Self.VK_FINAL := TKeyEvent.VK_FINAL;
  Self.VK_CONVERT := TKeyEvent.VK_CONVERT;
  Self.VK_NONCONVERT := TKeyEvent.VK_NONCONVERT;
  Self.VK_ACCEPT := TKeyEvent.VK_ACCEPT;
  Self.VK_MODECHANGE := TKeyEvent.VK_MODECHANGE;
  Self.VK_KANA := TKeyEvent.VK_KANA;
  Self.VK_KANJI := TKeyEvent.VK_KANJI;
  Self.VK_ALPHANUMERIC := TKeyEvent.VK_ALPHANUMERIC;
  Self.VK_KATAKANA := TKeyEvent.VK_KATAKANA;
  Self.VK_HIRAGANA := TKeyEvent.VK_HIRAGANA;
  Self.VK_FULL_WIDTH := TKeyEvent.VK_FULL_WIDTH;
  Self.VK_HALF_WIDTH := TKeyEvent.VK_HALF_WIDTH;
  Self.VK_ROMAN_CHARACTERS := TKeyEvent.VK_ROMAN_CHARACTERS;
  Self.VK_ALL_CANDIDATES := TKeyEvent.VK_ALL_CANDIDATES;
  Self.VK_PREVIOUS_CANDIDATE := TKeyEvent.VK_PREVIOUS_CANDIDATE;
  Self.VK_CODE_INPUT := TKeyEvent.VK_CODE_INPUT;
  Self.VK_JAPANESE_KATAKANA := TKeyEvent.VK_JAPANESE_KATAKANA;
  Self.VK_JAPANESE_HIRAGANA := TKeyEvent.VK_JAPANESE_HIRAGANA;
  Self.VK_JAPANESE_ROMAN := TKeyEvent.VK_JAPANESE_ROMAN;
  Self.VK_KANA_LOCK := TKeyEvent.VK_KANA_LOCK;
  Self.VK_INPUT_METHOD_ON_OFF := TKeyEvent.VK_INPUT_METHOD_ON_OFF;
  Self.VK_CUT := TKeyEvent.VK_CUT;
  Self.VK_COPY := TKeyEvent.VK_COPY;
  Self.VK_PASTE := TKeyEvent.VK_PASTE;
  Self.VK_UNDO := TKeyEvent.VK_UNDO;
  Self.VK_AGAIN := TKeyEvent.VK_AGAIN;
  Self.VK_FIND := TKeyEvent.VK_FIND;
  Self.VK_PROPS := TKeyEvent.VK_PROPS;
  Self.VK_STOP := TKeyEvent.VK_STOP;
  Self.VK_COMPOSE := TKeyEvent.VK_COMPOSE;
  Self.VK_ALT_GRAPH := TKeyEvent.VK_ALT_GRAPH;
  Self.VK_BEGIN := TKeyEvent.VK_BEGIN;
  Self.VK_UNDEFINED := TKeyEvent.VK_UNDEFINED;
end;

constructor TABKeyEventWrapper.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TABKeyEventWrapper.getInstance: TABKeyEventWrapper;
begin
        Exit(TABKeyEventWrapper.instance);
end;

initialization
  TABKeyEventWrapper.instance := TABKeyEventWrapper.Create();

end.

