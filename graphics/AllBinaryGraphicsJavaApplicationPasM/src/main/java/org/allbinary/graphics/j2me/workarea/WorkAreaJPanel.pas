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
// package org.allbinary.graphics.j2me.workarea
unit WorkAreaJPanel;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, DomHelper, StatusFactory, CanvasDom, CanvasJPanel, MyCanvasEvent, MyCanvasEventListener, MyCanvasEventService, PropertiesJPanel, ToolJPanel, LOGGING, StdUtil, LogUtil, BasicArrayList, Document, Node, ARunnable, JPanel, WorkAreaJTreeJPanel, Dimension, WorkAreaDom, KeyEvent, WorkAreaJPanelInterface;

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

  TWorkAreaJPanel = class(TJPanel, IWorkAreaJPanelInterface, IMyCanvasEventListener, IEventListener, IRunnable)
  public
    logUtil: TLogUtil;
    canvasJPanelList: TLinkedList;
    canvasHolderJPanel: TJPanel;
    name: string;
    selectedFrame: Integer;
    propertiesJPanel: TPropertiesJPanel;
    workAreaJTreeJPanel: TWorkAreaJTreeJPanel;
    isPlaying_: Boolean;
    innerJPanel: TJPanel;
    class var document: TDocument;
    procedure InitFields;
        constructor Create(name: string; dimension: TDimension; x: Integer; y: Integer); overload;
        constructor Create(workAreaDom: TWorkAreaDom; dimension: TDimension); overload;
        procedure initMyComponents(dimension: TDimension);
        function getCanvasHashMap: TJavaHashMap;
        procedure play; virtual;
        procedure stop; virtual;
        function isPlaying: Boolean; virtual;
        function getName: string; virtual;
        procedure setName(value: string); virtual;
        procedure disableCanvas; virtual;
        procedure enableCanvas; virtual;
        procedure deselect; virtual;
        procedure select; overload; virtual;
        procedure changeZoom(factor: Integer); virtual;
        function getCurrentFrame: TCanvasJPanel; virtual;
        procedure initDuplicate(newCanvasJPanel: TCanvasJPanel);
        procedure duplicate(treeNode: TMutableTreeNode); overload;
        procedure autoRotate(increments: Integer; totalAngle: Integer); virtual;
        procedure explodeAll; virtual;
        procedure autoExplode(numberOfFrames: Integer; explodeType: Integer); overload; virtual;
        procedure autoMirror; virtual;
        procedure select(index: Integer); overload;
        procedure select(treeNode: TMutableTreeNode); overload;
        class function getDocument: TDocument; static;
        function toDocument: TDocument; virtual;
        procedure initComponents;
        procedure innerJPanelKeyReleased(evt: TKeyEvent);
        procedure innerJPanelKeyPressed(evt: TKeyEvent);
        procedure innerJPanelKeyTyped(evt: TKeyEvent);
        procedure keyPressed(keyEvent: TKeyEvent); virtual;
        procedure keyReleased(keyEvent: TKeyEvent); virtual;
        procedure keyTyped(keyEvent: TKeyEvent); virtual;
        procedure delete_(evt: TMyCanvasEvent); virtual;
        procedure duplicate(evt: TMyCanvasEvent); overload; virtual;
        procedure select(evt: TMyCanvasEvent); overload; virtual;
        procedure rotate(evt: TMyCanvasEvent); virtual;
        procedure explode(evt: TMyCanvasEvent); virtual;
        procedure autoExplode(evt: TMyCanvasEvent); overload; virtual;
        procedure center; overload; virtual;
        procedure center(evt: TMyCanvasEvent); overload; virtual;
        procedure run; virtual;
  end;

implementation
uses
  Component, GridLayout, GridBagLayout, GridBagConstraints, KeyAdapter;



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


procedure TWorkAreaJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
  Self.isPlaying_ := False;
  
end;
    

constructor TWorkAreaJPanel.Create(name: string; dimension: TDimension; x: Integer; y: Integer);
var
  canvasJPanel: TCanvasJPanel;
begin
    inherited Create;
    InitFields;
        try
            Self.initComponents();
            Self.name := name;
            Self.initMyComponents(dimension);
            Self.workAreaJTreeJPanel := TWorkAreaJTreeJPanel.Create(Self.name);
            canvasJPanel := TCanvasJPanel.Create(Self.workAreaJTreeJPanel, Self.getSize(), x, y);
            Self.canvasJPanelList.add(canvasJPanel);
            Self.selectedFrame := 0;
            Self.propertiesJPanel.set_(Self.workAreaJTreeJPanel);
            Self.canvasHolderJPanel.add(TComponent(canvasJPanel));
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

constructor TWorkAreaJPanel.Create(workAreaDom: TWorkAreaDom; dimension: TDimension);
var
  canvasNodeList: TBasicArrayList;
  numberOfFrames: Integer;
  node: TNode;
  canvasJPanel: TCanvasJPanel;
  index: Integer;
begin
    inherited Create;
    InitFields;
        try
            Self.initComponents();
            Self.name := workAreaDom.getName();
            Self.initMyComponents(dimension);
            canvasNodeList := workAreaDom.getCanvasNodes();
            numberOfFrames := canvasNodeList.size();
            for index := 0 to numberOfFrames - 1 do begin
                node := TNode(canvasNodeList.get(index));
                canvasJPanel := TCanvasJPanel.Create(Self.workAreaJTreeJPanel, Self.getSize(), TCanvasDom.Create(node));
                Self.canvasJPanelList.add(canvasJPanel);
            end;
            Self.selectedFrame := 0;
            Self.canvasHolderJPanel.add(TComponent(Self.getCurrentFrame()));
            Self.propertiesJPanel.set_(Self.workAreaJTreeJPanel);
        except
            on e: SysUtils.Exception do begin
            if LOGGING.contains(LOGGING.LOADINGERROR) then begin
                Self.logUtil.put('Constructor Error', Self, 'WorkAreaJPanel', e);
            end;
            raise e;
            end;
        end;
end;
    

procedure TWorkAreaJPanel.initMyComponents(dimension: TDimension);
var
  gridBagLayout: TGridBagLayout;
  gridBagConstraints: TGridBagConstraints;
  toolJPanel: TToolJPanel;
begin
        Self.workAreaJTreeJPanel := TWorkAreaJTreeJPanel.Create(Self.name);
        Self.canvasHolderJPanel := TJPanel.Create();
        Self.canvasHolderJPanel.setSize(dimension);
        Self.canvasHolderJPanel.setLayout(TGridLayout.Create(1, 1));
        Self.setSize(dimension);
        Self.canvasJPanelList := TLinkedList.Create();
        gridBagLayout := TGridBagLayout.Create();
        gridBagConstraints := TGridBagConstraints.Create();
        Self.innerJPanel.setLayout(gridBagLayout);
        gridBagConstraints.gridx := 0;
        gridBagConstraints.gridy := 0;
        gridBagConstraints.gridwidth := 1;
        gridBagConstraints.fill := Tjava.awt.GridBagConstraints.BOTH;
        gridBagConstraints.weightx := .05;
        gridBagConstraints.weighty := .05;
        toolJPanel := TToolJPanel.Create();
        gridBagLayout.setConstraints(toolJPanel, gridBagConstraints);
        Self.innerJPanel.add(toolJPanel);
        gridBagConstraints := TGridBagConstraints.Create();
        gridBagConstraints.gridx := 1;
        gridBagConstraints.gridy := 0;
        gridBagConstraints.gridwidth := 6;
        gridBagConstraints.fill := Tjava.awt.GridBagConstraints.BOTH;
        gridBagConstraints.weightx := 1;
        gridBagConstraints.weighty := 1;
        gridBagLayout.setConstraints(Self.canvasHolderJPanel, gridBagConstraints);
        Self.innerJPanel.add(Self.canvasHolderJPanel);
        gridBagConstraints := TGridBagConstraints.Create();
        gridBagConstraints.gridx := 8;
        gridBagConstraints.gridy := 0;
        gridBagConstraints.gridwidth := Tjava.awt.GridBagConstraints.REMAINDER;
        gridBagConstraints.fill := Tjava.awt.GridBagConstraints.BOTH;
        gridBagConstraints.weightx := .1;
        gridBagConstraints.weighty := .1;
        Self.propertiesJPanel := TPropertiesJPanel.Create();
        gridBagLayout.setConstraints(Self.propertiesJPanel, gridBagConstraints);
        Self.innerJPanel.add(Self.propertiesJPanel);
        TMyCanvasEventService.addListener(TMyCanvasEventListener(Self));
end;
    

function TWorkAreaJPanel.getCanvasHashMap: TJavaHashMap;
var
  canvasJPanelHashMap: TJavaHashMap;
  size: Integer;
  canvasJPanel: TCanvasJPanel;
  index: Integer;
begin
        canvasJPanelHashMap := TStdUtil.getInstance().createHashMap();
        size := Self.canvasJPanelList.size();
        for index := 0 to size - 1 do begin
            canvasJPanel := TCanvasJPanel(Self.canvasJPanelList.get(index));
            canvasJPanelHashMap.put(canvasJPanel.getTreeNode(), index);
        end;
        Exit(canvasJPanelHashMap);
end;
    

procedure TWorkAreaJPanel.play;
begin
    TJava.MonitorEnter(Self);
    try
        Self.isPlaying_ := True;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TWorkAreaJPanel.stop;
begin
    TJava.MonitorEnter(Self);
    try
        Self.isPlaying_ := False;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TWorkAreaJPanel.isPlaying: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.isPlaying_);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TWorkAreaJPanel.getName: string;
begin
        Exit(Self.name);
end;
    

procedure TWorkAreaJPanel.setName(value: string);
begin
        Self.name := value;
end;
    

procedure TWorkAreaJPanel.disableCanvas;
begin
        Self.canvasHolderJPanel.removeAll();
end;
    

procedure TWorkAreaJPanel.enableCanvas;
begin
        Self.canvasHolderJPanel.add(TComponent(Self.getCurrentFrame()));
end;
    

procedure TWorkAreaJPanel.deselect;
begin
        inherited setVisible(False);
end;
    

procedure TWorkAreaJPanel.select;
var
  component: TComponent;
begin
        inherited setVisible(True);
        if (Self.canvasHolderJPanel.getComponentCount()) = (1) then begin
            component := Self.canvasHolderJPanel.getComponent(0);
            if (component) <> (nil) then begin
                component.repaint();
            end;
        end;
end;
    

procedure TWorkAreaJPanel.changeZoom(factor: Integer);
var
  size: Integer;
  canvasJPanel: TCanvasJPanel;
  index: Integer;
begin
        size := Self.canvasJPanelList.size();
        for index := 0 to size - 1 do begin
            canvasJPanel := TCanvasJPanel(Self.canvasJPanelList.get(index));
            canvasJPanel.getGrid().setZoom((canvasJPanel.getGrid().getZoom()) + (factor));
        end;
end;
    

function TWorkAreaJPanel.getCurrentFrame: TCanvasJPanel;
begin
        Exit(TCanvasJPanel(Self.canvasJPanelList.get(Self.selectedFrame)));
end;
    

procedure TWorkAreaJPanel.initDuplicate(newCanvasJPanel: TCanvasJPanel);
begin
        if (newCanvasJPanel) <> (nil) then begin
            Self.canvasJPanelList.add(newCanvasJPanel);
            Self.select((Self.canvasJPanelList.size()) - (1));
        end;
end;
    

// throws Exception
procedure TWorkAreaJPanel.duplicate(treeNode: TMutableTreeNode);
var
  canvasJPanelHashMap: TJavaHashMap;
  frameInteger: Integer;
  canvasJPanel: TCanvasJPanel;
begin
        canvasJPanelHashMap := Self.getCanvasHashMap();
        if canvasJPanelHashMap.containsKey(treeNode) then begin
            frameInteger := Integer(canvasJPanelHashMap.get(treeNode));
            canvasJPanel := TCanvasJPanel(Self.canvasJPanelList.get(frameInteger));
            Self.initDuplicate(canvasJPanel.duplicate());
        end;
end;
    

// throws Exception
procedure TWorkAreaJPanel.autoRotate(increments: Integer; totalAngle: Integer);
var
  incrementAngle: Integer;
  canvasJPanel: TCanvasJPanel;
  newCanvasJPanel: TCanvasJPanel;
  index: Integer;
begin
        incrementAngle := ((totalAngle) div (increments));
        for index := 1 to increments - 1 do begin
            canvasJPanel := TCanvasJPanel(Self.getCurrentFrame());
            newCanvasJPanel := canvasJPanel.duplicate();
            newCanvasJPanel.setAngle((incrementAngle) * (index));
            Self.initDuplicate(newCanvasJPanel);
        end;
end;
    

procedure TWorkAreaJPanel.explodeAll;
var
  canvasJPanel: TCanvasJPanel;
begin
        canvasJPanel := TCanvasJPanel(Self.getCurrentFrame());
        canvasJPanel.explodeAll();
end;
    

// throws Exception
procedure TWorkAreaJPanel.autoExplode(numberOfFrames: Integer; explodeType: Integer);
var
  canvasJPanel: TCanvasJPanel;
  newCanvasJPanel: TCanvasJPanel;
  index: Integer;
begin
        for index := 1 to numberOfFrames - 1 do begin
            canvasJPanel := TCanvasJPanel(Self.getCurrentFrame());
            newCanvasJPanel := canvasJPanel.duplicate();
            newCanvasJPanel.explode((index) + (1), explodeType);
            Self.initDuplicate(newCanvasJPanel);
        end;
end;
    

// throws Exception
procedure TWorkAreaJPanel.autoMirror;
var
  canvasJPanel: TCanvasJPanel;
  newCanvasJPanel: TCanvasJPanel;
begin
        canvasJPanel := TCanvasJPanel(Self.getCurrentFrame());
        newCanvasJPanel := canvasJPanel.duplicate();
        newCanvasJPanel.mirror();
        Self.initDuplicate(newCanvasJPanel);
end;
    

procedure TWorkAreaJPanel.select(index: Integer);
var
  canvasJPanel: TCanvasJPanel;
begin
    TJava.MonitorEnter(Self);
    try
        if (index) < (Self.canvasJPanelList.size()) then begin
            canvasJPanel := TCanvasJPanel(Self.canvasJPanelList.get(index));
            if (canvasJPanel) <> (nil) then begin
                Self.canvasHolderJPanel.removeAll();
                Self.canvasHolderJPanel.add(canvasJPanel);
                Self.selectedFrame := index;
                canvasJPanel.changed();
                Self.canvasHolderJPanel.repaint();
                canvasJPanel.repaint();
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TWorkAreaJPanel.select(treeNode: TMutableTreeNode);
var
  canvasJPanelHashMap: TJavaHashMap;
  frameInteger: Integer;
begin
        canvasJPanelHashMap := Self.getCanvasHashMap();
        frameInteger := Integer(canvasJPanelHashMap.get(treeNode));
        if (frameInteger) <> (0) then begin
            Self.select(frameInteger);
        end;
end;
    

class function TWorkAreaJPanel.getDocument: TDocument;
begin
        Exit(TWorkAreaJPanel.document);
end;
    

// throws Exception
function TWorkAreaJPanel.toDocument: TDocument;
var
  workAreaNode: TNode;
  nameNode: TNode;
  nameTextNode: TNode;
  framesNode: TNode;
  size: Integer;
  canvasJPanel: TCanvasJPanel;
  index: Integer;
begin
        TWorkAreaJPanel.document := TDomHelper.getInstance().createDocument();
        workAreaNode := TWorkAreaJPanel.document.createElement(TWorkAreaDom.WORKAREA);
        nameNode := TWorkAreaJPanel.document.createElement(TWorkAreaDom.NAME);
        nameTextNode := TWorkAreaJPanel.document.createTextNode(Self.name);
        nameNode.appendChild(nameTextNode);
        framesNode := TWorkAreaJPanel.document.createElement(TWorkAreaDom.FRAMES);
        size := Self.canvasJPanelList.size();
        for index := 0 to size - 1 do begin
            canvasJPanel := TCanvasJPanel(Self.canvasJPanelList.get(index));
            framesNode.appendChild(canvasJPanel.toDom());
        end;
        workAreaNode.appendChild(nameNode);
        workAreaNode.appendChild(framesNode);
        TWorkAreaJPanel.document.appendChild(workAreaNode);
        Exit(TWorkAreaJPanel.document);
end;
    

procedure TWorkAreaJPanel.initComponents;
begin
        Self.innerJPanel := TJPanel.Create();
        Self.setLayout(TGridLayout.Create(1, 1));
        Self.innerJPanel.addKeyListener(TKeyAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.keyTyped(evt: TKeyEvent);
begin
                Self.innerJPanelKeyTyped(evt);
end;
            

        procedure T.keyPressed(evt: TKeyEvent);
begin
                Self.innerJPanelKeyPressed(evt);
end;
            

        procedure T.keyReleased(evt: TKeyEvent);
begin
                Self.innerJPanelKeyReleased(evt);
end;
*));
        Self.add(Self.innerJPanel);
end;
    

procedure TWorkAreaJPanel.innerJPanelKeyReleased(evt: TKeyEvent);
begin
        TStatusFactory.getInstance().setStatus('Key Pressed1');
end;
    

procedure TWorkAreaJPanel.innerJPanelKeyPressed(evt: TKeyEvent);
begin
        TStatusFactory.getInstance().setStatus('Key Pressed2');
end;
    

procedure TWorkAreaJPanel.innerJPanelKeyTyped(evt: TKeyEvent);
begin
        TStatusFactory.getInstance().setStatus('Key Pressed3');
end;
    

procedure TWorkAreaJPanel.keyPressed(keyEvent: TKeyEvent);
begin
        Self.getCurrentFrame().keyPressed(keyEvent);
end;
    

procedure TWorkAreaJPanel.keyReleased(keyEvent: TKeyEvent);
begin
end;
    

procedure TWorkAreaJPanel.keyTyped(keyEvent: TKeyEvent);
begin
end;
    

procedure TWorkAreaJPanel.delete_(evt: TMyCanvasEvent);
var
  canvasJPanelHashMap: TJavaHashMap;
  frameInt: Integer;
begin
        canvasJPanelHashMap := Self.getCanvasHashMap();
        if canvasJPanelHashMap.containsKey(evt.getTreeNode()) then begin
            Self.canvasHolderJPanel.removeAll();
            frameInt := Integer(canvasJPanelHashMap.get(evt.getTreeNode()));
            Self.canvasJPanelList.remove(frameInt);
            Self.select(frameInt);
        end;
end;
    

// throws Exception
procedure TWorkAreaJPanel.duplicate(evt: TMyCanvasEvent);
begin
        Self.duplicate(evt.getTreeNode());
end;
    

procedure TWorkAreaJPanel.select(evt: TMyCanvasEvent);
begin
        Self.select(evt.getTreeNode());
        TStatusFactory.getInstance().setStatus('Frame Selected');
end;
    

procedure TWorkAreaJPanel.rotate(evt: TMyCanvasEvent);
var
  canvasJPanelHashMap: TJavaHashMap;
  treeNode: TMutableTreeNode;
  frameInt: Integer;
  canvasJPanel: TCanvasJPanel;
begin
        canvasJPanelHashMap := Self.getCanvasHashMap();
        treeNode := evt.getTreeNode();
        frameInt := Integer(canvasJPanelHashMap.get(evt.getTreeNode()));
        canvasJPanel := TCanvasJPanel(Self.canvasJPanelList.get(frameInt));
        if (canvasJPanel) <> (nil) then begin
            canvasJPanel.addAngle(evt.getAngle());
            Self.select(frameInt);
        end;
        TStatusFactory.getInstance().setStatus('Canvas Rotated');
end;
    

procedure TWorkAreaJPanel.explode(evt: TMyCanvasEvent);
begin
        Self.explodeAll();
end;
    

// throws Exception
procedure TWorkAreaJPanel.autoExplode(evt: TMyCanvasEvent);
begin
        Self.autoExplode(10, 0);
end;
    

// throws Exception
procedure TWorkAreaJPanel.center;
var
  canvasJPanel: TCanvasJPanel;
begin
        canvasJPanel := TCanvasJPanel(Self.getCurrentFrame());
        canvasJPanel.center();
end;
    

// throws Exception
procedure TWorkAreaJPanel.center(evt: TMyCanvasEvent);
begin
        Self.center();
end;
    

procedure TWorkAreaJPanel.run;
var
  size: Integer;
  index: Integer;
begin
        try
            while True do begin
                if Self.isPlaying() then begin
                    size := Self.canvasJPanelList.size();
                    for index := 0 to size - 1 do begin
                        if not (Self.isPlaying()) then begin
                            Break;
                        end;
                        Self.select(index);
                        Sleep(100);
                    end;
                end else begin
                    Sleep(500);
                end;
                Sleep(250);
            end;
        except
            on e: SysUtils.Exception do begin
            end;
        end;
end;

initialization
  

end.

