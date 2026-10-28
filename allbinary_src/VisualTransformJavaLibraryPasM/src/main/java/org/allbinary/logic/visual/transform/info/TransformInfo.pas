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
// package org.allbinary.logic.visual.transform.info
unit TransformInfo;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, BasicArrayList, BasicArrayListD, StoreFrontData, EntryData, DomDocumentHelper, XmlDocumentHelper, FREEBLISKET_PATH_GLOBALS, URLGLOBALS, StdUtil, LogUtil, Encoder, CryptFileReader, OutputTypeData, AbFilePath, AbPath, AbPathData, StringMaker, StringUtil, AbeClientInformationInterface, ServiceClientInformationInterfaceFactory, TransformInfoDataData, TransformInfoObjectConfig, TransformInfoObjectConfigAndManipulatorFactory, TransformInfoObjectConfigInterface, TransformInfoTemplateData, TransformInfoObjectData, CommonSeps, CommonStrings, Document, TransformInfoInterface;

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

  TTransformInfo = class(TInterfacedObject, ITransformInfoInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    abeClientInformation: IAbeClientInformationInterface;
    isChild_: Boolean;
    name: string;
    storeName: string;
    objectFileName: string;
    anyType: TObject;
    objectConfigFileName: string;
    objectConfigInterface: ITransformInfoObjectConfigInterface;
    template: string;
    templateFileName: string;
    dataFileName: string;
    data: string;
    procedure InitFields;
        constructor Create; overload;
        constructor Create(name: string); overload;
        constructor Create(name: string; objectFileName: string; objectConfigFileName: string; templateFileName: string; dataFileName: string); overload;
        procedure override(hashMap: TJavaHashMap); virtual;
        function log: string; virtual;
        procedure setName(value: string); virtual;
        procedure setStoreName(value: string); virtual;
        function getStoreName: string; virtual;
        procedure setObject(anyType: TObject); virtual;
        procedure setObjectFile(value: string); virtual;
        procedure setTemplate(value: string); virtual;
        procedure setTemplateFile(value: string); virtual;
        procedure setObjectConfigFileName(value: string); virtual;
        procedure setObjectConfigFile(value: string); virtual;
        procedure setObjectConfig(value: string); virtual;
        procedure setDataFile(value: string); virtual;
        procedure setData(value: string); virtual;
        function getName: string; virtual;
        function getObject: TObject; virtual;
        function getObjectFile: string; virtual;
        function getTemplate: string; virtual;
        function getTemplateFile: string; virtual;
        function getTemplateFilePath: TAbPath; virtual;
        function getObjectConfigFilePath: TAbPath; virtual;
        function getDataFilePath: TAbPath; virtual;
        function getObjectConfigFile: string; virtual;
        function getData: string;
        function getDataDocument: TDocument; virtual;
        function getDataFile: string; virtual;
        function toHashMap: TJavaHashMap; virtual;
        function toVector: TBasicArrayList; virtual;
        function getKey: TObject; virtual;
        procedure setChild; virtual;
        function isChild: Boolean; virtual;
        function getObjectConfigInterface: ITransformInfoObjectConfigInterface; virtual;
        procedure setObjectConfigInterface(objectConfigInterface: ITransformInfoObjectConfigInterface); virtual;
  end;

implementation
uses
  TransformInfoData;



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


procedure TTransformInfo.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
  Self.isChild_ := False;
  
  
  
  
  
  
  
  
  
  Self.data := TStringUtil.getInstance().EMPTY_STRING;
end;
    

constructor TTransformInfo.Create;
begin
    inherited Create;
    InitFields;
end;
    

constructor TTransformInfo.Create(name: string);
begin
    inherited Create;
    InitFields;
        Self.setName(name);
end;
    

constructor TTransformInfo.Create(name: string; objectFileName: string; objectConfigFileName: string; templateFileName: string; dataFileName: string);
begin
    inherited Create;
    InitFields;
        Self.setName(name);
        Self.setObjectFile(objectFileName);
        Self.setObjectConfigFile(objectConfigFileName);
        Self.setTemplateFile(templateFileName);
        Self.setDataFile(dataFileName);
end;
    

// throws Exception
procedure TTransformInfo.override(hashMap: TJavaHashMap);
var
  transformInfoData: TTransformInfoData;
  stringValidationUtil: TObject;
  aName: string;
  stringBuffer: TStringMaker;
  aStoreName: string;
  aObjectFileName: string;
  fileAbPath: TAbPath;
  aObject: string;
  fileDataString: string;
  objectConfigFileName: string;
  type_: string;
  aTemplateFileName: string;
  aTemplate: string;
  aDataFileName: string;
  aData: string;
begin
        transformInfoData := TTransformInfoData.getInstance();
        stringValidationUtil := nil;
        aName := string(hashMap.get(transformInfoData.NAME));
        if not ((aName = '')) then begin
            Self.name := aName;
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('TransformInfo properties overridden for: ');
            stringBuffer.append(Self.getName());
            stringBuffer.append(''#10' properties: ');
            stringBuffer.append(hashMap.toString());
            Self.logUtil.putF(stringBuffer.toString(), Self, 'override(HashMap hashMap)');
        end;
        aStoreName := string(hashMap.get(TStoreFrontData.getInstance().NAME));
        if not ((aStoreName = '')) then begin
            Self.storeName := aStoreName;
        end;
        aObjectFileName := string(hashMap.get(transformInfoData.OBJECTFILENAME));
        if not ((aObjectFileName = '')) then begin
            Self.objectFileName := aObjectFileName;
        end;
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(URLGLOBALS.getMainPath());
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH);
        stringBuffer.append(Self.storeName);
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        fileAbPath := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
        aObject := string(hashMap.get(transformInfoData.OBJECT_));
        if not ((aObject = '')) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('TransformInfo override view Object for: ' + Self.getName(), Self, 'override(HashMap hashMap)');
            end;
            fileDataString := TCryptFileReader.Create(TTransformInfoObjectData.getInstance().UNCRYPTED_EXTENSION, TTransformInfoObjectData.getInstance().ENCRYPTED_EXTENSION).get(TAbPath.Create(fileAbPath.toString(), aObject));
            if (fileDataString) <> ('') then begin
                Self.anyType := fileDataString;
            end;
        end;
        if not ((string(hashMap.get(transformInfoData.OBJECTCONFIG)) = '')) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('TransformInfo override ObjectConfig for: ' + Self.getName(), Self, 'override(HashMap hashMap)');
            end;
            Self.setObjectConfig(string(hashMap.get(transformInfoData.OBJECTCONFIG)));
        end;
        objectConfigFileName := string(hashMap.get(transformInfoData.OBJECTCONFIGFILENAME));
        if not ((objectConfigFileName = '')) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('TransformInfo override ObjectConfig File for: ' + Self.getName(), Self, 'override(HashMap hashMap)');
            end;
            Self.setObjectConfigFile(objectConfigFileName);
        end;
        type_ := string(hashMap.get(TOutputTypeData.getInstance().NAME));
        if not ((type_ = '')) then begin
            if (Self.getObjectConfigInterface()) = (nil) then begin
                Self.setObjectConfigInterface(TTransformInfoObjectConfig.Create(Self));
            end;
            Self.getObjectConfigInterface().setOutputTypeName(type_);
        end;
        aTemplateFileName := string(hashMap.get(transformInfoData.TEMPLATEFILENAME));
        if not ((aTemplateFileName = '')) then begin
            Self.templateFileName := aTemplateFileName;
        end;
        aTemplate := string(hashMap.get(transformInfoData.TEMPLATE));
        if not ((aTemplate = '')) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('TransformInfo override Template for: ' + Self.getName(), Self, 'override(HashMap hashMap)');
            end;
            fileDataString := TCryptFileReader.Create(TTransformInfoTemplateData.getInstance().UNCRYPTED_EXTENSION, TTransformInfoTemplateData.getInstance().ENCRYPTED_EXTENSION).get(TAbPath.Create(fileAbPath.toString(), aTemplate));
            if not ((fileDataString = '')) then begin
                Self.template := fileDataString;
            end;
        end;
        aDataFileName := string(hashMap.get(transformInfoData.DATAFILENAME));
        if not ((aDataFileName = '')) then begin
            Self.dataFileName := aDataFileName;
        end;
        aData := string(hashMap.get(transformInfoData.DATA));
        if not ((aData = '')) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('TransformInfo override Data for: ' + Self.getName(), Self, 'override(HashMap hashMap)');
            end;
            fileDataString := TCryptFileReader.Create(TTransformInfoDataData.getInstance().UNCRYPTED_EXTENSION, TTransformInfoDataData.getInstance().ENCRYPTED_EXTENSION).get(TAbPath.Create(fileAbPath.toString(), aData));
            if not ((fileDataString = '')) then begin
                Self.data := fileDataString;
            end;
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Name: ');
            stringBuffer.append(aName);
            stringBuffer.append(''#10'Temp Object File: ');
            stringBuffer.append(aObject);
            stringBuffer.append(''#10'Temp Object Config File: ');
            stringBuffer.append(Self.getObjectConfigFilePath().toString());
            stringBuffer.append(''#10'Temp Template File: ');
            stringBuffer.append(aTemplate);
            stringBuffer.append(''#10'Temp Data File: ');
            stringBuffer.append(aData);
            stringBuffer.append(''#10'Store Name: ');
            stringBuffer.append(aStoreName);
            stringBuffer.append(''#10'ObjectFile: ');
            stringBuffer.append(Self.getObjectFile());
            stringBuffer.append('->TransformInfo');
            Self.logUtil.putF(stringBuffer.toString(), Self, 'TransformInfoInterface(HashMap)');
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
            Self.logUtil.putF(Self.log(), Self, 'override');
        end;
end;
    

function TTransformInfo.log: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Name: ');
        stringBuffer.append(Self.name);
        stringBuffer.append(''#10'Object File: ');
        stringBuffer.append(Self.objectFileName);
        stringBuffer.append(''#10'Object Config File Path: ');
        stringBuffer.append(Self.getObjectConfigFile());
        stringBuffer.append(''#10'Template File: ');
        stringBuffer.append(Self.templateFileName);
        stringBuffer.append(''#10'Data File: ');
        stringBuffer.append(Self.dataFileName);
        stringBuffer.append(''#10'Store Name: ');
        stringBuffer.append(Self.storeName);
        stringBuffer.append(TCommonSeps.getInstance().NEW_LINE);
        stringBuffer.append(Self.getObjectFile());
        stringBuffer.append('->TransformInfo');
        stringBuffer.append('TransformInfoInterface(HashMap)');
        Exit(stringBuffer.toString());
end;
    

procedure TTransformInfo.setName(value: string);
begin
        Self.name := value;
end;
    

procedure TTransformInfo.setStoreName(value: string);
begin
        Self.storeName := value;
end;
    

function TTransformInfo.getStoreName: string;
begin
        Exit(Self.storeName);
end;
    

procedure TTransformInfo.setObject(anyType: TObject);
begin
        Self.anyType := anyType;
end;
    

procedure TTransformInfo.setObjectFile(value: string);
begin
        Self.objectFileName := value;
end;
    

procedure TTransformInfo.setTemplate(value: string);
begin
        Self.template := value;
end;
    

procedure TTransformInfo.setTemplateFile(value: string);
begin
        Self.templateFileName := value;
end;
    

// throws Exception
procedure TTransformInfo.setObjectConfigFileName(value: string);
begin
        Self.objectConfigFileName := value;
end;
    

// throws Exception
procedure TTransformInfo.setObjectConfigFile(value: string);
begin
        Self.objectConfigFileName := value;
        Self.setObjectConfigInterface(TTransformInfoObjectConfigAndManipulatorFactory.getInstance().getInstance(Self.abeClientInformation, Self, Self.getObjectConfigFilePath()));
end;
    

// throws Exception
procedure TTransformInfo.setObjectConfig(value: string);
var
  document: TDocument;
begin
        document := TDomDocumentHelper.create(value);
        Self.setObjectConfigInterface(TTransformInfoObjectConfigAndManipulatorFactory.getInstance().getInstance(Self.abeClientInformation, Self, document));
end;
    

procedure TTransformInfo.setDataFile(value: string);
begin
        Self.dataFileName := value;
end;
    

procedure TTransformInfo.setData(value: string);
begin
        Self.data := value;
end;
    

function TTransformInfo.getName: string;
begin
        Exit(Self.name);
end;
    

function TTransformInfo.getObject: TObject;
begin
        Exit(Self.anyType);
end;
    

function TTransformInfo.getObjectFile: string;
begin
        Exit(Self.objectFileName);
end;
    

function TTransformInfo.getTemplate: string;
begin
        Exit(Self.template);
end;
    

function TTransformInfo.getTemplateFile: string;
begin
        Exit(Self.templateFileName);
end;
    

// throws Exception
function TTransformInfo.getTemplateFilePath: TAbPath;
begin
        Exit(TAbFilePath.Create(Self.getTemplateFile()));
end;
    

// throws Exception
function TTransformInfo.getObjectConfigFilePath: TAbPath;
begin
        Exit(TAbFilePath.Create(Self.getObjectConfigFile()));
end;
    

// throws Exception
function TTransformInfo.getDataFilePath: TAbPath;
begin
        Exit(TAbFilePath.Create(Self.getDataFile()));
end;
    

function TTransformInfo.getObjectConfigFile: string;
begin
        Exit(Self.objectConfigFileName);
end;
    

function TTransformInfo.getData: string;
var
  stringValidationUtil: TObject;
  dataFileString: string;
  fileData: string;
  stringBuffer: TStringMaker;
begin
        stringValidationUtil := nil;
        dataFileString := Self.getDataFile();
        if not ((dataFileString = '')) then begin
            try
                fileData := TCryptFileReader.Create(TTransformInfoDataData.getInstance().UNCRYPTED_EXTENSION, TTransformInfoDataData.getInstance().ENCRYPTED_EXTENSION).get(Self.getDataFilePath());
                if not ((Self.data = '')) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                        Self.logUtil.putF('Data File overriding existing data: ' + TJava.ToString(Self.getDataFilePath()), Self, 'getData()');
                    end;
                end;
                Self.data := fileData;
            except
                on e: SysUtils.Exception do begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                    Self.logUtil.put('Could Not Load Data from: ' + TJava.ToString(Self.getDataFile()), Self, 'getData()', e);
                end;
                end;
            end;
        end;
        try
            if not ((Self.data = '')) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                    Self.logUtil.putF('Data: ' + TXmlDocumentHelper.toString(TDomDocumentHelper.create(Self.data)), Self, 'getData()');
                end;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append('Name: ');
                    stringBuffer.append(Self.name);
                    stringBuffer.append(''#10'Empty Data For: ');
                    stringBuffer.append(dataFileString);
                    stringBuffer.append(''#10'Path: ');
                    stringBuffer.append(Self.getDataFilePath().toFileSystemString());
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                        Self.logUtil.putF(stringBuffer.toString(), Self, 'getData()');
                    end;
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Could Not Preview Data: ' + Self.data, Self, 'getData()', e);
            end;
            end;
        end;
        Exit(Self.data);
end;
    

// throws Exception
function TTransformInfo.getDataDocument: TDocument;
var
  localData: string;
  stringValidationUtil: TObject;
  document: TDocument;
begin
        localData := Self.getData();
        stringValidationUtil := nil;
        if (localData = '') then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.putF('No Data So Creating New Document', Self, 'getDataDocument()');
            end;
            Exit(TDomDocumentHelper.create());
        end else begin
            document := TDomDocumentHelper.create(localData);
            Exit(document);
        end;
end;
    

function TTransformInfo.getDataFile: string;
begin
        Exit(Self.dataFileName);
end;
    

function TTransformInfo.toHashMap: TJavaHashMap;
var
  transformInfoData: TTransformInfoData;
  hashMap: TJavaHashMap;
  calendar: TDateTime;
  time: string;
begin
        transformInfoData := TTransformInfoData.getInstance();
        hashMap := TStdUtil.getInstance().createHashMap();
        hashMap.put(transformInfoData.NAME, Self.name);
        hashMap.put(TStoreFrontData.getInstance().NAME, Self.storeName);
        hashMap.put(transformInfoData.OBJECTFILENAME, Self.objectFileName);
        hashMap.put(transformInfoData.OBJECT_, Self.anyType);
        hashMap.put(transformInfoData.OBJECTCONFIGFILENAME, Self.getObjectConfigFile());
        hashMap.put(transformInfoData.OBJECTCONFIG, TEncoder.encode(TJava.GetBytes(Self.getObjectConfigInterface().toString())));
        hashMap.put(transformInfoData.TEMPLATEFILENAME, Self.templateFileName);
        hashMap.put(transformInfoData.TEMPLATE, Self.template);
        hashMap.put(transformInfoData.DATAFILENAME, Self.dataFileName);
        hashMap.put(transformInfoData.DATA, TEncoder.encode(TJava.GetBytes(Self.data)));
        calendar := Now;
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        hashMap.put(TEntryData.getInstance().LASTMODIFIED, time);
        Exit(hashMap);
end;
    

function TTransformInfo.toVector: TBasicArrayList;
var
  vector: TBasicArrayList;
  calendar: TDateTime;
  time: string;
begin
        vector := TBasicArrayListD.Create();
        vector.add(TJava.BoxString(Self.name));
        vector.add(TJava.BoxString(Self.storeName));
        vector.add(TJava.BoxString(Self.objectFileName));
        vector.add(Self.anyType);
        vector.add(Self.getObjectConfigFile());
        vector.add(TEncoder.encode(TJava.GetBytes(Self.getObjectConfigInterface().toString())));
        vector.add(TJava.BoxString(Self.templateFileName));
        vector.add(TJava.BoxString(Self.template));
        vector.add(TJava.BoxString(Self.dataFileName));
        vector.add(TEncoder.encode(TJava.GetBytes(Self.data)));
        calendar := Now;
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        vector.add(TJava.BoxString(time));
        vector.add(TJava.BoxString(time));
        Exit(vector);
end;
    

function TTransformInfo.getKey: TObject;
begin
        Exit(TObject(Self.getName()));
end;
    

procedure TTransformInfo.setChild;
begin
        Self.isChild_ := True;
end;
    

function TTransformInfo.isChild: Boolean;
begin
        Exit(Self.isChild_);
end;
    

function TTransformInfo.getObjectConfigInterface: ITransformInfoObjectConfigInterface;
begin
        Exit(Self.objectConfigInterface);
end;
    

procedure TTransformInfo.setObjectConfigInterface(objectConfigInterface: ITransformInfoObjectConfigInterface);
begin
        Self.objectConfigInterface := objectConfigInterface;
end;

initialization

end.

