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
// package org.allbinary.business.user.commerce.inventory.order
unit OrderHistory;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, StoreFrontData, EntryData, UserData, BillingAddressData, ShippingAddressData, StreetAddress, BasketInterface, Money, MoneyException, Payment, PaymentData, ShippingMethodData, ModDomHelper, StdUtil, StringUtil, Document, Node, Order, OrderHistoryInterface;

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

  TOrderHistory = class(TOrder, IOrderHistoryInterface)
  public
    userName: string;
    shippingAddress: TStreetAddress;
    billingAddress: TStreetAddress;
    payment: TPayment;
    shipDate: string;
    orderDate: string;
    transDate: string;
    cancelDate: string;
    status: string;
    subTotal: TMoney;
    shippingCost: TMoney;
    taxes: TMoney;
    total: TMoney;
    procedure InitFields;
        constructor Create(basketInterface: IBasketInterface); overload;
        constructor Create(basketInterface: IBasketInterface; orderHistory: TOrderHistory); overload;
        constructor Create(basketInterface: IBasketInterface; orderHistoryHashMap: TJavaHashMap); overload;
        procedure setUserName(value: string); virtual;
        procedure setDefaultShippingAddress(shippingAddress: TStreetAddress); virtual;
        procedure setBillingAddress(billingAddress: TStreetAddress); virtual;
        procedure setPaymentInfo(payment: TPayment); virtual;
        procedure setShipDate(value: string); virtual;
        procedure setOrderDate(value: string); virtual;
        procedure setTransDate(value: string); virtual;
        procedure setCancelDate(value: string); virtual;
        procedure setStatus(value: string); virtual;
        procedure setSubTotal(value: TMoney); virtual;
        procedure setShippingCost(value: TMoney); virtual;
        procedure setTaxes(value: TMoney); virtual;
        procedure setTotal(value: TMoney); virtual;
        function getUserName: string; virtual;
        function getShippingAddress: TStreetAddress; virtual;
        function getBillingAddress: TStreetAddress; virtual;
        function getPaymentInfo: TPayment; virtual;
        function getShipDate: string; virtual;
        function getOrderDate: string; virtual;
        function getTransDate: string; virtual;
        function getCancelDate: string; virtual;
        function getStatus: string; virtual;
        function getSubTotal: TMoney; virtual;
        function getShippingCost: TMoney; virtual;
        function getTaxes: TMoney; virtual;
        function getTotal: TMoney; virtual;
        function toHashMap: TJavaHashMap; virtual;
        function toXmlNode(document: TDocument): TNode; virtual;
  end;

implementation
uses
  OrderData, OrderHistoryData;



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


procedure TOrderHistory.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TOrderHistory.Create(basketInterface: IBasketInterface);
begin
        inherited Create(basketInterface);
        InitFields;
end;
    

constructor TOrderHistory.Create(basketInterface: IBasketInterface; orderHistory: TOrderHistory);
begin
        inherited Create(orderHistory.getStoreName(), basketInterface, orderHistory.getId(), orderHistory.getShippingMethod(), orderHistory.getSpecial(), orderHistory.getPaymentMethod());
        InitFields;
        Self.userName := orderHistory.getUserName();
        Self.shippingAddress := orderHistory.getShippingAddress();
        Self.billingAddress := orderHistory.getBillingAddress();
        Self.payment := orderHistory.getPaymentInfo();
        Self.shipDate := orderHistory.getShipDate();
        Self.orderDate := orderHistory.getOrderDate();
        Self.transDate := orderHistory.getTransDate();
        Self.cancelDate := orderHistory.getCancelDate();
        Self.status := orderHistory.getStatus();
        Self.subTotal := orderHistory.getSubTotal();
        Self.shippingCost := orderHistory.getShippingCost();
        Self.taxes := orderHistory.getTaxes();
        Self.total := orderHistory.getTotal();
        inherited setUserComments(string(orderHistory.getUserComments()));
        inherited setUserCancelComments(string(orderHistory.getUserCancelComments()));
        inherited setStoreComments(string(orderHistory.getStoreComments()));
        inherited setStoreCancelComments(string(orderHistory.getStoreCancelComments()));
end;
    

constructor TOrderHistory.Create(basketInterface: IBasketInterface; orderHistoryHashMap: TJavaHashMap);
begin
        inherited Create(string(orderHistoryHashMap.get(TStoreFrontData.getInstance().NAME)), basketInterface, string(orderHistoryHashMap.get(TOrderData.ID)), string(orderHistoryHashMap.get(TShippingMethodData.NAME)), string(orderHistoryHashMap.get(TEntryData.getInstance().SPECIAL)), string(orderHistoryHashMap.get(TPaymentData.METHOD)));
        InitFields;
        Self.shippingAddress := TStreetAddress.Create(string(orderHistoryHashMap.get(TShippingAddressData.NAME)), string(orderHistoryHashMap.get(TShippingAddressData.STREET)), string(orderHistoryHashMap.get(TShippingAddressData.CITY)), string(orderHistoryHashMap.get(TShippingAddressData.STATE)), string(orderHistoryHashMap.get(TShippingAddressData.CODE)), string(orderHistoryHashMap.get(TShippingAddressData.COUNTRY)));
        Self.billingAddress := TStreetAddress.Create(string(orderHistoryHashMap.get(TBillingAddressData.NAME)), string(orderHistoryHashMap.get(TBillingAddressData.STREET)), string(orderHistoryHashMap.get(TBillingAddressData.CITY)), string(orderHistoryHashMap.get(TBillingAddressData.STATE)), string(orderHistoryHashMap.get(TBillingAddressData.CODE)), string(orderHistoryHashMap.get(TBillingAddressData.COUNTRY)));
        Self.payment := TPayment.Create(orderHistoryHashMap);
        Self.userName := string(orderHistoryHashMap.get(TUserData.USERNAME));
        Self.orderDate := string(orderHistoryHashMap.get(TOrderHistoryData.ORDERDATE));
        Self.shipDate := string(orderHistoryHashMap.get(TOrderHistoryData.SHIPPEDDATE));
        Self.transDate := string(orderHistoryHashMap.get(TOrderHistoryData.TRANSDATE));
        Self.cancelDate := string(orderHistoryHashMap.get(TOrderHistoryData.CANCELDATE));
        Self.status := string(orderHistoryHashMap.get(TOrderHistoryData.STATUS));
        Self.subTotal := TMoney.Create(string(orderHistoryHashMap.get(TOrderHistoryData.SUBTOTAL)));
        Self.total := TMoney.Create(string(orderHistoryHashMap.get(TOrderHistoryData.TOTAL)));
        Self.shippingCost := TMoney.Create(string(orderHistoryHashMap.get(TOrderHistoryData.SHIPPINGCOST)));
        Self.taxes := TMoney.Create(string(orderHistoryHashMap.get(TOrderHistoryData.TAX)));
        inherited setUserComments(string(orderHistoryHashMap.get(TOrderData.CUSTOMERCOMMENT)));
        inherited setUserCancelComments(string(orderHistoryHashMap.get(TOrderData.CUSTOMERCANCELCOMMENT)));
        inherited setStoreComments(string(orderHistoryHashMap.get(TOrderData.STORECOMMENT)));
        inherited setStoreCancelComments(string(orderHistoryHashMap.get(TOrderData.STORECANCELCOMMENT)));
end;
    

procedure TOrderHistory.setUserName(value: string);
begin
        Self.userName := value;
end;
    

procedure TOrderHistory.setDefaultShippingAddress(shippingAddress: TStreetAddress);
begin
        Self.shippingAddress := shippingAddress;
end;
    

procedure TOrderHistory.setBillingAddress(billingAddress: TStreetAddress);
begin
        Self.billingAddress := billingAddress;
end;
    

procedure TOrderHistory.setPaymentInfo(payment: TPayment);
begin
        Self.payment := payment;
end;
    

procedure TOrderHistory.setShipDate(value: string);
begin
        Self.shipDate := value;
end;
    

procedure TOrderHistory.setOrderDate(value: string);
begin
        Self.orderDate := value;
end;
    

procedure TOrderHistory.setTransDate(value: string);
begin
        Self.transDate := value;
end;
    

procedure TOrderHistory.setCancelDate(value: string);
begin
        Self.cancelDate := value;
end;
    

procedure TOrderHistory.setStatus(value: string);
begin
        Self.status := value;
end;
    

procedure TOrderHistory.setSubTotal(value: TMoney);
begin
        Self.subTotal := value;
end;
    

procedure TOrderHistory.setShippingCost(value: TMoney);
begin
        Self.shippingCost := value;
end;
    

procedure TOrderHistory.setTaxes(value: TMoney);
begin
        Self.taxes := value;
end;
    

procedure TOrderHistory.setTotal(value: TMoney);
begin
        Self.total := value;
end;
    

function TOrderHistory.getUserName: string;
begin
        Exit(Self.userName);
end;
    

function TOrderHistory.getShippingAddress: TStreetAddress;
begin
        Exit(Self.shippingAddress);
end;
    

function TOrderHistory.getBillingAddress: TStreetAddress;
begin
        Exit(Self.billingAddress);
end;
    

function TOrderHistory.getPaymentInfo: TPayment;
begin
        Exit(Self.payment);
end;
    

function TOrderHistory.getShipDate: string;
begin
        Exit(Self.shipDate);
end;
    

function TOrderHistory.getOrderDate: string;
begin
        Exit(Self.orderDate);
end;
    

function TOrderHistory.getTransDate: string;
begin
        Exit(Self.transDate);
end;
    

function TOrderHistory.getCancelDate: string;
begin
        Exit(Self.cancelDate);
end;
    

function TOrderHistory.getStatus: string;
begin
        Exit(Self.status);
end;
    

function TOrderHistory.getSubTotal: TMoney;
begin
        Exit(Self.subTotal);
end;
    

function TOrderHistory.getShippingCost: TMoney;
begin
        Exit(Self.shippingCost);
end;
    

function TOrderHistory.getTaxes: TMoney;
begin
        Exit(Self.taxes);
end;
    

function TOrderHistory.getTotal: TMoney;
begin
        Exit(Self.total);
end;
    

function TOrderHistory.toHashMap: TJavaHashMap;
var
  hashMap: TJavaHashMap;
begin
        hashMap := TStdUtil.getInstance().createHashMap();
        hashMap.put(TUserData.USERNAME, Self.userName);
        hashMap.put(TOrderHistoryData.ORDERDATE, Self.orderDate);
        hashMap.put(TOrderHistoryData.SHIPPEDDATE, Self.shipDate);
        hashMap.put(TOrderHistoryData.TRANSDATE, Self.transDate);
        hashMap.put(TOrderHistoryData.CANCELDATE, Self.cancelDate);
        hashMap.put(TOrderHistoryData.ORDERDATEFORMATTED, TDateTime.Create(Self.orderDate.longValue()).toString());
        hashMap.put(TOrderHistoryData.SHIPPEDDATEFORMATTED, TDateTime.Create(Self.shipDate.longValue()).toString());
        hashMap.put(TOrderHistoryData.TRANSDATEFORMATTED, TDateTime.Create(Self.transDate.longValue()).toString());
        hashMap.put(TOrderHistoryData.CANCELDATEFORMATTED, TDateTime.Create(Self.cancelDate.longValue()).toString());
        hashMap.put(TOrderHistoryData.STATUS, Self.status);
        hashMap.put(TOrderHistoryData.SUBTOTAL, Self.subTotal.toString());
        hashMap.put(TOrderHistoryData.TOTAL, Self.total.toString());
        hashMap.put(TOrderHistoryData.SHIPPINGCOST, Self.shippingCost.toString());
        hashMap.put(TOrderHistoryData.TAX, Self.taxes.toString());
        Exit(hashMap);
end;
    

// throws Exception
function TOrderHistory.toXmlNode(document: TDocument): TNode;
var
  hashMap: TJavaHashMap;
  keySet: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  node: TNode;
  billingAddressNode: TNode;
  shippingAddressNode: TNode;
  name: string;
  value: string;
  i: Integer;
begin
        hashMap := Self.toHashMap();
        keySet := hashMap.keySet();
        keyArray := keySet.toArray();
        size := System.Length(keyArray);
        node := document.createElement(TOrderHistoryData.ORDERHISTORY);
        node.appendChild(inherited toXmlNode(document));
        billingAddressNode := document.createElement(TBillingAddressData.BILLINGADDRESS);
        billingAddressNode.appendChild(Self.billingAddress.toXmlNode(document));
        shippingAddressNode := document.createElement(TShippingAddressData.SHIPPINGADDRESS);
        shippingAddressNode.appendChild(Self.shippingAddress.toXmlNode(document));
        node.appendChild(billingAddressNode);
        node.appendChild(shippingAddressNode);
        node.appendChild(Self.payment.toXmlNode(document));
        for i := 0 to size - 1 do begin
            name := string(keyArray[i]);
            value := string(hashMap.get(name));
            value := TStringUtil.getInstance().getNonNull(value);
            node.appendChild(TModDomHelper.createNameValueNodes(document, name, value));
        end;
        Exit(node);
end;

initialization

end.

