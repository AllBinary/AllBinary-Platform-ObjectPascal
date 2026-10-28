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
// package org.allbinary.logic.communication.http.request
unit NameSpaceRequestParams;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, BasicArrayList, BasicArrayListD, DomData, DomNodeHelper, DomSearchHelper, ModDomHelper, DomDocumentHelper, XmlDocumentHelper, StdUtil, LogUtil, StringMaker, StringUtil, CommonSeps, Document, Node, NameSpaceRequestParam, RequestParams;

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

  // containing string values and other hashmaps of the like
  TNameSpaceRequestParams = class(TRequestParams)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create; overload;
        constructor Create(httpServletRequest: THttpServletRequest); overload;
        constructor Create(pageContext: TPageContext); overload;
        function createPackageNode(document: TDocument; packageName: string; packagePropertiesHashMap: TJavaHashMap): TNode;
        function createPackageMultiNode(document: TDocument; nameSpaceRequestParam: TNameSpaceRequestParam; packageName: string; packagePropertiesHashMap: TJavaHashMap): TNode;
        function getRootNode(rootElementPackage: string; packagePropertiesHashMap: TJavaHashMap; document: TDocument): TNode;
        function addNewProperties(document: TDocument; node: TNode; nextPackagePropertiesHashMap: TJavaHashMap): TNode;
        function isElementValueTextNodeEqual(nextPackagePropertiesHashMap: TJavaHashMap; node: TNode): Boolean;
        function isElementValueTextNodeUnique(nextPackagePropertiesHashMap: TJavaHashMap; elementNodeVector: TBasicArrayList): Integer;
        function addChildren(document: TDocument; rootNode: TNode; nameSpaceRequestParam: TNameSpaceRequestParam): TDocument;
        function addNameSpace(key: string; value: string; document: TDocument): TDocument;
        function toHashMap: TJavaHashMap; virtual;
  end;

implementation
uses
  NameSpaceRequestParamData;



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


procedure TNameSpaceRequestParams.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TNameSpaceRequestParams.Create;
begin
        inherited Create();
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF('Constructing empty', Self, Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

constructor TNameSpaceRequestParams.Create(httpServletRequest: THttpServletRequest);
begin
        inherited Create(httpServletRequest);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF('Constructing from HttpServletRequest', Self, Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

constructor TNameSpaceRequestParams.Create(pageContext: TPageContext);
begin
        inherited Create(pageContext);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF('Constructing from PageContext', Self, Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

// throws Exception
function TNameSpaceRequestParams.createPackageNode(document: TDocument; packageName: string; packagePropertiesHashMap: TJavaHashMap): TNode;
var
  node: TNode;
  propertyKeySet: ISet;
  propertyKeySetArray: TArray<TObject>;
  size: Integer;
  propertyName: string;
  propertyValue: string;
  propertyNode: TNode;
  index: Integer;
begin
        node := document.createElement(packageName);
        propertyKeySet := packagePropertiesHashMap.keySet();
        propertyKeySetArray := propertyKeySet.toArray();
        size := System.Length(propertyKeySetArray);
        for index := 0 to size - 1 do begin
            propertyName := string(propertyKeySetArray[index]);
            propertyValue := string(packagePropertiesHashMap.get(propertyName));
            propertyNode := TModDomHelper.createTextNode(document, propertyName, propertyValue);
            node.appendChild(propertyNode);
        end;
        Exit(node);
end;
    

// throws Exception
function TNameSpaceRequestParams.createPackageMultiNode(document: TDocument; nameSpaceRequestParam: TNameSpaceRequestParam; packageName: string; packagePropertiesHashMap: TJavaHashMap): TNode;
var
  beginIndex: Integer;
  indexValue: string;
  multiElementPackage: string;
  selectedValue: string;
  propertyValue: string;
  nextNode: TNode;
  indexNode: TNode;
begin
        beginIndex := (Pos(TJava.ToString('['), packageName) - 1);
        indexValue := Copy(packageName, ((beginIndex) + (1)) + 1, ((System.Length(packageName)) - (1)) - ((beginIndex) + (1)));
        multiElementPackage := Copy(packageName, (0) + 1, (beginIndex) - (0));
        selectedValue := nameSpaceRequestParam.getValue();
        propertyValue := string(packagePropertiesHashMap.get(TDomData.VALUE));
        if (CompareStr(propertyValue, TNameSpaceRequestParamData.VALUE)) <> (0) then begin
            selectedValue := propertyValue;
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF(''#10'Appending Multinode Element: ' + multiElementPackage + '[' + indexValue + '] ' + selectedValue, Self, 'createPackageMultiNode');
        end;
        nextNode := TModDomHelper.createNameValueNodes(document, multiElementPackage, selectedValue);
        indexNode := TModDomHelper.createTextNode(document, TDomData.INDEX, indexValue);
        nextNode.appendChild(indexNode);
        Exit(nextNode);
end;
    

// throws Exception
function TNameSpaceRequestParams.getRootNode(rootElementPackage: string; packagePropertiesHashMap: TJavaHashMap; document: TDocument): TNode;
var
  rootNode: TNode;
  node: TNode;
begin
        rootNode := TDomSearchHelper.getNodeNoThrow(rootElementPackage, document.getChildNodes());
        if (rootNode) = (nil) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                Self.logUtil.putF(''#10'Appending Document Root: ' + ''#10'ElementName: ' + rootElementPackage + ''#10'Properties: ' + packagePropertiesHashMap.toString(), Self, 'getRootNode');
            end;
            node := Self.createPackageNode(document, rootElementPackage, packagePropertiesHashMap);
            document.appendChild(node);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                Self.logUtil.putF(''#10'Appended Document Created: ' + TXmlDocumentHelper.toString(document), Self, 'getRootNode');
            end;
            Exit(node);
        end else begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                Self.logUtil.putF(''#10'Using Existing Root Node', Self, 'getRootNode');
            end;
            Exit(rootNode);
        end;
end;
    

// throws Exception
function TNameSpaceRequestParams.addNewProperties(document: TDocument; node: TNode; nextPackagePropertiesHashMap: TJavaHashMap): TNode;
var
  propertyNameSet: ISet;
  propertyNameSetArray: TArray<TObject>;
  size: Integer;
  nextPropertyName: string;
  propertyValue: string;
  valueNode: TNode;
  newPropertyNode: TNode;
  existingElementNodeTextNodeValue: string;
  index: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF(TStringMaker.Create().append(''#10'Adding Any New Properties: ').append(nextPackagePropertiesHashMap.toString()).append(''#10'to node: ').append(node.getNodeName()).toString(), Self, 'addNewProperties');
        end;
        propertyNameSet := nextPackagePropertiesHashMap.keySet();
        propertyNameSetArray := propertyNameSet.toArray();
        size := System.Length(propertyNameSetArray);
        for index := 0 to size - 1 do begin
            nextPropertyName := string(propertyNameSetArray[index]);
            propertyValue := TStringUtil.getInstance().getNonNull(string(nextPackagePropertiesHashMap.get(nextPropertyName)));
            valueNode := TDomSearchHelper.getNodeNoThrow(nextPropertyName, node.getChildNodes());
            if (valueNode) <> (nil) then begin
                existingElementNodeTextNodeValue := TDomNodeHelper.getTextNodeValue(valueNode);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    Self.logUtil.putF(''#10'If property: "' + nextPropertyName + ' is the same as:'#10'' + 'Node: ' + TJava.ToString(node.getNodeName()) + ' then: ' + propertyValue + '==' + existingElementNodeTextNodeValue, Self, 'addNewProperties');
                end;
                if (CompareStr(propertyValue, existingElementNodeTextNodeValue)) <> (0) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                        Self.logUtil.putF('At least one Property from NameSpaceRequest Package was different from Node', Self, 'addNewProperties');
                    end;
                    raise SysUtils.Exception.Create('Property Modifications Should Not Occur');
                end;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    Self.logUtil.putF('Adding a new Property: ' + nextPropertyName + '=' + propertyValue, Self, 'addNewProperties');
                end;
                newPropertyNode := TModDomHelper.createTextNode(document, nextPropertyName, propertyValue);
                node.appendChild(newPropertyNode);
            end;
        end;
        Exit(node);
end;
    

// throws Exception
function TNameSpaceRequestParams.isElementValueTextNodeEqual(nextPackagePropertiesHashMap: TJavaHashMap; node: TNode): Boolean;
var
  propertyValue: string;
  valueNode: TNode;
  existingElementNodeTextNodeValue: string;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF(''#10'Comparing the value property in: ' + nextPackagePropertiesHashMap.toString() + ''#10'to node child leaves of node: ' + TJava.ToString(node.getNodeName()), Self, 'isElementValueTextNodeEqual');
        end;
        propertyValue := string(nextPackagePropertiesHashMap.get(TDomData.VALUE));
        valueNode := TDomSearchHelper.getNodeNoThrow(TDomData.VALUE, node.getChildNodes());
        if (valueNode) <> (nil) then begin
            existingElementNodeTextNodeValue := TDomNodeHelper.getTextNodeValue(valueNode);
            if (CompareStr(propertyValue, existingElementNodeTextNodeValue)) = (0) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    Self.logUtil.putF('Value Node is the same', Self, 'isElementValueTextNodeEqual');
                end;
                Exit(True);
            end;
        end else begin
            Exit(True);
        end;
        Exit(False);
end;
    

// throws Exception
function TNameSpaceRequestParams.isElementValueTextNodeUnique(nextPackagePropertiesHashMap: TJavaHashMap; elementNodeVector: TBasicArrayList): Integer;
var
  size: Integer;
  existingElementNode: TNode;
  index: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF(''#10'Comparing Properties of: ' + IntToStr(elementNodeVector.size()) + ' Nodes', Self, 'isElementValueTextNodeUnique');
        end;
        size := elementNodeVector.size();
        for index := 0 to size - 1 do begin
            existingElementNode := TNode(elementNodeVector.get(index));
            if Self.isElementValueTextNodeEqual(nextPackagePropertiesHashMap, existingElementNode) then begin
                Exit(index);
            end;
        end;
        Exit(-1);
end;
    

// throws Exception
function TNameSpaceRequestParams.addChildren(document: TDocument; rootNode: TNode; nameSpaceRequestParam: TNameSpaceRequestParam): TDocument;
var
  node: TNode;
  packageVector: TBasicArrayList;
  size: Integer;
  nextPackageName: string;
  nextPackagePropertiesHashMap: TJavaHashMap;
  elementNodeVector: TBasicArrayList;
  isElementValueTextNodeUniqueIndex: Integer;
  nodeNameDuplicateNode: TNode;
  nextNode: TNode;
  index: Integer;
begin
        node := rootNode;
        packageVector := nameSpaceRequestParam.getPackages();
        size := packageVector.size();
        for index := 1 to size - 1 do begin
            nextPackageName := string(packageVector.get(index));
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                Self.logUtil.putF(TStringMaker.Create().append(''#10'Trying to Add Child to Node: ').append(node.getNodeName()).append(''#10'with new PackageName: ').append(nextPackageName).toString(), Self, 'addChildren');
            end;
            nextPackagePropertiesHashMap := nameSpaceRequestParam.getPackageProperties(index);
            elementNodeVector := TDomSearchHelper.getAllNodesNoThrow(nextPackageName, node.getChildNodes());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                Self.logUtil.putF(''#10'Document Contains ' + IntToStr(elementNodeVector.size()) + ' Node(s) With Same Name', Self, 'addChildren');
            end;
            isElementValueTextNodeUniqueIndex := Self.isElementValueTextNodeUnique(nextPackagePropertiesHashMap, elementNodeVector);
            if ((((elementNodeVector.size()) = (0)) or ((isElementValueTextNodeUniqueIndex) = (-1)))) and (not (nextPackageName.EndsWith(TCommonSeps.getInstance().BRACKET_CLOSE))) then begin
                nextNode := Self.createPackageNode(document, nextPackageName, nextPackagePropertiesHashMap);
                node.appendChild(nextNode);
                node := nextNode;
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    Self.logUtil.putF(''#10'Appended Package: ' + TJava.ToString(node.getNodeName()), Self, 'addChildren');
                    Self.logUtil.putF(''#10'Appended Document Created: ' + TXmlDocumentHelper.toString(document), Self, 'addChildren');
                end;
            end else if nextPackageName.EndsWith(TCommonSeps.getInstance().BRACKET_CLOSE) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    Self.logUtil.putF('Package is MultiNode: just append', Self, 'addChildren');
                end;
                nextNode := Self.createPackageMultiNode(document, nameSpaceRequestParam, nextPackageName, nextPackagePropertiesHashMap);
                node.appendChild(nextNode);
                node := nextNode;
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    Self.logUtil.putF(''#10'Appended Multinode Element: ' + TXmlDocumentHelper.toString(document), Self, 'addChildren');
                end;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    Self.logUtil.putF('Value Node already exists: Now compare (properties to leaf nodes)', Self, 'addChildren');
                end;
                nodeNameDuplicateNode := TNode(elementNodeVector.get(isElementValueTextNodeUniqueIndex));
                node := Self.addNewProperties(document, nodeNameDuplicateNode, nextPackagePropertiesHashMap);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    Self.logUtil.putF(''#10'Duplicate Node Found: Moving to next child ^', Self, 'addChildre');
                end;
            end;
        end;
        Exit(document);
end;
    

// throws Exception
function TNameSpaceRequestParams.addNameSpace(key: string; value: string; document: TDocument): TDocument;
var
  nameSpaceRequestParam: TNameSpaceRequestParam;
  packageVector: TBasicArrayList;
  size: Integer;
  packageName: string;
  packagePropertiesHashMap: TJavaHashMap;
  rootNode: TNode;
  index: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF(TStringMaker.Create().append('NameSpace key: ').append(key).append(' Value: ').append(value).toString(), Self, 'addNameSpace');
        end;
        nameSpaceRequestParam := TNameSpaceRequestParam.Create(key, value);
        packageVector := nameSpaceRequestParam.getPackages();
        size := packageVector.size();
        for index := 0 to size - 1 do begin
            packageName := string(packageVector.get(index));
            packagePropertiesHashMap := nameSpaceRequestParam.getPackageProperties(packageVector.indexOf(packageName));
            rootNode := Self.getRootNode(packageName, packagePropertiesHashMap, document);
            if (index) < ((size) - (1)) then begin
                Exit(Self.addChildren(document, TNode(rootNode), nameSpaceRequestParam));
            end;
        end;
        Exit(document);
end;
    

// throws Exception
function TNameSpaceRequestParams.toHashMap: TJavaHashMap;
var
  document: TDocument;
  hashMap: TJavaHashMap;
  keys: ISet;
  keyArray: TArray<TObject>;
  keySize: Integer;
  key: string;
  anyType: TObject;
  className: string;
  values: TArray<string>;
  value: string;
  i: Integer;
begin
        document := TDomDocumentHelper.create_();
        hashMap := TStdUtil.getInstance().createHashMap();
        keys := Self.getMap().keySet();
        keyArray := keys.toArray();
        keySize := System.Length(keyArray);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF('NameSpace Request Size: ' + IntToStr(keys.size()), Self, 'toHashMap');
        end;
        for i := 0 to keySize - 1 do begin
            key := string(keyArray[i]);
            anyType := Self.getMap().get(key);
            className := string(anyType.ClassType.ClassName);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                Self.logUtil.putF('Request Param Class: ' + className, Self, 'toHashMap');
            end;
            if (Self.getMap().get(key) is string) then begin
                value := string(Self.getMap().get(key));
                if ((Pos(TJava.ToString(TNameSpaceRequestParamData.NAME), key) - 1)) < (0) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                        Self.logUtil.putF('Not NameSpace key: ' + key + ' Value: ' + value, Self, 'toHashMap()');
                    end;
                    hashMap.put(TJava.NewString(key), TJava.NewString(value));
                end else begin
                    document := Self.addNameSpace(TJava.NewString(key), TJava.NewString(value), document);
                end;
            end else if (Self.getMap().get(key) is TArray<string>) then begin
                values := TArray<string>(Self.getMap().get(key));
                if ((Pos(TJava.ToString(TNameSpaceRequestParamData.NAME), key) - 1)) < (0) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                        Self.logUtil.putF('Not NameSpace key: ' + key + ' Value: ' + values[0], Self, 'toHashMap()');
                    end;
                    hashMap.put(TJava.NewString(key), TJava.NewString(values[0]));
                end else begin
                    document := Self.addNameSpace(TJava.NewString(key), TJava.NewString(values[0]), document);
                end;
            end;
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF('NameSpaceRequestParams: ' + Self.getMap().toString() + ''#10'toHashMap(): ' + hashMap.toString() + ''#10'Document Created: ' + TXmlDocumentHelper.toString(document), Self, 'toHashMap()');
        end;
        hashMap.put(TNameSpaceRequestParamData.DOCUMENT, document);
        Exit(hashMap);
end;

initialization

end.

