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
// package org.allbinary.business.user.commerce.money.payment.gateway.transaction
unit TransactionResult;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, LogUtil, StringUtil, Tokenizer, CommonSeps, CommonStrings, ABHashtable, BasicArrayList, BasicArrayListD, TransactionResultInterface;

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

  TTransactionResult = class(TInterfacedObject, ITransactionResultInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    keyValuePairs: TJavaHashMap;
    result_: string;
    procedure InitFields;
        constructor Create(result_: string); overload;
        constructor Create(keyValuePairs: TJavaHashMap); overload;
        function toString: string; virtual;
        function toHashMap: TJavaHashMap; virtual;
        function getAllPossibleKeys: TBasicArrayList;
        function getValues: TBasicArrayList; virtual;
        function getPnRef: string; virtual;
        function getRespMsg: string; virtual;
        function getResult: string; virtual;
        function getScore: string; virtual;
        function getStatus: string; virtual;
        function getFraudCode: string; virtual;
        function getFraudMsg: string; virtual;
        function getOrigResult: string; virtual;
        function getAvsAddr: string; virtual;
        function getAvsZip: string; virtual;
        function getErrCode: string; virtual;
        function getException1: string; virtual;
        function getException2: string; virtual;
        function getException3: string; virtual;
        function getException4: string; virtual;
        function getException5: string; virtual;
        function getException6: string; virtual;
        function getException7: string; virtual;
        function getReason1: string; virtual;
        function getReason2: string; virtual;
        function getReason3: string; virtual;
  end;

implementation
uses
  PaymentTransactionKeysFactory;



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


procedure TTransactionResult.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;
    

constructor TTransactionResult.Create(result_: string);
var
  tokenizer: TTokenizer;
  tokens: TBasicArrayList;
  tokenizer2: TTokenizer;
  hashtable: TABHashtable<TObject, TObject>;
  exceptionMessage: string;
begin
    inherited Create;
    InitFields;
        try
            Self.result_ := result_;
            tokenizer := TTokenizer.Create(TCommonSeps.getInstance().AMPERSAND);
            tokens := tokenizer.getTokensFromString(result_, TBasicArrayListD.Create());
            tokenizer2 := TTokenizer.Create(TCommonSeps.getInstance().EQUALS);
            hashtable := tokenizer2.getTokens(tokens);
            Self.keyValuePairs.putAll(hashtable);
        except
            on e: SysUtils.Exception do begin
            exceptionMessage := 'TransactionResult Constructor Failed';
            Self.logUtil.putF(exceptionMessage, Self, Self.commonStrings.CONSTRUCTOR_);
            end;
        end;
end;
    

constructor TTransactionResult.Create(keyValuePairs: TJavaHashMap);
begin
    inherited Create;
    InitFields;
        keyValuePairs := keyValuePairs;
        Self.result_ := 'Needs to have the hashmap converted to string for other constructor';
end;
    

function TTransactionResult.toString: string;
begin
        Exit(Self.result_);
end;
    

function TTransactionResult.toHashMap: TJavaHashMap;
begin
        Exit(Self.keyValuePairs);
end;
    

function TTransactionResult.getAllPossibleKeys: TBasicArrayList;
var
  paymentTransactionKeysFactory: TPaymentTransactionKeysFactory;
  verisignResponseKeys: TBasicArrayList;
begin
        paymentTransactionKeysFactory := TPaymentTransactionKeysFactory.getInstance();
        verisignResponseKeys := TBasicArrayListD.Create();
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.RESULT_.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.PNREF.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.RESPMSG.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.AUTHCODE.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.AVSADDR.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.AVSZIP.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.ORIGRESULT.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.STATUS.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.FRAUDCODE.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.FRAUDMSG.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.ERRCODE.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.SCORE.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.REASON1.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.REASON2.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.REASON3.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.EXCEPTION1.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.EXCEPTION2.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.EXCEPTION3.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.EXCEPTION4.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.EXCEPTION5.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.EXCEPTION6.toString()));
        verisignResponseKeys.add(TJava.BoxString(paymentTransactionKeysFactory.EXCEPTION7.toString()));
        Exit(verisignResponseKeys);
end;
    

function TTransactionResult.getValues: TBasicArrayList;
var
  keyVector: TBasicArrayList;
  valueVector: TBasicArrayList;
  size: Integer;
  key: string;
  stringUtil: TStringUtil;
  i: Integer;
begin
        keyVector := Self.getAllPossibleKeys();
        valueVector := TBasicArrayListD.Create();
        size := keyVector.size();
        for i := 0 to size - 1 do begin
            key := string(keyVector.get(i));
            if Self.keyValuePairs.containsKey(key) then begin
                valueVector.add(Self.keyValuePairs.get(key));
            end else begin
                stringUtil := TStringUtil.getInstance();
                valueVector.add(stringUtil.EMPTY_STRING);
            end;
        end;
        Exit(valueVector);
end;
    

function TTransactionResult.getPnRef: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().PNREF.toString())));
end;
    

function TTransactionResult.getRespMsg: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().RESPMSG.toString())));
end;
    

function TTransactionResult.getResult: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().RESULT_.toString())));
end;
    

function TTransactionResult.getScore: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().SCORE.toString())));
end;
    

function TTransactionResult.getStatus: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().STATUS.toString())));
end;
    

function TTransactionResult.getFraudCode: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().FRAUDCODE.toString())));
end;
    

function TTransactionResult.getFraudMsg: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().FRAUDMSG.toString())));
end;
    

function TTransactionResult.getOrigResult: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().ORIGRESULT.toString())));
end;
    

function TTransactionResult.getAvsAddr: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().AVSADDR.toString())));
end;
    

function TTransactionResult.getAvsZip: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().AVSZIP.toString())));
end;
    

function TTransactionResult.getErrCode: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().ERRCODE.toString())));
end;
    

function TTransactionResult.getException1: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().EXCEPTION1.toString())));
end;
    

function TTransactionResult.getException2: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().EXCEPTION2.toString())));
end;
    

function TTransactionResult.getException3: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().EXCEPTION3.toString())));
end;
    

function TTransactionResult.getException4: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().EXCEPTION4.toString())));
end;
    

function TTransactionResult.getException5: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().EXCEPTION5.toString())));
end;
    

function TTransactionResult.getException6: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().EXCEPTION6.toString())));
end;
    

function TTransactionResult.getException7: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().EXCEPTION7.toString())));
end;
    

function TTransactionResult.getReason1: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().REASON1.toString())));
end;
    

function TTransactionResult.getReason2: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().REASON2.toString())));
end;
    

function TTransactionResult.getReason3: string;
begin
        Exit(string(Self.keyValuePairs.get(TPaymentTransactionKeysFactory.getInstance().REASON3.toString())));
end;

initialization

end.

