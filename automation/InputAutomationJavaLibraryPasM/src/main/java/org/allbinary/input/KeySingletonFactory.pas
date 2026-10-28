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
// package org.allbinary.input
unit KeySingletonFactory;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, StdUtil, LogUtil, CommonStrings, ABHashtable;

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

  TKeySingletonFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var keyStringHashtable: TABHashtable<TObject, TObject>;
    class var keyArray: TArray<Integer>;
    procedure InitFields;
    class procedure StaticInitializer; static;
        constructor Create;
        class function getHashtable: TABHashtable<TObject, TObject>; static;
        class function getInstance(index: Integer): Integer; static;
        class function getArray: TArray<Integer>; static;
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


procedure TKeySingletonFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class procedure TKeySingletonFactory.StaticInitializer;
var
  logUtil: TLogUtil;
  commonStrings: TCommonStrings;
  STATIC_BLOCK: string;
  keyAsString: string;
  index: Integer;
begin
        logUtil := TLogUtil.getInstance();
        commonStrings := TCommonStrings.getInstance();
        STATIC_BLOCK := 'Static Block';
        try
            for index := 0 to System.Length(TKeySingletonFactory.keyArray) - 1 do begin
                keyAsString := TKeyEvent.getKeyText(TKeySingletonFactory.keyArray[index]);
                TKeySingletonFactory.keyStringHashtable.put(keyAsString, TKeySingletonFactory.keyArray[index]);
            end;
        except
            on e: SysUtils.Exception do begin
            logUtil.put(commonStrings.EXCEPTION, 'KeySingleFactory', STATIC_BLOCK, e);
            end;
        end;
end;
    

constructor TKeySingletonFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TKeySingletonFactory.getHashtable: TABHashtable<TObject, TObject>;
begin
        Exit(TKeySingletonFactory.keyStringHashtable);
end;
    

class function TKeySingletonFactory.getInstance(index: Integer): Integer;
begin
        Exit(IntToStr(index));
end;
    

class function TKeySingletonFactory.getArray: TArray<Integer>;
begin
        Exit(TKeySingletonFactory.keyArray);
end;

initialization
  TKeySingletonFactory.keyStringHashtable := TStdUtil.getInstance().createHashtable();
  TKeySingletonFactory.keyArray := [TKeyEvent.VK_0, TKeyEvent.VK_1, TKeyEvent.VK_2, TKeyEvent.VK_3, TKeyEvent.VK_4, TKeyEvent.VK_5, TKeyEvent.VK_6, TKeyEvent.VK_7, TKeyEvent.VK_8, TKeyEvent.VK_9, TKeyEvent.VK_A, TKeyEvent.VK_B, TKeyEvent.VK_C, TKeyEvent.VK_D, TKeyEvent.VK_E, TKeyEvent.VK_F, TKeyEvent.VK_G, TKeyEvent.VK_H, TKeyEvent.VK_I, TKeyEvent.VK_J, TKeyEvent.VK_K, TKeyEvent.VK_L, TKeyEvent.VK_M, TKeyEvent.VK_N, TKeyEvent.VK_O, TKeyEvent.VK_Q, TKeyEvent.VK_R, TKeyEvent.VK_S, TKeyEvent.VK_T, TKeyEvent.VK_U, TKeyEvent.VK_V, TKeyEvent.VK_W, TKeyEvent.VK_X, TKeyEvent.VK_Y, TKeyEvent.VK_Z, TKeyEvent.VK_NUMPAD0, TKeyEvent.VK_NUMPAD1, TKeyEvent.VK_NUMPAD2, TKeyEvent.VK_NUMPAD3, TKeyEvent.VK_NUMPAD4, TKeyEvent.VK_NUMPAD5, TKeyEvent.VK_NUMPAD6, TKeyEvent.VK_NUMPAD7, TKeyEvent.VK_NUMPAD8, TKeyEvent.VK_NUMPAD9, TKeyEvent.VK_NUM_LOCK, TKeyEvent.VK_F1, TKeyEvent.VK_F2, TKeyEvent.VK_F3, TKeyEvent.VK_F4, TKeyEvent.VK_F5, TKeyEvent.VK_F6, TKeyEvent.VK_F7, TKeyEvent.VK_F8, TKeyEvent.VK_F9, TKeyEvent.VK_F10, TKeyEvent.VK_F11, TKeyEvent.VK_F12, TKeyEvent.VK_F13, TKeyEvent.VK_F14, TKeyEvent.VK_F15, TKeyEvent.VK_F16, TKeyEvent.VK_F17, TKeyEvent.VK_F18, TKeyEvent.VK_F19, TKeyEvent.VK_F20, TKeyEvent.VK_F21, TKeyEvent.VK_F22, TKeyEvent.VK_F23, TKeyEvent.VK_F24, TKeyEvent.VK_ACCEPT, TKeyEvent.VK_ADD, TKeyEvent.VK_AGAIN, TKeyEvent.VK_ALL_CANDIDATES, TKeyEvent.VK_ALPHANUMERIC, TKeyEvent.VK_ALT, TKeyEvent.VK_ALT_GRAPH, TKeyEvent.VK_AMPERSAND, TKeyEvent.VK_ASTERISK, TKeyEvent.VK_AT, TKeyEvent.VK_BACK_QUOTE, TKeyEvent.VK_BACK_SLASH, TKeyEvent.VK_BACK_SPACE, TKeyEvent.VK_BEGIN, TKeyEvent.VK_BRACELEFT, TKeyEvent.VK_BRACERIGHT, TKeyEvent.VK_CANCEL, TKeyEvent.VK_CAPS_LOCK, TKeyEvent.VK_CIRCUMFLEX, TKeyEvent.VK_CLEAR, TKeyEvent.VK_CLOSE_BRACKET, TKeyEvent.VK_CODE_INPUT, TKeyEvent.VK_COLON, TKeyEvent.VK_COMMA, TKeyEvent.VK_COMPOSE, TKeyEvent.VK_CONTEXT_MENU, TKeyEvent.VK_CONTROL, TKeyEvent.VK_CONVERT, TKeyEvent.VK_COPY, TKeyEvent.VK_CUT, TKeyEvent.VK_DEAD_ABOVEDOT, TKeyEvent.VK_DEAD_ABOVERING, TKeyEvent.VK_DEAD_ACUTE, TKeyEvent.VK_DEAD_BREVE, TKeyEvent.VK_DEAD_CARON, TKeyEvent.VK_DEAD_CEDILLA, TKeyEvent.VK_DEAD_CIRCUMFLEX, TKeyEvent.VK_DEAD_DIAERESIS, TKeyEvent.VK_DEAD_DOUBLEACUTE, TKeyEvent.VK_DEAD_GRAVE, TKeyEvent.VK_DEAD_IOTA, TKeyEvent.VK_DEAD_MACRON, TKeyEvent.VK_DEAD_OGONEK, TKeyEvent.VK_DEAD_SEMIVOICED_SOUND, TKeyEvent.VK_DEAD_TILDE, TKeyEvent.VK_DEAD_VOICED_SOUND, TKeyEvent.VK_DECIMAL, TKeyEvent.VK_DELETE, TKeyEvent.VK_DIVIDE, TKeyEvent.VK_DOLLAR, TKeyEvent.VK_DOWN, TKeyEvent.VK_END, TKeyEvent.VK_ENTER, TKeyEvent.VK_EQUALS, TKeyEvent.VK_ESCAPE, TKeyEvent.VK_EURO_SIGN, TKeyEvent.VK_EXCLAMATION_MARK, TKeyEvent.VK_FINAL, TKeyEvent.VK_FIND, TKeyEvent.VK_FULL_WIDTH, TKeyEvent.VK_GREATER, TKeyEvent.VK_HALF_WIDTH, TKeyEvent.VK_HELP, TKeyEvent.VK_HIRAGANA, TKeyEvent.VK_HOME, TKeyEvent.VK_INPUT_METHOD_ON_OFF, TKeyEvent.VK_INSERT, TKeyEvent.VK_INVERTED_EXCLAMATION_MARK, TKeyEvent.VK_JAPANESE_HIRAGANA, TKeyEvent.VK_JAPANESE_KATAKANA, TKeyEvent.VK_JAPANESE_ROMAN, TKeyEvent.VK_KANA, TKeyEvent.VK_KANA_LOCK, TKeyEvent.VK_KANJI, TKeyEvent.VK_KATAKANA, TKeyEvent.VK_KP_DOWN, TKeyEvent.VK_KP_LEFT, TKeyEvent.VK_KP_RIGHT, TKeyEvent.VK_KP_UP, TKeyEvent.VK_LEFT, TKeyEvent.VK_LEFT_PARENTHESIS, TKeyEvent.VK_LESS, TKeyEvent.VK_META, TKeyEvent.VK_MINUS, TKeyEvent.VK_MODECHANGE, TKeyEvent.VK_MULTIPLY, TKeyEvent.VK_NONCONVERT, TKeyEvent.VK_NUMBER_SIGN, TKeyEvent.VK_OPEN_BRACKET, TKeyEvent.VK_PAGE_DOWN, TKeyEvent.VK_PAGE_UP, TKeyEvent.VK_PASTE, TKeyEvent.VK_PAUSE, TKeyEvent.VK_PERIOD, TKeyEvent.VK_PLUS, TKeyEvent.VK_PREVIOUS_CANDIDATE, TKeyEvent.VK_PRINTSCREEN, TKeyEvent.VK_PROPS, TKeyEvent.VK_QUOTE, TKeyEvent.VK_QUOTEDBL, TKeyEvent.VK_RIGHT, TKeyEvent.VK_RIGHT_PARENTHESIS, TKeyEvent.VK_SCROLL_LOCK, TKeyEvent.VK_SEMICOLON, TKeyEvent.VK_SEPARATER, TKeyEvent.VK_SEPARATOR, TKeyEvent.VK_SHIFT, TKeyEvent.VK_SLASH, TKeyEvent.VK_SPACE, TKeyEvent.VK_STOP, TKeyEvent.VK_SUBTRACT, TKeyEvent.VK_TAB, TKeyEvent.VK_UNDEFINED, TKeyEvent.VK_UNDERSCORE, TKeyEvent.VK_UNDO, TKeyEvent.VK_UP, TKeyEvent.VK_WINDOWS];
  TKeySingletonFactory.StaticInitializer;

end.

