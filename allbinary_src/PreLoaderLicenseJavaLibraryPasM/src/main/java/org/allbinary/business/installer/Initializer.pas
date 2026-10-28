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
// package org.allbinary.business.installer
unit Initializer;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, HistoryDbInitInfo, InventoryDbInitInfo, LogDbInitInfo, StaticPagesDbInitInfo, UserDbInitInfo, StdUtil, LogUtil, StringMaker, CommonStrings;

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

  TInitializer = class(TObject)
  public
    logUtil: TLogUtil;
    userJdbcDriver: string;
    userName: string;
    userUserName: string;
    userPassword: string;
    userSchema: string;
    userServer: string;
    userPort: string;
    historyJdbcDriver: string;
    historyName: string;
    historyUserName: string;
    historyPassword: string;
    historySchema: string;
    historyServer: string;
    historyPort: string;
    logJdbcDriver: string;
    logName: string;
    logUserName: string;
    logPassword: string;
    logSchema: string;
    logServer: string;
    logPort: string;
    inventoryJdbcDriver: string;
    inventoryName: string;
    inventoryUserName: string;
    inventoryPassword: string;
    inventorySchema: string;
    inventoryServer: string;
    inventoryPort: string;
    staticPagesJdbcDriver: string;
    staticPagesName: string;
    staticPagesUserName: string;
    staticPagesPassword: string;
    staticPagesSchema: string;
    staticPagesServer: string;
    staticPagesPort: string;
    class var MAXDB: Integer;
    class var MAX: Integer;
    class var MIN: Integer;
    class var MINPASSWORD: Integer;
    procedure InitFields;
        constructor Create(map: IMap); overload;
        constructor Create(initHashMap: TJavaHashMap); overload;
        procedure getFormData(hashMap: TJavaHashMap); virtual;
        function isJdbcDriverValid(jdbcDriverClassPathString: string): Boolean;
        function isValid: Boolean; virtual;
        function getJdbcDriverValidationInfo(jdbcDriver: string): string;
        function getJdbcDriverSolutionInfo: string;
        function getInvalidInfo: string; virtual;
        procedure set_; virtual;
  end;

implementation
uses
  InitializerData;



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


procedure TInitializer.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TInitializer.Create(map: IMap);
var
  stringBuffer: TStringMaker;
  hashMap: TJavaHashMap;
  keys: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  key: string;
  values: TArray<string>;
  index: Integer;
begin
    inherited Create;
    InitFields;
        stringBuffer := TStringMaker.Create();
        hashMap := TStdUtil.getInstance().createHashMap();
        keys := map.keySet();
        keyArray := keys.toArray();
        size := System.Length(keyArray);
        for index := 0 to size - 1 do begin
            key := string(keyArray[index]);
            values := TArray<string>(map.get(key));
            hashMap.put(TJava.NewString(key), TJava.NewString(values[0]));
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append('key: ');
            stringBuffer.append(key);
            stringBuffer.append(' Value: ');
            stringBuffer.append(values[0]);
            Self.logUtil.putF(stringBuffer.toString(), Self, 'getFormData()');
        end;
        Self.getFormData(hashMap);
end;
    

constructor TInitializer.Create(initHashMap: TJavaHashMap);
begin
    inherited Create;
    InitFields;
        Self.getFormData(initHashMap);
end;
    

procedure TInitializer.getFormData(hashMap: TJavaHashMap);
var
  initializerData: TInitializerData;
begin
        try
            initializerData := TInitializerData.getInstance();
            Self.userJdbcDriver := string(hashMap.get(initializerData.CUSTOMERJDBCDRIVER));
            Self.userName := string(hashMap.get(initializerData.CUSTOMERNAME));
            Self.userUserName := string(hashMap.get(initializerData.CUSTOMERUSERNAME));
            Self.userPassword := string(hashMap.get(initializerData.CUSTOMERPASSWORD));
            Self.userSchema := string(hashMap.get(initializerData.CUSTOMERSCHEMA));
            Self.userServer := string(hashMap.get(initializerData.CUSTOMERSERVER));
            Self.userPort := string(hashMap.get(initializerData.CUSTOMERPORT));
            Self.historyJdbcDriver := string(hashMap.get(initializerData.HISTORYJDBCDRIVER));
            Self.historyName := string(hashMap.get(initializerData.HISTORYNAME));
            Self.historyUserName := string(hashMap.get(initializerData.HISTORYUSERNAME));
            Self.historyPassword := string(hashMap.get(initializerData.HISTORYPASSWORD));
            Self.historySchema := string(hashMap.get(initializerData.HISTORYSCHEMA));
            Self.historyServer := string(hashMap.get(initializerData.HISTORYSERVER));
            Self.historyPort := string(hashMap.get(initializerData.HISTORYPORT));
            Self.logJdbcDriver := string(hashMap.get(initializerData.LOGJDBCDRIVER));
            Self.logName := string(hashMap.get(initializerData.LOGNAME));
            Self.logUserName := string(hashMap.get(initializerData.LOGUSERNAME));
            Self.logPassword := string(hashMap.get(initializerData.LOGPASSWORD));
            Self.logSchema := string(hashMap.get(initializerData.LOGSCHEMA));
            Self.logServer := string(hashMap.get(initializerData.LOGSERVER));
            Self.logPort := string(hashMap.get(initializerData.LOGPORT));
            Self.inventoryJdbcDriver := string(hashMap.get(initializerData.INVENTORYJDBCDRIVER));
            Self.inventoryName := string(hashMap.get(initializerData.INVENTORYNAME));
            Self.inventoryUserName := string(hashMap.get(initializerData.INVENTORYUSERNAME));
            Self.inventoryPassword := string(hashMap.get(initializerData.INVENTORYPASSWORD));
            Self.inventorySchema := string(hashMap.get(initializerData.INVENTORYSCHEMA));
            Self.inventoryServer := string(hashMap.get(initializerData.INVENTORYSERVER));
            Self.inventoryPort := string(hashMap.get(initializerData.INVENTORYPORT));
            Self.staticPagesJdbcDriver := string(hashMap.get(initializerData.STATICPAGESJDBCDRIVER));
            Self.staticPagesName := string(hashMap.get(initializerData.STATICPAGESNAME));
            Self.staticPagesUserName := string(hashMap.get(initializerData.STATICPAGESUSERNAME));
            Self.staticPagesPassword := string(hashMap.get(initializerData.STATICPAGESPASSWORD));
            Self.staticPagesSchema := string(hashMap.get(initializerData.STATICPAGESSCHEMA));
            Self.staticPagesServer := string(hashMap.get(initializerData.STATICPAGESSERVER));
            Self.staticPagesPort := string(hashMap.get(initializerData.STATICPAGESPORT));
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Unable to get form data', Self, 'getFormData()', e);
            end;
        end;
end;
    

function TInitializer.isJdbcDriverValid(jdbcDriverClassPathString: string): Boolean;
var
  commonStrings: TCommonStrings;
begin
        try
            TClass.forName(jdbcDriverClassPathString).newInstance();
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRELOADERERROR) then begin
                commonStrings := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings.EXCEPTION, Self, commonStrings.IS_VALID, e);
            end;
            Exit(False);
            end;
        end;
end;
    

function TInitializer.isValid: Boolean;
var
  isValid: Boolean;
  stringValidationUtil: TObject;
begin
        isValid := True;
        if not (Self.isJdbcDriverValid(Self.userJdbcDriver)) then begin
            isValid := False;
        end;
        stringValidationUtil := nil;
        if not (stringValidationUtil.isValidRequired(Self.userName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil.isValidRequired(Self.userUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.userPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            isValid := False;
        end;
        if not (Self.isJdbcDriverValid(Self.historyJdbcDriver)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil.isValidRequired(Self.historyName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil.isValidRequired(Self.historyUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.historyPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            isValid := False;
        end;
        if not (Self.isJdbcDriverValid(Self.logJdbcDriver)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil.isValidRequired(Self.logName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil.isValidRequired(Self.logUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.logPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            isValid := False;
        end;
        if not (Self.isJdbcDriverValid(Self.inventoryJdbcDriver)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil.isValidRequired(Self.inventoryName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil.isValidRequired(Self.inventoryUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.inventoryPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            isValid := False;
        end;
        if not (Self.isJdbcDriverValid(Self.staticPagesJdbcDriver)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil.isValidRequired(Self.staticPagesName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil.isValidRequired(Self.staticPagesUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.staticPagesPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            isValid := False;
        end;
        Exit(isValid);
end;
    

function TInitializer.getJdbcDriverValidationInfo(jdbcDriver: string): string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('The JDBC driver (');
        stringBuffer.append(jdbcDriver);
        stringBuffer.append(') you have provided is not valid.<br/>');
        Exit(stringBuffer.toString());
end;
    

function TInitializer.getJdbcDriverSolutionInfo: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('The following describes the possible problems and solutions regarding the Jdbc Driver error(s):<p/>');
        stringBuffer.append('1. A JDBC driver you specified is not in your classpath.<br/>');
        stringBuffer.append('Solution 1: Move the JDBC driver into any directory specified in the existing classpath. <br/>');
        stringBuffer.append('Solution 2: Add the directory that contains the JDBC driver to the classpath.<br/>');
        stringBuffer.append('Solution 3: Add the JDBC driver to the WEB-INF/lib directory where you installed this webapp.<br/>');
        stringBuffer.append('2. The JDBC driver you specified does not exit.<br/>');
        stringBuffer.append('Solution: Get a JDBC driver. <br/>');
        stringBuffer.append('3. The JDBC driver you specified is not valid.<br/>');
        stringBuffer.append('Solution: Use a valid JDBC driver.<p/>');
        Exit(stringBuffer.toString());
end;
    

function TInitializer.getInvalidInfo: string;
var
  isJdbcDriversValid: Boolean;
  stringBuffer: TStringMaker;
  stringValidationUtil: TObject;
begin
        isJdbcDriversValid := True;
        stringBuffer := TStringMaker.Create();
        if not (Self.isJdbcDriverValid(Self.userJdbcDriver)) then begin
            isJdbcDriversValid := False;
            stringBuffer.append(Self.getJdbcDriverValidationInfo(Self.userJdbcDriver));
        end;
        stringValidationUtil := nil;
        if not (stringValidationUtil.isValidRequired(Self.userName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            stringBuffer.append('User db name should be < ' + TJava.ToString(TInitializer.MAXDB) + ' and > ' + TJava.ToString(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil.isValidRequired(Self.userUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            stringBuffer.append('User db username should be < ' + TJava.ToString(TInitializer.MAX) + ' and > ' + TJava.ToString(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.userPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            stringBuffer.append('User DB password should be < ' + TJava.ToString(TInitializer.MAX) + ' and > ' + TJava.ToString(TInitializer.MINPASSWORD) + ' characters in length.<br />');
        end;
        if not (Self.isJdbcDriverValid(Self.historyJdbcDriver)) then begin
            isJdbcDriversValid := False;
            stringBuffer.append(Self.getJdbcDriverValidationInfo(Self.historyJdbcDriver));
        end;
        if not (stringValidationUtil.isValidRequired(Self.historyName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            stringBuffer.append('History db should be < ' + TJava.ToString(TInitializer.MAXDB) + ' and > ' + TJava.ToString(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil.isValidRequired(Self.historyUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            stringBuffer.append('History db username should be < ' + TJava.ToString(TInitializer.MAX) + ' and > ' + TJava.ToString(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.historyPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            stringBuffer.append('History db password should be < ' + TJava.ToString(TInitializer.MAX) + ' and > ' + TJava.ToString(TInitializer.MINPASSWORD) + ' characters in length.<br />');
        end;
        if not (Self.isJdbcDriverValid(Self.logJdbcDriver)) then begin
            isJdbcDriversValid := False;
            stringBuffer.append(Self.getJdbcDriverValidationInfo(Self.logJdbcDriver));
        end;
        if not (stringValidationUtil.isValidRequired(Self.logName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            stringBuffer.append('Log db should be < ' + TJava.ToString(TInitializer.MAXDB) + ' and > ' + TJava.ToString(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil.isValidRequired(Self.logUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            stringBuffer.append('Log db username should be < ' + TJava.ToString(TInitializer.MAX) + ' and > ' + TJava.ToString(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.logPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            stringBuffer.append('Log db password should be < ' + TJava.ToString(TInitializer.MAX) + ' and > ' + TJava.ToString(TInitializer.MINPASSWORD) + ' characters in length.<br />');
        end;
        if not (Self.isJdbcDriverValid(Self.inventoryJdbcDriver)) then begin
            isJdbcDriversValid := False;
            stringBuffer.append(Self.getJdbcDriverValidationInfo(Self.inventoryJdbcDriver));
        end;
        if not (stringValidationUtil.isValidRequired(Self.inventoryName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            stringBuffer.append('Inventory db should be < ' + TJava.ToString(TInitializer.MAXDB) + ' and > ' + TJava.ToString(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil.isValidRequired(Self.inventoryUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            stringBuffer.append('Inventory db username should be < ' + TJava.ToString(TInitializer.MAX) + ' and > ' + TJava.ToString(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.inventoryPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            stringBuffer.append('Inventory DB password should be < ' + TJava.ToString(TInitializer.MAX) + ' and > ' + TJava.ToString(TInitializer.MINPASSWORD) + ' characters in length.<br />');
        end;
        if not (Self.isJdbcDriverValid(Self.staticPagesJdbcDriver)) then begin
            isJdbcDriversValid := False;
            stringBuffer.append(Self.getJdbcDriverValidationInfo(Self.staticPagesJdbcDriver));
        end;
        if not (stringValidationUtil.isValidRequired(Self.staticPagesName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            stringBuffer.append('Static Pages db should be < ' + TJava.ToString(TInitializer.MAXDB) + ' and > ' + TJava.ToString(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil.isValidRequired(Self.staticPagesUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            stringBuffer.append('Static Pages db username should be < ' + TJava.ToString(TInitializer.MAX) + ' and > ' + TJava.ToString(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.staticPagesPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            stringBuffer.append('Static Pages DB password should be < ' + TJava.ToString(TInitializer.MAX) + ' and > ' + TJava.ToString(TInitializer.MINPASSWORD) + ' characters in length.<br />');
        end;
        if not (isJdbcDriversValid) then begin
            stringBuffer.append(Self.getJdbcDriverSolutionInfo());
        end;
        Exit(stringBuffer.toString());
end;
    

// throws Exception
procedure TInitializer.set_;
var
  userDbInitInfo: TUserDbInitInfo;
  historyDbInitInfo: THistoryDbInitInfo;
  logDbInitInfo: TLogDbInitInfo;
  staticPagesDbInitInfo: TStaticPagesDbInitInfo;
  inventoryDbInitInfo: TInventoryDbInitInfo;
begin
        Self.logUtil.putF('Creating DB connection files', Self, 'set()');
        userDbInitInfo := TUserDbInitInfo.Create(False);
        userDbInitInfo.setJdbcDriver(Self.userJdbcDriver);
        userDbInitInfo.setName(Self.userName);
        userDbInitInfo.setUserName(Self.userUserName);
        userDbInitInfo.setPassword(Self.userPassword);
        userDbInitInfo.setSchema(Self.userSchema);
        userDbInitInfo.setServer(Self.userServer);
        userDbInitInfo.setPort(Self.userPort);
        userDbInitInfo.setHasRead(True);
        userDbInitInfo.write();
        historyDbInitInfo := THistoryDbInitInfo.Create(False);
        historyDbInitInfo.setJdbcDriver(Self.historyJdbcDriver);
        historyDbInitInfo.setName(Self.historyName);
        historyDbInitInfo.setUserName(Self.historyUserName);
        historyDbInitInfo.setPassword(Self.historyPassword);
        historyDbInitInfo.setSchema(Self.historySchema);
        historyDbInitInfo.setServer(Self.historyServer);
        historyDbInitInfo.setPort(Self.historyPort);
        historyDbInitInfo.setHasRead(True);
        historyDbInitInfo.write();
        logDbInitInfo := TLogDbInitInfo.Create(False);
        logDbInitInfo.setJdbcDriver(Self.logJdbcDriver);
        logDbInitInfo.setName(Self.logName);
        logDbInitInfo.setUserName(Self.logUserName);
        logDbInitInfo.setPassword(Self.logPassword);
        logDbInitInfo.setSchema(Self.logSchema);
        logDbInitInfo.setServer(Self.logServer);
        logDbInitInfo.setPort(Self.logPort);
        logDbInitInfo.setHasRead(True);
        logDbInitInfo.write();
        staticPagesDbInitInfo := TStaticPagesDbInitInfo.Create(False);
        staticPagesDbInitInfo.setJdbcDriver(Self.staticPagesJdbcDriver);
        staticPagesDbInitInfo.setName(Self.staticPagesName);
        staticPagesDbInitInfo.setUserName(Self.staticPagesUserName);
        staticPagesDbInitInfo.setPassword(Self.staticPagesPassword);
        staticPagesDbInitInfo.setSchema(Self.staticPagesSchema);
        staticPagesDbInitInfo.setServer(Self.staticPagesServer);
        staticPagesDbInitInfo.setPort(Self.staticPagesPort);
        staticPagesDbInitInfo.setHasRead(True);
        staticPagesDbInitInfo.write();
        inventoryDbInitInfo := TInventoryDbInitInfo.Create(False);
        inventoryDbInitInfo.setJdbcDriver(Self.inventoryJdbcDriver);
        inventoryDbInitInfo.setName(Self.inventoryName);
        inventoryDbInitInfo.setUserName(Self.inventoryUserName);
        inventoryDbInitInfo.setPassword(Self.inventoryPassword);
        inventoryDbInitInfo.setSchema(Self.inventorySchema);
        inventoryDbInitInfo.setServer(Self.inventoryServer);
        inventoryDbInitInfo.setPort(Self.inventoryPort);
        inventoryDbInitInfo.setHasRead(True);
        inventoryDbInitInfo.write();
        Self.logUtil.putF('Created DB connection files', Self, 'set()');
end;

initialization
  TInitializer.MAXDB := 30;
  TInitializer.MAX := 16;
  TInitializer.MIN := 4;
  TInitializer.MINPASSWORD := 0;

end.

