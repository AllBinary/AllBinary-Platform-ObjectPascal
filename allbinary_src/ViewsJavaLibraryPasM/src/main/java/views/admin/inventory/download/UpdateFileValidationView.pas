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
// package views.admin.inventory.download
unit UpdateFileValidationView;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, StoreFrontFactory, StoreFrontInterface, BasicItemData, BasicItemValidation, DownloadItemData, DownloadableItem, DownloadableItemValidation, MoneyException, InventoryEntity, InventoryEntityFactory, GLOBALS2, URLGLOBALS, HttpFileUploadUtil, LogUtil, ValidationComponentInterface, AbFile, FileData, StringMaker, StringUtil, TransformInfoInterface, CommonStrings, FileItem, Document, Node, DownloadableInventoryItemView;

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

  TUpdateFileValidationView = class(TDownloadableInventoryItemView, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    procedure InitFields;
        constructor Create(transformInfoInterface: ITransformInfoInterface);
        function isValid: Boolean; overload; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document: TDocument): TNode; virtual;
        function validationInfo: string; overload; virtual;
        function isValid(fileName: string; size: Int64): Boolean; overload;
        procedure validationInfo(stringBuffer: TStringMaker; fileName: string; size: Int64); overload;
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


procedure TUpdateFileValidationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;
    

constructor TUpdateFileValidationView.Create(transformInfoInterface: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface);
        InitFields;
end;
    

function TUpdateFileValidationView.isValid: Boolean;
var
  command: string;
  inventoryEntity: TInventoryEntity;
  storeFrontInterface: IStoreFrontInterface;
  fullCategory: string;
  categoryFile: TAbFile;
  downloadableFileObject: TObject;
  fileItem: TFileItem;
  fileName: string;
  size: Int64;
  licenseFileObject: TObject;
  extraFilesObject: TObject;
  hashMap: TJavaHashMap;
  licenseObject: TObject;
  fileObject: TObject;
  downloadableItemValidation: TDownloadableItemValidation;
begin
        try
            command := string(Self.getRequestHashMap().get(GLOBALS2.ADMINCOMMAND));
            if (nil.isEmpty(command)) or ((CompareStr(command, Self.commonStrings.UPDATE)) <> (0)) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('Invalid AdminCommand=' + command, Self, Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            try
                inventoryEntity := TInventoryEntityFactory.getInstance().getInventoryEntityInstance();
                Self.itemInterface := inventoryEntity.getItem(Self.id);
            except
                on e: TMoneyException do begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.put('Existing Item With MoneyException', Self, Self.commonStrings.IS_VALID, e);
                end;
                end;
            end;
            if (Self.itemInterface) = (nil) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('Item Does Not Exist', Self, Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            if (TBasicItemValidation.Create(Self.itemInterface).isValid()) = (False) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('BasicItem is not valid', Self, Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            storeFrontInterface := TStoreFrontFactory.getInstance(Self.getWeblisketSession().getStoreName());
            fullCategory := TStringMaker.Create().append(URLGLOBALS.getWebappPath()).append(storeFrontInterface.getCurrentHostNamePath()).append(Self.itemInterface.getCategory()).toString();
            categoryFile := TAbFile.createAbFile(fullCategory);
            if not (categoryFile.isDirectory()) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('Category Does Not Exist: ' + fullCategory, Self, Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            downloadableFileObject := Self.getRequestHashMap().get(TDownloadItemData.FILE_);
            if THttpFileUploadUtil.getInstance().isValid(downloadableFileObject) then begin
                fileItem := TFileItem(downloadableFileObject);
                fileName := fileItem.getName();
                size := fileItem.getSize();
                THttpFileUploadUtil.log(fileItem);
                if (Self.isValid(fileName, size)) = (False) then begin
                    Exit(False);
                end else begin
                    Self.processFile(fileItem);
                    Self.getRequestHashMap().put(TDownloadItemData.SIZE, IntToStr(size));
                end;
            end else begin
                Self.getRequestHashMap().remove(TDownloadItemData.FILE_);
            end;
            licenseFileObject := Self.getRequestHashMap().get(TDownloadItemData.LICENSE_FILE);
            if THttpFileUploadUtil.getInstance().isValid(licenseFileObject) then begin
                fileItem := TFileItem(licenseFileObject);
                fileName := fileItem.getName();
                size := fileItem.getSize();
                THttpFileUploadUtil.log(fileItem);
                if (Self.isValid(fileName, size)) = (False) then begin
                end else begin
                    Self.processFile(fileItem);
                end;
            end else begin
                Self.getRequestHashMap().remove(TDownloadItemData.LICENSE_FILE);
            end;
            extraFilesObject := Self.getRequestHashMap().get(TDownloadItemData.EXTRA_FILES);
            if THttpFileUploadUtil.getInstance().isValid(extraFilesObject) then begin
                fileItem := TFileItem(extraFilesObject);
                fileName := fileItem.getName();
                size := fileItem.getSize();
                THttpFileUploadUtil.log(fileItem);
                if (Self.isValid(fileName, size)) = (False) then begin
                end else begin
                    Self.processFile(fileItem);
                    Self.unzip(fileItem);
                end;
            end else begin
                Self.getRequestHashMap().remove(TDownloadItemData.EXTRA_FILES);
            end;
            hashMap := Self.getRequestHashMap();
            hashMap.put(Self.basicItemData.ID, Self.itemInterface.getId());
            licenseObject := hashMap.get(TDownloadItemData.LICENSE_FILE);
            if (licenseObject) <> (nil) then begin
                hashMap.put(TDownloadItemData.LICENSE_FILE, (TFileItem(licenseObject)).getName());
            end else begin
                hashMap.put(TDownloadItemData.LICENSE_FILE, TStringUtil.getInstance().EMPTY_STRING);
            end;
            fileObject := hashMap.get(TDownloadItemData.FILE_);
            if (fileObject) <> (nil) then begin
                hashMap.put(TDownloadItemData.FILE_, (TFileItem(fileObject)).getName());
            end else begin
                hashMap.put(TDownloadItemData.FILE_, TStringUtil.getInstance().EMPTY_STRING);
            end;
            Self.downloadableItem := TDownloadableItem.Create(hashMap);
            downloadableItemValidation := TDownloadableItemValidation.Create(Self.downloadableItem);
            if (downloadableItemValidation.isValid()) = (False) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF('DownloadableItem is not valid', Self, Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Exception in validation', Self, Self.commonStrings.IS_VALID, e);
            end;
            Exit(False);
            end;
        end;
end;
    

function TUpdateFileValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TUpdateFileValidationView.toValidationInfoNode(document: TDocument): TNode;
begin
        Exit(nil);
end;
    

function TUpdateFileValidationView.validationInfo: string;
var
  stringBuffer: TStringMaker;
  command: string;
  ITEM_NOT_FOUND: string;
  basicItemValidation: TBasicItemValidation;
  storeFrontInterface: IStoreFrontInterface;
  fullCategory: string;
  categoryFile: TAbFile;
  downloadableFileObject: TObject;
  fileItem: TFileItem;
  fileName: string;
  size: Int64;
  licenseFileObject: TObject;
  extraFilesObject: TObject;
  downloadableItemValidation: TDownloadableItemValidation;
  log: string;
begin
        try
            stringBuffer := TStringMaker.Create();
            command := string(Self.getRequestHashMap().get(GLOBALS2.ADMINCOMMAND));
            if (nil.isEmpty(command)) or ((CompareStr(command, Self.commonStrings.UPDATE)) <> (0)) then begin
                Exit(TStringUtil.getInstance().EMPTY_STRING);
            end;
            if (Self.itemInterface) = (nil) then begin
                ITEM_NOT_FOUND := 'Item Does Not Exist';
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    Self.logUtil.putF(ITEM_NOT_FOUND, Self, 'validationInfo()');
                end;
                Exit(ITEM_NOT_FOUND);
            end;
            basicItemValidation := TBasicItemValidation.Create(Self.itemInterface);
            if (basicItemValidation.isValid()) = (False) then begin
                stringBuffer.append(basicItemValidation.validationInfo());
                stringBuffer.append('<br/>');
            end;
            storeFrontInterface := TStoreFrontFactory.getInstance(Self.getWeblisketSession().getStoreName());
            fullCategory := TStringMaker.Create().append(URLGLOBALS.getWebappPath()).append(storeFrontInterface.getCurrentHostNamePath()).append(Self.itemInterface.getCategory()).toString();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Category: ' + fullCategory, Self, 'validationInfo()');
            end;
            categoryFile := TAbFile.createAbFile(fullCategory);
            if not (categoryFile.isDirectory()) then begin
                stringBuffer.append('Category ');
                stringBuffer.append(Self.itemInterface.getCategory());
                stringBuffer.append(' does not exist.');
                stringBuffer.append('<br />');
            end;
            downloadableFileObject := Self.getRequestHashMap().get(TDownloadItemData.FILE_);
            if THttpFileUploadUtil.getInstance().isValid(downloadableFileObject) then begin
                fileItem := TFileItem(downloadableFileObject);
                fileName := fileItem.getName();
                size := fileItem.getSize();
                Self.validationInfo(stringBuffer, fileName, size);
            end else begin
                stringBuffer.append('Download File Missing');
                stringBuffer.append('<br/>');
            end;
            licenseFileObject := Self.getRequestHashMap().get(TDownloadItemData.LICENSE_FILE);
            if THttpFileUploadUtil.getInstance().isValid(licenseFileObject) then begin
                fileItem := TFileItem(licenseFileObject);
                fileName := fileItem.getName();
                size := fileItem.getSize();
                Self.validationInfo(stringBuffer, fileName, size);
            end else begin
            end;
            extraFilesObject := Self.getRequestHashMap().get(TDownloadItemData.EXTRA_FILES);
            if THttpFileUploadUtil.getInstance().isValid(extraFilesObject) then begin
                fileItem := TFileItem(extraFilesObject);
                fileName := fileItem.getName();
                size := fileItem.getSize();
                Self.validationInfo(stringBuffer, fileName, size);
            end else begin
            end;
            if (Self.downloadableItem) <> (nil) then begin
                downloadableItemValidation := TDownloadableItemValidation.Create(Self.downloadableItem);
                if (downloadableItemValidation.isValid()) = (False) then begin
                    log := downloadableItemValidation.validationInfo();
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                        Self.logUtil.putF(log, Self, Self.commonStrings.IS_VALID);
                    end;
                    stringBuffer.append(log);
                    stringBuffer.append('<br/>');
                end;
            end;
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', Self, 'validationInfo()', e);
            end;
            Exit('Error Getting Validation Info');
            end;
        end;
end;
    

// throws Exception
function TUpdateFileValidationView.isValid(fileName: string; size: Int64): Boolean;
var
  fileData: TFileData;
  stringBuffer: TStringMaker;
begin
        fileData := TFileData.getInstance();
        if (size) > (fileData.MINDOWNLOADABLEFILESIZE) then begin
            if (size) < (fileData.MAXDOWNLOADABLEFILESIZE) then begin
                if not (nil.isValidRequired(fileName, fileData.MINLEN, fileData.MAXLEN)) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                        stringBuffer := TStringMaker.Create();
                        stringBuffer.append('File name is not valid: ');
                        stringBuffer.append(fileName);
                        Self.logUtil.putF(stringBuffer.toString(), Self, Self.commonStrings.IS_VALID);
                    end;
                    Exit(False);
                end else begin
                end;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append('File Size To Large: ');
                    stringBuffer.appendlong(size);
                    stringBuffer.append('>');
                    stringBuffer.appendint(Integer(Trunc(fileData.MAXDOWNLOADABLEFILESIZE)));
                    Self.logUtil.putF(stringBuffer.toString(), Self, Self.commonStrings.IS_VALID);
                end;
                Exit(False);
            end;
        end else begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('File Size To Small: ');
                stringBuffer.appendlong(size);
                stringBuffer.append('>');
                stringBuffer.appendint(Integer(Trunc(fileData.MINDOWNLOADABLEFILESIZE)));
                Self.logUtil.putF(stringBuffer.toString(), Self, Self.commonStrings.IS_VALID);
            end;
            Exit(False);
        end;
        Exit(True);
end;
    

procedure TUpdateFileValidationView.validationInfo(stringBuffer: TStringMaker; fileName: string; size: Int64);
var
  fileData: TFileData;
begin
        fileData := TFileData.getInstance();
        if (size) > (fileData.MINDOWNLOADABLEFILESIZE) then begin
            if (size) < (fileData.MAXDOWNLOADABLEFILESIZE) then begin
                if not (nil.isValidRequired(fileName, fileData.MINLEN, fileData.MAXLEN)) then begin
                    stringBuffer.append('File Name must be more than ');
                    stringBuffer.appendint(Integer(Trunc(fileData.MINLEN)));
                    stringBuffer.append(' and less than ');
                    stringBuffer.appendint(Integer(Trunc(fileData.MAXLEN)));
                    stringBuffer.append(' characters in length: ');
                    stringBuffer.append(fileName);
                    stringBuffer.append('<br/>');
                end else begin
                end;
            end else begin
                stringBuffer.append('File Is Not The Right Size. ');
                stringBuffer.appendint(Integer(Trunc(fileData.MINDOWNLOADABLEFILESIZE)));
                stringBuffer.append('< >');
                stringBuffer.appendint(Integer(Trunc(fileData.MAXDOWNLOADABLEFILESIZE)));
                stringBuffer.append('<br/>');
            end;
        end;
end;

initialization

end.

