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
// package org.allbinary.input.automation.module.generic.configuration.profile.actions
unit GenericProfileActions;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, DomNodeInterface, DomDocumentHelper, XmlDocumentHelper, DomDocumentMappingInterface, DefaultListModelHelper, GenericProfiles, StdUtil, LogUtil, CommonDataFileStrings, AbPath, Document, Node, NodeList, GenericProfileActionsJPanel, GenericProfileAction;

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

  TGenericProfileActions = class(TInterfacedObject, IDomNodeInterface, IDomDocumentMappingInterface)
  public
    logUtil: TLogUtil;
    commonFileStrings: TCommonDataFileStrings;
    name: string;
    genericProfileActionsJPanel: TGenericProfileActionsJPanel;
    actionsDefaultListModelHelper: TDefaultListModelHelper;
    hashMap: TJavaHashMap;
    class var DEFAULT_PROFILE_ACTIONS_PATH: string;
    procedure InitFields;
        constructor Create(genericProfileActionsJPanel: TGenericProfileActionsJPanel; name: string); overload;
        constructor Create(genericProfileActionsJPanel: TGenericProfileActionsJPanel; abPath: TAbPath; name: string); overload;
        constructor Create(genericProfileActionsJPanel: TGenericProfileActionsJPanel; fileInputStream: TFileInputStream; name: string); overload;
        procedure init(genericProfileActionsJPanel: TGenericProfileActionsJPanel);
        procedure save; virtual;
        function getFile(name: string): TFile; virtual;
        procedure load;
        procedure fileInit(fileInputStream: TFileInputStream);
        procedure initActions(nodeList: TNodeList);
        function getDefaultListModelHelper: TDefaultListModelHelper; virtual;
        function getAction(string_: string): TGenericProfileAction; virtual;
        procedure add(name: string); virtual;
        procedure remove(name: string); virtual;
        function toHashMap: TJavaHashMap; virtual;
        function toXmlNode(document: TDocument): TNode; virtual;
        function toXmlDoc: TDocument; virtual;
        function getGenericProfileActionsJPanel: TGenericProfileActionsJPanel; virtual;
        procedure setGenericProfileActionsJPanel(genericProfileActionsJPanel: TGenericProfileActionsJPanel); virtual;
        function getHashMap: TJavaHashMap; virtual;
        procedure setHashMap(hashMap: TJavaHashMap); virtual;
        function getName: string; virtual;
        procedure setName(name: string); virtual;
  end;

implementation
uses
  GenericProfileActionsData, GenericProfileActionData;



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


procedure TGenericProfileActions.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonFileStrings := TCommonDataFileStrings.getInstance();
  
  
  
  
end;
    

constructor TGenericProfileActions.Create(genericProfileActionsJPanel: TGenericProfileActionsJPanel; name: string);
begin
    inherited Create;
    InitFields;
        Self.setName(name);
        Self.init(genericProfileActionsJPanel);
        Self.load();
end;
    

constructor TGenericProfileActions.Create(genericProfileActionsJPanel: TGenericProfileActionsJPanel; abPath: TAbPath; name: string);
begin
    inherited Create;
    InitFields;
        Self.setName(name);
        Self.init(genericProfileActionsJPanel);
        Self.load();
end;
    

constructor TGenericProfileActions.Create(genericProfileActionsJPanel: TGenericProfileActionsJPanel; fileInputStream: TFileInputStream; name: string);
begin
    inherited Create;
    InitFields;
        Self.setName(name);
        Self.init(genericProfileActionsJPanel);
        Self.fileInit(fileInputStream);
end;
    

// throws Exception
procedure TGenericProfileActions.init(genericProfileActionsJPanel: TGenericProfileActionsJPanel);
begin
        Self.setGenericProfileActionsJPanel(genericProfileActionsJPanel);
        Self.actionsDefaultListModelHelper := TDefaultListModelHelper.Create();
        Self.setHashMap(TJavaHashMap.Create());
end;
    

// throws Exception
procedure TGenericProfileActions.save;
var
  idFile: TFileOutputStream;
  idOutData: TDataOutputStream;
begin
        idFile := TFileOutputStream.Create(TJava.ToString(TGenericProfileActions.DEFAULT_PROFILE_ACTIONS_PATH) + Self.getName() + TJava.ToString(Self.commonFileStrings._XML));
        idOutData := TDataOutputStream.Create(idFile);
        idOutData.writeBytes(TXmlDocumentHelper.toString(Self.toXmlDoc()));
end;
    

function TGenericProfileActions.getFile(name: string): TFile;
var
  fileName: string;
begin
        fileName := TGenericProfileActions.DEFAULT_PROFILE_ACTIONS_PATH + name + TJava.ToString(Self.commonFileStrings._XML);
        Exit(TFile.Create(fileName));
end;
    

// throws Exception
procedure TGenericProfileActions.load;
var
  file_: TFile;
  idFile: TFileInputStream;
begin
        file_ := Self.getFile(Self.getName());
        if file_.isFile() then begin
            idFile := TFileInputStream.Create(file_);
            Self.fileInit(idFile);
        end else begin
            Self.logUtil.putF('No Profile: ' + TJava.ToString(file_.getAbsolutePath()), Self, 'Contructor');
        end;
end;
    

// throws Exception
procedure TGenericProfileActions.fileInit(fileInputStream: TFileInputStream);
var
  bytes: TArray<ShortInt>;
  length: Integer;
  data: string;
  endIndex: Integer;
  document: TDocument;
  nameNodeList: TNodeList;
  node: TNode;
  nodeList: TNodeList;
  index: Integer;
begin
        bytes := TJava.NewArray<ShortInt>(100000);
        length := fileInputStream.read(bytes);
        data := TJava.NewString(bytes);
        endIndex := (RPos(TJava.ToString('>'), data) - 1);
        document := TDomDocumentHelper.create(Copy(data, (0) + 1, ((endIndex) + (1)) - (0)));
        nameNodeList := document.getElementsByTagName(TGenericProfileActionsData.NAME);
        Self.logUtil.putF('Number Of Profiles Specified: ' + TJava.ToString(nameNodeList.getLength()), Self, 'Contructor');
        for index := 0 to nameNodeList.getLength() - 1 do begin
            node := nameNodeList.item(index);
            nodeList := node.getChildNodes();
            if (nodeList) <> (nil) then begin
                Self.initActions(nodeList);
            end else begin
                raise SysUtils.Exception.Create(TJava.ToString(TGenericProfileActionData.NAME) + ' Name Node Node Children');
            end;
        end;
        Self.logUtil.putF('Loaded: ' + IntToStr(Self.getHashMap().size()) + ' Configuration Profile Action(s)', Self, 'Contructor');
        Self.getDefaultListModelHelper().initDefaultModelList();
end;
    

// throws Exception
procedure TGenericProfileActions.initActions(nodeList: TNodeList);
var
  actionNode: TNode;
  genericConfigurationProfileAction: TGenericProfileAction;
  index: Integer;
begin
        for index := 0 to nodeList.getLength() - 1 do begin
            actionNode := nodeList.item(index);
            if (actionNode) <> (nil) then begin
                genericConfigurationProfileAction := TGenericProfileAction.Create(Self.getGenericProfileActionsJPanel().getGenericProfileActionJPanel(), actionNode);
                Self.getHashMap().put(genericConfigurationProfileAction.getName(), genericConfigurationProfileAction);
                Self.getDefaultListModelHelper().add(TJava.BoxString(genericConfigurationProfileAction.getName()));
            end else begin
                raise SysUtils.Exception.Create(TJava.ToString(TGenericProfileActionData.NAME) + ' Node Null');
            end;
        end;
end;
    

function TGenericProfileActions.getDefaultListModelHelper: TDefaultListModelHelper;
begin
        Exit(Self.actionsDefaultListModelHelper);
end;
    

function TGenericProfileActions.getAction(string_: string): TGenericProfileAction;
begin
        Exit(TGenericProfileAction(Self.getHashMap().get(string_)));
end;
    

// throws Exception
procedure TGenericProfileActions.add(name: string);
var
  genericProfileAction: TGenericProfileAction;
begin
        genericProfileAction := TGenericProfileAction.Create(name);
        Self.getHashMap().put(genericProfileAction.getName(), genericProfileAction);
        Self.getDefaultListModelHelper().add(TJava.BoxString(genericProfileAction.getName()));
        Self.getDefaultListModelHelper().initDefaultModelList();
        Self.save();
end;
    

// throws Exception
procedure TGenericProfileActions.remove(name: string);
begin
        Self.getHashMap().remove(name);
        Self.getDefaultListModelHelper().remove(name);
        Self.getDefaultListModelHelper().initDefaultModelList();
        Self.save();
end;
    

function TGenericProfileActions.toHashMap: TJavaHashMap;
var
  hashMap: TJavaHashMap;
begin
        hashMap := TStdUtil.getInstance().createHashMap();
        Self.logUtil.putF('HashMap: ' + hashMap.toString(), Self, 'toHashMap()');
        Exit(hashMap);
end;
    

// throws Exception
function TGenericProfileActions.toXmlNode(document: TDocument): TNode;
var
  node: TNode;
  set_: ISet;
  actionNameArray: TArray<TObject>;
  size: Integer;
  nextActionName: string;
  nextGenericProfileAction: TGenericProfileAction;
  index: Integer;
begin
        node := document.createElement(TGenericProfileActionsData.NAME);
        set_ := Self.getHashMap().keySet();
        actionNameArray := set_.toArray();
        size := System.Length(actionNameArray);
        for index := 0 to size - 1 do begin
            nextActionName := string(actionNameArray[index]);
            nextGenericProfileAction := TGenericProfileAction(Self.getAction(nextActionName));
            node.appendChild(nextGenericProfileAction.toXmlNode(document));
        end;
        Exit(node);
end;
    

// throws Exception
function TGenericProfileActions.toXmlDoc: TDocument;
var
  document: TDocument;
  node: TNode;
begin
        document := TDomDocumentHelper.create();
        node := Self.toXmlNode(document);
        document.appendChild(node);
        Exit(document);
end;
    

function TGenericProfileActions.getGenericProfileActionsJPanel: TGenericProfileActionsJPanel;
begin
        Exit(Self.genericProfileActionsJPanel);
end;
    

procedure TGenericProfileActions.setGenericProfileActionsJPanel(genericProfileActionsJPanel: TGenericProfileActionsJPanel);
begin
        Self.genericProfileActionsJPanel := genericProfileActionsJPanel;
end;
    

function TGenericProfileActions.getHashMap: TJavaHashMap;
begin
        Exit(Self.hashMap);
end;
    

procedure TGenericProfileActions.setHashMap(hashMap: TJavaHashMap);
begin
        Self.hashMap := hashMap;
end;
    

function TGenericProfileActions.getName: string;
begin
        Exit(Self.name);
end;
    

procedure TGenericProfileActions.setName(name: string);
begin
        Self.name := name;
end;

initialization
  TGenericProfileActions.DEFAULT_PROFILE_ACTIONS_PATH := TJava.ToString(TGenericProfiles.DEFAULT_PROFILES_PATH) + 'actions/';

end.

