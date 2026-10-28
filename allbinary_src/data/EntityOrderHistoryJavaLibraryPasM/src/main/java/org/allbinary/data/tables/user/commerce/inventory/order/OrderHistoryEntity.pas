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
// package org.allbinary.data.tables.user.commerce.inventory.order
unit OrderHistoryEntity;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, BasicArrayList, BasicArrayListD, StoreFrontData, StoreFrontFactory, StoreFrontInterface, EntryData, HistoryDbInitInfo, UserData, BillingAddressData, ShippingAddressData, StreetAddress, Basket, BasketInterface, Order, OrderData, OrderHistory, OrderHistoryData, Money, PaymentData, PaymentInterface, TaxFactory, ShippingMethodData, ShippingMethods, ShippingInterface, OrderHistoryIdGenerator, TableDataFactory, BillingAddressesEntity, ShippingAddressesEntity, PaymentEntity, StdUtil, LogUtil, AbSqlBean, SuperCrypt, StringMaker, StringUtil, AbeClientInformationInterface, ServiceClientInformationInterfaceFactory, OrderHistoryEntityInterface;

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

  TOrderHistoryEntity = class(TAbSqlBean, IOrderHistoryEntityInterface)
  public
    logUtil: TLogUtil;
    tableName: string;
    procedure InitFields;
        constructor Create;
        procedure insert(userName: string; order: TOrder); overload; virtual;
        procedure insert(values: TBasicArrayList); overload; virtual;
        procedure setStatus(orderId: string; status: string); virtual;
        procedure setPaymentMethod(orderId: string; paymentMethod: string); virtual;
        function getStoreOrders(storeFrontInterface: IStoreFrontInterface): TBasicArrayList; virtual;
        function getOrders(userName: string): TBasicArrayList; overload; virtual;
        function getOrders(status: string; fromDate: string; toDate: string): TBasicArrayList; overload; virtual;
        function getOrders(fromDate: string; toDate: string): TBasicArrayList; overload; virtual;
        function getOrder(id: string): TOrderHistory; virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        function dropTable: string; virtual;
        procedure update(whereHashMap: TJavaHashMap; orderHashMap: TJavaHashMap); virtual;
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


procedure TOrderHistoryEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tableName := 'orderhistory';
end;
    

constructor TOrderHistoryEntity.Create;
begin
        inherited Create(THistoryDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

procedure TOrderHistoryEntity.insert(userName: string; order: TOrder);
var
  vector: TBasicArrayList;
  paymentInterface: IPaymentInterface;
  billingAddress: TStreetAddress;
  shippingAddress: TStreetAddress;
  abeClientInformation: IAbeClientInformationInterface;
  storeFrontInterface: IStoreFrontInterface;
  shippingInterface: IShippingInterface;
  shippingCost: TMoney;
  basketInterface: IBasketInterface;
  subTotal: TMoney;
  taxRate: Single;
  tax: TMoney;
  total: TMoney;
  empty: string;
  ZERO: string;
  calendar: TDateTime;
  time: string;
  random: Integer;
begin
        vector := TBasicArrayListD.Create();
        try
            paymentInterface := TPaymentEntity.Create().getDefault(userName);
            billingAddress := TBillingAddressesEntity.Create(userName).getDefault();
            shippingAddress := TShippingAddressesEntity.Create(userName).getDefault();
            abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
            storeFrontInterface := TStoreFrontFactory.getInstance(order.getStoreName());
            shippingInterface := TShippingMethods.Create(abeClientInformation, storeFrontInterface).getShippingInterface(order.getShippingMethod());
            shippingCost := shippingInterface.getCost(order);
            basketInterface := order.getBasket();
            subTotal := basketInterface.getSubTotal();
            taxRate := TTaxFactory.getInstance().getInstance(abeClientInformation, storeFrontInterface).getTaxRate(shippingAddress, storeFrontInterface);
            tax := TMoney.Create();
            total := TMoney.Create();
            total.add(TJava.BoxString(shippingCost.toString()));
            total.add(TJava.BoxString(subTotal.toString()));
            tax.add(TJava.BoxString(total.toString()));
            tax.multiply(taxRate);
            total.add(TJava.BoxString(tax.toString()));
            empty := TStringUtil.getInstance().EMPTY_STRING;
            vector.add(TOrderHistoryIdGenerator.Create().getNext());
            ZERO := TTableDataFactory.getInstance().ZERO_STRING;
            vector.add(order.getId());
            vector.add(TJava.BoxString(userName));
            vector.add(order.getStoreName());
            calendar := Now;
            time := TJava.NewString(calendar.getTimeInMillis().toString());
            vector.add(TJava.BoxString(ZERO));
            vector.add(TJava.BoxString(time));
            vector.add(TJava.BoxString(ZERO));
            vector.add(TJava.BoxString(ZERO));
            vector.add(TOrderHistoryData.PREPROCESSING);
            vector.add(order.getPaymentMethod());
            if (paymentInterface) <> (nil) then begin
                vector.add(TJava.BoxString(paymentInterface.getName()));
                vector.add(paymentInterface.getType());
                vector.add(paymentInterface.getExpiration());
                random := TJavaRandom.Create().nextInt(TSuperCrypt.KEYMAX);
                vector.add(TSuperCrypt.Create(random).encrypt(paymentInterface.getNumber()));
                vector.add(TJava.BoxString(random.toString()));
            end else begin
                vector.add(TJava.BoxString(empty));
                vector.add(TJava.BoxString(empty));
                vector.add(TJava.BoxString(empty));
                vector.add(TJava.BoxString(empty));
                vector.add(TJava.BoxString(ZERO));
            end;
            if (billingAddress) <> (nil) then begin
                vector.add(TJava.BoxString(billingAddress.getName()));
                vector.add(billingAddress.getStreet());
                vector.add(billingAddress.getCity());
                vector.add(billingAddress.getState());
                vector.add(billingAddress.getCode());
                vector.add(billingAddress.getCountry());
            end else begin
                vector.add(TJava.BoxString(empty));
                vector.add(TJava.BoxString(empty));
                vector.add(TJava.BoxString(empty));
                vector.add(TJava.BoxString(empty));
                vector.add(TJava.BoxString(empty));
                vector.add(TJava.BoxString(empty));
            end;
            if (shippingAddress) <> (nil) then begin
                vector.add(TJava.BoxString(shippingAddress.getName()));
                vector.add(shippingAddress.getStreet());
                vector.add(shippingAddress.getCity());
                vector.add(shippingAddress.getState());
                vector.add(shippingAddress.getCode());
                vector.add(shippingAddress.getCountry());
            end else begin
                vector.add(TJava.BoxString(empty));
                vector.add(TJava.BoxString(empty));
                vector.add(TJava.BoxString(empty));
                vector.add(TJava.BoxString(empty));
                vector.add(TJava.BoxString(empty));
                vector.add(TJava.BoxString(empty));
            end;
            vector.add(order.getShippingMethod());
            vector.add(TJava.BoxString(subTotal.toString()));
            vector.add(TJava.BoxString(shippingCost.toString()));
            vector.add(TJava.BoxString(tax.toString()));
            vector.add(TJava.BoxString(total.toString()));
            vector.add(order.getSpecial());
            vector.add(order.getUserComments());
            vector.add(order.getUserCancelComments());
            vector.add(order.getStoreComments());
            vector.add(order.getStoreCancelComments());
            Self.insert(vector);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.commonStrings.SUCCESS, Self, INSERT);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put('Command Failed: ' + TJava.ToString(vector), Self, INSERT, e);
            end;
            end;
        end;
end;
    

procedure TOrderHistoryEntity.insert(values: TBasicArrayList);
begin
        try
            inherited insert(values);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.commonStrings.SUCCESS, Self, INSERT);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, Self, INSERT, e);
            end;
            end;
        end;
end;
    

procedure TOrderHistoryEntity.setStatus(orderId: string; status: string);
var
  calendar: TDateTime;
  time: string;
  updateHashMap: TJavaHashMap;
begin
        try
            calendar := Now;
            time := TJava.NewString(calendar.getTimeInMillis().toString());
            updateHashMap := TStdUtil.getInstance().createHashMap();
            updateHashMap.put(TOrderHistoryData.STATUS, status);
            if (CompareStr(status, TOrderHistoryData.CANCELLED)) = (0) then begin
                updateHashMap.put(TOrderHistoryData.CANCELDATE, time);
            end else if (CompareStr(status, TOrderHistoryData.SHIPPED)) = (0) then begin
                updateHashMap.put(TOrderHistoryData.SHIPPEDDATE, time);
            end;
            inherited updateWhere(TOrderData.ID, orderId, updateHashMap);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, Self, 'setStatus', e);
            end;
            end;
        end;
end;
    

procedure TOrderHistoryEntity.setPaymentMethod(orderId: string; paymentMethod: string);
var
  calendar: TDateTime;
  time: string;
  updateHashMap: TJavaHashMap;
begin
        try
            calendar := Now;
            time := TJava.NewString(calendar.getTimeInMillis().toString());
            updateHashMap := TStdUtil.getInstance().createHashMap();
            updateHashMap.put(TPaymentData.METHOD, paymentMethod);
            updateHashMap.put(TOrderHistoryData.TRANSDATE, time);
            inherited updateWhere(TOrderData.ID, orderId, updateHashMap);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, Self, 'setPaymentMethod', e);
            end;
            end;
        end;
end;
    

// throws Exception
function TOrderHistoryEntity.getStoreOrders(storeFrontInterface: IStoreFrontInterface): TBasicArrayList;
var
  orderReviewVector: TBasicArrayList;
  whereHashMap: TJavaHashMap;
  orderHashMapVector: TBasicArrayList;
  size: Integer;
  orderReviewHashMap: TJavaHashMap;
  orderReview: TOrderHistory;
  i: Integer;
begin
        orderReviewVector := TBasicArrayListD.Create();
        whereHashMap := TStdUtil.getInstance().createHashMap();
        whereHashMap.put(TStoreFrontData.getInstance().NAME, storeFrontInterface.getName());
        orderHashMapVector := inherited getRows(whereHashMap);
        size := orderHashMapVector.size();
        for i := 0 to size - 1 do begin
            orderReviewHashMap := TJavaHashMap(orderHashMapVector.get(i));
            orderReview := TOrderHistory.Create(TBasket.Create(), orderReviewHashMap);
            orderReviewVector.add(orderReview);
        end;
        Exit(orderReviewVector);
end;
    

// throws Exception
function TOrderHistoryEntity.getOrders(userName: string): TBasicArrayList;
var
  orderReviewVector: TBasicArrayList;
  whereHashMap: TJavaHashMap;
  orderHashMapVector: TBasicArrayList;
  size: Integer;
  orderReviewHashMap: TJavaHashMap;
  orderReview: TOrderHistory;
  index: Integer;
begin
        orderReviewVector := TBasicArrayListD.Create();
        whereHashMap := TStdUtil.getInstance().createHashMap();
        whereHashMap.put(TUserData.USERNAME, userName);
        orderHashMapVector := inherited getRows(whereHashMap);
        size := orderHashMapVector.size();
        for index := 0 to size - 1 do begin
            orderReviewHashMap := TJavaHashMap(orderHashMapVector.get(index));
            orderReview := TOrderHistory.Create(TBasket.Create(), orderReviewHashMap);
            orderReviewVector.add(orderReview);
        end;
        Exit(orderReviewVector);
end;
    

// throws Exception
function TOrderHistoryEntity.getOrders(status: string; fromDate: string; toDate: string): TBasicArrayList;
var
  orderReviewVector: TBasicArrayList;
  whereHashMap: TJavaHashMap;
  orderHashMapVector: TBasicArrayList;
  size: Integer;
  orderReviewHashMap: TJavaHashMap;
  orderReview: TOrderHistory;
  index: Integer;
begin
        orderReviewVector := TBasicArrayListD.Create();
        whereHashMap := TStdUtil.getInstance().createHashMap();
        whereHashMap.put(TOrderHistoryData.STATUS, status);
        orderHashMapVector := inherited getRowsWhereBetween(whereHashMap, TOrderHistoryData.ORDERDATE, fromDate, toDate);
        size := orderHashMapVector.size();
        for index := 0 to size - 1 do begin
            orderReviewHashMap := TJavaHashMap(orderHashMapVector.get(index));
            orderReview := TOrderHistory.Create(TBasket.Create(), orderReviewHashMap);
            orderReviewVector.add(orderReview);
        end;
        Exit(orderReviewVector);
end;
    

// throws Exception
function TOrderHistoryEntity.getOrders(fromDate: string; toDate: string): TBasicArrayList;
var
  orderReviewVector: TBasicArrayList;
  orderHashMapVector: TBasicArrayList;
  size: Integer;
  orderReviewHashMap: TJavaHashMap;
  orderReview: TOrderHistory;
  index: Integer;
begin
        orderReviewVector := TBasicArrayListD.Create();
        orderHashMapVector := inherited getRowsWhereBetween(TOrderHistoryData.ORDERDATE, fromDate, toDate);
        size := orderHashMapVector.size();
        for index := 0 to size - 1 do begin
            orderReviewHashMap := TJavaHashMap(orderHashMapVector.get(index));
            orderReview := TOrderHistory.Create(TBasket.Create(), orderReviewHashMap);
            orderReviewVector.add(orderReview);
        end;
        Exit(orderReviewVector);
end;
    

// throws Exception
function TOrderHistoryEntity.getOrder(id: string): TOrderHistory;
var
  whereHashMap: TJavaHashMap;
  orderReviewHashMap: TJavaHashMap;
  orderHistory: TOrderHistory;
begin
        whereHashMap := TStdUtil.getInstance().createHashMap();
        whereHashMap.put(TOrderData.ID, id);
        orderReviewHashMap := inherited getRow(whereHashMap);
        if (orderReviewHashMap) <> (nil) then begin
            orderHistory := TOrderHistory.Create(TBasket.Create(), orderReviewHashMap);
            Exit(orderHistory);
        end else begin
            Exit(nil);
        end;
end;
    

function TOrderHistoryEntity.createTableStatement: string;
var
  entryData: TEntryData;
  stringBuffer: TStringMaker;
begin
        entryData := TEntryData.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('CREATE TABLE ');
        stringBuffer.append(Self.tableName);
        stringBuffer.append(' (');
        stringBuffer.append(entryData.ID);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(TOrderData.ID);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(TUserData.USERNAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TStoreFrontData.getInstance().NAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TOrderHistoryData.SHIPPEDDATE);
        stringBuffer.append(' BIGINT(19) UNSIGNED ,');
        stringBuffer.append(TOrderHistoryData.ORDERDATE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(TOrderHistoryData.TRANSDATE);
        stringBuffer.append(' BIGINT(19) UNSIGNED ,');
        stringBuffer.append(TOrderHistoryData.CANCELDATE);
        stringBuffer.append(' BIGINT(19) UNSIGNED ,');
        stringBuffer.append(TOrderHistoryData.STATUS);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TPaymentData.METHOD);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TPaymentData.NAME);
        stringBuffer.append(' VARCHAR(255) ,');
        stringBuffer.append(TPaymentData.TYPE_);
        stringBuffer.append(' VARCHAR(255) ,');
        stringBuffer.append(TPaymentData.EXPIRATION);
        stringBuffer.append(' VARCHAR(255) ,');
        stringBuffer.append(TPaymentData.NUMBER);
        stringBuffer.append(' VARCHAR(255) ,');
        stringBuffer.append(entryData.ENCRYPTION);
        stringBuffer.append(' BIGINT(19) UNSIGNED ,');
        stringBuffer.append(TBillingAddressData.NAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TBillingAddressData.STREET);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TBillingAddressData.CITY);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TBillingAddressData.STATE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TBillingAddressData.CODE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TBillingAddressData.COUNTRY);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingAddressData.NAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingAddressData.STREET);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingAddressData.CITY);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingAddressData.STATE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingAddressData.CODE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingAddressData.COUNTRY);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingMethodData.NAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TOrderHistoryData.SUBTOTAL);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TOrderHistoryData.SHIPPINGCOST);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TOrderHistoryData.TAX);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TOrderHistoryData.TOTAL);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(entryData.SPECIAL);
        stringBuffer.append(' VARCHAR(255) ,');
        stringBuffer.append(TOrderData.CUSTOMERCOMMENT);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append(TOrderData.CUSTOMERCANCELCOMMENT);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append(TOrderData.STORECOMMENT);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append(TOrderData.STORECANCELCOMMENT);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append('PRIMARY KEY(');
        stringBuffer.append(entryData.ID);
        stringBuffer.append(') )');
        Exit(stringBuffer.toString());
end;
    

function TOrderHistoryEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;
    

function TOrderHistoryEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;
    

// throws Exception
procedure TOrderHistoryEntity.update(whereHashMap: TJavaHashMap; orderHashMap: TJavaHashMap);
begin
        try
            Self.updateWhere(whereHashMap, orderHashMap);
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;

initialization

end.

