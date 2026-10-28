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
// package org.allbinary.math
unit NoDecimalTrigTable;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JsType, PreLogUtil, MathUtil, StringMaker, CommonLabels, CommonSeps, JsMethod, JsConstructor, JsProperty;

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

  TNoDecimalTrigTable = class(TObject)
  public
    mathUtil: TMathUtil;
    noDecimalSin: TArray<Int64>;
    noDecimalCos: TArray<Int64>;
    noDecimalTan: TArray<Int64>;
    SCALE: Integer;
    class var instance: TNoDecimalTrigTable;
    procedure InitFields;
        class function getInstance: TNoDecimalTrigTable; static;
        constructor Create;
        function sin(angle: Integer): Int64; virtual;
        function cos(angle: Integer): Int64; virtual;
        function tan(angle: Integer): Int64; virtual;
        function antiTan(dx: Integer; dy: Integer): SmallInt; virtual;
        function antiTanDebug(screenX: Integer; screenY: Integer; targetX: Integer; targetY: Integer): SmallInt; virtual;
  end;

implementation
uses
  PositionStrings, AngleFactory, Angle;



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


procedure TNoDecimalTrigTable.InitFields;
begin
  Self.mathUtil := TMathUtil.getInstance();
  
  
  
  Self.SCALE := 10000;
end;
    

class function TNoDecimalTrigTable.getInstance: TNoDecimalTrigTable;
begin
        Exit(TNoDecimalTrigTable.instance);
end;
    

constructor TNoDecimalTrigTable.Create;
var
  TOTAL_ANGLE: Integer;
  MAX_VALUE: Int64;
begin
    inherited Create;
    InitFields;
        TOTAL_ANGLE := Integer(Trunc(TAngleFactory.getInstance().TOTAL_ANGLE));
        MAX_VALUE := (Int64(High(Integer)));
        Self.noDecimalSin := TJava.NewArray<Int64>(TOTAL_ANGLE);
        Self.noDecimalCos := TJava.NewArray<Int64>(TOTAL_ANGLE);
        Self.noDecimalTan := TJava.NewArray<Int64>((TOTAL_ANGLE) + (1));
        Self.noDecimalSin[0] := 0;
        Self.noDecimalSin[1] := 174;
        Self.noDecimalSin[2] := 348;
        Self.noDecimalSin[3] := 523;
        Self.noDecimalSin[4] := 697;
        Self.noDecimalSin[5] := 871;
        Self.noDecimalSin[6] := 1045;
        Self.noDecimalSin[7] := 1218;
        Self.noDecimalSin[8] := 1391;
        Self.noDecimalSin[9] := 1564;
        Self.noDecimalSin[10] := 1736;
        Self.noDecimalSin[11] := 1908;
        Self.noDecimalSin[12] := 2079;
        Self.noDecimalSin[13] := 2249;
        Self.noDecimalSin[14] := 2419;
        Self.noDecimalSin[15] := 2588;
        Self.noDecimalSin[16] := 2756;
        Self.noDecimalSin[17] := 2923;
        Self.noDecimalSin[18] := 3090;
        Self.noDecimalSin[19] := 3255;
        Self.noDecimalSin[20] := 3420;
        Self.noDecimalSin[21] := 3583;
        Self.noDecimalSin[22] := 3746;
        Self.noDecimalSin[23] := 3907;
        Self.noDecimalSin[24] := 4067;
        Self.noDecimalSin[25] := 4226;
        Self.noDecimalSin[26] := 4383;
        Self.noDecimalSin[27] := 4539;
        Self.noDecimalSin[28] := 4694;
        Self.noDecimalSin[29] := 4848;
        Self.noDecimalSin[30] := 4999;
        Self.noDecimalSin[31] := 5150;
        Self.noDecimalSin[32] := 5299;
        Self.noDecimalSin[33] := 5446;
        Self.noDecimalSin[34] := 5591;
        Self.noDecimalSin[35] := 5735;
        Self.noDecimalSin[36] := 5877;
        Self.noDecimalSin[37] := 6018;
        Self.noDecimalSin[38] := 6156;
        Self.noDecimalSin[39] := 6293;
        Self.noDecimalSin[40] := 6427;
        Self.noDecimalSin[41] := 6560;
        Self.noDecimalSin[42] := 6691;
        Self.noDecimalSin[43] := 6819;
        Self.noDecimalSin[44] := 6946;
        Self.noDecimalSin[45] := 7071;
        Self.noDecimalSin[46] := 7193;
        Self.noDecimalSin[47] := 7313;
        Self.noDecimalSin[48] := 7431;
        Self.noDecimalSin[49] := 7547;
        Self.noDecimalSin[50] := 7660;
        Self.noDecimalSin[51] := 7771;
        Self.noDecimalSin[52] := 7880;
        Self.noDecimalSin[53] := 7986;
        Self.noDecimalSin[54] := 8090;
        Self.noDecimalSin[55] := 8191;
        Self.noDecimalSin[56] := 8290;
        Self.noDecimalSin[57] := 8386;
        Self.noDecimalSin[58] := 8480;
        Self.noDecimalSin[59] := 8571;
        Self.noDecimalSin[60] := 8660;
        Self.noDecimalSin[61] := 8746;
        Self.noDecimalSin[62] := 8829;
        Self.noDecimalSin[63] := 8910;
        Self.noDecimalSin[64] := 8987;
        Self.noDecimalSin[65] := 9063;
        Self.noDecimalSin[66] := 9135;
        Self.noDecimalSin[67] := 9205;
        Self.noDecimalSin[68] := 9271;
        Self.noDecimalSin[69] := 9335;
        Self.noDecimalSin[70] := 9396;
        Self.noDecimalSin[71] := 9455;
        Self.noDecimalSin[72] := 9510;
        Self.noDecimalSin[73] := 9563;
        Self.noDecimalSin[74] := 9612;
        Self.noDecimalSin[75] := 9659;
        Self.noDecimalSin[76] := 9702;
        Self.noDecimalSin[77] := 9743;
        Self.noDecimalSin[78] := 9781;
        Self.noDecimalSin[79] := 9816;
        Self.noDecimalSin[80] := 9848;
        Self.noDecimalSin[81] := 9876;
        Self.noDecimalSin[82] := 9902;
        Self.noDecimalSin[83] := 9925;
        Self.noDecimalSin[84] := 9945;
        Self.noDecimalSin[85] := 9961;
        Self.noDecimalSin[86] := 9975;
        Self.noDecimalSin[87] := 9986;
        Self.noDecimalSin[88] := 9993;
        Self.noDecimalSin[89] := 9998;
        Self.noDecimalSin[90] := 10000;
        Self.noDecimalSin[91] := 9998;
        Self.noDecimalSin[92] := 9993;
        Self.noDecimalSin[93] := 9986;
        Self.noDecimalSin[94] := 9975;
        Self.noDecimalSin[95] := 9961;
        Self.noDecimalSin[96] := 9945;
        Self.noDecimalSin[97] := 9925;
        Self.noDecimalSin[98] := 9902;
        Self.noDecimalSin[99] := 9876;
        Self.noDecimalSin[100] := 9848;
        Self.noDecimalSin[101] := 9816;
        Self.noDecimalSin[102] := 9781;
        Self.noDecimalSin[103] := 9743;
        Self.noDecimalSin[104] := 9702;
        Self.noDecimalSin[105] := 9659;
        Self.noDecimalSin[106] := 9612;
        Self.noDecimalSin[107] := 9563;
        Self.noDecimalSin[108] := 9510;
        Self.noDecimalSin[109] := 9455;
        Self.noDecimalSin[110] := 9396;
        Self.noDecimalSin[111] := 9335;
        Self.noDecimalSin[112] := 9271;
        Self.noDecimalSin[113] := 9205;
        Self.noDecimalSin[114] := 9135;
        Self.noDecimalSin[115] := 9063;
        Self.noDecimalSin[116] := 8987;
        Self.noDecimalSin[117] := 8910;
        Self.noDecimalSin[118] := 8829;
        Self.noDecimalSin[119] := 8746;
        Self.noDecimalSin[120] := 8660;
        Self.noDecimalSin[121] := 8571;
        Self.noDecimalSin[122] := 8480;
        Self.noDecimalSin[123] := 8386;
        Self.noDecimalSin[124] := 8290;
        Self.noDecimalSin[125] := 8191;
        Self.noDecimalSin[126] := 8090;
        Self.noDecimalSin[127] := 7986;
        Self.noDecimalSin[128] := 7880;
        Self.noDecimalSin[129] := 7771;
        Self.noDecimalSin[130] := 7660;
        Self.noDecimalSin[131] := 7547;
        Self.noDecimalSin[132] := 7431;
        Self.noDecimalSin[133] := 7313;
        Self.noDecimalSin[134] := 7193;
        Self.noDecimalSin[135] := 7071;
        Self.noDecimalSin[136] := 6946;
        Self.noDecimalSin[137] := 6819;
        Self.noDecimalSin[138] := 6691;
        Self.noDecimalSin[139] := 6560;
        Self.noDecimalSin[140] := 6427;
        Self.noDecimalSin[141] := 6293;
        Self.noDecimalSin[142] := 6156;
        Self.noDecimalSin[143] := 6018;
        Self.noDecimalSin[144] := 5877;
        Self.noDecimalSin[145] := 5735;
        Self.noDecimalSin[146] := 5591;
        Self.noDecimalSin[147] := 5446;
        Self.noDecimalSin[148] := 5299;
        Self.noDecimalSin[149] := 5150;
        Self.noDecimalSin[150] := 4999;
        Self.noDecimalSin[151] := 4848;
        Self.noDecimalSin[152] := 4694;
        Self.noDecimalSin[153] := 4539;
        Self.noDecimalSin[154] := 4383;
        Self.noDecimalSin[155] := 4226;
        Self.noDecimalSin[156] := 4067;
        Self.noDecimalSin[157] := 3907;
        Self.noDecimalSin[158] := 3746;
        Self.noDecimalSin[159] := 3583;
        Self.noDecimalSin[160] := 3420;
        Self.noDecimalSin[161] := 3255;
        Self.noDecimalSin[162] := 3090;
        Self.noDecimalSin[163] := 2923;
        Self.noDecimalSin[164] := 2756;
        Self.noDecimalSin[165] := 2588;
        Self.noDecimalSin[166] := 2419;
        Self.noDecimalSin[167] := 2249;
        Self.noDecimalSin[168] := 2079;
        Self.noDecimalSin[169] := 1908;
        Self.noDecimalSin[170] := 1736;
        Self.noDecimalSin[171] := 1564;
        Self.noDecimalSin[172] := 1391;
        Self.noDecimalSin[173] := 1218;
        Self.noDecimalSin[174] := 1045;
        Self.noDecimalSin[175] := 871;
        Self.noDecimalSin[176] := 697;
        Self.noDecimalSin[177] := 523;
        Self.noDecimalSin[178] := 348;
        Self.noDecimalSin[179] := 174;
        Self.noDecimalSin[180] := 0;
        Self.noDecimalSin[181] := Int64(-174);
        Self.noDecimalSin[182] := Int64(-348);
        Self.noDecimalSin[183] := Int64(-523);
        Self.noDecimalSin[184] := Int64(-697);
        Self.noDecimalSin[185] := Int64(-871);
        Self.noDecimalSin[186] := Int64(-1045);
        Self.noDecimalSin[187] := Int64(-1218);
        Self.noDecimalSin[188] := Int64(-1391);
        Self.noDecimalSin[189] := Int64(-1564);
        Self.noDecimalSin[190] := Int64(-1736);
        Self.noDecimalSin[191] := Int64(-1908);
        Self.noDecimalSin[192] := Int64(-2079);
        Self.noDecimalSin[193] := Int64(-2249);
        Self.noDecimalSin[194] := Int64(-2419);
        Self.noDecimalSin[195] := Int64(-2588);
        Self.noDecimalSin[196] := Int64(-2756);
        Self.noDecimalSin[197] := Int64(-2923);
        Self.noDecimalSin[198] := Int64(-3090);
        Self.noDecimalSin[199] := Int64(-3255);
        Self.noDecimalSin[200] := Int64(-3420);
        Self.noDecimalSin[201] := Int64(-3583);
        Self.noDecimalSin[202] := Int64(-3746);
        Self.noDecimalSin[203] := Int64(-3907);
        Self.noDecimalSin[204] := Int64(-4067);
        Self.noDecimalSin[205] := Int64(-4226);
        Self.noDecimalSin[206] := Int64(-4383);
        Self.noDecimalSin[207] := Int64(-4539);
        Self.noDecimalSin[208] := Int64(-4694);
        Self.noDecimalSin[209] := Int64(-4848);
        Self.noDecimalSin[210] := Int64(-5000);
        Self.noDecimalSin[211] := Int64(-5150);
        Self.noDecimalSin[212] := Int64(-5299);
        Self.noDecimalSin[213] := Int64(-5446);
        Self.noDecimalSin[214] := Int64(-5591);
        Self.noDecimalSin[215] := Int64(-5735);
        Self.noDecimalSin[216] := Int64(-5877);
        Self.noDecimalSin[217] := Int64(-6018);
        Self.noDecimalSin[218] := Int64(-6156);
        Self.noDecimalSin[219] := Int64(-6293);
        Self.noDecimalSin[220] := Int64(-6427);
        Self.noDecimalSin[221] := Int64(-6560);
        Self.noDecimalSin[222] := Int64(-6691);
        Self.noDecimalSin[223] := Int64(-6819);
        Self.noDecimalSin[224] := Int64(-6946);
        Self.noDecimalSin[225] := Int64(-7071);
        Self.noDecimalSin[226] := Int64(-7193);
        Self.noDecimalSin[227] := Int64(-7313);
        Self.noDecimalSin[228] := Int64(-7431);
        Self.noDecimalSin[229] := Int64(-7547);
        Self.noDecimalSin[230] := Int64(-7660);
        Self.noDecimalSin[231] := Int64(-7771);
        Self.noDecimalSin[232] := Int64(-7880);
        Self.noDecimalSin[233] := Int64(-7986);
        Self.noDecimalSin[234] := Int64(-8090);
        Self.noDecimalSin[235] := Int64(-8191);
        Self.noDecimalSin[236] := Int64(-8290);
        Self.noDecimalSin[237] := Int64(-8386);
        Self.noDecimalSin[238] := Int64(-8480);
        Self.noDecimalSin[239] := Int64(-8571);
        Self.noDecimalSin[240] := Int64(-8660);
        Self.noDecimalSin[241] := Int64(-8746);
        Self.noDecimalSin[242] := Int64(-8829);
        Self.noDecimalSin[243] := Int64(-8910);
        Self.noDecimalSin[244] := Int64(-8987);
        Self.noDecimalSin[245] := Int64(-9063);
        Self.noDecimalSin[246] := Int64(-9135);
        Self.noDecimalSin[247] := Int64(-9205);
        Self.noDecimalSin[248] := Int64(-9271);
        Self.noDecimalSin[249] := Int64(-9335);
        Self.noDecimalSin[250] := Int64(-9396);
        Self.noDecimalSin[251] := Int64(-9455);
        Self.noDecimalSin[252] := Int64(-9510);
        Self.noDecimalSin[253] := Int64(-9563);
        Self.noDecimalSin[254] := Int64(-9612);
        Self.noDecimalSin[255] := Int64(-9659);
        Self.noDecimalSin[256] := Int64(-9702);
        Self.noDecimalSin[257] := Int64(-9743);
        Self.noDecimalSin[258] := Int64(-9781);
        Self.noDecimalSin[259] := Int64(-9816);
        Self.noDecimalSin[260] := Int64(-9848);
        Self.noDecimalSin[261] := Int64(-9876);
        Self.noDecimalSin[262] := Int64(-9902);
        Self.noDecimalSin[263] := Int64(-9925);
        Self.noDecimalSin[264] := Int64(-9945);
        Self.noDecimalSin[265] := Int64(-9961);
        Self.noDecimalSin[266] := Int64(-9975);
        Self.noDecimalSin[267] := Int64(-9986);
        Self.noDecimalSin[268] := Int64(-9993);
        Self.noDecimalSin[269] := Int64(-9998);
        Self.noDecimalSin[270] := Int64(-10000);
        Self.noDecimalSin[271] := Int64(-9998);
        Self.noDecimalSin[272] := Int64(-9993);
        Self.noDecimalSin[273] := Int64(-9986);
        Self.noDecimalSin[274] := Int64(-9975);
        Self.noDecimalSin[275] := Int64(-9961);
        Self.noDecimalSin[276] := Int64(-9945);
        Self.noDecimalSin[277] := Int64(-9925);
        Self.noDecimalSin[278] := Int64(-9902);
        Self.noDecimalSin[279] := Int64(-9876);
        Self.noDecimalSin[280] := Int64(-9848);
        Self.noDecimalSin[281] := Int64(-9816);
        Self.noDecimalSin[282] := Int64(-9781);
        Self.noDecimalSin[283] := Int64(-9743);
        Self.noDecimalSin[284] := Int64(-9702);
        Self.noDecimalSin[285] := Int64(-9659);
        Self.noDecimalSin[286] := Int64(-9612);
        Self.noDecimalSin[287] := Int64(-9563);
        Self.noDecimalSin[288] := Int64(-9510);
        Self.noDecimalSin[289] := Int64(-9455);
        Self.noDecimalSin[290] := Int64(-9396);
        Self.noDecimalSin[291] := Int64(-9335);
        Self.noDecimalSin[292] := Int64(-9271);
        Self.noDecimalSin[293] := Int64(-9205);
        Self.noDecimalSin[294] := Int64(-9135);
        Self.noDecimalSin[295] := Int64(-9063);
        Self.noDecimalSin[296] := Int64(-8987);
        Self.noDecimalSin[297] := Int64(-8910);
        Self.noDecimalSin[298] := Int64(-8829);
        Self.noDecimalSin[299] := Int64(-8746);
        Self.noDecimalSin[300] := Int64(-8660);
        Self.noDecimalSin[301] := Int64(-8571);
        Self.noDecimalSin[302] := Int64(-8480);
        Self.noDecimalSin[303] := Int64(-8386);
        Self.noDecimalSin[304] := Int64(-8290);
        Self.noDecimalSin[305] := Int64(-8191);
        Self.noDecimalSin[306] := Int64(-8090);
        Self.noDecimalSin[307] := Int64(-7986);
        Self.noDecimalSin[308] := Int64(-7880);
        Self.noDecimalSin[309] := Int64(-7771);
        Self.noDecimalSin[310] := Int64(-7660);
        Self.noDecimalSin[311] := Int64(-7547);
        Self.noDecimalSin[312] := Int64(-7431);
        Self.noDecimalSin[313] := Int64(-7313);
        Self.noDecimalSin[314] := Int64(-7193);
        Self.noDecimalSin[315] := Int64(-7071);
        Self.noDecimalSin[316] := Int64(-6946);
        Self.noDecimalSin[317] := Int64(-6819);
        Self.noDecimalSin[318] := Int64(-6691);
        Self.noDecimalSin[319] := Int64(-6560);
        Self.noDecimalSin[320] := Int64(-6427);
        Self.noDecimalSin[321] := Int64(-6293);
        Self.noDecimalSin[322] := Int64(-6156);
        Self.noDecimalSin[323] := Int64(-6018);
        Self.noDecimalSin[324] := Int64(-5877);
        Self.noDecimalSin[325] := Int64(-5735);
        Self.noDecimalSin[326] := Int64(-5591);
        Self.noDecimalSin[327] := Int64(-5446);
        Self.noDecimalSin[328] := Int64(-5299);
        Self.noDecimalSin[329] := Int64(-5150);
        Self.noDecimalSin[330] := Int64(-5000);
        Self.noDecimalSin[331] := Int64(-4848);
        Self.noDecimalSin[332] := Int64(-4694);
        Self.noDecimalSin[333] := Int64(-4539);
        Self.noDecimalSin[334] := Int64(-4383);
        Self.noDecimalSin[335] := Int64(-4226);
        Self.noDecimalSin[336] := Int64(-4067);
        Self.noDecimalSin[337] := Int64(-3907);
        Self.noDecimalSin[338] := Int64(-3746);
        Self.noDecimalSin[339] := Int64(-3583);
        Self.noDecimalSin[340] := Int64(-3420);
        Self.noDecimalSin[341] := Int64(-3255);
        Self.noDecimalSin[342] := Int64(-3090);
        Self.noDecimalSin[343] := Int64(-2923);
        Self.noDecimalSin[344] := Int64(-2756);
        Self.noDecimalSin[345] := Int64(-2588);
        Self.noDecimalSin[346] := Int64(-2419);
        Self.noDecimalSin[347] := Int64(-2249);
        Self.noDecimalSin[348] := Int64(-2079);
        Self.noDecimalSin[349] := Int64(-1908);
        Self.noDecimalSin[350] := Int64(-1736);
        Self.noDecimalSin[351] := Int64(-1564);
        Self.noDecimalSin[352] := Int64(-1391);
        Self.noDecimalSin[353] := Int64(-1218);
        Self.noDecimalSin[354] := Int64(-1045);
        Self.noDecimalSin[355] := Int64(-871);
        Self.noDecimalSin[356] := Int64(-697);
        Self.noDecimalSin[357] := Int64(-523);
        Self.noDecimalSin[358] := Int64(-348);
        Self.noDecimalSin[359] := Int64(-174);
        Self.noDecimalCos[0] := 10000;
        Self.noDecimalCos[1] := 9998;
        Self.noDecimalCos[2] := 9993;
        Self.noDecimalCos[3] := 9986;
        Self.noDecimalCos[4] := 9975;
        Self.noDecimalCos[5] := 9961;
        Self.noDecimalCos[6] := 9945;
        Self.noDecimalCos[7] := 9925;
        Self.noDecimalCos[8] := 9902;
        Self.noDecimalCos[9] := 9876;
        Self.noDecimalCos[10] := 9848;
        Self.noDecimalCos[11] := 9816;
        Self.noDecimalCos[12] := 9781;
        Self.noDecimalCos[13] := 9743;
        Self.noDecimalCos[14] := 9702;
        Self.noDecimalCos[15] := 9659;
        Self.noDecimalCos[16] := 9612;
        Self.noDecimalCos[17] := 9563;
        Self.noDecimalCos[18] := 9510;
        Self.noDecimalCos[19] := 9455;
        Self.noDecimalCos[20] := 9396;
        Self.noDecimalCos[21] := 9335;
        Self.noDecimalCos[22] := 9271;
        Self.noDecimalCos[23] := 9205;
        Self.noDecimalCos[24] := 9135;
        Self.noDecimalCos[25] := 9063;
        Self.noDecimalCos[26] := 8987;
        Self.noDecimalCos[27] := 8910;
        Self.noDecimalCos[28] := 8829;
        Self.noDecimalCos[29] := 8746;
        Self.noDecimalCos[30] := 8660;
        Self.noDecimalCos[31] := 8571;
        Self.noDecimalCos[32] := 8480;
        Self.noDecimalCos[33] := 8386;
        Self.noDecimalCos[34] := 8290;
        Self.noDecimalCos[35] := 8191;
        Self.noDecimalCos[36] := 8090;
        Self.noDecimalCos[37] := 7986;
        Self.noDecimalCos[38] := 7880;
        Self.noDecimalCos[39] := 7771;
        Self.noDecimalCos[40] := 7660;
        Self.noDecimalCos[41] := 7547;
        Self.noDecimalCos[42] := 7431;
        Self.noDecimalCos[43] := 7313;
        Self.noDecimalCos[44] := 7193;
        Self.noDecimalCos[45] := 7071;
        Self.noDecimalCos[46] := 6946;
        Self.noDecimalCos[47] := 6819;
        Self.noDecimalCos[48] := 6691;
        Self.noDecimalCos[49] := 6560;
        Self.noDecimalCos[50] := 6427;
        Self.noDecimalCos[51] := 6293;
        Self.noDecimalCos[52] := 6156;
        Self.noDecimalCos[53] := 6018;
        Self.noDecimalCos[54] := 5877;
        Self.noDecimalCos[55] := 5735;
        Self.noDecimalCos[56] := 5591;
        Self.noDecimalCos[57] := 5446;
        Self.noDecimalCos[58] := 5299;
        Self.noDecimalCos[59] := 5150;
        Self.noDecimalCos[60] := 5000;
        Self.noDecimalCos[61] := 4848;
        Self.noDecimalCos[62] := 4694;
        Self.noDecimalCos[63] := 4539;
        Self.noDecimalCos[64] := 4383;
        Self.noDecimalCos[65] := 4226;
        Self.noDecimalCos[66] := 4067;
        Self.noDecimalCos[67] := 3907;
        Self.noDecimalCos[68] := 3746;
        Self.noDecimalCos[69] := 3583;
        Self.noDecimalCos[70] := 3420;
        Self.noDecimalCos[71] := 3255;
        Self.noDecimalCos[72] := 3090;
        Self.noDecimalCos[73] := 2923;
        Self.noDecimalCos[74] := 2756;
        Self.noDecimalCos[75] := 2588;
        Self.noDecimalCos[76] := 2419;
        Self.noDecimalCos[77] := 2249;
        Self.noDecimalCos[78] := 2079;
        Self.noDecimalCos[79] := 1908;
        Self.noDecimalCos[80] := 1736;
        Self.noDecimalCos[81] := 1564;
        Self.noDecimalCos[82] := 1391;
        Self.noDecimalCos[83] := 1218;
        Self.noDecimalCos[84] := 1045;
        Self.noDecimalCos[85] := 871;
        Self.noDecimalCos[86] := 697;
        Self.noDecimalCos[87] := 523;
        Self.noDecimalCos[88] := 348;
        Self.noDecimalCos[89] := 174;
        Self.noDecimalCos[90] := 0;
        Self.noDecimalCos[91] := Int64(-174);
        Self.noDecimalCos[92] := Int64(-348);
        Self.noDecimalCos[93] := Int64(-523);
        Self.noDecimalCos[94] := Int64(-697);
        Self.noDecimalCos[95] := Int64(-871);
        Self.noDecimalCos[96] := Int64(-1045);
        Self.noDecimalCos[97] := Int64(-1218);
        Self.noDecimalCos[98] := Int64(-1391);
        Self.noDecimalCos[99] := Int64(-1564);
        Self.noDecimalCos[100] := Int64(-1736);
        Self.noDecimalCos[101] := Int64(-1908);
        Self.noDecimalCos[102] := Int64(-2079);
        Self.noDecimalCos[103] := Int64(-2249);
        Self.noDecimalCos[104] := Int64(-2419);
        Self.noDecimalCos[105] := Int64(-2588);
        Self.noDecimalCos[106] := Int64(-2756);
        Self.noDecimalCos[107] := Int64(-2923);
        Self.noDecimalCos[108] := Int64(-3090);
        Self.noDecimalCos[109] := Int64(-3255);
        Self.noDecimalCos[110] := Int64(-3420);
        Self.noDecimalCos[111] := Int64(-3583);
        Self.noDecimalCos[112] := Int64(-3746);
        Self.noDecimalCos[113] := Int64(-3907);
        Self.noDecimalCos[114] := Int64(-4067);
        Self.noDecimalCos[115] := Int64(-4226);
        Self.noDecimalCos[116] := Int64(-4383);
        Self.noDecimalCos[117] := Int64(-4539);
        Self.noDecimalCos[118] := Int64(-4694);
        Self.noDecimalCos[119] := Int64(-4848);
        Self.noDecimalCos[120] := Int64(-4999);
        Self.noDecimalCos[121] := Int64(-5150);
        Self.noDecimalCos[122] := Int64(-5299);
        Self.noDecimalCos[123] := Int64(-5446);
        Self.noDecimalCos[124] := Int64(-5591);
        Self.noDecimalCos[125] := Int64(-5735);
        Self.noDecimalCos[126] := Int64(-5877);
        Self.noDecimalCos[127] := Int64(-6018);
        Self.noDecimalCos[128] := Int64(-6156);
        Self.noDecimalCos[129] := Int64(-6293);
        Self.noDecimalCos[130] := Int64(-6427);
        Self.noDecimalCos[131] := Int64(-6560);
        Self.noDecimalCos[132] := Int64(-6691);
        Self.noDecimalCos[133] := Int64(-6819);
        Self.noDecimalCos[134] := Int64(-6946);
        Self.noDecimalCos[135] := Int64(-7071);
        Self.noDecimalCos[136] := Int64(-7193);
        Self.noDecimalCos[137] := Int64(-7313);
        Self.noDecimalCos[138] := Int64(-7431);
        Self.noDecimalCos[139] := Int64(-7547);
        Self.noDecimalCos[140] := Int64(-7660);
        Self.noDecimalCos[141] := Int64(-7771);
        Self.noDecimalCos[142] := Int64(-7880);
        Self.noDecimalCos[143] := Int64(-7986);
        Self.noDecimalCos[144] := Int64(-8090);
        Self.noDecimalCos[145] := Int64(-8191);
        Self.noDecimalCos[146] := Int64(-8290);
        Self.noDecimalCos[147] := Int64(-8386);
        Self.noDecimalCos[148] := Int64(-8480);
        Self.noDecimalCos[149] := Int64(-8571);
        Self.noDecimalCos[150] := Int64(-8660);
        Self.noDecimalCos[151] := Int64(-8746);
        Self.noDecimalCos[152] := Int64(-8829);
        Self.noDecimalCos[153] := Int64(-8910);
        Self.noDecimalCos[154] := Int64(-8987);
        Self.noDecimalCos[155] := Int64(-9063);
        Self.noDecimalCos[156] := Int64(-9135);
        Self.noDecimalCos[157] := Int64(-9205);
        Self.noDecimalCos[158] := Int64(-9271);
        Self.noDecimalCos[159] := Int64(-9335);
        Self.noDecimalCos[160] := Int64(-9396);
        Self.noDecimalCos[161] := Int64(-9455);
        Self.noDecimalCos[162] := Int64(-9510);
        Self.noDecimalCos[163] := Int64(-9563);
        Self.noDecimalCos[164] := Int64(-9612);
        Self.noDecimalCos[165] := Int64(-9659);
        Self.noDecimalCos[166] := Int64(-9702);
        Self.noDecimalCos[167] := Int64(-9743);
        Self.noDecimalCos[168] := Int64(-9781);
        Self.noDecimalCos[169] := Int64(-9816);
        Self.noDecimalCos[170] := Int64(-9848);
        Self.noDecimalCos[171] := Int64(-9876);
        Self.noDecimalCos[172] := Int64(-9902);
        Self.noDecimalCos[173] := Int64(-9925);
        Self.noDecimalCos[174] := Int64(-9945);
        Self.noDecimalCos[175] := Int64(-9961);
        Self.noDecimalCos[176] := Int64(-9975);
        Self.noDecimalCos[177] := Int64(-9986);
        Self.noDecimalCos[178] := Int64(-9993);
        Self.noDecimalCos[179] := Int64(-9998);
        Self.noDecimalCos[180] := Int64(-10000);
        Self.noDecimalCos[181] := Int64(-9998);
        Self.noDecimalCos[182] := Int64(-9993);
        Self.noDecimalCos[183] := Int64(-9986);
        Self.noDecimalCos[184] := Int64(-9975);
        Self.noDecimalCos[185] := Int64(-9961);
        Self.noDecimalCos[186] := Int64(-9945);
        Self.noDecimalCos[187] := Int64(-9925);
        Self.noDecimalCos[188] := Int64(-9902);
        Self.noDecimalCos[189] := Int64(-9876);
        Self.noDecimalCos[190] := Int64(-9848);
        Self.noDecimalCos[191] := Int64(-9816);
        Self.noDecimalCos[192] := Int64(-9781);
        Self.noDecimalCos[193] := Int64(-9743);
        Self.noDecimalCos[194] := Int64(-9702);
        Self.noDecimalCos[195] := Int64(-9659);
        Self.noDecimalCos[196] := Int64(-9612);
        Self.noDecimalCos[197] := Int64(-9563);
        Self.noDecimalCos[198] := Int64(-9510);
        Self.noDecimalCos[199] := Int64(-9455);
        Self.noDecimalCos[200] := Int64(-9396);
        Self.noDecimalCos[201] := Int64(-9335);
        Self.noDecimalCos[202] := Int64(-9271);
        Self.noDecimalCos[203] := Int64(-9205);
        Self.noDecimalCos[204] := Int64(-9135);
        Self.noDecimalCos[205] := Int64(-9063);
        Self.noDecimalCos[206] := Int64(-8987);
        Self.noDecimalCos[207] := Int64(-8910);
        Self.noDecimalCos[208] := Int64(-8829);
        Self.noDecimalCos[209] := Int64(-8746);
        Self.noDecimalCos[210] := Int64(-8660);
        Self.noDecimalCos[211] := Int64(-8571);
        Self.noDecimalCos[212] := Int64(-8480);
        Self.noDecimalCos[213] := Int64(-8386);
        Self.noDecimalCos[214] := Int64(-8290);
        Self.noDecimalCos[215] := Int64(-8191);
        Self.noDecimalCos[216] := Int64(-8090);
        Self.noDecimalCos[217] := Int64(-7986);
        Self.noDecimalCos[218] := Int64(-7880);
        Self.noDecimalCos[219] := Int64(-7771);
        Self.noDecimalCos[220] := Int64(-7660);
        Self.noDecimalCos[221] := Int64(-7547);
        Self.noDecimalCos[222] := Int64(-7431);
        Self.noDecimalCos[223] := Int64(-7313);
        Self.noDecimalCos[224] := Int64(-7193);
        Self.noDecimalCos[225] := Int64(-7071);
        Self.noDecimalCos[226] := Int64(-6946);
        Self.noDecimalCos[227] := Int64(-6819);
        Self.noDecimalCos[228] := Int64(-6691);
        Self.noDecimalCos[229] := Int64(-6560);
        Self.noDecimalCos[230] := Int64(-6427);
        Self.noDecimalCos[231] := Int64(-6293);
        Self.noDecimalCos[232] := Int64(-6156);
        Self.noDecimalCos[233] := Int64(-6018);
        Self.noDecimalCos[234] := Int64(-5877);
        Self.noDecimalCos[235] := Int64(-5735);
        Self.noDecimalCos[236] := Int64(-5591);
        Self.noDecimalCos[237] := Int64(-5446);
        Self.noDecimalCos[238] := Int64(-5299);
        Self.noDecimalCos[239] := Int64(-5150);
        Self.noDecimalCos[240] := Int64(-5000);
        Self.noDecimalCos[241] := Int64(-4848);
        Self.noDecimalCos[242] := Int64(-4694);
        Self.noDecimalCos[243] := Int64(-4539);
        Self.noDecimalCos[244] := Int64(-4383);
        Self.noDecimalCos[245] := Int64(-4226);
        Self.noDecimalCos[246] := Int64(-4067);
        Self.noDecimalCos[247] := Int64(-3907);
        Self.noDecimalCos[248] := Int64(-3746);
        Self.noDecimalCos[249] := Int64(-3583);
        Self.noDecimalCos[250] := Int64(-3420);
        Self.noDecimalCos[251] := Int64(-3255);
        Self.noDecimalCos[252] := Int64(-3090);
        Self.noDecimalCos[253] := Int64(-2923);
        Self.noDecimalCos[254] := Int64(-2756);
        Self.noDecimalCos[255] := Int64(-2588);
        Self.noDecimalCos[256] := Int64(-2419);
        Self.noDecimalCos[257] := Int64(-2249);
        Self.noDecimalCos[258] := Int64(-2079);
        Self.noDecimalCos[259] := Int64(-1908);
        Self.noDecimalCos[260] := Int64(-1736);
        Self.noDecimalCos[261] := Int64(-1564);
        Self.noDecimalCos[262] := Int64(-1391);
        Self.noDecimalCos[263] := Int64(-1218);
        Self.noDecimalCos[264] := Int64(-1045);
        Self.noDecimalCos[265] := Int64(-871);
        Self.noDecimalCos[266] := Int64(-697);
        Self.noDecimalCos[267] := Int64(-523);
        Self.noDecimalCos[268] := Int64(-348);
        Self.noDecimalCos[269] := Int64(-174);
        Self.noDecimalCos[270] := 0;
        Self.noDecimalCos[271] := 174;
        Self.noDecimalCos[272] := 348;
        Self.noDecimalCos[273] := 523;
        Self.noDecimalCos[274] := 697;
        Self.noDecimalCos[275] := 871;
        Self.noDecimalCos[276] := 1045;
        Self.noDecimalCos[277] := 1218;
        Self.noDecimalCos[278] := 1391;
        Self.noDecimalCos[279] := 1564;
        Self.noDecimalCos[280] := 1736;
        Self.noDecimalCos[281] := 1908;
        Self.noDecimalCos[282] := 2079;
        Self.noDecimalCos[283] := 2249;
        Self.noDecimalCos[284] := 2419;
        Self.noDecimalCos[285] := 2588;
        Self.noDecimalCos[286] := 2756;
        Self.noDecimalCos[287] := 2923;
        Self.noDecimalCos[288] := 3090;
        Self.noDecimalCos[289] := 3255;
        Self.noDecimalCos[290] := 3420;
        Self.noDecimalCos[291] := 3583;
        Self.noDecimalCos[292] := 3746;
        Self.noDecimalCos[293] := 3907;
        Self.noDecimalCos[294] := 4067;
        Self.noDecimalCos[295] := 4226;
        Self.noDecimalCos[296] := 4383;
        Self.noDecimalCos[297] := 4539;
        Self.noDecimalCos[298] := 4694;
        Self.noDecimalCos[299] := 4848;
        Self.noDecimalCos[300] := 5000;
        Self.noDecimalCos[301] := 5150;
        Self.noDecimalCos[302] := 5299;
        Self.noDecimalCos[303] := 5446;
        Self.noDecimalCos[304] := 5591;
        Self.noDecimalCos[305] := 5735;
        Self.noDecimalCos[306] := 5877;
        Self.noDecimalCos[307] := 6018;
        Self.noDecimalCos[308] := 6156;
        Self.noDecimalCos[309] := 6293;
        Self.noDecimalCos[310] := 6427;
        Self.noDecimalCos[311] := 6560;
        Self.noDecimalCos[312] := 6691;
        Self.noDecimalCos[313] := 6819;
        Self.noDecimalCos[314] := 6946;
        Self.noDecimalCos[315] := 7071;
        Self.noDecimalCos[316] := 7193;
        Self.noDecimalCos[317] := 7313;
        Self.noDecimalCos[318] := 7431;
        Self.noDecimalCos[319] := 7547;
        Self.noDecimalCos[320] := 7660;
        Self.noDecimalCos[321] := 7771;
        Self.noDecimalCos[322] := 7880;
        Self.noDecimalCos[323] := 7986;
        Self.noDecimalCos[324] := 8090;
        Self.noDecimalCos[325] := 8191;
        Self.noDecimalCos[326] := 8290;
        Self.noDecimalCos[327] := 8386;
        Self.noDecimalCos[328] := 8480;
        Self.noDecimalCos[329] := 8571;
        Self.noDecimalCos[330] := 8660;
        Self.noDecimalCos[331] := 8746;
        Self.noDecimalCos[332] := 8829;
        Self.noDecimalCos[333] := 8910;
        Self.noDecimalCos[334] := 8987;
        Self.noDecimalCos[335] := 9063;
        Self.noDecimalCos[336] := 9135;
        Self.noDecimalCos[337] := 9205;
        Self.noDecimalCos[338] := 9271;
        Self.noDecimalCos[339] := 9335;
        Self.noDecimalCos[340] := 9396;
        Self.noDecimalCos[341] := 9455;
        Self.noDecimalCos[342] := 9510;
        Self.noDecimalCos[343] := 9563;
        Self.noDecimalCos[344] := 9612;
        Self.noDecimalCos[345] := 9659;
        Self.noDecimalCos[346] := 9702;
        Self.noDecimalCos[347] := 9743;
        Self.noDecimalCos[348] := 9781;
        Self.noDecimalCos[349] := 9816;
        Self.noDecimalCos[350] := 9848;
        Self.noDecimalCos[351] := 9876;
        Self.noDecimalCos[352] := 9902;
        Self.noDecimalCos[353] := 9925;
        Self.noDecimalCos[354] := 9945;
        Self.noDecimalCos[355] := 9961;
        Self.noDecimalCos[356] := 9975;
        Self.noDecimalCos[357] := 9986;
        Self.noDecimalCos[358] := 9993;
        Self.noDecimalCos[359] := 9998;
        Self.noDecimalTan[0] := 0;
        Self.noDecimalTan[1] := 174;
        Self.noDecimalTan[2] := 349;
        Self.noDecimalTan[3] := 524;
        Self.noDecimalTan[4] := 699;
        Self.noDecimalTan[5] := 874;
        Self.noDecimalTan[6] := 1051;
        Self.noDecimalTan[7] := 1227;
        Self.noDecimalTan[8] := 1405;
        Self.noDecimalTan[9] := 1583;
        Self.noDecimalTan[10] := 1763;
        Self.noDecimalTan[11] := 1943;
        Self.noDecimalTan[12] := 2125;
        Self.noDecimalTan[13] := 2308;
        Self.noDecimalTan[14] := 2493;
        Self.noDecimalTan[15] := 2679;
        Self.noDecimalTan[16] := 2867;
        Self.noDecimalTan[17] := 3057;
        Self.noDecimalTan[18] := 3249;
        Self.noDecimalTan[19] := 3443;
        Self.noDecimalTan[20] := 3639;
        Self.noDecimalTan[21] := 3838;
        Self.noDecimalTan[22] := 4040;
        Self.noDecimalTan[23] := 4244;
        Self.noDecimalTan[24] := 4452;
        Self.noDecimalTan[25] := 4663;
        Self.noDecimalTan[26] := 4877;
        Self.noDecimalTan[27] := 5095;
        Self.noDecimalTan[28] := 5317;
        Self.noDecimalTan[29] := 5543;
        Self.noDecimalTan[30] := 5773;
        Self.noDecimalTan[31] := 6008;
        Self.noDecimalTan[32] := 6248;
        Self.noDecimalTan[33] := 6494;
        Self.noDecimalTan[34] := 6745;
        Self.noDecimalTan[35] := 7002;
        Self.noDecimalTan[36] := 7265;
        Self.noDecimalTan[37] := 7535;
        Self.noDecimalTan[38] := 7812;
        Self.noDecimalTan[39] := 8097;
        Self.noDecimalTan[40] := 8390;
        Self.noDecimalTan[41] := 8692;
        Self.noDecimalTan[42] := 9004;
        Self.noDecimalTan[43] := 9325;
        Self.noDecimalTan[44] := 9656;
        Self.noDecimalTan[45] := 9999;
        Self.noDecimalTan[46] := 10355;
        Self.noDecimalTan[47] := 10723;
        Self.noDecimalTan[48] := 11106;
        Self.noDecimalTan[49] := 11503;
        Self.noDecimalTan[50] := 11917;
        Self.noDecimalTan[51] := 12348;
        Self.noDecimalTan[52] := 12799;
        Self.noDecimalTan[53] := 13270;
        Self.noDecimalTan[54] := 13763;
        Self.noDecimalTan[55] := 14281;
        Self.noDecimalTan[56] := 14825;
        Self.noDecimalTan[57] := 15398;
        Self.noDecimalTan[58] := 16003;
        Self.noDecimalTan[59] := 16642;
        Self.noDecimalTan[60] := 17320;
        Self.noDecimalTan[61] := 18040;
        Self.noDecimalTan[62] := 18807;
        Self.noDecimalTan[63] := 19626;
        Self.noDecimalTan[64] := 20503;
        Self.noDecimalTan[65] := 21445;
        Self.noDecimalTan[66] := 22460;
        Self.noDecimalTan[67] := 23558;
        Self.noDecimalTan[68] := 24750;
        Self.noDecimalTan[69] := 26050;
        Self.noDecimalTan[70] := 27474;
        Self.noDecimalTan[71] := 29042;
        Self.noDecimalTan[72] := 30776;
        Self.noDecimalTan[73] := 32708;
        Self.noDecimalTan[74] := 34874;
        Self.noDecimalTan[75] := 37320;
        Self.noDecimalTan[76] := 40107;
        Self.noDecimalTan[77] := 43314;
        Self.noDecimalTan[78] := 47046;
        Self.noDecimalTan[79] := 51445;
        Self.noDecimalTan[80] := 56712;
        Self.noDecimalTan[81] := 63137;
        Self.noDecimalTan[82] := 71153;
        Self.noDecimalTan[83] := 81443;
        Self.noDecimalTan[84] := 95143;
        Self.noDecimalTan[85] := 114300;
        Self.noDecimalTan[86] := 143006;
        Self.noDecimalTan[87] := 190811;
        Self.noDecimalTan[88] := 286362;
        Self.noDecimalTan[89] := 572899;
        Self.noDecimalTan[90] := MAX_VALUE;
        Self.noDecimalTan[91] := Int64(-572899);
        Self.noDecimalTan[92] := Int64(-286362);
        Self.noDecimalTan[93] := Int64(-190811);
        Self.noDecimalTan[94] := Int64(-143006);
        Self.noDecimalTan[95] := Int64(-114300);
        Self.noDecimalTan[96] := Int64(-95143);
        Self.noDecimalTan[97] := Int64(-81443);
        Self.noDecimalTan[98] := Int64(-71153);
        Self.noDecimalTan[99] := Int64(-63137);
        Self.noDecimalTan[100] := Int64(-56712);
        Self.noDecimalTan[101] := Int64(-51445);
        Self.noDecimalTan[102] := Int64(-47046);
        Self.noDecimalTan[103] := Int64(-43314);
        Self.noDecimalTan[104] := Int64(-40107);
        Self.noDecimalTan[105] := Int64(-37320);
        Self.noDecimalTan[106] := Int64(-34874);
        Self.noDecimalTan[107] := Int64(-32708);
        Self.noDecimalTan[108] := Int64(-30776);
        Self.noDecimalTan[109] := Int64(-29042);
        Self.noDecimalTan[110] := Int64(-27474);
        Self.noDecimalTan[111] := Int64(-26050);
        Self.noDecimalTan[112] := Int64(-24750);
        Self.noDecimalTan[113] := Int64(-23558);
        Self.noDecimalTan[114] := Int64(-22460);
        Self.noDecimalTan[115] := Int64(-21445);
        Self.noDecimalTan[116] := Int64(-20503);
        Self.noDecimalTan[117] := Int64(-19626);
        Self.noDecimalTan[118] := Int64(-18807);
        Self.noDecimalTan[119] := Int64(-18040);
        Self.noDecimalTan[120] := Int64(-17320);
        Self.noDecimalTan[121] := Int64(-16642);
        Self.noDecimalTan[122] := Int64(-16003);
        Self.noDecimalTan[123] := Int64(-15398);
        Self.noDecimalTan[124] := Int64(-14825);
        Self.noDecimalTan[125] := Int64(-14281);
        Self.noDecimalTan[126] := Int64(-13763);
        Self.noDecimalTan[127] := Int64(-13270);
        Self.noDecimalTan[128] := Int64(-12799);
        Self.noDecimalTan[129] := Int64(-12348);
        Self.noDecimalTan[130] := Int64(-11917);
        Self.noDecimalTan[131] := Int64(-11503);
        Self.noDecimalTan[132] := Int64(-11106);
        Self.noDecimalTan[133] := Int64(-10723);
        Self.noDecimalTan[134] := Int64(-10355);
        Self.noDecimalTan[135] := Int64(-10000);
        Self.noDecimalTan[136] := Int64(-9656);
        Self.noDecimalTan[137] := Int64(-9325);
        Self.noDecimalTan[138] := Int64(-9004);
        Self.noDecimalTan[139] := Int64(-8692);
        Self.noDecimalTan[140] := Int64(-8390);
        Self.noDecimalTan[141] := Int64(-8097);
        Self.noDecimalTan[142] := Int64(-7812);
        Self.noDecimalTan[143] := Int64(-7535);
        Self.noDecimalTan[144] := Int64(-7265);
        Self.noDecimalTan[145] := Int64(-7002);
        Self.noDecimalTan[146] := Int64(-6745);
        Self.noDecimalTan[147] := Int64(-6494);
        Self.noDecimalTan[148] := Int64(-6248);
        Self.noDecimalTan[149] := Int64(-6008);
        Self.noDecimalTan[150] := Int64(-5773);
        Self.noDecimalTan[151] := Int64(-5543);
        Self.noDecimalTan[152] := Int64(-5317);
        Self.noDecimalTan[153] := Int64(-5095);
        Self.noDecimalTan[154] := Int64(-4877);
        Self.noDecimalTan[155] := Int64(-4663);
        Self.noDecimalTan[156] := Int64(-4452);
        Self.noDecimalTan[157] := Int64(-4244);
        Self.noDecimalTan[158] := Int64(-4040);
        Self.noDecimalTan[159] := Int64(-3838);
        Self.noDecimalTan[160] := Int64(-3639);
        Self.noDecimalTan[161] := Int64(-3443);
        Self.noDecimalTan[162] := Int64(-3249);
        Self.noDecimalTan[163] := Int64(-3057);
        Self.noDecimalTan[164] := Int64(-2867);
        Self.noDecimalTan[165] := Int64(-2679);
        Self.noDecimalTan[166] := Int64(-2493);
        Self.noDecimalTan[167] := Int64(-2308);
        Self.noDecimalTan[168] := Int64(-2125);
        Self.noDecimalTan[169] := Int64(-1943);
        Self.noDecimalTan[170] := Int64(-1763);
        Self.noDecimalTan[171] := Int64(-1583);
        Self.noDecimalTan[172] := Int64(-1405);
        Self.noDecimalTan[173] := Int64(-1227);
        Self.noDecimalTan[174] := Int64(-1051);
        Self.noDecimalTan[175] := Int64(-874);
        Self.noDecimalTan[176] := Int64(-699);
        Self.noDecimalTan[177] := Int64(-524);
        Self.noDecimalTan[178] := Int64(-349);
        Self.noDecimalTan[179] := Int64(-174);
        Self.noDecimalTan[180] := 0;
        Self.noDecimalTan[181] := 174;
        Self.noDecimalTan[182] := 349;
        Self.noDecimalTan[183] := 524;
        Self.noDecimalTan[184] := 699;
        Self.noDecimalTan[185] := 874;
        Self.noDecimalTan[186] := 1051;
        Self.noDecimalTan[187] := 1227;
        Self.noDecimalTan[188] := 1405;
        Self.noDecimalTan[189] := 1583;
        Self.noDecimalTan[190] := 1763;
        Self.noDecimalTan[191] := 1943;
        Self.noDecimalTan[192] := 2125;
        Self.noDecimalTan[193] := 2308;
        Self.noDecimalTan[194] := 2493;
        Self.noDecimalTan[195] := 2679;
        Self.noDecimalTan[196] := 2867;
        Self.noDecimalTan[197] := 3057;
        Self.noDecimalTan[198] := 3249;
        Self.noDecimalTan[199] := 3443;
        Self.noDecimalTan[200] := 3639;
        Self.noDecimalTan[201] := 3838;
        Self.noDecimalTan[202] := 4040;
        Self.noDecimalTan[203] := 4244;
        Self.noDecimalTan[204] := 4452;
        Self.noDecimalTan[205] := 4663;
        Self.noDecimalTan[206] := 4877;
        Self.noDecimalTan[207] := 5095;
        Self.noDecimalTan[208] := 5317;
        Self.noDecimalTan[209] := 5543;
        Self.noDecimalTan[210] := 5773;
        Self.noDecimalTan[211] := 6008;
        Self.noDecimalTan[212] := 6248;
        Self.noDecimalTan[213] := 6494;
        Self.noDecimalTan[214] := 6745;
        Self.noDecimalTan[215] := 7002;
        Self.noDecimalTan[216] := 7265;
        Self.noDecimalTan[217] := 7535;
        Self.noDecimalTan[218] := 7812;
        Self.noDecimalTan[219] := 8097;
        Self.noDecimalTan[220] := 8390;
        Self.noDecimalTan[221] := 8692;
        Self.noDecimalTan[222] := 9004;
        Self.noDecimalTan[223] := 9325;
        Self.noDecimalTan[224] := 9656;
        Self.noDecimalTan[225] := 9999;
        Self.noDecimalTan[226] := 10355;
        Self.noDecimalTan[227] := 10723;
        Self.noDecimalTan[228] := 11106;
        Self.noDecimalTan[229] := 11503;
        Self.noDecimalTan[230] := 11917;
        Self.noDecimalTan[231] := 12348;
        Self.noDecimalTan[232] := 12799;
        Self.noDecimalTan[233] := 13270;
        Self.noDecimalTan[234] := 13763;
        Self.noDecimalTan[235] := 14281;
        Self.noDecimalTan[236] := 14825;
        Self.noDecimalTan[237] := 15398;
        Self.noDecimalTan[238] := 16003;
        Self.noDecimalTan[239] := 16642;
        Self.noDecimalTan[240] := 17320;
        Self.noDecimalTan[241] := 18040;
        Self.noDecimalTan[242] := 18807;
        Self.noDecimalTan[243] := 19626;
        Self.noDecimalTan[244] := 20503;
        Self.noDecimalTan[245] := 21445;
        Self.noDecimalTan[246] := 22460;
        Self.noDecimalTan[247] := 23558;
        Self.noDecimalTan[248] := 24750;
        Self.noDecimalTan[249] := 26050;
        Self.noDecimalTan[250] := 27474;
        Self.noDecimalTan[251] := 29042;
        Self.noDecimalTan[252] := 30776;
        Self.noDecimalTan[253] := 32708;
        Self.noDecimalTan[254] := 34874;
        Self.noDecimalTan[255] := 37320;
        Self.noDecimalTan[256] := 40107;
        Self.noDecimalTan[257] := 43314;
        Self.noDecimalTan[258] := 47046;
        Self.noDecimalTan[259] := 51445;
        Self.noDecimalTan[260] := 56712;
        Self.noDecimalTan[261] := 63137;
        Self.noDecimalTan[262] := 71153;
        Self.noDecimalTan[263] := 81443;
        Self.noDecimalTan[264] := 95143;
        Self.noDecimalTan[265] := 114300;
        Self.noDecimalTan[266] := 143006;
        Self.noDecimalTan[267] := 190811;
        Self.noDecimalTan[268] := 286362;
        Self.noDecimalTan[269] := 572899;
        Self.noDecimalTan[270] := MAX_VALUE;
        Self.noDecimalTan[271] := Int64(-572899);
        Self.noDecimalTan[272] := Int64(-286362);
        Self.noDecimalTan[273] := Int64(-190811);
        Self.noDecimalTan[274] := Int64(-143006);
        Self.noDecimalTan[275] := Int64(-114300);
        Self.noDecimalTan[276] := Int64(-95143);
        Self.noDecimalTan[277] := Int64(-81443);
        Self.noDecimalTan[278] := Int64(-71153);
        Self.noDecimalTan[279] := Int64(-63137);
        Self.noDecimalTan[280] := Int64(-56712);
        Self.noDecimalTan[281] := Int64(-51445);
        Self.noDecimalTan[282] := Int64(-47046);
        Self.noDecimalTan[283] := Int64(-43314);
        Self.noDecimalTan[284] := Int64(-40107);
        Self.noDecimalTan[285] := Int64(-37320);
        Self.noDecimalTan[286] := Int64(-34874);
        Self.noDecimalTan[287] := Int64(-32708);
        Self.noDecimalTan[288] := Int64(-30776);
        Self.noDecimalTan[289] := Int64(-29042);
        Self.noDecimalTan[290] := Int64(-27474);
        Self.noDecimalTan[291] := Int64(-26050);
        Self.noDecimalTan[292] := Int64(-24750);
        Self.noDecimalTan[293] := Int64(-23558);
        Self.noDecimalTan[294] := Int64(-22460);
        Self.noDecimalTan[295] := Int64(-21445);
        Self.noDecimalTan[296] := Int64(-20503);
        Self.noDecimalTan[297] := Int64(-19626);
        Self.noDecimalTan[298] := Int64(-18807);
        Self.noDecimalTan[299] := Int64(-18040);
        Self.noDecimalTan[300] := Int64(-17320);
        Self.noDecimalTan[301] := Int64(-16642);
        Self.noDecimalTan[302] := Int64(-16003);
        Self.noDecimalTan[303] := Int64(-15398);
        Self.noDecimalTan[304] := Int64(-14825);
        Self.noDecimalTan[305] := Int64(-14281);
        Self.noDecimalTan[306] := Int64(-13763);
        Self.noDecimalTan[307] := Int64(-13270);
        Self.noDecimalTan[308] := Int64(-12799);
        Self.noDecimalTan[309] := Int64(-12348);
        Self.noDecimalTan[310] := Int64(-11917);
        Self.noDecimalTan[311] := Int64(-11503);
        Self.noDecimalTan[312] := Int64(-11106);
        Self.noDecimalTan[313] := Int64(-10723);
        Self.noDecimalTan[314] := Int64(-10355);
        Self.noDecimalTan[315] := Int64(-10000);
        Self.noDecimalTan[316] := Int64(-9656);
        Self.noDecimalTan[317] := Int64(-9325);
        Self.noDecimalTan[318] := Int64(-9004);
        Self.noDecimalTan[319] := Int64(-8692);
        Self.noDecimalTan[320] := Int64(-8390);
        Self.noDecimalTan[321] := Int64(-8097);
        Self.noDecimalTan[322] := Int64(-7812);
        Self.noDecimalTan[323] := Int64(-7535);
        Self.noDecimalTan[324] := Int64(-7265);
        Self.noDecimalTan[325] := Int64(-7002);
        Self.noDecimalTan[326] := Int64(-6745);
        Self.noDecimalTan[327] := Int64(-6494);
        Self.noDecimalTan[328] := Int64(-6248);
        Self.noDecimalTan[329] := Int64(-6008);
        Self.noDecimalTan[330] := Int64(-5773);
        Self.noDecimalTan[331] := Int64(-5543);
        Self.noDecimalTan[332] := Int64(-5317);
        Self.noDecimalTan[333] := Int64(-5095);
        Self.noDecimalTan[334] := Int64(-4877);
        Self.noDecimalTan[335] := Int64(-4663);
        Self.noDecimalTan[336] := Int64(-4452);
        Self.noDecimalTan[337] := Int64(-4244);
        Self.noDecimalTan[338] := Int64(-4040);
        Self.noDecimalTan[339] := Int64(-3838);
        Self.noDecimalTan[340] := Int64(-3639);
        Self.noDecimalTan[341] := Int64(-3443);
        Self.noDecimalTan[342] := Int64(-3249);
        Self.noDecimalTan[343] := Int64(-3057);
        Self.noDecimalTan[344] := Int64(-2867);
        Self.noDecimalTan[345] := Int64(-2679);
        Self.noDecimalTan[346] := Int64(-2493);
        Self.noDecimalTan[347] := Int64(-2308);
        Self.noDecimalTan[348] := Int64(-2125);
        Self.noDecimalTan[349] := Int64(-1943);
        Self.noDecimalTan[350] := Int64(-1763);
        Self.noDecimalTan[351] := Int64(-1583);
        Self.noDecimalTan[352] := Int64(-1405);
        Self.noDecimalTan[353] := Int64(-1227);
        Self.noDecimalTan[354] := Int64(-1051);
        Self.noDecimalTan[355] := Int64(-874);
        Self.noDecimalTan[356] := Int64(-699);
        Self.noDecimalTan[357] := Int64(-524);
        Self.noDecimalTan[358] := Int64(-349);
        Self.noDecimalTan[359] := Int64(-174);
        Self.noDecimalTan[0] := Int64(-174);
end;
    

function TNoDecimalTrigTable.sin(angle: Integer): Int64;
begin
        Exit(Self.noDecimalSin[angle]);
end;
    

function TNoDecimalTrigTable.cos(angle: Integer): Int64;
begin
        Exit(Self.noDecimalCos[angle]);
end;
    

function TNoDecimalTrigTable.tan(angle: Integer): Int64;
begin
        Exit(Self.noDecimalTan[angle]);
end;
    

// throws Exception
function TNoDecimalTrigTable.antiTan(dx: Integer; dy: Integer): SmallInt;
var
  MAX_VALUE: Int64;
  MIN_VALUE: Int64;
  ratio: Int64;
  dxl: Int64;
  index: Integer;
  stringBuffer: TStringMaker;
begin
        MAX_VALUE := (Int64(High(Integer)));
        MIN_VALUE := (Int64(Low(Integer)));
        ratio := ((MAX_VALUE) - (1));
        if (dy) <> (0) then begin
            dxl := (Int64(dx));
            ratio := ((Int64(Self.SCALE)) * (dxl)) div (Int64(dy));
            if ((dx) <= (0)) and ((dy) < (0)) then begin
                ratio := Self.mathUtil.abslong(ratio);
            end;
        end;
        if (((dx) >= (0)) and ((dy) < (0))) then begin
            for index := 180 downto 90 + 1 do begin
                if (ratio) <= (Self.noDecimalTan[index]) then begin
                    if (ratio) > (Self.noDecimalTan[(index) - (1)]) then begin
                        Exit((SmallInt(index)));
                    end else if ((Self.noDecimalTan[(index) - (1)]) = (MAX_VALUE)) and ((ratio) > (MIN_VALUE)) then begin
                        Exit((SmallInt(index)));
                    end;
                end;
            end;
        end else if (((dx) < (0)) and ((dy) <= (0))) then begin
            for index := 270 downto 180 + 1 do begin
                if ((ratio) < (Self.noDecimalTan[index])) and ((ratio) >= (Self.noDecimalTan[(index) - (1)])) then begin
                    Exit((SmallInt(index)));
                end;
            end;
        end else if (((dx) < (0)) and ((dy) > (0))) then begin
            for index := ((System.Length(Self.noDecimalTan)) - (1)) downto 270 + 1 do begin
                if (ratio) < (Self.noDecimalTan[index]) then begin
                    if (ratio) >= (Self.noDecimalTan[(index) - (1)]) then begin
                        Exit((SmallInt(index)));
                    end else if ((Self.noDecimalTan[(index) - (1)]) = (MAX_VALUE)) and ((ratio) >= (MIN_VALUE)) then begin
                        Exit((SmallInt(index)));
                    end;
                end;
            end;
        end else if (((dx) >= (0)) and ((dy) >= (0))) then begin
            for index := 90 downto 0 + 1 do begin
                if ((ratio) < (Self.noDecimalTan[index])) and ((ratio) >= (Self.noDecimalTan[(index) - (1)])) then begin
                    Exit((SmallInt(index)));
                end;
            end;
        end;
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Invalid Ratio: ');
        stringBuffer.appendlong(ratio);
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(TPositionStrings.getInstance().DX_LABEL);
        stringBuffer.appendint(dx);
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(TPositionStrings.getInstance().DX_LABEL);
        stringBuffer.appendint(dy);
        raise SysUtils.Exception.Create(stringBuffer.toString());
end;
    

// throws Exception
function TNoDecimalTrigTable.antiTanDebug(screenX: Integer; screenY: Integer; targetX: Integer; targetY: Integer): SmallInt;
var
  METHOD_NAME: string;
  TARGET_ANGLE: string;
  stringMaker: TStringMaker;
  targetX2: Integer;
  targetY2: Integer;
  screenX2: Integer;
  screenY2: Integer;
  dx: TArray<Integer>;
  dy: TArray<Integer>;
  angleOfTarget: SmallInt;
  angleFactory: TAngleFactory;
  angle: TAngle;
  index2: Integer;
  index: Integer;
begin
        METHOD_NAME := 'antiTanDebug';
        TARGET_ANGLE := ' Targeting angle: ';
        stringMaker := TStringMaker.Create();
        TPreLogUtil.put(stringMaker.append('screenX: ').appendint(screenX).append(' screenY: ').appendint(screenY).append(' targetX: ').appendint(targetX).append(' targetY: ').appendint(targetY).toString(), Self, METHOD_NAME);
        targetX2 := -targetX;
        targetY2 := -targetY;
        screenX2 := -screenX;
        screenY2 := -screenY;
        dx := TJava.NewArray<Integer>(4);
        dx[0] := ((screenX) - (targetX));
        dx[1] := ((screenX) - (targetX2));
        dx[2] := ((screenX2) - (targetX));
        dx[3] := ((screenX2) - (targetX2));
        dy := TJava.NewArray<Integer>(4);
        dy[0] := ((screenY) - (targetY));
        dy[1] := ((screenY) - (targetY2));
        dy[2] := ((screenY2) - (targetY));
        dy[3] := ((screenY2) - (targetY2));
        
        angleFactory := TAngleFactory.getInstance();
        
        for index := 0 to System.Length(dx) - 1 do begin
            for index2 := 0 to System.Length(dy) - 1 do begin
                angleOfTarget := Self.antiTan(dx[index], dy[index2]);
                angle := angleFactory.getAt(Integer(angleOfTarget));
                stringMaker.delete_(0, stringMaker.length());
                TPreLogUtil.put(stringMaker.append(TCommonLabels.getInstance().INDEX_LABEL).appendint(index).append(' index2: ').appendint(index2).append(TPositionStrings.getInstance().DX_LABEL).appendint(dx[index]).append(TPositionStrings.getInstance().DY_LABEL).appendint(dy[index2]).append(TARGET_ANGLE).appendshort(angleOfTarget).append(TCommonSeps.getInstance().EQUALS).appendshort(SmallInt(Trunc(angle.getValue()))).toString(), Self, METHOD_NAME);
            end;
        end;
        angleOfTarget := Self.antiTan(dx[0], dy[0]);
        Exit(angleOfTarget);
end;

initialization
  TNoDecimalTrigTable.instance := TNoDecimalTrigTable.Create();

end.

