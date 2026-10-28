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
// package org.allbinary.business.user.commerce.inventory.item
unit BasicItem;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, BasicArrayList, BasicArrayListD, EntryData, Money, MoneyException, ProductIdGenerator, StdUtil, LogUtil, StringUtil, CommonPhoneStrings, CommonStrings, BasicItemData, ItemInterface;

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

  TBasicItem = class(TInterfacedObject, IItemInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    basicItemData: TBasicItemData;
    itemId: string;
    number: string;
    inBaskets: string;
    weight: string;
    enabled: string;
    newOrUsed: string;
    summary: string;
    distributor: string;
    idUsedByDistributor: string;
    producedBy: string;
    productionDate: string;
    startProductionDate: string;
    description: string;
    keywords: string;
    category: string;
    type_: string;
    smallImage: string;
    mediumImage: string;
    largeImage: string;
    price: TMoney;
    comment: string;
    customs: string;
    downloads: string;
    groups: string;
    options: string;
    permissions: string;
    specials: string;
    downloadable: Boolean;
    timeEntered: string;
    lastModified: string;
    procedure InitFields;
        constructor Create(itemHashMap: TJavaHashMap); overload;
        constructor Create; overload;
        procedure setId(itemId: string); virtual;
        procedure setNumber(number: string); virtual;
        procedure setInBaskets(value: string); virtual;
        procedure setWeight(value: string); virtual;
        procedure setNewOrUsed(value: string); virtual;
        procedure setSummary(value: string); virtual;
        procedure setDistributor(value: string); virtual;
        procedure setIdUsedByDistributor(value: string); virtual;
        procedure setProducedBy(value: string); virtual;
        procedure setProductionDate(value: string); virtual;
        procedure setStartProductionDate(value: string); virtual;
        procedure setDescription(value: string); virtual;
        procedure setKeywords(value: string); virtual;
        procedure setCategory(value: string); virtual;
        procedure setType(value: string); virtual;
        procedure setSmallImage(value: string); virtual;
        procedure setMediumImage(value: string); virtual;
        procedure setLargeImage(value: string); virtual;
        procedure setTimeEntered(value: string); virtual;
        procedure setLastModified(value: string); virtual;
        procedure setPrice(value: TMoney); virtual;
        procedure setComment(value: string); virtual;
        procedure setCustoms(value: string); virtual;
        procedure setDownloads(value: string); virtual;
        procedure setGroups(value: string); virtual;
        procedure setOptions(value: string); virtual;
        procedure setPermissions(value: string); virtual;
        procedure setSpecials(value: string); virtual;
        procedure setEnabled(value: string); virtual;
        function getId: string; virtual;
        function getNumber: string; virtual;
        function getInBaskets: string; virtual;
        function getWeight: string; virtual;
        function getNewOrUsed: string; virtual;
        function getSummary: string; virtual;
        function getDistributor: string; virtual;
        function getIdUsedByDistributor: string; virtual;
        function getProducedBy: string; virtual;
        function getProductionDate: string; virtual;
        function getStartProductionDate: string; virtual;
        function getDescription: string; virtual;
        function getKeywords: string; virtual;
        function getCategory: string; virtual;
        function getType: string; virtual;
        function getSmallImage: string; virtual;
        function getMediumImage: string; virtual;
        function getLargeImage: string; virtual;
        function getTimeEntered: string; virtual;
        function getLastModified: string; virtual;
        function getPrice: TMoney; virtual;
        function getComment: string; virtual;
        function getCustoms: string; virtual;
        function getDownloads: string; virtual;
        function getGroups: string; virtual;
        function getOptions: string; virtual;
        function getPermissions: string; virtual;
        function getSpecials: string; virtual;
        procedure setDownloadable(downloadable: Boolean); virtual;
        function isDownloadable: Boolean; virtual;
        function getEnabled: string; virtual;
        function getTotal: TMoney; virtual;
        function toHashMap: TJavaHashMap; virtual;
        function toVector: TBasicArrayList; virtual;
        function getKey: TObject; virtual;
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


procedure TBasicItem.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TBasicItem.Create(itemHashMap: TJavaHashMap);
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.START, Self, 'Constructor(HashMap)');
        end;
        Self.itemId := string(itemHashMap.get(Self.basicItemData.ID));
        Self.number := string(itemHashMap.get(Self.basicItemData.NUMBER));
        Self.inBaskets := string(itemHashMap.get(Self.basicItemData.INBASKETS));
        Self.weight := string(itemHashMap.get(Self.basicItemData.WEIGHT));
        Self.enabled := string(itemHashMap.get(TEntryData.getInstance().ENABLE));
        Self.newOrUsed := string(itemHashMap.get(Self.basicItemData.NEWORUSED));
        Self.summary := string(itemHashMap.get(Self.basicItemData.SUMMARY));
        Self.distributor := string(itemHashMap.get(Self.basicItemData.DISTRIBUTOR));
        Self.idUsedByDistributor := string(itemHashMap.get(Self.basicItemData.IDUSEDBYDISTRIBUTOR));
        Self.producedBy := string(itemHashMap.get(Self.basicItemData.PRODUCEDBY));
        Self.productionDate := string(itemHashMap.get(Self.basicItemData.PRODUCTIONDATE));
        Self.startProductionDate := string(itemHashMap.get(Self.basicItemData.STARTPRODUCTIONDATE));
        Self.description := string(itemHashMap.get(Self.basicItemData.DESCRIPTION));
        Self.keywords := string(itemHashMap.get(Self.basicItemData.KEYWORDS));
        Self.category := string(itemHashMap.get(Self.basicItemData.CATEGORY));
        Self.type_ := string(itemHashMap.get(Self.basicItemData.TYPE_));
        Self.smallImage := string(itemHashMap.get(Self.basicItemData.SMALLIMAGE));
        Self.mediumImage := string(itemHashMap.get(Self.basicItemData.MEDIUMIMAGE));
        Self.largeImage := string(itemHashMap.get(Self.basicItemData.LARGEIMAGE));
        Self.timeEntered := string(itemHashMap.get(TEntryData.getInstance().TIMECREATED));
        Self.lastModified := string(itemHashMap.get(TEntryData.getInstance().LASTMODIFIED));
        Self.price := TMoney.Create(string(itemHashMap.get(Self.basicItemData.PRICE)));
        Self.comment := string(itemHashMap.get(Self.basicItemData.COMMENT));
        Self.customs := string(itemHashMap.get(Self.basicItemData.CUSTOMS));
        Self.setDownloads(string(itemHashMap.get(Self.basicItemData.DOWNLOADS)));
        Self.groups := string(itemHashMap.get(Self.basicItemData.GROUPS));
        Self.options := string(itemHashMap.get(Self.basicItemData.OPTIONS));
        Self.permissions := string(itemHashMap.get(Self.basicItemData.PERMISSIONS));
        Self.specials := string(itemHashMap.get(Self.basicItemData.SPECIALS));
end;
    

constructor TBasicItem.Create;
var
  EMPTY: string;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.START, Self, Self.commonStrings.CONSTRUCTOR_);
        end;
        EMPTY := TStringUtil.getInstance().EMPTY_STRING;
        Self.itemId := TProductIdGenerator.Create().getNext();
        Self.number := TCommonPhoneStrings.getInstance().ZERO;
        Self.inBaskets := EMPTY;
        Self.weight := EMPTY;
        Self.enabled := EMPTY;
        Self.newOrUsed := EMPTY;
        Self.summary := EMPTY;
        Self.distributor := EMPTY;
        Self.idUsedByDistributor := EMPTY;
        Self.producedBy := EMPTY;
        Self.productionDate := EMPTY;
        Self.startProductionDate := EMPTY;
        Self.description := EMPTY;
        Self.keywords := EMPTY;
        Self.category := EMPTY;
        Self.type_ := EMPTY;
        Self.smallImage := EMPTY;
        Self.mediumImage := EMPTY;
        Self.largeImage := EMPTY;
        Self.timeEntered := EMPTY;
        Self.lastModified := EMPTY;
        Self.price := TMoney.Create();
        Self.comment := EMPTY;
        Self.customs := EMPTY;
        Self.setDownloads(EMPTY);
        Self.groups := EMPTY;
        Self.options := EMPTY;
        Self.permissions := EMPTY;
        Self.specials := EMPTY;
end;
    

procedure TBasicItem.setId(itemId: string);
begin
        Self.itemId := itemId;
end;
    

procedure TBasicItem.setNumber(number: string);
begin
        Self.number := number;
end;
    

procedure TBasicItem.setInBaskets(value: string);
begin
        Self.inBaskets := value;
end;
    

procedure TBasicItem.setWeight(value: string);
begin
        Self.weight := value;
end;
    

procedure TBasicItem.setNewOrUsed(value: string);
begin
        Self.newOrUsed := value;
end;
    

procedure TBasicItem.setSummary(value: string);
begin
        Self.summary := value;
end;
    

procedure TBasicItem.setDistributor(value: string);
begin
        Self.distributor := value;
end;
    

procedure TBasicItem.setIdUsedByDistributor(value: string);
begin
        Self.idUsedByDistributor := value;
end;
    

procedure TBasicItem.setProducedBy(value: string);
begin
        Self.producedBy := value;
end;
    

procedure TBasicItem.setProductionDate(value: string);
begin
        Self.productionDate := value;
end;
    

procedure TBasicItem.setStartProductionDate(value: string);
begin
        Self.startProductionDate := value;
end;
    

procedure TBasicItem.setDescription(value: string);
begin
        Self.description := value;
end;
    

procedure TBasicItem.setKeywords(value: string);
begin
        Self.keywords := value;
end;
    

procedure TBasicItem.setCategory(value: string);
begin
        Self.category := value;
end;
    

procedure TBasicItem.setType(value: string);
begin
        Self.type_ := value;
end;
    

procedure TBasicItem.setSmallImage(value: string);
begin
        Self.smallImage := value;
end;
    

procedure TBasicItem.setMediumImage(value: string);
begin
        Self.mediumImage := value;
end;
    

procedure TBasicItem.setLargeImage(value: string);
begin
        Self.largeImage := value;
end;
    

procedure TBasicItem.setTimeEntered(value: string);
begin
        Self.timeEntered := value;
end;
    

procedure TBasicItem.setLastModified(value: string);
begin
        Self.lastModified := value;
end;
    

procedure TBasicItem.setPrice(value: TMoney);
begin
        Self.price := value;
end;
    

procedure TBasicItem.setComment(value: string);
begin
        Self.comment := value;
end;
    

procedure TBasicItem.setCustoms(value: string);
begin
        Self.customs := value;
end;
    

procedure TBasicItem.setDownloads(value: string);
var
  downloadInteger: Integer;
begin
        Self.downloads := value;
        if not (nil.isEmpty(Self.downloads)) then begin
            downloadInteger := IntToStr(Self.downloads);
            if (downloadInteger) <> (0) then begin
                Self.setDownloadable(True);
            end;
        end;
end;
    

procedure TBasicItem.setGroups(value: string);
begin
        Self.groups := value;
end;
    

procedure TBasicItem.setOptions(value: string);
begin
        Self.options := value;
end;
    

procedure TBasicItem.setPermissions(value: string);
begin
        Self.permissions := value;
end;
    

procedure TBasicItem.setSpecials(value: string);
begin
        Self.specials := value;
end;
    

procedure TBasicItem.setEnabled(value: string);
begin
        Self.enabled := value;
end;
    

function TBasicItem.getId: string;
begin
        Exit(Self.itemId);
end;
    

function TBasicItem.getNumber: string;
begin
        Exit(Self.number);
end;
    

function TBasicItem.getInBaskets: string;
begin
        Exit(Self.inBaskets);
end;
    

function TBasicItem.getWeight: string;
begin
        Exit(Self.weight);
end;
    

function TBasicItem.getNewOrUsed: string;
begin
        Exit(Self.newOrUsed);
end;
    

function TBasicItem.getSummary: string;
begin
        Exit(Self.summary);
end;
    

function TBasicItem.getDistributor: string;
begin
        Exit(Self.distributor);
end;
    

function TBasicItem.getIdUsedByDistributor: string;
begin
        Exit(Self.idUsedByDistributor);
end;
    

function TBasicItem.getProducedBy: string;
begin
        Exit(Self.producedBy);
end;
    

function TBasicItem.getProductionDate: string;
begin
        Exit(Self.productionDate);
end;
    

function TBasicItem.getStartProductionDate: string;
begin
        Exit(Self.startProductionDate);
end;
    

function TBasicItem.getDescription: string;
begin
        Exit(Self.description);
end;
    

function TBasicItem.getKeywords: string;
begin
        Exit(Self.keywords);
end;
    

function TBasicItem.getCategory: string;
begin
        Exit(Self.category);
end;
    

function TBasicItem.getType: string;
begin
        Exit(Self.type_);
end;
    

function TBasicItem.getSmallImage: string;
begin
        Exit(Self.smallImage);
end;
    

function TBasicItem.getMediumImage: string;
begin
        Exit(Self.mediumImage);
end;
    

function TBasicItem.getLargeImage: string;
begin
        Exit(Self.largeImage);
end;
    

function TBasicItem.getTimeEntered: string;
begin
        Exit(Self.timeEntered);
end;
    

function TBasicItem.getLastModified: string;
begin
        Exit(Self.lastModified);
end;
    

function TBasicItem.getPrice: TMoney;
begin
        Exit(Self.price);
end;
    

function TBasicItem.getComment: string;
begin
        Exit(Self.comment);
end;
    

function TBasicItem.getCustoms: string;
begin
        Exit(Self.customs);
end;
    

function TBasicItem.getDownloads: string;
begin
        Exit(Self.downloads);
end;
    

function TBasicItem.getGroups: string;
begin
        Exit(Self.groups);
end;
    

function TBasicItem.getOptions: string;
begin
        Exit(Self.options);
end;
    

function TBasicItem.getPermissions: string;
begin
        Exit(Self.permissions);
end;
    

function TBasicItem.getSpecials: string;
begin
        Exit(Self.specials);
end;
    

procedure TBasicItem.setDownloadable(downloadable: Boolean);
begin
        Self.downloadable := downloadable;
end;
    

function TBasicItem.isDownloadable: Boolean;
begin
        Exit(Self.downloadable);
end;
    

function TBasicItem.getEnabled: string;
begin
        Exit(Self.enabled);
end;
    

function TBasicItem.getTotal: TMoney;
var
  itemTotal: TMoney;
begin
        itemTotal := TMoney.Create(Self.price);
        itemTotal.multiply(Self.number.intValue());
        Exit(itemTotal);
end;
    

function TBasicItem.toHashMap: TJavaHashMap;
var
  hashMap: TJavaHashMap;
  calendar: TDateTime;
  time: string;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.START, Self, 'toHashMap');
        end;
        hashMap := TStdUtil.getInstance().createHashMap();
        hashMap.put(Self.basicItemData.ID, Self.itemId);
        hashMap.put(Self.basicItemData.NUMBER, Self.number);
        hashMap.put(Self.basicItemData.INBASKETS, Self.inBaskets);
        hashMap.put(Self.basicItemData.WEIGHT, Self.weight);
        hashMap.put(TEntryData.getInstance().ENABLE, Self.enabled);
        hashMap.put(Self.basicItemData.NEWORUSED, Self.newOrUsed);
        hashMap.put(Self.basicItemData.SUMMARY, Self.summary);
        hashMap.put(Self.basicItemData.DISTRIBUTOR, Self.distributor);
        hashMap.put(Self.basicItemData.IDUSEDBYDISTRIBUTOR, Self.idUsedByDistributor);
        hashMap.put(Self.basicItemData.PRODUCEDBY, Self.producedBy);
        hashMap.put(Self.basicItemData.PRODUCTIONDATE, Self.productionDate);
        hashMap.put(Self.basicItemData.STARTPRODUCTIONDATE, Self.startProductionDate);
        hashMap.put(Self.basicItemData.DESCRIPTION, Self.description);
        hashMap.put(Self.basicItemData.KEYWORDS, Self.keywords);
        hashMap.put(Self.basicItemData.CATEGORY, Self.category);
        hashMap.put(Self.basicItemData.TYPE_, Self.type_);
        hashMap.put(Self.basicItemData.SMALLIMAGE, Self.smallImage);
        hashMap.put(Self.basicItemData.MEDIUMIMAGE, Self.mediumImage);
        hashMap.put(Self.basicItemData.LARGEIMAGE, Self.largeImage);
        calendar := Now;
        time := calendar.getTimeInMillis().toString();
        hashMap.put(TEntryData.getInstance().LASTMODIFIED, time);
        hashMap.put(Self.basicItemData.PRICE, Self.price.toString());
        hashMap.put(Self.basicItemData.COMMENT, Self.comment);
        hashMap.put(Self.basicItemData.CUSTOMS, Self.customs);
        hashMap.put(Self.basicItemData.DOWNLOADS, Self.getDownloads());
        hashMap.put(Self.basicItemData.GROUPS, Self.groups);
        hashMap.put(Self.basicItemData.OPTIONS, Self.options);
        hashMap.put(Self.basicItemData.PERMISSIONS, Self.permissions);
        hashMap.put(Self.basicItemData.SPECIALS, Self.specials);
        Exit(hashMap);
end;
    

function TBasicItem.toVector: TBasicArrayList;
var
  values: TBasicArrayList;
  calendar: TDateTime;
  time: string;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRODUCTSEARCHLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.START, Self, 'toVector');
        end;
        values := TBasicArrayListD.Create();
        values.add(TJava.BoxString(Self.itemId));
        values.add(TJava.BoxString(Self.number));
        values.add(TJava.BoxString(Self.inBaskets));
        values.add(TJava.BoxString(Self.weight));
        values.add(TJava.BoxString(Self.enabled));
        values.add(TJava.BoxString(Self.newOrUsed));
        values.add(TJava.BoxString(Self.summary));
        values.add(TJava.BoxString(Self.distributor));
        values.add(TJava.BoxString(Self.idUsedByDistributor));
        values.add(TJava.BoxString(Self.producedBy));
        values.add(TJava.BoxString(Self.productionDate));
        values.add(TJava.BoxString(Self.startProductionDate));
        values.add(TJava.BoxString(Self.description));
        values.add(TJava.BoxString(Self.keywords));
        values.add(TJava.BoxString(Self.category));
        values.add(TJava.BoxString(Self.type_));
        values.add(Self.getSmallImage());
        values.add(Self.getMediumImage());
        values.add(Self.getLargeImage());
        calendar := Now;
        time := calendar.getTimeInMillis().toString();
        values.add(TJava.BoxString(time));
        values.add(TJava.BoxString(time));
        values.add(TJava.BoxString(Self.price.toString()));
        values.add(TJava.BoxString(Self.comment));
        values.add(TJava.BoxString(Self.customs));
        values.add(Self.getDownloads());
        values.add(TJava.BoxString(Self.groups));
        values.add(TJava.BoxString(Self.options));
        values.add(TJava.BoxString(Self.permissions));
        values.add(TJava.BoxString(Self.specials));
        Exit(values);
end;
    

// throws Exception
function TBasicItem.getKey: TObject;
begin
        Exit(TObject(Self.getId()));
end;

initialization

end.

