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
// package org.allbinary.input.automation.actions.script.condition
unit BasicProfileActionScriptCondition;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, BasicArrayList, BasicArrayListD, JTreeInterfaceFactory, ProfileActionScriptItem, ProfileActionScriptNodeInterface, ProfileActionScriptProcessorInterface, GenericProfileActionScriptInputData, KeyboardActionScriptInput, MouseActionScriptInput, ProfileActionScriptInputFactory, GenericProfileActionScriptOutputData, ImageActionScriptOutput, ProfileActionScriptOutputFactory, LogUtil, StringMaker, Document, Node, NodeList, JMenu, ProfileActionScriptConditionInterface;

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

  TBasicProfileActionScriptCondition = class(TProfileActionScriptItem, IProfileActionScriptConditionInterface)
  public
    logUtil: TLogUtil;
    profileActionProcessorInterfaceVector: TBasicArrayList;
    profileActionConditionInterfaceVector: TBasicArrayList;
    procedure InitFields;
        constructor Create(label_: string; node: TNode); overload;
        procedure addProcessorNodes(node: TNode); virtual;
        constructor Create(label_: string); overload;
        procedure init;
        function getConditionJPopupMenu: TJMenu;
        function getInputJPopupMenu: TJMenu;
        function getOutputJPopupMenu: TJMenu;
        procedure addProcessor(profileActionProcessorInterface: IProfileActionScriptProcessorInterface); virtual;
        procedure removeProcessor(profileActionProcessorInterface: IProfileActionScriptProcessorInterface); virtual;
        procedure removeCondition(profileActionScriptNodeInterface: IProfileActionScriptNodeInterface); virtual;
        procedure addCondition(profileActionScriptNodeInterface: IProfileActionScriptNodeInterface); virtual;
        function toXmlNode(document: TDocument): TNode; virtual;
        function getProfileActionConditionInterfaceVector: TBasicArrayList; virtual;
        procedure setProfileActionConditionInterfaceVector(profileActionConditionInterfaceVector: TBasicArrayList); virtual;
        procedure actionPerformed(actionEvent: TActionEvent); virtual;
        function getProfileActionProcessorInterfaceVector: TBasicArrayList; virtual;
        procedure setProfileActionProcessorInterfaceVector(profileActionProcessorInterfaceVector: TBasicArrayList); virtual;
        procedure updateTree;
        function shouldProcess(frame: Int64): Boolean; virtual;
        procedure process(frame: Int64); virtual;
  end;

implementation
uses
  GenericProfileActionScriptConditionData, ProfileActionScriptConditionFactory, JMenuItem, ProfileActionScriptConditionInterface, TimeIntervalActionScriptCondition, AlwaysActionScriptCondition, ColorAtActionScriptCondition;



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


procedure TBasicProfileActionScriptCondition.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;
    

constructor TBasicProfileActionScriptCondition.Create(label_: string; node: TNode);
var
  nodeList: TNodeList;
  actionItemNode: TNode;
  index: Integer;
begin
        inherited Create(label_, node);
        InitFields;
        Self.init();
        nodeList := node.getChildNodes();
        for index := 0 to nodeList.getLength() - 1 do begin
            actionItemNode := nodeList.item(index);
            if (actionItemNode.getNodeType()) = (TNode.ELEMENT_NODE) then begin
                if (actionItemNode.getNodeName().compareTo(TGenericProfileActionScriptConditionData.NAME)) = (0) then begin
                    Self.addCondition(TProfileActionScriptConditionFactory.getInstance(actionItemNode));
                end else if (actionItemNode.getNodeName().compareTo(TGenericProfileActionScriptInputData.NAME)) = (0) then begin
                    Self.addProcessor(TProfileActionScriptInputFactory.getInstance(actionItemNode));
                end else if (actionItemNode.getNodeName().compareTo(TGenericProfileActionScriptOutputData.NAME)) = (0) then begin
                    Self.addProcessor(TProfileActionScriptOutputFactory.getInstance(actionItemNode));
                end;
            end;
        end;
end;
    

// throws Exception
procedure TBasicProfileActionScriptCondition.addProcessorNodes(node: TNode);
var
  nodeList: TNodeList;
  processorActionItemNode: TNode;
  index: Integer;
begin
        nodeList := node.getChildNodes();
        for index := 0 to nodeList.getLength() - 1 do begin
            processorActionItemNode := nodeList.item(index);
            if (processorActionItemNode.getNodeName().compareTo(TGenericProfileActionScriptInputData.NAME)) = (0) then begin
                Self.addProcessor(TProfileActionScriptInputFactory.getInstance(processorActionItemNode));
            end else if (processorActionItemNode.getNodeName().compareTo(TGenericProfileActionScriptOutputData.NAME)) = (0) then begin
                Self.addProcessor(TProfileActionScriptOutputFactory.getInstance(processorActionItemNode));
            end;
        end;
end;
    

constructor TBasicProfileActionScriptCondition.Create(label_: string);
begin
        inherited Create(label_);
        InitFields;
        Self.init();
end;
    

procedure TBasicProfileActionScriptCondition.init;
begin
        Self.setProfileActionProcessorInterfaceVector(TBasicArrayListD.Create());
        Self.setProfileActionConditionInterfaceVector(TBasicArrayListD.Create());
        Self.getJPopupMenu().add(Self.getConditionJPopupMenu());
        Self.getJPopupMenu().add(Self.getInputJPopupMenu());
        Self.getJPopupMenu().add(Self.getOutputJPopupMenu());
end;
    

function TBasicProfileActionScriptCondition.getConditionJPopupMenu: TJMenu;
var
  jMenu: TJMenu;
  jMenuItemColorAt: TJMenuItem;
  jMenuItemAlways: TJMenuItem;
  jMenuItemTimeInterval: TJMenuItem;
begin
        jMenu := TJMenu.Create(NEW_CONDITION);
        jMenuItemColorAt := TJMenuItem.Create(NEW_COLOR_AT);
        jMenuItemAlways := TJMenuItem.Create(NEW_ALWAYS);
        jMenuItemTimeInterval := TJMenuItem.Create(NEW_TIME_INTERVAL);
        jMenuItemColorAt.addActionListener(Self);
        jMenuItemAlways.addActionListener(Self);
        jMenuItemTimeInterval.addActionListener(Self);
        jMenu.add(jMenuItemColorAt);
        jMenu.add(jMenuItemAlways);
        jMenu.add(jMenuItemTimeInterval);
        Exit(jMenu);
end;
    

function TBasicProfileActionScriptCondition.getInputJPopupMenu: TJMenu;
var
  jMenu: TJMenu;
  jMenuItemKey: TJMenuItem;
  jMenuItemMouse: TJMenuItem;
  jMenuItemJoystick: TJMenuItem;
begin
        jMenu := TJMenu.Create(NEW_INPUT);
        jMenuItemKey := TJMenuItem.Create(NEW_KEY_INPUT);
        jMenuItemMouse := TJMenuItem.Create(NEW_MOUSE_INPUT);
        jMenuItemJoystick := TJMenuItem.Create(NEW_JOYSTICK_INPUT);
        jMenuItemKey.addActionListener(Self);
        jMenuItemMouse.addActionListener(Self);
        jMenuItemJoystick.addActionListener(Self);
        jMenu.add(jMenuItemKey);
        jMenu.add(jMenuItemMouse);
        jMenu.add(jMenuItemJoystick);
        Exit(jMenu);
end;
    

function TBasicProfileActionScriptCondition.getOutputJPopupMenu: TJMenu;
var
  jMenu: TJMenu;
  jMenuItemImage: TJMenuItem;
begin
        jMenu := TJMenu.Create(NEW_OUTPUT);
        jMenuItemImage := TJMenuItem.Create(NEW_IMAGE_OUTPUT);
        jMenuItemImage.addActionListener(Self);
        jMenu.add(jMenuItemImage);
        Exit(jMenu);
end;
    

procedure TBasicProfileActionScriptCondition.addProcessor(profileActionProcessorInterface: IProfileActionScriptProcessorInterface);
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, 'addInput');
        Self.getProfileActionProcessorInterfaceVector().add(TObject(Pointer(profileActionProcessorInterface)));
        Self.add(TObject(Pointer(profileActionProcessorInterface)));
end;
    

procedure TBasicProfileActionScriptCondition.removeProcessor(profileActionProcessorInterface: IProfileActionScriptProcessorInterface);
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, 'removeInput');
        Self.getProfileActionProcessorInterfaceVector().remove(TObject(Pointer(profileActionProcessorInterface)));
        Self.remove(TObject(Pointer(profileActionProcessorInterface)));
end;
    

procedure TBasicProfileActionScriptCondition.removeCondition(profileActionScriptNodeInterface: IProfileActionScriptNodeInterface);
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, 'removeCondition');
        Self.getProfileActionConditionInterfaceVector().remove(TObject(Pointer(profileActionScriptNodeInterface)));
        Self.remove(TObject(Pointer(profileActionScriptNodeInterface)));
end;
    

procedure TBasicProfileActionScriptCondition.addCondition(profileActionScriptNodeInterface: IProfileActionScriptNodeInterface);
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, 'addCondition');
        Self.getProfileActionConditionInterfaceVector().add(TObject(Pointer(profileActionScriptNodeInterface)));
        Self.add(TObject(Pointer(profileActionScriptNodeInterface)));
end;
    

// throws Exception
function TBasicProfileActionScriptCondition.toXmlNode(document: TDocument): TNode;
var
  node: TNode;
  profileActionConditionInterfaceVector: TBasicArrayList;
  size: Integer;
  profileActionConditionInterface: IProfileActionScriptConditionInterface;
  index: Integer;
  profileActionProcessorInterfaceVector: TBasicArrayList;
  size2: Integer;
  profileActionProcessorInterface: IProfileActionScriptProcessorInterface;
begin
        node := document.createElement(TGenericProfileActionScriptConditionData.NAME);
        profileActionConditionInterfaceVector := Self.getProfileActionConditionInterfaceVector();
        size := profileActionConditionInterfaceVector.size();
        for index := 0 to size - 1 do begin
            profileActionConditionInterface := IProfileActionScriptConditionInterface(Pointer(profileActionConditionInterfaceVector.get(index)));
            node.appendChild(profileActionConditionInterface.toXmlNode(document));
        end;
        profileActionProcessorInterfaceVector := Self.getProfileActionProcessorInterfaceVector();
        size2 := profileActionProcessorInterfaceVector.size();
        for index := 0 to size2 - 1 do begin
            profileActionProcessorInterface := IProfileActionScriptProcessorInterface(Pointer(profileActionProcessorInterfaceVector.get(index)));
            node.appendChild(profileActionProcessorInterface.toXmlNode(document));
        end;
        Exit(node);
end;
    

function TBasicProfileActionScriptCondition.getProfileActionConditionInterfaceVector: TBasicArrayList;
begin
        Exit(Self.profileActionConditionInterfaceVector);
end;
    

procedure TBasicProfileActionScriptCondition.setProfileActionConditionInterfaceVector(profileActionConditionInterfaceVector: TBasicArrayList);
begin
        Self.profileActionConditionInterfaceVector := profileActionConditionInterfaceVector;
end;
    

procedure TBasicProfileActionScriptCondition.actionPerformed(actionEvent: TActionEvent);
var
  profileActionScriptNodeInterface: IProfileActionScriptNodeInterface;
begin
        try
            inherited actionPerformed(actionEvent);
            if (actionEvent.getActionCommand().compareTo(DELETE)) = (0) then begin
                if (Self.getParent() is IProfileActionScriptNodeInterface) then begin
                    profileActionScriptNodeInterface := IProfileActionScriptNodeInterface(Pointer(Self.getParent()));
                    profileActionScriptNodeInterface.removeCondition(Self);
                    TJTreeInterfaceFactory.getInstance().getJTreeInterface().updateJTree();
                end;
            end else if (actionEvent.getActionCommand().compareTo(NEW_COLOR_AT)) = (0) then begin
                Self.addCondition(TColorAtActionScriptCondition.Create());
                Self.updateTree();
            end else if (actionEvent.getActionCommand().compareTo(NEW_ALWAYS)) = (0) then begin
                Self.addCondition(TAlwaysActionScriptCondition.Create());
                Self.updateTree();
            end else if (actionEvent.getActionCommand().compareTo(NEW_TIME_INTERVAL)) = (0) then begin
                Self.addCondition(TTimeIntervalActionScriptCondition.Create());
                Self.updateTree();
            end else if (actionEvent.getActionCommand().compareTo(NEW_KEY_INPUT)) = (0) then begin
                Self.addProcessor(TKeyboardActionScriptInput.Create());
                Self.updateTree();
            end else if (actionEvent.getActionCommand().compareTo(NEW_MOUSE_INPUT)) = (0) then begin
                Self.addProcessor(TMouseActionScriptInput.Create());
                Self.updateTree();
            end else if (actionEvent.getActionCommand().compareTo(NEW_IMAGE_OUTPUT)) = (0) then begin
                Self.addProcessor(TImageActionScriptOutput.Create());
                Self.updateTree();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Error', Self, 'actionPerformed', e);
            end;
        end;
end;
    

function TBasicProfileActionScriptCondition.getProfileActionProcessorInterfaceVector: TBasicArrayList;
begin
        Exit(Self.profileActionProcessorInterfaceVector);
end;
    

procedure TBasicProfileActionScriptCondition.setProfileActionProcessorInterfaceVector(profileActionProcessorInterfaceVector: TBasicArrayList);
begin
        Self.profileActionProcessorInterfaceVector := profileActionProcessorInterfaceVector;
end;
    

procedure TBasicProfileActionScriptCondition.updateTree;
var
  treePath: TTreePath;
begin
        TJTreeInterfaceFactory.getInstance().getJTreeInterface().updateJTree();
        treePath := TTreePath.Create(Self);
        TJTreeInterfaceFactory.getInstance().getJTreeInterface().getActionScriptJTree().expandPath(treePath);
end;
    

// throws Exception
function TBasicProfileActionScriptCondition.shouldProcess(frame: Int64): Boolean;
var
  profileActionConditionInterfaceVector: TBasicArrayList;
  size: Integer;
  profileActionScriptConditionInterface: IProfileActionScriptConditionInterface;
  index: Integer;
begin
        profileActionConditionInterfaceVector := Self.getProfileActionConditionInterfaceVector();
        size := profileActionConditionInterfaceVector.size();
        for index := 0 to size - 1 do begin
            profileActionScriptConditionInterface := IProfileActionScriptConditionInterface(Pointer(profileActionConditionInterfaceVector.get(index)));
            if not (profileActionScriptConditionInterface.shouldProcess(frame)) then begin
                Exit(False);
            end;
        end;
        Exit(True);
end;
    

// throws Exception
procedure TBasicProfileActionScriptCondition.process(frame: Int64);
var
  profileActionProcessorInterfaceVector: TBasicArrayList;
  size: Integer;
  profileActionScriptProcessorInterface: IProfileActionScriptProcessorInterface;
  index: Integer;
begin
        Self.logUtil.putF(TStringMaker.Create().append('Start - Processing ').appendint(Self.getProfileActionProcessorInterfaceVector().size()).append(' inputs').toString(), Self, Self.commonStrings.PROCESS);
        profileActionProcessorInterfaceVector := Self.getProfileActionProcessorInterfaceVector();
        size := profileActionProcessorInterfaceVector.size();
        for index := 0 to size - 1 do begin
            profileActionScriptProcessorInterface := IProfileActionScriptProcessorInterface(Pointer(profileActionProcessorInterfaceVector.get(index)));
            profileActionScriptProcessorInterface.process(frame);
        end;
end;

initialization

end.

