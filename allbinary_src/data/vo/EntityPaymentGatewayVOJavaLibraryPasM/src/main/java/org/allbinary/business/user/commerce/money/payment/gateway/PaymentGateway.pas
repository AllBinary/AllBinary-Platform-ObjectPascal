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
// package org.allbinary.business.user.commerce.money.payment.gateway
unit PaymentGateway;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, BasicArrayList, BasicArrayListD, StoreFrontData, EntryData, UserData, PaymentData, StdUtil, SuperCrypt, StringUtil, PaymentGatewayInterface;

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

  TPaymentGateway = class(TInterfacedObject, IPaymentGatewayInterface)
  public
    storeName: string;
    name: string;
    enable: string;
    paymentMethod: string;
    mode: string;
    testProtocol: string;
    testServer: string;
    testPort: string;
    testPath: string;
    serverProtocol: string;
    server: string;
    serverPort: string;
    serverPath: string;
    timeout: string;
    userName: string;
    password: string;
    proxyProtocol: string;
    proxyServer: string;
    proxyPort: string;
    proxyPath: string;
    proxyUserName: string;
    proxyPassword: string;
    proxyTimeout: string;
    special1: string;
    special2: string;
    special3: string;
    special4: string;
    special5: string;
    special6: string;
    special7: string;
    special8: string;
    special9: string;
    lastModified: string;
    timeEntered: string;
    procedure InitFields;
        constructor Create(hashMap: TJavaHashMap);
        procedure getFormData(hashMap: TJavaHashMap); virtual;
        function getStoreName: string; virtual;
        function getName: string; virtual;
        function getEnable: string; virtual;
        function getPaymentMethod: string; virtual;
        function getMode: string; virtual;
        function getTestProtocol: string; virtual;
        function getTestServer: string; virtual;
        function getTestPort: string; virtual;
        function getTestPath: string; virtual;
        function getServerProtocol: string; virtual;
        function getServer: string; virtual;
        function getServerPort: string; virtual;
        function getServerPath: string; virtual;
        function getUserName: string; virtual;
        function getPassword: string; virtual;
        function getProxyProtocol: string; virtual;
        function getProxyServer: string; virtual;
        function getProxyPath: string; virtual;
        function getProxyPort: string; virtual;
        function getProxyUserName: string; virtual;
        function getProxyPassword: string; virtual;
        function getTimeout: string; virtual;
        function getProxyTimeout: string; virtual;
        function getSpecial1: string; virtual;
        function getSpecial2: string; virtual;
        function getSpecial3: string; virtual;
        function getSpecial4: string; virtual;
        function getSpecial5: string; virtual;
        function getSpecial6: string; virtual;
        function getSpecial7: string; virtual;
        function getSpecial8: string; virtual;
        function getSpecial9: string; virtual;
        function getLastModified: string; virtual;
        function getTimeEntered: string; virtual;
        procedure setEnable(value: string); virtual;
        procedure setStoreName(value: string); virtual;
        procedure setName(value: string); virtual;
        procedure setPaymentMethod(value: string); virtual;
        procedure setMode(value: string); virtual;
        procedure setTestProtocol(value: string); virtual;
        procedure setTestServer(value: string); virtual;
        procedure setTestPort(value: string); virtual;
        procedure setTestPath(value: string); virtual;
        procedure setServerProtocol(value: string); virtual;
        procedure setServer(value: string); virtual;
        procedure setServerPort(value: string); virtual;
        procedure setServerPath(value: string); virtual;
        procedure setTimeout(value: string); virtual;
        procedure setUserName(value: string); virtual;
        procedure setPassword(value: string); virtual;
        procedure setProxyProtocol(value: string); virtual;
        procedure setProxyServer(value: string); virtual;
        procedure setProxyPort(value: string); virtual;
        procedure setProxyPath(value: string); virtual;
        procedure setProxyUserName(value: string); virtual;
        procedure setProxyPassword(value: string); virtual;
        procedure setProxyTimeout(value: string); virtual;
        procedure setSpecial1(value: string); virtual;
        procedure setSpecial2(value: string); virtual;
        procedure setSpecial3(value: string); virtual;
        procedure setSpecial4(value: string); virtual;
        procedure setSpecial5(value: string); virtual;
        procedure setSpecial6(value: string); virtual;
        procedure setSpecial7(value: string); virtual;
        procedure setSpecial8(value: string); virtual;
        procedure setSpecial9(value: string); virtual;
        procedure setLastModified(value: string); virtual;
        procedure setTimeEntered(value: string); virtual;
        function toHashMap: TJavaHashMap; overload; virtual;
        function toHashMap(isEncrypted: Boolean): TJavaHashMap; overload; virtual;
        function toVector: TBasicArrayList; overload; virtual;
        function toVector(isEncrypted: Boolean): TBasicArrayList; overload; virtual;
        function getKey: TObject; virtual;
  end;

implementation
uses
  PaymentGatewayData, PaymentGatewayPrimaryKey;



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


procedure TPaymentGateway.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TPaymentGateway.Create(hashMap: TJavaHashMap);
begin
    inherited Create;
    InitFields;
        Self.getFormData(hashMap);
end;
    

procedure TPaymentGateway.getFormData(hashMap: TJavaHashMap);
var
  stringUtil: TStringUtil;
  empty: string;
begin
        stringUtil := TStringUtil.getInstance();
        empty := stringUtil.EMPTY_STRING;
        Self.storeName := string(hashMap.get(TStoreFrontData.getInstance().NAME.toString()));
        Self.name := string(hashMap.get(TPaymentGatewayData.NAME.toString()));
        Self.enable := stringUtil.getNonNull(string(hashMap.get(TEntryData.getInstance().ENABLE.toString())));
        Self.paymentMethod := stringUtil.getNonNull(string(hashMap.get(TPaymentData.METHOD.toString())));
        Self.mode := stringUtil.getNonNull(string(hashMap.get(TPaymentGatewayData.MODE.toString())));
        Self.testProtocol := stringUtil.getNonNull(string(hashMap.get(TPaymentGatewayData.TESTPROTOCOL.toString())));
        Self.testServer := stringUtil.getNonNull(string(hashMap.get(TPaymentGatewayData.TESTSERVER.toString())));
        Self.testPort := stringUtil.getNonNull(string(hashMap.get(TPaymentGatewayData.TESTPORT.toString())));
        Self.testPath := string(hashMap.get(TPaymentGatewayData.TESTPATH.toString()));
        if (Self.testPath) = ('') then begin
            Self.testPath := empty;
        end;
        Self.serverProtocol := string(hashMap.get(TPaymentGatewayData.SERVERPROTOCOL.toString()));
        if (Self.serverProtocol) = ('') then begin
            Self.serverProtocol := empty;
        end;
        Self.server := string(hashMap.get(TPaymentGatewayData.SERVER.toString()));
        if (Self.server) = ('') then begin
            Self.server := empty;
        end;
        Self.serverPort := string(hashMap.get(TPaymentGatewayData.SERVERPORT.toString()));
        if (Self.serverPort) = ('') then begin
            Self.serverPort := empty;
        end;
        Self.serverPath := string(hashMap.get(TPaymentGatewayData.SERVERPATH.toString()));
        if (Self.serverPath) = ('') then begin
            Self.serverPath := empty;
        end;
        Self.userName := string(hashMap.get(TUserData.USERNAME.toString()));
        if (Self.userName) = ('') then begin
            Self.userName := empty;
        end;
        Self.password := string(hashMap.get(TUserData.PASSWORD.toString()));
        if (Self.password) = ('') then begin
            Self.password := empty;
        end;
        Self.timeout := string(hashMap.get(TPaymentGatewayData.TIMEOUT.toString()));
        if (Self.timeout) = ('') then begin
            Self.timeout := empty;
        end;
        Self.proxyProtocol := string(hashMap.get(TPaymentGatewayData.PROXYPROTOCOL.toString()));
        if (Self.proxyProtocol) = ('') then begin
            Self.proxyProtocol := empty;
        end;
        Self.proxyServer := string(hashMap.get(TPaymentGatewayData.PROXYSERVER.toString()));
        if (Self.proxyServer) = ('') then begin
            Self.proxyServer := empty;
        end;
        Self.proxyPort := string(hashMap.get(TPaymentGatewayData.PROXYPORT.toString()));
        if (Self.proxyPort) = ('') then begin
            Self.proxyPort := empty;
        end;
        Self.proxyPath := string(hashMap.get(TPaymentGatewayData.PROXYPATH.toString()));
        if (Self.proxyPath) = ('') then begin
            Self.proxyPath := empty;
        end;
        Self.proxyUserName := string(hashMap.get(TPaymentGatewayData.PROXYUSERNAME.toString()));
        if (Self.proxyUserName) = ('') then begin
            Self.proxyUserName := empty;
        end;
        Self.proxyPassword := string(hashMap.get(TPaymentGatewayData.PROXYPASSWORD.toString()));
        if (Self.proxyPassword) = ('') then begin
            Self.proxyPassword := empty;
        end;
        Self.proxyTimeout := string(hashMap.get(TPaymentGatewayData.PROXYTIMEOUT.toString()));
        if (Self.proxyTimeout) = ('') then begin
            Self.proxyTimeout := empty;
        end;
        Self.special1 := string(hashMap.get(TPaymentGatewayData.SPECIAL1.toString()));
        if (Self.special1) = ('') then begin
            Self.special1 := empty;
        end;
        Self.special2 := string(hashMap.get(TPaymentGatewayData.SPECIAL2.toString()));
        if (Self.special2) = ('') then begin
            Self.special2 := empty;
        end;
        Self.special3 := string(hashMap.get(TPaymentGatewayData.SPECIAL3.toString()));
        if (Self.special3) = ('') then begin
            Self.special3 := empty;
        end;
        Self.special4 := string(hashMap.get(TPaymentGatewayData.SPECIAL4.toString()));
        if (Self.special4) = ('') then begin
            Self.special4 := empty;
        end;
        Self.special5 := string(hashMap.get(TPaymentGatewayData.SPECIAL5.toString()));
        if (Self.special5) = ('') then begin
            Self.special5 := empty;
        end;
        Self.special6 := string(hashMap.get(TPaymentGatewayData.SPECIAL6.toString()));
        if (Self.special6) = ('') then begin
            Self.special6 := empty;
        end;
        Self.special7 := string(hashMap.get(TPaymentGatewayData.SPECIAL7.toString()));
        if (Self.special7) = ('') then begin
            Self.special7 := empty;
        end;
        Self.special8 := string(hashMap.get(TPaymentGatewayData.SPECIAL8.toString()));
        if (Self.special8) = ('') then begin
            Self.special8 := empty;
        end;
        Self.special9 := string(hashMap.get(TPaymentGatewayData.SPECIAL9.toString()));
        if (Self.special9) = ('') then begin
            Self.special9 := empty;
        end;
        Self.lastModified := string(hashMap.get(TEntryData.getInstance().LASTMODIFIED.toString()));
        if (Self.lastModified) = ('') then begin
            Self.lastModified := empty;
        end;
        Self.timeEntered := string(hashMap.get(TEntryData.getInstance().TIMECREATED.toString()));
        if (Self.timeEntered) = ('') then begin
            Self.timeEntered := empty;
        end;
end;
    

function TPaymentGateway.getStoreName: string;
begin
        Exit(Self.storeName);
end;
    

function TPaymentGateway.getName: string;
begin
        Exit(Self.name);
end;
    

function TPaymentGateway.getEnable: string;
begin
        Exit(Self.enable);
end;
    

function TPaymentGateway.getPaymentMethod: string;
begin
        Exit(Self.paymentMethod);
end;
    

function TPaymentGateway.getMode: string;
begin
        Exit(Self.mode);
end;
    

function TPaymentGateway.getTestProtocol: string;
begin
        Exit(Self.testProtocol);
end;
    

function TPaymentGateway.getTestServer: string;
begin
        Exit(Self.testServer);
end;
    

function TPaymentGateway.getTestPort: string;
begin
        Exit(Self.testPort);
end;
    

function TPaymentGateway.getTestPath: string;
begin
        Exit(Self.testPath);
end;
    

function TPaymentGateway.getServerProtocol: string;
begin
        Exit(Self.serverProtocol);
end;
    

function TPaymentGateway.getServer: string;
begin
        Exit(Self.server);
end;
    

function TPaymentGateway.getServerPort: string;
begin
        Exit(Self.serverPort);
end;
    

function TPaymentGateway.getServerPath: string;
begin
        Exit(Self.serverPath);
end;
    

function TPaymentGateway.getUserName: string;
begin
        Exit(Self.userName);
end;
    

function TPaymentGateway.getPassword: string;
begin
        Exit(Self.password);
end;
    

function TPaymentGateway.getProxyProtocol: string;
begin
        Exit(Self.proxyProtocol);
end;
    

function TPaymentGateway.getProxyServer: string;
begin
        Exit(Self.proxyServer);
end;
    

function TPaymentGateway.getProxyPath: string;
begin
        Exit(Self.proxyPath);
end;
    

function TPaymentGateway.getProxyPort: string;
begin
        Exit(Self.proxyPort);
end;
    

function TPaymentGateway.getProxyUserName: string;
begin
        Exit(Self.proxyUserName);
end;
    

function TPaymentGateway.getProxyPassword: string;
begin
        Exit(Self.proxyPassword);
end;
    

function TPaymentGateway.getTimeout: string;
begin
        Exit(Self.timeout);
end;
    

function TPaymentGateway.getProxyTimeout: string;
begin
        Exit(Self.proxyTimeout);
end;
    

function TPaymentGateway.getSpecial1: string;
begin
        Exit(Self.special1);
end;
    

function TPaymentGateway.getSpecial2: string;
begin
        Exit(Self.special2);
end;
    

function TPaymentGateway.getSpecial3: string;
begin
        Exit(Self.special3);
end;
    

function TPaymentGateway.getSpecial4: string;
begin
        Exit(Self.special4);
end;
    

function TPaymentGateway.getSpecial5: string;
begin
        Exit(Self.special5);
end;
    

function TPaymentGateway.getSpecial6: string;
begin
        Exit(Self.special6);
end;
    

function TPaymentGateway.getSpecial7: string;
begin
        Exit(Self.special7);
end;
    

function TPaymentGateway.getSpecial8: string;
begin
        Exit(Self.special8);
end;
    

function TPaymentGateway.getSpecial9: string;
begin
        Exit(Self.special9);
end;
    

function TPaymentGateway.getLastModified: string;
begin
        Exit(Self.lastModified);
end;
    

function TPaymentGateway.getTimeEntered: string;
begin
        Exit(Self.timeEntered);
end;
    

procedure TPaymentGateway.setEnable(value: string);
begin
        Self.enable := value;
end;
    

procedure TPaymentGateway.setStoreName(value: string);
begin
        Self.storeName := value;
end;
    

procedure TPaymentGateway.setName(value: string);
begin
        Self.name := value;
end;
    

procedure TPaymentGateway.setPaymentMethod(value: string);
begin
        Self.paymentMethod := value;
end;
    

procedure TPaymentGateway.setMode(value: string);
begin
        Self.mode := value;
end;
    

procedure TPaymentGateway.setTestProtocol(value: string);
begin
        Self.testProtocol := value;
end;
    

procedure TPaymentGateway.setTestServer(value: string);
begin
        Self.testServer := value;
end;
    

procedure TPaymentGateway.setTestPort(value: string);
begin
        Self.testPort := value;
end;
    

procedure TPaymentGateway.setTestPath(value: string);
begin
        Self.testPath := value;
end;
    

procedure TPaymentGateway.setServerProtocol(value: string);
begin
        Self.serverProtocol := value;
end;
    

procedure TPaymentGateway.setServer(value: string);
begin
        Self.server := value;
end;
    

procedure TPaymentGateway.setServerPort(value: string);
begin
        Self.serverPort := value;
end;
    

procedure TPaymentGateway.setServerPath(value: string);
begin
        Self.serverPath := value;
end;
    

procedure TPaymentGateway.setTimeout(value: string);
begin
        Self.timeout := value;
end;
    

procedure TPaymentGateway.setUserName(value: string);
begin
        Self.userName := value;
end;
    

procedure TPaymentGateway.setPassword(value: string);
begin
        Self.password := value;
end;
    

procedure TPaymentGateway.setProxyProtocol(value: string);
begin
        Self.proxyProtocol := value;
end;
    

procedure TPaymentGateway.setProxyServer(value: string);
begin
        Self.proxyServer := value;
end;
    

procedure TPaymentGateway.setProxyPort(value: string);
begin
        Self.proxyPort := value;
end;
    

procedure TPaymentGateway.setProxyPath(value: string);
begin
        Self.proxyPath := value;
end;
    

procedure TPaymentGateway.setProxyUserName(value: string);
begin
        Self.proxyUserName := value;
end;
    

procedure TPaymentGateway.setProxyPassword(value: string);
begin
        Self.proxyPassword := value;
end;
    

procedure TPaymentGateway.setProxyTimeout(value: string);
begin
        Self.proxyTimeout := value;
end;
    

procedure TPaymentGateway.setSpecial1(value: string);
begin
        Self.special1 := value;
end;
    

procedure TPaymentGateway.setSpecial2(value: string);
begin
        Self.special2 := value;
end;
    

procedure TPaymentGateway.setSpecial3(value: string);
begin
        Self.special3 := value;
end;
    

procedure TPaymentGateway.setSpecial4(value: string);
begin
        Self.special4 := value;
end;
    

procedure TPaymentGateway.setSpecial5(value: string);
begin
        Self.special5 := value;
end;
    

procedure TPaymentGateway.setSpecial6(value: string);
begin
        Self.special6 := value;
end;
    

procedure TPaymentGateway.setSpecial7(value: string);
begin
        Self.special7 := value;
end;
    

procedure TPaymentGateway.setSpecial8(value: string);
begin
        Self.special8 := value;
end;
    

procedure TPaymentGateway.setSpecial9(value: string);
begin
        Self.special9 := value;
end;
    

procedure TPaymentGateway.setLastModified(value: string);
begin
        Self.lastModified := value;
end;
    

procedure TPaymentGateway.setTimeEntered(value: string);
begin
        Self.timeEntered := value;
end;
    

// throws Exception
function TPaymentGateway.toHashMap: TJavaHashMap;
begin
        Exit(Self.toHashMap(True));
end;
    

// throws Exception
function TPaymentGateway.toHashMap(isEncrypted: Boolean): TJavaHashMap;
var
  paymentGatewayHashMap: TJavaHashMap;
  superCrypt: TSuperCrypt;
begin
        paymentGatewayHashMap := TStdUtil.getInstance().createHashMap();
        paymentGatewayHashMap.put(TEntryData.getInstance().ENABLE, Self.enable);
        paymentGatewayHashMap.put(TStoreFrontData.getInstance().NAME.toString(), Self.storeName);
        paymentGatewayHashMap.put(TPaymentGatewayData.NAME.toString(), Self.getName());
        paymentGatewayHashMap.put(TPaymentData.METHOD.toString(), Self.paymentMethod);
        paymentGatewayHashMap.put(TPaymentGatewayData.MODE.toString(), Self.mode);
        paymentGatewayHashMap.put(TPaymentGatewayData.TESTPROTOCOL.toString(), Self.testProtocol);
        paymentGatewayHashMap.put(TPaymentGatewayData.TESTSERVER.toString(), Self.testServer);
        paymentGatewayHashMap.put(TPaymentGatewayData.TESTPORT.toString(), Self.testPort);
        paymentGatewayHashMap.put(TPaymentGatewayData.TESTPATH.toString(), Self.testPath);
        paymentGatewayHashMap.put(TPaymentGatewayData.SERVERPROTOCOL.toString(), Self.serverProtocol);
        paymentGatewayHashMap.put(TPaymentGatewayData.SERVER.toString(), Self.server);
        paymentGatewayHashMap.put(TPaymentGatewayData.SERVERPORT.toString(), Self.serverPort);
        paymentGatewayHashMap.put(TPaymentGatewayData.SERVERPATH.toString(), Self.serverPath);
        if isEncrypted then begin
            superCrypt := TSuperCrypt.Create(TPaymentGatewayData.CRYPTNUM);
            paymentGatewayHashMap.put(TUserData.USERNAME.toString(), superCrypt.encrypt(Self.userName));
            paymentGatewayHashMap.put(TUserData.PASSWORD.toString(), superCrypt.encrypt(Self.password));
        end else begin
            paymentGatewayHashMap.put(TUserData.USERNAME.toString(), Self.userName);
            paymentGatewayHashMap.put(TUserData.PASSWORD.toString(), Self.password);
        end;
        paymentGatewayHashMap.put(TPaymentGatewayData.TIMEOUT.toString(), Self.timeout);
        paymentGatewayHashMap.put(TPaymentGatewayData.PROXYPROTOCOL.toString(), Self.proxyProtocol);
        paymentGatewayHashMap.put(TPaymentGatewayData.PROXYSERVER.toString(), Self.proxyServer);
        paymentGatewayHashMap.put(TPaymentGatewayData.PROXYPORT.toString(), Self.proxyPort);
        paymentGatewayHashMap.put(TPaymentGatewayData.PROXYPATH.toString(), Self.proxyPath);
        paymentGatewayHashMap.put(TPaymentGatewayData.PROXYUSERNAME.toString(), Self.proxyUserName);
        paymentGatewayHashMap.put(TPaymentGatewayData.PROXYPASSWORD.toString(), Self.proxyPassword);
        paymentGatewayHashMap.put(TPaymentGatewayData.PROXYTIMEOUT.toString(), Self.proxyTimeout);
        if isEncrypted then begin
            superCrypt := TSuperCrypt.Create(TPaymentGatewayData.CRYPTNUM);
            paymentGatewayHashMap.put(TPaymentGatewayData.SPECIAL1.toString(), superCrypt.encrypt(Self.special1));
            paymentGatewayHashMap.put(TPaymentGatewayData.SPECIAL2.toString(), superCrypt.encrypt(Self.special2));
            paymentGatewayHashMap.put(TPaymentGatewayData.SPECIAL3.toString(), superCrypt.encrypt(Self.special3));
            paymentGatewayHashMap.put(TPaymentGatewayData.SPECIAL4.toString(), superCrypt.encrypt(Self.special4));
            paymentGatewayHashMap.put(TPaymentGatewayData.SPECIAL5.toString(), superCrypt.encrypt(Self.special5));
            paymentGatewayHashMap.put(TPaymentGatewayData.SPECIAL6.toString(), superCrypt.encrypt(Self.special6));
            paymentGatewayHashMap.put(TPaymentGatewayData.SPECIAL7.toString(), superCrypt.encrypt(Self.special7));
            paymentGatewayHashMap.put(TPaymentGatewayData.SPECIAL8.toString(), superCrypt.encrypt(Self.special8));
        end else begin
            paymentGatewayHashMap.put(TPaymentGatewayData.SPECIAL1.toString(), Self.special1);
            paymentGatewayHashMap.put(TPaymentGatewayData.SPECIAL2.toString(), Self.special2);
            paymentGatewayHashMap.put(TPaymentGatewayData.SPECIAL3.toString(), Self.special3);
            paymentGatewayHashMap.put(TPaymentGatewayData.SPECIAL4.toString(), Self.special4);
            paymentGatewayHashMap.put(TPaymentGatewayData.SPECIAL5.toString(), Self.special5);
            paymentGatewayHashMap.put(TPaymentGatewayData.SPECIAL6.toString(), Self.special6);
            paymentGatewayHashMap.put(TPaymentGatewayData.SPECIAL7.toString(), Self.special7);
            paymentGatewayHashMap.put(TPaymentGatewayData.SPECIAL8.toString(), Self.special8);
            paymentGatewayHashMap.put(TPaymentGatewayData.SPECIAL9.toString(), Self.special9);
        end;
        paymentGatewayHashMap.put(TEntryData.getInstance().LASTMODIFIED.toString(), Self.lastModified);
        Exit(paymentGatewayHashMap);
end;
    

function TPaymentGateway.toVector: TBasicArrayList;
begin
        Exit(Self.toVector(True));
end;
    

function TPaymentGateway.toVector(isEncrypted: Boolean): TBasicArrayList;
var
  updateVector: TBasicArrayList;
  superCrypt: TSuperCrypt;
begin
        updateVector := TBasicArrayListD.Create();
        updateVector.add(TJava.BoxString(Self.enable));
        updateVector.add(TJava.BoxString(Self.storeName));
        updateVector.add(TJava.BoxString(Self.getName()));
        updateVector.add(TJava.BoxString(Self.paymentMethod));
        updateVector.add(TJava.BoxString(Self.mode));
        updateVector.add(TJava.BoxString(Self.testProtocol));
        updateVector.add(TJava.BoxString(Self.testServer));
        updateVector.add(TJava.BoxString(Self.testPort));
        updateVector.add(TJava.BoxString(Self.testPath));
        updateVector.add(TJava.BoxString(Self.serverProtocol));
        updateVector.add(TJava.BoxString(Self.server));
        updateVector.add(TJava.BoxString(Self.serverPort));
        updateVector.add(TJava.BoxString(Self.serverPath));
        if isEncrypted then begin
            superCrypt := TSuperCrypt.Create(TPaymentGatewayData.CRYPTNUM);
            updateVector.add(superCrypt.encrypt(Self.userName));
            updateVector.add(superCrypt.encrypt(Self.password));
        end else begin
            updateVector.add(TJava.BoxString(Self.userName));
            updateVector.add(TJava.BoxString(Self.password));
        end;
        updateVector.add(TJava.BoxString(Self.timeout));
        updateVector.add(TJava.BoxString(Self.proxyProtocol));
        updateVector.add(TJava.BoxString(Self.proxyServer));
        updateVector.add(TJava.BoxString(Self.proxyPort));
        updateVector.add(TJava.BoxString(Self.proxyPath));
        updateVector.add(TJava.BoxString(Self.proxyUserName));
        updateVector.add(TJava.BoxString(Self.proxyPassword));
        updateVector.add(TJava.BoxString(Self.proxyTimeout));
        if isEncrypted then begin
            superCrypt := TSuperCrypt.Create(TPaymentGatewayData.CRYPTNUM);
            updateVector.add(superCrypt.encrypt(Self.special1));
            updateVector.add(superCrypt.encrypt(Self.special2));
            updateVector.add(superCrypt.encrypt(Self.special3));
            updateVector.add(superCrypt.encrypt(Self.special4));
            updateVector.add(superCrypt.encrypt(Self.special5));
            updateVector.add(superCrypt.encrypt(Self.special6));
            updateVector.add(superCrypt.encrypt(Self.special7));
            updateVector.add(superCrypt.encrypt(Self.special8));
            updateVector.add(superCrypt.encrypt(Self.special9));
        end else begin
            updateVector.add(TJava.BoxString(Self.special1));
            updateVector.add(TJava.BoxString(Self.special2));
            updateVector.add(TJava.BoxString(Self.special3));
            updateVector.add(TJava.BoxString(Self.special4));
            updateVector.add(TJava.BoxString(Self.special5));
            updateVector.add(TJava.BoxString(Self.special6));
            updateVector.add(TJava.BoxString(Self.special7));
            updateVector.add(TJava.BoxString(Self.special8));
            updateVector.add(TJava.BoxString(Self.special9));
        end;
        Exit(updateVector);
end;
    

// throws Exception
function TPaymentGateway.getKey: TObject;
begin
        Exit(TObject(TPaymentGatewayPrimaryKey.Create(Self.getStoreName(), Self.getName())));
end;

initialization

end.

