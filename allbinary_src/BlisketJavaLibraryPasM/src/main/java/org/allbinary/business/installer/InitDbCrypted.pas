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
unit InitDbCrypted;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, InitInfoEntity, DatabaseConnectionInfoInterface, DbConnectionInfo, HistoryDbInitInfo, InventoryDbInitInfo, LogDbInitInfo, StaticPagesDbInitInfo, UserDbInitInfo, StoreFrontsEntityFactory, LogTableEntityFactory, StaticPagesEntityFactory, TransformInfoEntityBuilder, UserEntityFactory, BillingAddressesEntityFactory, ShippingAddressesEntityFactory, InventoryEntityFactory, OrderHistoryEntityFactory, OrderItemsEntityFactory, PaymentEntityFactory, PaymentGatewayEntityFactory, TransactionEntityFactory, TransactionResultEntityFactory, QuoteRequestEntityFactory, LogUtil, AbDatabaseManagement, AbDataOutputStream, DataOutputStreamFactory, AbFile, FileFactory, StringMaker;

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

  // Warning you must have sql root access
  TInitDbCrypted = class(TAbDatabaseManagement)
  public
    logUtil: TLogUtil;
    userDbInitInfo: TUserDbInitInfo;
    inventoryDbInitInfo: TInventoryDbInitInfo;
    historyDbInitInfo: THistoryDbInitInfo;
    staticpagesDbInitInfo: TStaticPagesDbInitInfo;
    logDbInitInfo: TLogDbInitInfo;
    SQL_FILE: string;
    procedure InitFields;
        constructor Create(databaseConnectionInfoInterface: IDatabaseConnectionInfoInterface);
        function addUsers: Boolean; virtual;
        function addDatabases: Boolean; virtual;
        function addTables: Boolean; virtual;
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


procedure TInitDbCrypted.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  Self.SQL_FILE := 'initWeblisket.sql';
end;
    

constructor TInitDbCrypted.Create(databaseConnectionInfoInterface: IDatabaseConnectionInfoInterface);
begin
        inherited Create(TDbConnectionInfo(databaseConnectionInfoInterface));
        InitFields;
end;
    

function TInitDbCrypted.addUsers: Boolean;
var
  CUSTOMERDB: string;
  CUSTOMERDBUSER: string;
  CUSTOMERDBPASSWORD: string;
  INVENTORYDB: string;
  INVENTORYDBUSER: string;
  INVENTORYDBPASSWORD: string;
  HISTORYDB: string;
  HISTORYDBUSER: string;
  HISTORYDBPASSWORD: string;
  STATICPAGESDB: string;
  STATICPAGESDBUSER: string;
  STATICPAGESDBPASSWORD: string;
  LOGDB: string;
  LOGDBUSER: string;
  LOGDBPASSWORD: string;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, Self, Self.METHOD_ADD_USERS);
            Self.userDbInitInfo := TUserDbInitInfo.Create();
            Self.inventoryDbInitInfo := TInventoryDbInitInfo.Create();
            Self.historyDbInitInfo := THistoryDbInitInfo.Create();
            Self.staticpagesDbInitInfo := TStaticPagesDbInitInfo.Create();
            Self.logDbInitInfo := TLogDbInitInfo.Create();
            CUSTOMERDB := Self.userDbInitInfo.getName();
            CUSTOMERDBUSER := Self.userDbInitInfo.getUserName();
            CUSTOMERDBPASSWORD := Self.userDbInitInfo.getPassword();
            if not (Self.addDbUser(CUSTOMERDB, CUSTOMERDBUSER, CUSTOMERDBPASSWORD)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_USER) + CUSTOMERDBUSER, Self, Self.METHOD_ADD_USERS);
                Exit(False);
            end;
            INVENTORYDB := Self.inventoryDbInitInfo.getName();
            INVENTORYDBUSER := Self.inventoryDbInitInfo.getUserName();
            INVENTORYDBPASSWORD := Self.inventoryDbInitInfo.getPassword();
            if not (Self.addDbUser(INVENTORYDB, INVENTORYDBUSER, INVENTORYDBPASSWORD)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_USER) + INVENTORYDBUSER, Self, Self.METHOD_ADD_USERS);
                Exit(False);
            end;
            HISTORYDB := Self.historyDbInitInfo.getName();
            HISTORYDBUSER := Self.historyDbInitInfo.getUserName();
            HISTORYDBPASSWORD := Self.historyDbInitInfo.getPassword();
            if not (Self.addDbUser(HISTORYDB, HISTORYDBUSER, HISTORYDBPASSWORD)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_USER) + HISTORYDBUSER, Self, Self.METHOD_ADD_USERS);
                Exit(False);
            end;
            STATICPAGESDB := Self.staticpagesDbInitInfo.getName();
            STATICPAGESDBUSER := Self.staticpagesDbInitInfo.getUserName();
            STATICPAGESDBPASSWORD := Self.staticpagesDbInitInfo.getPassword();
            if not (Self.addDbUser(STATICPAGESDB, STATICPAGESDBUSER, STATICPAGESDBPASSWORD)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_USER) + STATICPAGESDBUSER, Self, Self.METHOD_ADD_USERS);
                Exit(False);
            end;
            LOGDB := Self.logDbInitInfo.getName();
            LOGDBUSER := Self.logDbInitInfo.getUserName();
            LOGDBPASSWORD := Self.logDbInitInfo.getPassword();
            if not (Self.addDbUser(LOGDB, LOGDBUSER, LOGDBPASSWORD)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_USER) + LOGDBUSER, Self, Self.METHOD_ADD_USERS);
                Exit(False);
            end;
            Self.logUtil.putF(Self.commonStrings.END_, Self, Self.METHOD_ADD_USERS);
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.METHOD_ADD_USERS, e);
            Exit(True);
            end;
        end;
end;
    

function TInitDbCrypted.addDatabases: Boolean;
var
  CUSTOMERDB: string;
  INVENTORYDB: string;
  HISTORYDB: string;
  STATICPAGESDB: string;
  LOGDB: string;
  file_: TAbFile;
  idOutData: TAbDataOutputStream;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, Self, Self.METHOD_ADD_DATABASES);
            Self.userDbInitInfo := TUserDbInitInfo.Create();
            Self.inventoryDbInitInfo := TInventoryDbInitInfo.Create();
            Self.historyDbInitInfo := THistoryDbInitInfo.Create();
            Self.staticpagesDbInitInfo := TStaticPagesDbInitInfo.Create();
            Self.logDbInitInfo := TLogDbInitInfo.Create();
            CUSTOMERDB := Self.userDbInitInfo.getName();
            if not (Self.addDb(CUSTOMERDB)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_DATABASE) + CUSTOMERDB, Self, Self.METHOD_ADD_DATABASES);
                Exit(False);
            end;
            INVENTORYDB := Self.inventoryDbInitInfo.getName();
            if not (Self.addDb(INVENTORYDB)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_DATABASE) + INVENTORYDB, Self, Self.METHOD_ADD_DATABASES);
                Exit(False);
            end;
            HISTORYDB := Self.historyDbInitInfo.getName();
            if not (Self.addDb(HISTORYDB)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_DATABASE) + HISTORYDB, Self, Self.METHOD_ADD_DATABASES);
                Exit(False);
            end;
            STATICPAGESDB := Self.staticpagesDbInitInfo.getName();
            if not (Self.addDb(STATICPAGESDB)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_DATABASE) + STATICPAGESDB, Self, Self.METHOD_ADD_DATABASES);
                Exit(False);
            end;
            LOGDB := Self.logDbInitInfo.getName();
            if not (Self.addDb(LOGDB)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_DATABASE) + LOGDB, Self, Self.METHOD_ADD_DATABASES);
                Exit(False);
            end;
            file_ := TFileFactory.getInstance().getInstance(Self.SQL_FILE);
            file_.createNewFile();
            idOutData := TDataOutputStreamFactory.getInstance().getInstanceForAbFile(file_);
            idOutData.writeBytes(Self.sqlCommandLog.toString());
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.METHOD_ADD_DATABASES, e);
            Exit(True);
            end;
        end;
end;
    

function TInitDbCrypted.addTables: Boolean;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            Self.logUtil.putF(Self.commonStrings.START, Self, Self.METHOD_ADD_TABLES);
            stringBuffer.append(TUserEntityFactory.getInstance().createTable());
            stringBuffer.append(TStoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().createTable());
            stringBuffer.append(TBillingAddressesEntityFactory.getInstance().getInstance(Self.stringUtil.EMPTY_STRING).createTable());
            stringBuffer.append(TShippingAddressesEntityFactory.getInstance().getInstance(Self.stringUtil.EMPTY_STRING).createTable());
            stringBuffer.append(TPaymentEntityFactory.getInstance().getPaymentEntityInstance().createTable());
            stringBuffer.append(TQuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance().createTable());
            stringBuffer.append(TOrderHistoryEntityFactory.getInstance().createTable());
            stringBuffer.append(TOrderItemsEntityFactory.getInstance().createTable());
            stringBuffer.append(TTransactionEntityFactory.getInstance().getTransactionEntityInstance().createTable());
            stringBuffer.append(TTransactionResultEntityFactory.getInstance().getTransactionResultEntityInstance().createTable());
            stringBuffer.append(TPaymentGatewayEntityFactory.getInstance().createTable());
            stringBuffer.append(TInventoryEntityFactory.getInstance().getInventoryEntityInstance().createTable());
            stringBuffer.append(TInitInfoEntity.Create().createTable());
            stringBuffer.append(TLogTableEntityFactory.getInstance().getLogTableEntityInstance().createTable());
            stringBuffer.append(TStaticPagesEntityFactory.getInstance().getStaticPagesEntityInstance().createTable());
            stringBuffer.append(TTransformInfoEntityBuilder.getInstance().createTable());
            Self.logUtil.putF(TJava.ToString(ADD_TABLES_RESULTS_LABEL) + stringBuffer.toString(), Self, Self.METHOD_ADD_TABLES);
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.METHOD_ADD_TABLES, e);
            Exit(False);
            end;
        end;
end;

initialization

end.

