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
// package org.allbinary.business.category
unit Category;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, BasicArrayList, BasicArrayListD, CategoryHierarchy, CategoryHierarchyInterface, CategoryPropertiesFactoryInterface, CategoryPropertiesInterface, RootCategoryPropertiesInterface, StdUtil, LogUtil, AbPath, StringMaker, StringUtil, CommonStrings, Document, Node, CategoryInterface;

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

  TCategory = class(TInterfacedObject, ICategoryInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    categoryHierarchyInterface: ICategoryHierarchyInterface;
    categoryPropertiesInterface: ICategoryPropertiesInterface;
    childCategoryVector: TBasicArrayList;
    typeVector: TBasicArrayList;
    PROPERTIES: Integer;
    CATEGORY: Integer;
    class var NOT_ROOT: string;
    procedure InitFields;
        constructor Create(categoryPropertiesFactoryInterface: ICategoryPropertiesFactoryInterface); overload;
        constructor Create(categoryPropertiesFactoryInterface: ICategoryPropertiesFactoryInterface; level: Integer); overload;
        constructor Create(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryPropertiesFactoryInterface: ICategoryPropertiesFactoryInterface); overload;
        function getKey: TObject; virtual;
        function getRootFilePath: TAbPath; virtual;
        function getFilePath: TAbPath; virtual;
        function getWebAppPath: TAbPath; virtual;
        function getPath: TAbPath; virtual;
        function addChildProperty(categoryPropertiesInterface: ICategoryPropertiesInterface): Boolean; virtual;
        function addChild(categoryInterface: ICategoryInterface): Boolean; virtual;
        function getChildNodes: TBasicArrayList; virtual;
        function removeChild(categoryInterface: ICategoryInterface): Boolean; virtual;
        procedure removal(removalVector: TBasicArrayList);
        function removeDuplicateChild(categoryInterface: ICategoryInterface): Boolean;
        function isLeaf: Boolean; virtual;
        function getProperties: ICategoryPropertiesInterface; virtual;
        procedure setProperties(categoryPropertiesInterface: ICategoryPropertiesInterface); virtual;
        function getHierarchy: ICategoryHierarchyInterface; virtual;
        procedure setHierarchy(categoryHierarchyInterface: ICategoryHierarchyInterface); virtual;
        function isValid: Boolean; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document: TDocument): TNode; virtual;
        function validationInfo: string; virtual;
        function toHashMap: TJavaHashMap; virtual;
        function toVector: TBasicArrayList; virtual;
        procedure log; virtual;
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


procedure TCategory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  Self.childCategoryVector := TBasicArrayListD.Create();
  Self.typeVector := TBasicArrayListD.Create();
  Self.PROPERTIES := 1;
  Self.CATEGORY := 0;
end;
    

constructor TCategory.Create(categoryPropertiesFactoryInterface: ICategoryPropertiesFactoryInterface);
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
            Self.logUtil.putF(Self.commonStrings.CONSTRUCTOR_, Self, 'Category(CategoryPropertiesFactoryInterface)');
        end;
        Self.categoryPropertiesInterface := categoryPropertiesFactoryInterface.getInstance();
        Self.categoryHierarchyInterface := ICategoryHierarchyInterface(Pointer(TCategoryHierarchy.Create(Self, Self)));
        Self.log();
end;
    

constructor TCategory.Create(categoryPropertiesFactoryInterface: ICategoryPropertiesFactoryInterface; level: Integer);
begin
    inherited Create;
    InitFields;
        Self.categoryPropertiesInterface := categoryPropertiesFactoryInterface.getInstance();
        Self.categoryHierarchyInterface := ICategoryHierarchyInterface(Pointer(TCategoryHierarchy.Create(Self, Self, level)));
        Self.log();
end;
    

constructor TCategory.Create(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryPropertiesFactoryInterface: ICategoryPropertiesFactoryInterface);
begin
    inherited Create;
    InitFields;
        Self.categoryPropertiesInterface := ICategoryPropertiesInterface(Pointer(categoryPropertiesFactoryInterface.getInstance()));
        Self.categoryHierarchyInterface := ICategoryHierarchyInterface(Pointer(TCategoryHierarchy.Create(rootCategoryInterface, parentCategoryInterface)));
        Self.log();
end;
    

// throws Exception
function TCategory.getKey: TObject;
begin
        Exit(Self.categoryPropertiesInterface.getKey());
end;
    

// throws Exception
function TCategory.getRootFilePath: TAbPath;
var
  rootAbPath: TAbPath;
  categoryInterface: ICategoryInterface;
  rootCategoryPropertiesInterface: IRootCategoryPropertiesInterface;
begin
        rootAbPath := TAbPath.Create(TCategory.NOT_ROOT, TStringUtil.getInstance().EMPTY_STRING);
        categoryInterface := Self.categoryHierarchyInterface.getRoot();
        if categoryInterface.getProperties().isRoot() then begin
            rootCategoryPropertiesInterface := IRootCategoryPropertiesInterface(Pointer(categoryInterface.getProperties()));
            rootAbPath := rootCategoryPropertiesInterface.getRootFilePath();
        end;
        Exit(rootAbPath);
end;
    

// throws Exception
function TCategory.getFilePath: TAbPath;
begin
        Exit(TAbPath.Create(Self.getRootFilePath().toString() + Self.getProperties().getPath(Self.getHierarchy()).toString(), Self.getProperties().getFileName()));
end;
    

// throws Exception
function TCategory.getWebAppPath: TAbPath;
var
  categoryInterface: ICategoryInterface;
begin
        categoryInterface := Self.categoryHierarchyInterface.getRoot();
        Exit(categoryInterface.getProperties().getWebAppPath());
end;
    

// throws Exception
function TCategory.getPath: TAbPath;
begin
        Exit(Self.categoryPropertiesInterface.getPath(Self.categoryHierarchyInterface));
end;
    

function TCategory.addChildProperty(categoryPropertiesInterface: ICategoryPropertiesInterface): Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Self.typeVector.add(Self.PROPERTIES);
        Exit(Self.childCategoryVector.add(TObject(Pointer(categoryPropertiesInterface))));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TCategory.addChild(categoryInterface: ICategoryInterface): Boolean;
var
  childCategoryHierarchyInterface: ICategoryHierarchyInterface;
begin
    TJava.MonitorEnter(Self);
    try
        Self.removeDuplicateChild(categoryInterface);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
            Self.logUtil.putF('adding', Self, 'addChild');
        end;
        childCategoryHierarchyInterface := categoryInterface.getHierarchy();
        childCategoryHierarchyInterface.setParent(Self);
        childCategoryHierarchyInterface.setRoot(Self.getHierarchy().getRoot());
        categoryInterface.setHierarchy(childCategoryHierarchyInterface);
        Self.typeVector.add(Self.CATEGORY);
        Exit(Self.childCategoryVector.add(TObject(Pointer(categoryInterface))));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TCategory.getChildNodes: TBasicArrayList;
begin
        Exit(Self.childCategoryVector);
end;
    

function TCategory.removeChild(categoryInterface: ICategoryInterface): Boolean;
var
  removalVector: TBasicArrayList;
  bool_return: Boolean;
  size: Integer;
  anyType: TObject;
  currentCategoryInterface: ICategoryInterface;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        removalVector := TBasicArrayListD.Create();
        bool_return := False;
        size := Self.childCategoryVector.size();
        for index := 0 to size - 1 do begin
            if (Self.CATEGORY) = (Self.typeVector.get(index)) then begin
                anyType := Self.childCategoryVector.get(index);
                currentCategoryInterface := ICategoryInterface(Pointer(anyType));
                if (currentCategoryInterface.getProperties().getValue().compareTo(categoryInterface.getProperties().getValue())) = (0) then begin
                    removalVector.add(TObject(Pointer(currentCategoryInterface)));
                    bool_return := True;
                end;
            end;
        end;
        Self.removal(removalVector);
        Exit(bool_return);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TCategory.removal(removalVector: TBasicArrayList);
var
  removalSize: Integer;
  anyType: TObject;
  objectIndex: Integer;
  index: Integer;
begin
        removalSize := removalVector.size();
        for index := 0 to removalSize - 1 do begin
            anyType := removalVector.get(index);
            objectIndex := Self.childCategoryVector.indexOf(anyType);
            Self.typeVector.remove(objectIndex);
            Self.childCategoryVector.remove(objectIndex);
        end;
end;
    

function TCategory.removeDuplicateChild(categoryInterface: ICategoryInterface): Boolean;
var
  removalVector: TBasicArrayList;
  bool_return: Boolean;
  size: Integer;
  anyType: TObject;
  existingCategoryInterface: ICategoryInterface;
  categoryPropertiesInterface: ICategoryPropertiesInterface;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        removalVector := TBasicArrayListD.Create();
        bool_return := False;
        size := Self.childCategoryVector.size();
        for index := 0 to size - 1 do begin
            anyType := Self.childCategoryVector.get(index);
            if (Self.PROPERTIES) = (Self.typeVector.get(index)) then begin
                categoryPropertiesInterface := ICategoryPropertiesInterface(Pointer(anyType));
                if (categoryInterface.getProperties().getValue().compareTo(categoryPropertiesInterface.getValue())) = (0) then begin
                    removalVector.add(TObject(Pointer(categoryPropertiesInterface)));
                    bool_return := True;
                    Break;
                end;
            end else if (Self.CATEGORY) = (Self.typeVector.get(index)) then begin
                existingCategoryInterface := ICategoryInterface(Pointer(anyType));
                categoryPropertiesInterface := existingCategoryInterface.getProperties();
                if (categoryInterface.getProperties().getValue().compareTo(categoryPropertiesInterface.getValue())) = (0) then begin
                    removalVector.add(TObject(Pointer(existingCategoryInterface)));
                    bool_return := True;
                    Break;
                end;
            end;
        end;
        Self.removal(removalVector);
        Exit(bool_return);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
function TCategory.isLeaf: Boolean;
begin
        if (Self.childCategoryVector) = (nil) then begin
            raise SysUtils.Exception.Create('Category Error');
        end;
        if (Self.childCategoryVector.size()) = (0) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TCategory.getProperties: ICategoryPropertiesInterface;
begin
        Exit(Self.categoryPropertiesInterface);
end;
    

procedure TCategory.setProperties(categoryPropertiesInterface: ICategoryPropertiesInterface);
begin
        Self.categoryPropertiesInterface := categoryPropertiesInterface;
end;
    

function TCategory.getHierarchy: ICategoryHierarchyInterface;
begin
        Exit(Self.categoryHierarchyInterface);
end;
    

procedure TCategory.setHierarchy(categoryHierarchyInterface: ICategoryHierarchyInterface);
begin
        Self.categoryHierarchyInterface := categoryHierarchyInterface;
end;
    

// throws Exception
function TCategory.isValid: Boolean;
var
  size: Integer;
  anyType: TObject;
  categoryInterface: ICategoryInterface;
  categoryPropertiesInterface: ICategoryPropertiesInterface;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        if not (Self.categoryPropertiesInterface.isValid().booleanValue()) then begin
            Exit(False);
        end;
        size := Self.childCategoryVector.size();
        for index := 0 to size - 1 do begin
            anyType := Self.childCategoryVector.get(index);
            if (Self.PROPERTIES) = (Self.typeVector.get(index)) then begin
                categoryPropertiesInterface := ICategoryPropertiesInterface(Pointer(anyType));
                if not (categoryPropertiesInterface.isValid().booleanValue()) then begin
                    Exit(False);
                end;
            end else if (Self.CATEGORY) = (Self.typeVector.get(index)) then begin
                categoryInterface := ICategoryInterface(Pointer(anyType));
                if not (categoryInterface.isValid().booleanValue()) then begin
                    Exit(False);
                end;
            end;
        end;
        Exit(True);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
function TCategory.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

// throws Exception
function TCategory.toValidationInfoNode(document: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TCategory.validationInfo: string;
begin
        Exit(nil);
end;
    

// throws Exception
function TCategory.toHashMap: TJavaHashMap;
var
  categoryHashMap: TJavaHashMap;
begin
        categoryHashMap := Self.categoryPropertiesInterface.toHashMap();
        Exit(categoryHashMap);
end;
    

// throws Exception
function TCategory.toVector: TBasicArrayList;
var
  categoryVector: TBasicArrayList;
begin
        categoryVector := Self.categoryPropertiesInterface.toVector();
        categoryVector.add(Self.childCategoryVector);
        Exit(categoryVector);
end;
    

// throws Exception
procedure TCategory.log;
var
  stringBuffer: TStringMaker;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Category Name: ');
            stringBuffer.append(Self.categoryPropertiesInterface.getValue());
            stringBuffer.append(''#10'Path = ');
            stringBuffer.append(Self.getPath().toString());
            stringBuffer.append(''#10'File Path: ');
            stringBuffer.append(Self.getFilePath().toString());
            Self.logUtil.putF(stringBuffer.toString(), Self, 'log()');
        end;
end;

initialization
  TCategory.NOT_ROOT := 'This is not the root so it has no file path.';

end.

