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
// package org.allbinary.business.context.modules.storefront
unit StoreFront;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, BasicArrayList, BasicArrayListD, ContextConfiguration, ContextConfigurationDomDocumentMapping, ContextConfigurationInterface, ContextConfigurationInterfaceFactory, EntryData, UserData, DomDocumentHelper, FREEBLISKET_PATH_GLOBALS, URLGLOBALS, StdUtil, RequestParams, LogUtil, AbFile, FileUtil, Directory, AbPath, AbPathData, AbPathUtil, SpecialCharacterUtil, StringMaker, StringUtil, Replace, Tokenizer, CommonSeps, CommonStrings, BasicArrayList, BasicArrayListD, StringEscapeUtils, Document, StoreFrontInterface;

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

  TStoreFront = class(TInterfacedObject, IStoreFrontInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    directory: TDirectory;
    stringUtil: TStringUtil;
    abPathUtil: TAbPathUtil;
    name: string;
    basketName: string;
    homeHostName: string;
    homeHostNamePath: TAbPath;
    hostName: string;
    hostNamePath: TAbPath;
    testHomeHostName: string;
    testHomeHostNamePath: TAbPath;
    testHostName: string;
    testHostNamePath: TAbPath;
    imagePath: TAbPath;
    staticPath: TAbPath;
    categoryPath: TAbPath;
    inventoryControl: string;
    contextConfigurationInterface: IContextConfigurationInterface;
    subStores: string;
    tagLocation: string;
    packageLocation: string;
    ftp: string;
    ftpPath: TAbPath;
    ftpUserName: string;
    ftpPassword: string;
    testFtp: string;
    testFtpPath: TAbPath;
    testFtpUserName: string;
    testFtpPassword: string;
    timeCreated: string;
    lastModified: string;
    MINCHAR: Integer;
    MINSTORENAMELENGTH: Integer;
    MAXCHAR: Integer;
    EMPTY_STRING: string;
    ONE_EMPTY_STRING_ARRAY: TArray<string>;
    class var RESOURCES: string;
    procedure InitFields;
        constructor Create; overload;
        constructor Create(request: THttpServletRequest); overload;
        constructor Create(hashMap: TJavaHashMap); overload;
        function isColumn(columnName: string): Boolean;
        function createPath(key: string; hashMap: TJavaHashMap): TAbPath; overload;
        function createPath(append: string; key: string; hashMap: TJavaHashMap): TAbPath; overload;
        function get(key: string; hashMap: TJavaHashMap): string;
        function create_(append: string; key: string; hashMap: TJavaHashMap): string;
        procedure getFormData(storeHashMap: TJavaHashMap);
        function isNameValid: Boolean; virtual;
        function isValid: Boolean; virtual;
        function nameValidationInfo: string; virtual;
        function validationInfo: string; virtual;
        function getTestHtmlPath: string; virtual;
        function getCurrentHostName: string; virtual;
        function getCurrentHostNamePath: string; virtual;
        function getCurrentHomeHostName: string; virtual;
        function getCurrentHomeHostNamePath: string; virtual;
        function getName: string; virtual;
        function getBasketName: string; virtual;
        function getHomeHostName: string; virtual;
        function getHomeHostNamePath: string; virtual;
        function getHostName: string; virtual;
        function getHostNamePath: string; virtual;
        function getTestHomeHostName: string; virtual;
        function getTestHomeHostNamePath: string; virtual;
        function getTestHostName: string; virtual;
        function getTestHostNamePath: string; virtual;
        function getStaticPath: string; virtual;
        function getCategoryPath: string; virtual;
        function getInventoryControl: string; virtual;
        function getSubStores: TBasicArrayList; virtual;
        function getTagLocation: string; virtual;
        function getPackageLocation: string; overload; virtual;
        function getFtp: string; virtual;
        function getFtpUserName: string; virtual;
        function getFtpPassword: string; virtual;
        function getTestFtp: string; virtual;
        function getTestFtpUserName: string; virtual;
        function getTestFtpPassword: string; virtual;
        function getFtpPath: string; virtual;
        function getTestFtpPath: string; virtual;
        function getTimeCreated: string; virtual;
        function getLastModified: string; virtual;
        procedure setName(value: string); virtual;
        procedure setBasketName(value: string); virtual;
        procedure setHomeHostName(value: string); virtual;
        procedure setHomeHostNamePath(value: string); virtual;
        procedure setHostName(value: string); virtual;
        procedure setHostNamePath(value: string); virtual;
        procedure setTestHomeHostName(value: string); virtual;
        procedure setTestHomeHostNamePath(value: string); virtual;
        procedure setTestHostName(value: string); virtual;
        procedure setTestHostNamePath(value: string); virtual;
        procedure setImagePath(value: string); virtual;
        procedure setStaticPath(value: string); virtual;
        procedure setCategoryPath(value: string); virtual;
        procedure setSubStores(value: string); virtual;
        procedure setTagLocation(value: string); virtual;
        procedure setPackageLocation(value: string); virtual;
        procedure setInventoryControl(value: string); virtual;
        procedure getPackageLocation(value: string); overload; virtual;
        procedure setFtp(value: string); virtual;
        procedure setFtpUserName(value: string); virtual;
        procedure setFtpPassword(value: string); virtual;
        procedure setTestFtp(value: string); virtual;
        procedure setTestFtpUserName(value: string); virtual;
        procedure setTestFtpPassword(value: string); virtual;
        procedure setTimeCreated(value: string); virtual;
        procedure setLastModified(value: string); virtual;
        procedure setFtpPath(value: string); virtual;
        procedure setTestFtpPath(value: string); virtual;
        function createDirectories: Boolean;
        procedure install(current: Integer; total: Integer); virtual;
        procedure installViews(fromDirectoryAbPath: TAbPath; toDirectoryAbPath: TAbPath; current: Integer; total: Integer);
        procedure installResources(fromDirectoryAbPath: TAbPath; current: Integer; total: Integer);
        procedure installMedia(fromDirectoryAbPath: TAbPath; current: Integer; total: Integer);
        function toVector: TBasicArrayList; virtual;
        function toHashMap: TJavaHashMap; virtual;
        function getKey: TObject; virtual;
        function getContextConfigurationInterface: IContextConfigurationInterface; virtual;
        procedure setContextConfigurationInterface(contextConfigurationInterface: IContextConfigurationInterface); virtual;
  end;

implementation
uses
  StoreFrontData;



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


procedure TStoreFront.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.directory := TDirectory.getInstance();
  Self.stringUtil := TStringUtil.getInstance();
  Self.abPathUtil := TAbPathUtil.getInstance();
  Self.name := Self.stringUtil.EMPTY_STRING;
  Self.basketName := Self.stringUtil.EMPTY_STRING;
  Self.homeHostName := Self.stringUtil.EMPTY_STRING;
  Self.homeHostNamePath := Self.abPathUtil.NO_ABPATH;
  Self.hostName := Self.stringUtil.EMPTY_STRING;
  Self.hostNamePath := Self.abPathUtil.NO_ABPATH;
  Self.testHomeHostName := Self.stringUtil.EMPTY_STRING;
  Self.testHomeHostNamePath := Self.abPathUtil.NO_ABPATH;
  Self.testHostName := Self.stringUtil.EMPTY_STRING;
  Self.testHostNamePath := Self.abPathUtil.NO_ABPATH;
  Self.imagePath := Self.abPathUtil.NO_ABPATH;
  Self.staticPath := Self.abPathUtil.NO_ABPATH;
  Self.categoryPath := Self.abPathUtil.NO_ABPATH;
  Self.inventoryControl := Self.stringUtil.EMPTY_STRING;
  
  Self.subStores := Self.stringUtil.EMPTY_STRING;
  Self.tagLocation := Self.stringUtil.EMPTY_STRING;
  Self.packageLocation := Self.stringUtil.EMPTY_STRING;
  Self.ftp := Self.stringUtil.EMPTY_STRING;
  Self.ftpPath := Self.abPathUtil.NO_ABPATH;
  Self.ftpUserName := Self.stringUtil.EMPTY_STRING;
  Self.ftpPassword := Self.stringUtil.EMPTY_STRING;
  Self.testFtp := Self.stringUtil.EMPTY_STRING;
  Self.testFtpPath := Self.abPathUtil.NO_ABPATH;
  Self.testFtpUserName := Self.stringUtil.EMPTY_STRING;
  Self.testFtpPassword := Self.stringUtil.EMPTY_STRING;
  Self.timeCreated := Self.stringUtil.EMPTY_STRING;
  Self.lastModified := Self.stringUtil.EMPTY_STRING;
  Self.MINCHAR := 0;
  Self.MINSTORENAMELENGTH := 1;
  Self.MAXCHAR := 255;
  Self.EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
  Self.ONE_EMPTY_STRING_ARRAY := TStringUtil.getInstance().ONE_EMPTY_STRING_ARRAY;
end;
    

constructor TStoreFront.Create;
begin
    inherited Create;
    InitFields;
        Self.contextConfigurationInterface := TContextConfiguration.Create();
end;
    

constructor TStoreFront.Create(request: THttpServletRequest);
begin
    inherited Create;
    InitFields;
        Self.getFormData(TRequestParams.Create(request).toHashMap());
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            Self.logUtil.putF('TWB- needs update for adding and updating context configuration - currently defaults to admin context config', Self, 'StoreFront');
        end;
        Self.setContextConfigurationInterface(TContextConfigurationInterfaceFactory.getInstance().getInstance('Admin'));
end;
    

constructor TStoreFront.Create(hashMap: TJavaHashMap);
var
  domDocumentString: string;
  document: TDocument;
begin
    inherited Create;
    InitFields;
        Self.getFormData(hashMap);
        domDocumentString := string(hashMap.get(TStoreFrontData.getInstance().CONFIGURATION));
        if (domDocumentString) = ('') then begin
            document := TDomDocumentHelper.create_(domDocumentString);
            Self.setContextConfigurationInterface(TContextConfigurationInterfaceFactory.getInstance().getInstance(document));
        end;
end;
    

function TStoreFront.isColumn(columnName: string): Boolean;
begin
        if ((CompareStr(columnName, TStoreFrontData.getInstance().NAME)) = (0)) or ((CompareStr(columnName, TUserData.MAINEMAIL)) = (0)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

// throws Exception
function TStoreFront.createPath(key: string; hashMap: TJavaHashMap): TAbPath;
begin
        Exit(TAbPath.Create(Self.create_(Self.EMPTY_STRING, key, hashMap), TStringUtil.getInstance().EMPTY_STRING));
end;
    

// throws Exception
function TStoreFront.createPath(append: string; key: string; hashMap: TJavaHashMap): TAbPath;
begin
        Exit(TAbPath.Create(Self.create_(append, key, hashMap), TStringUtil.getInstance().EMPTY_STRING));
end;
    

function TStoreFront.get(key: string; hashMap: TJavaHashMap): string;
begin
        Exit(Self.create_(Self.EMPTY_STRING, key, hashMap));
end;
    

function TStoreFront.create_(append: string; key: string; hashMap: TJavaHashMap): string;
var
  path: string;
begin
        path := string(hashMap.get(key));
        if nil.isEmpty(path) then begin
            Exit(Self.EMPTY_STRING);
        end else begin
            if Self.isColumn(path) then begin
                Exit(TJava.ToString(string(hashMap.get(path))) + append);
            end else begin
                Exit(path);
            end;
        end;
end;
    

// throws Exception
procedure TStoreFront.getFormData(storeHashMap: TJavaHashMap);
var
  storeFrontData: TStoreFrontData;
begin
        storeFrontData := TStoreFrontData.getInstance();
        Self.name := string(storeHashMap.get(storeFrontData.NAME));
        Self.basketName := string(storeHashMap.get(storeFrontData.NAME));
        Self.homeHostName := string(storeHashMap.get(storeFrontData.HOMEHOSTNAME));
        Self.homeHostNamePath := Self.createPath(storeFrontData.HOMEHOSTNAMEPATH, storeHashMap);
        Self.hostName := string(storeHashMap.get(storeFrontData.HOSTNAME));
        Self.hostNamePath := Self.createPath(storeFrontData.HOSTNAMEPATH, storeHashMap);
        Self.testHomeHostName := string(storeHashMap.get(storeFrontData.TESTHOMEHOSTNAME));
        Self.testHomeHostNamePath := Self.createPath(storeFrontData.TESTHOMEHOSTNAMEPATH, storeHashMap);
        Self.testHostName := string(storeHashMap.get(storeFrontData.TESTHOSTNAME));
        Self.testHostNamePath := Self.createPath(storeFrontData.TESTHOSTNAMEPATH, storeHashMap);
        Self.imagePath := Self.createPath(TStoreFront.RESOURCES, storeFrontData.IMAGEPATH, storeHashMap);
        Self.staticPath := Self.createPath(' Products' + TJava.ToString(TAbPathData.getInstance().SEPARATOR), storeFrontData.STATICPATH, storeHashMap);
        Self.categoryPath := Self.createPath(TStoreFront.RESOURCES, storeFrontData.CATEGORYPATH, storeHashMap);
        Self.inventoryControl := string(storeHashMap.get(storeFrontData.INVENTORYCONTROL));
        Self.subStores := string(storeHashMap.get(storeFrontData.SUBSTORES));
        Self.tagLocation := string(storeHashMap.get(storeFrontData.TAGLOCATION));
        Self.packageLocation := string(storeHashMap.get(storeFrontData.PACKAGELOCATION));
        Self.ftp := string(storeHashMap.get(storeFrontData.FTP));
        Self.ftpPath := Self.createPath(storeFrontData.FTPPATH, storeHashMap);
        Self.ftpUserName := string(storeHashMap.get(storeFrontData.FTPUSERNAME));
        Self.ftpPassword := string(storeHashMap.get(storeFrontData.FTPPASSWORD));
        Self.testFtp := string(storeHashMap.get(storeFrontData.TESTFTP));
        Self.testFtpPath := Self.createPath(storeFrontData.TESTFTPPATH, storeHashMap);
        Self.testFtpUserName := string(storeHashMap.get(storeFrontData.TESTFTPUSERNAME));
        Self.testFtpPassword := string(storeHashMap.get(storeFrontData.TESTFTPPASSWORD));
        Self.timeCreated := string(storeHashMap.get(TEntryData.getInstance().TIMECREATED));
        Self.lastModified := string(storeHashMap.get(TEntryData.getInstance().LASTMODIFIED));
end;
    

function TStoreFront.isNameValid: Boolean;
var
  isEscapedCharactersContained: Boolean;
  storeNameEscaped: string;
  stringValidationUtil: TObject;
  isSpacesContained: Boolean;
  hashMap: TJavaHashMap;
begin
        if not (nil.isValidRequired(Self.name, Self.MINSTORENAMELENGTH, Self.MAXCHAR)) then begin
            Exit(False);
        end else begin
            isEscapedCharactersContained := False;
            storeNameEscaped := TStringEscapeUtils.escapeHtml3(Self.name);
            if (CompareStr(Self.name, storeNameEscaped)) <> (0) then begin
                isEscapedCharactersContained := True;
            end;
            stringValidationUtil := nil;
            isSpacesContained := False;
            if stringValidationUtil.containsSpaces(Self.name) then begin
                isSpacesContained := True;
            end;
            if (isSpacesContained) or (isEscapedCharactersContained) then begin
                hashMap := TSpecialCharacterUtil.getHashMap();
                hashMap.put([TCommonSeps.getInstance().SPACE], Self.ONE_EMPTY_STRING_ARRAY);
                Self.name := TReplace.Create(hashMap).all(Self.name);
            end;
        end;
        Exit(True);
end;
    

function TStoreFront.isValid: Boolean;
var
  valid: Boolean;
  stringValidationUtil: TObject;
begin
        valid := True;
        valid := Self.isNameValid();
        stringValidationUtil := nil;
        if not (stringValidationUtil.isValidRequired(Self.basketName, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidRequired(Self.homeHostName, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.homeHostNamePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidRequired(Self.hostName, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidRequired(Self.hostNamePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.testHomeHostName, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.testHomeHostNamePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.testHostName, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.testHostNamePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidRequired(Self.imagePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidRequired(Self.staticPath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidRequired(Self.categoryPath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidRequired(Self.inventoryControl, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.subStores, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.tagLocation, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidRequired(Self.packageLocation, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.ftp, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.ftpPath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.ftpUserName, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.ftpPassword, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.testFtp, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.testFtpPath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.testFtpUserName, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil.isValidNotRequired(Self.testFtpPassword, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if (valid) = (True) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TStoreFront.nameValidationInfo: string;
var
  stringValidationUtil: TObject;
  stringBuffer: TStringMaker;
begin
        stringValidationUtil := nil;
        if not (stringValidationUtil.isValidRequired(Self.name, Self.MINCHAR, Self.MAXCHAR)) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Name is invalid. Must be < ');
            stringBuffer.appendint(Self.MAXCHAR);
            stringBuffer.append(' and > 0 characters.<br>');
            Exit(stringBuffer.toString());
        end;
        Exit(Self.EMPTY_STRING);
end;
    

function TStoreFront.validationInfo: string;
var
  stringValidationUtil: TObject;
  stringBuffer: TStringMaker;
begin
        try
            stringValidationUtil := nil;
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.nameValidationInfo());
            if not (stringValidationUtil.isValidRequired(Self.basketName, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Basket name is invalid. Must be < ');
                stringBuffer.appendint(Self.MAXCHAR);
                stringBuffer.append(' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidRequired(Self.homeHostName, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Home host name is invalid. Must be < ');
                stringBuffer.appendint(Self.MAXCHAR);
                stringBuffer.append(' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidNotRequired(Self.homeHostNamePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Home host name path is invalid. Must be < ');
                stringBuffer.appendint(Self.MAXCHAR);
                stringBuffer.append(' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidRequired(Self.hostName, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Host name is invalid. Must be < ');
                stringBuffer.appendint(Self.MAXCHAR);
                stringBuffer.append(' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidRequired(Self.hostNamePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Host name path is invalid. Must be < ');
                stringBuffer.appendint(Self.MAXCHAR);
                stringBuffer.append(' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidNotRequired(Self.testHomeHostName, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Test home host name is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidNotRequired(Self.testHomeHostNamePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Test home host name path is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidNotRequired(Self.testHostName, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Test host name is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidNotRequired(Self.testHostNamePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Test host name path is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidRequired(Self.imagePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Image path is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidRequired(Self.staticPath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Static path is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidRequired(Self.categoryPath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Category path is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidRequired(Self.inventoryControl, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Inventory control is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidNotRequired(Self.subStores, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Sub stores is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidNotRequired(Self.tagLocation, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Tag location is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidRequired(Self.packageLocation, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Package location is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidNotRequired(Self.ftp, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Ftp is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidNotRequired(Self.ftpPath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Ftp path is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidNotRequired(Self.ftpUserName, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Ftp username is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidNotRequired(Self.ftpPassword, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Ftp password is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidNotRequired(Self.testFtp, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Test ftp is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidNotRequired(Self.testFtpPath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Test ftp Path is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidNotRequired(Self.testFtpUserName, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Test ftp username is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil.isValidNotRequired(Self.testFtpPassword, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Test ftp password is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', Self, 'validationInfo()', e);
            end;
            Exit('Error Validating Form');
            end;
        end;
end;
    

function TStoreFront.getTestHtmlPath: string;
begin
        Exit((Torg.allbinary.globals.URLGLOBALS.getTestHtmlPath()) + (Self.getCurrentHostNamePath()));
end;
    

function TStoreFront.getCurrentHostName: string;
var
  location: string;
begin
        location := Self.EMPTY_STRING;
        if Torg.allbinary.globals.URLGLOBALS.isTestingMode() then begin
            location := Self.getTestHostName();
        end else begin
            location := Self.getHostName();
        end;
        Exit(location);
end;
    

function TStoreFront.getCurrentHostNamePath: string;
var
  location: string;
begin
        location := Self.EMPTY_STRING;
        if Torg.allbinary.globals.URLGLOBALS.isTestingMode() then begin
            location := Self.getTestHostNamePath();
        end else begin
            location := Self.getHostNamePath();
        end;
        Exit(location);
end;
    

function TStoreFront.getCurrentHomeHostName: string;
var
  location: string;
begin
        location := Self.EMPTY_STRING;
        if Torg.allbinary.globals.URLGLOBALS.isTestingMode() then begin
            location := Self.getTestHomeHostName();
        end else begin
            location := Self.getHomeHostName();
        end;
        Exit(location);
end;
    

function TStoreFront.getCurrentHomeHostNamePath: string;
var
  location: string;
begin
        location := Self.EMPTY_STRING;
        if Torg.allbinary.globals.URLGLOBALS.isTestingMode() then begin
            location := Self.getTestHomeHostNamePath();
        end else begin
            location := Self.getHomeHostNamePath();
        end;
        Exit(location);
end;
    

function TStoreFront.getName: string;
begin
        Exit(Self.name);
end;
    

function TStoreFront.getBasketName: string;
begin
        Exit(Self.basketName);
end;
    

function TStoreFront.getHomeHostName: string;
begin
        Exit(Self.homeHostName);
end;
    

function TStoreFront.getHomeHostNamePath: string;
begin
        Exit(Self.homeHostNamePath.toString());
end;
    

function TStoreFront.getHostName: string;
begin
        Exit(Self.hostName);
end;
    

function TStoreFront.getHostNamePath: string;
begin
        Exit(Self.hostNamePath.toString());
end;
    

function TStoreFront.getTestHomeHostName: string;
begin
        Exit(Self.testHomeHostName);
end;
    

function TStoreFront.getTestHomeHostNamePath: string;
begin
        Exit(Self.testHomeHostNamePath.toString());
end;
    

function TStoreFront.getTestHostName: string;
begin
        Exit(Self.testHostName);
end;
    

function TStoreFront.getTestHostNamePath: string;
begin
        Exit(Self.testHostNamePath.toString());
end;
    

function TStoreFront.getStaticPath: string;
begin
        Exit(Self.staticPath.toString());
end;
    

function TStoreFront.getCategoryPath: string;
begin
        Exit(Self.categoryPath.toString());
end;
    

function TStoreFront.getInventoryControl: string;
begin
        Exit(Self.inventoryControl);
end;
    

// throws Exception
function TStoreFront.getSubStores: TBasicArrayList;
var
  tokenizer: TTokenizer;
  subStoreVector: TBasicArrayList;
begin
        try
            tokenizer := TTokenizer.Create(TCommonSeps.getInstance().SEMICOLON);
            subStoreVector := tokenizer.getTokensFromString(Self.subStores, TBasicArrayListD.Create());
            Exit(subStoreVector);
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

function TStoreFront.getTagLocation: string;
begin
        Exit(Self.tagLocation);
end;
    

function TStoreFront.getPackageLocation: string;
begin
        Exit(Self.packageLocation);
end;
    

function TStoreFront.getFtp: string;
begin
        Exit(Self.ftp);
end;
    

function TStoreFront.getFtpUserName: string;
begin
        Exit(Self.ftpUserName);
end;
    

function TStoreFront.getFtpPassword: string;
begin
        Exit(Self.ftpPassword);
end;
    

function TStoreFront.getTestFtp: string;
begin
        Exit(Self.testFtp);
end;
    

function TStoreFront.getTestFtpUserName: string;
begin
        Exit(Self.testFtpUserName);
end;
    

function TStoreFront.getTestFtpPassword: string;
begin
        Exit(Self.testFtpPassword);
end;
    

function TStoreFront.getFtpPath: string;
begin
        Exit(Self.ftpPath.toString());
end;
    

function TStoreFront.getTestFtpPath: string;
begin
        Exit(Self.testFtpPath.toString());
end;
    

function TStoreFront.getTimeCreated: string;
begin
        Exit(Self.timeCreated);
end;
    

function TStoreFront.getLastModified: string;
begin
        Exit(Self.lastModified);
end;
    

procedure TStoreFront.setName(value: string);
begin
        Self.name := value;
end;
    

procedure TStoreFront.setBasketName(value: string);
begin
        Self.basketName := value;
end;
    

procedure TStoreFront.setHomeHostName(value: string);
begin
        Self.homeHostName := value;
end;
    

// throws Exception
procedure TStoreFront.setHomeHostNamePath(value: string);
begin
        Self.homeHostNamePath := TAbPath.Create(value, TStringUtil.getInstance().EMPTY_STRING);
end;
    

procedure TStoreFront.setHostName(value: string);
begin
        Self.hostName := value;
end;
    

// throws Exception
procedure TStoreFront.setHostNamePath(value: string);
begin
        Self.hostNamePath := TAbPath.Create(value, TStringUtil.getInstance().EMPTY_STRING);
end;
    

procedure TStoreFront.setTestHomeHostName(value: string);
begin
        Self.testHomeHostName := value;
end;
    

// throws Exception
procedure TStoreFront.setTestHomeHostNamePath(value: string);
begin
        Self.testHomeHostNamePath := TAbPath.Create(value, TStringUtil.getInstance().EMPTY_STRING);
end;
    

procedure TStoreFront.setTestHostName(value: string);
begin
        Self.testHostName := value;
end;
    

// throws Exception
procedure TStoreFront.setTestHostNamePath(value: string);
begin
        Self.testHostNamePath := TAbPath.Create(value, TStringUtil.getInstance().EMPTY_STRING);
end;
    

// throws Exception
procedure TStoreFront.setImagePath(value: string);
begin
        Self.imagePath := TAbPath.Create(value, TStringUtil.getInstance().EMPTY_STRING);
end;
    

// throws Exception
procedure TStoreFront.setStaticPath(value: string);
begin
        Self.staticPath := TAbPath.Create(value, TStringUtil.getInstance().EMPTY_STRING);
end;
    

// throws Exception
procedure TStoreFront.setCategoryPath(value: string);
begin
        Self.categoryPath := TAbPath.Create(value, TStringUtil.getInstance().EMPTY_STRING);
end;
    

procedure TStoreFront.setSubStores(value: string);
begin
        Self.subStores := value;
end;
    

procedure TStoreFront.setTagLocation(value: string);
begin
        Self.tagLocation := value;
end;
    

procedure TStoreFront.setPackageLocation(value: string);
begin
        Self.packageLocation := value;
end;
    

procedure TStoreFront.setInventoryControl(value: string);
begin
        Self.inventoryControl := value;
end;
    

procedure TStoreFront.getPackageLocation(value: string);
begin
        Self.packageLocation := value;
end;
    

procedure TStoreFront.setFtp(value: string);
begin
        Self.ftp := value;
end;
    

procedure TStoreFront.setFtpUserName(value: string);
begin
        Self.ftpUserName := value;
end;
    

procedure TStoreFront.setFtpPassword(value: string);
begin
        Self.ftpPassword := value;
end;
    

procedure TStoreFront.setTestFtp(value: string);
begin
        Self.testFtp := value;
end;
    

procedure TStoreFront.setTestFtpUserName(value: string);
begin
        Self.testFtpUserName := value;
end;
    

procedure TStoreFront.setTestFtpPassword(value: string);
begin
        Self.testFtpPassword := value;
end;
    

procedure TStoreFront.setTimeCreated(value: string);
begin
        Self.timeCreated := value;
end;
    

procedure TStoreFront.setLastModified(value: string);
begin
        Self.lastModified := value;
end;
    

// throws Exception
procedure TStoreFront.setFtpPath(value: string);
begin
        Self.ftpPath := TAbPath.Create(value, TStringUtil.getInstance().EMPTY_STRING);
end;
    

// throws Exception
procedure TStoreFront.setTestFtpPath(value: string);
begin
        Self.testFtpPath := TAbPath.Create(value, TStringUtil.getInstance().EMPTY_STRING);
end;
    

// throws Exception
function TStoreFront.createDirectories: Boolean;
var
  storeAbPath: TAbPath;
begin
        storeAbPath := TAbPath.Create((URLGLOBALS.getWebappPath()) + (Self.getCurrentHomeHostNamePath()), TStringUtil.getInstance().EMPTY_STRING);
        if not (Self.directory.create_(storeAbPath)) then begin
            Exit(False);
        end;
        if not (Self.directory.create_(TAbPath.Create((storeAbPath) + (Self.getCategoryPath()), TStringUtil.getInstance().EMPTY_STRING))) then begin
            Exit(False);
        end;
        if not (Self.directory.create_(TAbPath.Create((storeAbPath) + (Self.getStaticPath()), TStringUtil.getInstance().EMPTY_STRING))) then begin
            Exit(False);
        end;
        Exit(True);
end;
    

// throws Exception
procedure TStoreFront.install(current: Integer; total: Integer);
var
  stringBuffer: TStringMaker;
  viewPath: string;
  fromDirectoryAbPath: TAbPath;
  fromSpecialDirectoryAbPath: TAbPath;
  toDirectoryAbPath: TAbPath;
  viewTotal: Integer;
  installTotal: Integer;
  file_: TAbFile;
  halfViewTotal: Integer;
begin
        try
            if not (Self.createDirectories()) then begin
                raise SysUtils.Exception.Create('Unable to create store directories');
            end;
            stringBuffer := TStringMaker.Create();
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(URLGLOBALS.getMainPath());
            stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH);
            viewPath := stringBuffer.toString();
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(viewPath);
            stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().INSTALLPATH);
            fromDirectoryAbPath := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(viewPath);
            stringBuffer.append('special');
            stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
            fromSpecialDirectoryAbPath := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(viewPath);
            stringBuffer.append(Self.getName());
            stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
            toDirectoryAbPath := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
            if (current) = (0) then begin
                if not (Self.directory.create_(toDirectoryAbPath)) then begin
                    raise SysUtils.Exception.Create('Unable to create store view directory: ' + toDirectoryAbPath.toString());
                end;
            end;
            viewTotal := (((total) * (85))) div (100);
            installTotal := (((total) * (93))) div (100);
            if (current) < (viewTotal) then begin
                file_ := TAbFile.createAbFileFromAbPath(fromSpecialDirectoryAbPath);
                if file_.isDirectory() then begin
                    halfViewTotal := (viewTotal) div (2);
                    if (current) < (halfViewTotal) then begin
                        Self.installViews(fromSpecialDirectoryAbPath, toDirectoryAbPath, current, halfViewTotal);
                    end else if (current) < (viewTotal) then begin
                        Self.installViews(fromDirectoryAbPath, toDirectoryAbPath, (current) - (halfViewTotal), (viewTotal) - (halfViewTotal));
                    end;
                end else begin
                    Self.installViews(fromDirectoryAbPath, toDirectoryAbPath, current, viewTotal);
                end;
            end else if (current) < (installTotal) then begin
                Self.installResources(fromDirectoryAbPath, (current) - (viewTotal), (installTotal) - (viewTotal));
            end else begin
                Self.installMedia(fromDirectoryAbPath, (current) - (installTotal), (total) - (installTotal));
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'install()', e);
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
procedure TStoreFront.installViews(fromDirectoryAbPath: TAbPath; toDirectoryAbPath: TAbPath; current: Integer; total: Integer);
begin
        TFileUtil.getInstance().copyDirectoryPortion(fromDirectoryAbPath, toDirectoryAbPath, True, False, current, total);
end;
    

// throws Exception
procedure TStoreFront.installResources(fromDirectoryAbPath: TAbPath; current: Integer; total: Integer);
var
  stringBuffer: TStringMaker;
  installCategoryAbPath: TAbPath;
  categoryAbPath: TAbPath;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(fromDirectoryAbPath.toString());
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        stringBuffer.append('Resources');
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        installCategoryAbPath := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(URLGLOBALS.getMainPath());
        stringBuffer.append(Self.getCurrentHomeHostNamePath());
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        stringBuffer.append(Self.getCategoryPath());
        categoryAbPath := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
        TFileUtil.getInstance().copyDirectoryPortion(installCategoryAbPath, categoryAbPath, True, False, current, total);
end;
    

// throws Exception
procedure TStoreFront.installMedia(fromDirectoryAbPath: TAbPath; current: Integer; total: Integer);
var
  stringBuffer: TStringMaker;
  viewStoreImagesDirectoryAbPath: TAbPath;
  storeAbPath: TAbPath;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(fromDirectoryAbPath.toString());
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().TEMPLATEPATH);
        stringBuffer.append('images');
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        viewStoreImagesDirectoryAbPath := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
        storeAbPath := TAbPath.Create((URLGLOBALS.getWebappPath()) + (Self.getCurrentHomeHostNamePath()), TStringUtil.getInstance().EMPTY_STRING);
        TFileUtil.getInstance().copyDirectoryPortion(viewStoreImagesDirectoryAbPath, storeAbPath, True, False, current, total);
end;
    

// throws Exception
function TStoreFront.toVector: TBasicArrayList;
var
  dataVector: TBasicArrayList;
  contextConfigurationDomDocumentMapping: TContextConfigurationDomDocumentMapping;
  calendar: TDateTime;
  time: string;
begin
        dataVector := TBasicArrayListD.Create();
        dataVector.add(TJava.BoxString(Self.name));
        dataVector.add(TJava.BoxString(Self.homeHostName));
        dataVector.add(TJava.BoxString(Self.homeHostNamePath.toString()));
        dataVector.add(TJava.BoxString(Self.hostName));
        dataVector.add(TJava.BoxString(Self.hostNamePath.toString()));
        dataVector.add(TJava.BoxString(Self.testHomeHostName));
        dataVector.add(TJava.BoxString(Self.testHomeHostNamePath.toString()));
        dataVector.add(TJava.BoxString(Self.testHostName));
        dataVector.add(TJava.BoxString(Self.testHostNamePath.toString()));
        dataVector.add(TJava.BoxString(Self.imagePath.toString()));
        dataVector.add(TJava.BoxString(Self.staticPath.toString()));
        dataVector.add(TJava.BoxString(Self.categoryPath.toString()));
        dataVector.add(TJava.BoxString(Self.inventoryControl));
        contextConfigurationDomDocumentMapping := TContextConfigurationDomDocumentMapping.Create(Self.getContextConfigurationInterface());
        dataVector.add(contextConfigurationDomDocumentMapping.toDomDocumentString());
        dataVector.add(TJava.BoxString(Self.subStores));
        dataVector.add(TJava.BoxString(Self.tagLocation));
        dataVector.add(TJava.BoxString(Self.packageLocation));
        dataVector.add(TJava.BoxString(Self.ftp));
        dataVector.add(TJava.BoxString(Self.ftpPath.toString()));
        dataVector.add(TJava.BoxString(Self.ftpUserName));
        dataVector.add(TJava.BoxString(Self.ftpPassword));
        dataVector.add(TJava.BoxString(Self.testFtp));
        dataVector.add(TJava.BoxString(Self.testFtpPath.toString()));
        dataVector.add(TJava.BoxString(Self.testFtpUserName));
        dataVector.add(TJava.BoxString(Self.testFtpPassword));
        calendar := Now;
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        dataVector.add(TJava.BoxString(time));
        dataVector.add(TJava.BoxString(time));
        Exit(dataVector);
end;
    

// throws Exception
function TStoreFront.toHashMap: TJavaHashMap;
var
  storeFrontData: TStoreFrontData;
  dataHashMap: TJavaHashMap;
  contextConfigurationDomDocumentMapping: TContextConfigurationDomDocumentMapping;
  calendar: TDateTime;
  time: string;
begin
        storeFrontData := TStoreFrontData.getInstance();
        dataHashMap := TStdUtil.getInstance().createHashMap();
        dataHashMap.put(storeFrontData.NAME, Self.name);
        dataHashMap.put(storeFrontData.HOMEHOSTNAME, Self.homeHostName);
        dataHashMap.put(storeFrontData.HOMEHOSTNAMEPATH, Self.homeHostNamePath.toString());
        dataHashMap.put(storeFrontData.HOSTNAME, Self.hostName);
        dataHashMap.put(storeFrontData.HOSTNAMEPATH, Self.hostNamePath.toString());
        dataHashMap.put(storeFrontData.TESTHOMEHOSTNAME, Self.testHomeHostName);
        dataHashMap.put(storeFrontData.TESTHOMEHOSTNAMEPATH, Self.testHomeHostNamePath.toString());
        dataHashMap.put(storeFrontData.TESTHOSTNAME, Self.testHostName);
        dataHashMap.put(storeFrontData.TESTHOSTNAMEPATH, Self.testHostNamePath.toString());
        dataHashMap.put(storeFrontData.IMAGEPATH, Self.imagePath.toString());
        dataHashMap.put(storeFrontData.STATICPATH, Self.staticPath.toString());
        dataHashMap.put(storeFrontData.CATEGORYPATH, Self.categoryPath.toString());
        dataHashMap.put(storeFrontData.INVENTORYCONTROL, Self.inventoryControl);
        contextConfigurationDomDocumentMapping := TContextConfigurationDomDocumentMapping.Create(Self.getContextConfigurationInterface());
        dataHashMap.put(storeFrontData.CONFIGURATION, contextConfigurationDomDocumentMapping.toDomDocumentString());
        dataHashMap.put(storeFrontData.SUBSTORES, Self.subStores);
        dataHashMap.put(storeFrontData.TAGLOCATION, Self.tagLocation);
        dataHashMap.put(storeFrontData.PACKAGELOCATION, Self.packageLocation);
        dataHashMap.put(storeFrontData.FTP, Self.ftp);
        dataHashMap.put(storeFrontData.FTPPATH, Self.ftpPath.toString());
        dataHashMap.put(storeFrontData.FTPUSERNAME, Self.ftpUserName);
        dataHashMap.put(storeFrontData.FTPPASSWORD, Self.ftpPassword);
        dataHashMap.put(storeFrontData.TESTFTP, Self.testFtp);
        dataHashMap.put(storeFrontData.TESTFTPPATH, Self.testFtpPath.toString());
        dataHashMap.put(storeFrontData.TESTFTPUSERNAME, Self.testFtpUserName);
        dataHashMap.put(storeFrontData.TESTFTPPASSWORD, Self.testFtpPassword);
        calendar := Now;
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        dataHashMap.put(TEntryData.getInstance().LASTMODIFIED, time);
        Exit(dataHashMap);
end;
    

function TStoreFront.getKey: TObject;
begin
        Exit(TObject(Self.getName()));
end;
    

function TStoreFront.getContextConfigurationInterface: IContextConfigurationInterface;
begin
        Exit(Self.contextConfigurationInterface);
end;
    

procedure TStoreFront.setContextConfigurationInterface(contextConfigurationInterface: IContextConfigurationInterface);
begin
        Self.contextConfigurationInterface := contextConfigurationInterface;
end;

initialization
  TStoreFront.RESOURCES := ' Resources' + TJava.ToString(TAbPathData.getInstance().SEPARATOR);

end.

