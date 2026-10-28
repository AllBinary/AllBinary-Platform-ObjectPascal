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
unit WorkAreaJTreeJPanel;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, CanvasTreeLabel, MyCanvasEvent, MyCanvasEventService, MyCanvasEventSource, MyGraphicItemEvent, MyGraphicItemEventService, MyGraphicItemEventSource, LogUtil, CommonStrings, BasicArrayList, BasicArrayListD, JTree, MouseEvent, PopupMenuEvent, JMenuItem, JPopupMenu, JScrollPane, JPanel;

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

  TWorkAreaJTreeJPanel = class(TJPanel)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    rootTreeNode: TDefaultMutableTreeNode;
    workAreaJTree: TJTree;
    highlightedBasicArrayList: TBasicArrayList;
    copyJMenuItem: TJMenuItem;
    deleteJMenuItem: TJMenuItem;
    itemJPopupMenu: TJPopupMenu;
    itemJScrollPane1: TJScrollPane;
    rotateJMenuItem: TJMenuItem;
    workAreaPropertiesJPanel: TJPanel;
    procedure InitFields;
        constructor Create(workAreaName: string);
        procedure add(treeNode: TMutableTreeNode); virtual;
        procedure updateTree; virtual;
        function getNode(treePathArray: TArray<TTreePath>): TBasicArrayList; overload; virtual;
        function getNode(treePath: TTreePath): TDefaultMutableTreeNode; overload; virtual;
        procedure deselectAll; virtual;
        procedure selectGraphicItem(node: TDefaultMutableTreeNode); virtual;
        procedure removeGraphicItem(node: TDefaultMutableTreeNode); virtual;
        procedure removeCanvas(node: TDefaultMutableTreeNode); virtual;
        procedure remove(treePath: TTreePath); virtual;
        procedure copy; overload;
        procedure copy(treePath: TTreePath); overload;
        procedure rotate(treePath: TTreePath; angle: Double); virtual;
        function getRootTreeNode: TMutableTreeNode; virtual;
        procedure expand; overload; virtual;
        procedure expand(treePath: TTreePath); overload; virtual;
        procedure initComponents;
        procedure rotateJMenuItemMousePressed(evt: TMouseEvent);
        procedure workAreaJTreeMousePressed(evt: TMouseEvent);
        procedure itemJPopupMenuPopupMenuWillBecomeInvisible(evt: TPopupMenuEvent);
        procedure itemJPopupMenuPopupMenuWillBecomeVisible(evt: TPopupMenuEvent);
        procedure copyJMenuItemMousePressed(evt: TMouseEvent);
        procedure deleteJMenuItemMousePressed(evt: TMouseEvent);
        procedure workAreaPropertiesJPanelMousePressed(evt: TMouseEvent);
  end;

implementation
uses
  MouseAdapter, PopupMenuListener, GridLayout;



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


procedure TWorkAreaJTreeJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
  
end;
    

constructor TWorkAreaJTreeJPanel.Create(workAreaName: string);
begin
    inherited Create;
    InitFields;
        Self.initComponents();
        Self.rootTreeNode := TDefaultMutableTreeNode.Create(workAreaName);
        Self.workAreaPropertiesJPanel.removeAll();
        Self.updateTree();
        Self.highlightedBasicArrayList := TBasicArrayListD.Create();
end;
    

procedure TWorkAreaJTreeJPanel.add(treeNode: TMutableTreeNode);
begin
        Self.rootTreeNode.add(treeNode);
end;
    

procedure TWorkAreaJTreeJPanel.updateTree;
begin
        Self.workAreaJTree := TJTree.Create(Self.rootTreeNode);
        Self.workAreaJTree.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.workAreaJTreeMousePressed(evt);
end;
*));
        Self.workAreaPropertiesJPanel.removeAll();
        Self.workAreaPropertiesJPanel.add(Self.workAreaJTree);
end;
    

function TWorkAreaJTreeJPanel.getNode(treePathArray: TArray<TTreePath>): TBasicArrayList;
var
  basicArrayList: TBasicArrayList;
  index: Integer;
begin
        basicArrayList := TBasicArrayListD.Create();
        if (treePathArray) <> (nil) then begin
            for index := 0 to System.Length(treePathArray) - 1 do begin
                basicArrayList.add(Self.getNode(treePathArray[index]));
            end;
        end;
        Exit(basicArrayList);
end;
    

function TWorkAreaJTreeJPanel.getNode(treePath: TTreePath): TDefaultMutableTreeNode;
var
  obj: TArray<TObject>;
  node: TDefaultMutableTreeNode;
begin
        if (treePath) <> (nil) then begin
            obj := treePath.getPath();
            if (obj) <> (nil) then begin
                node := TDefaultMutableTreeNode(obj[(System.Length(obj)) - (1)]);
                Exit(node);
            end;
        end;
        Exit(nil);
end;
    

// throws Exception
procedure TWorkAreaJTreeJPanel.deselectAll;
var
  size: Integer;
  node: TDefaultMutableTreeNode;
  index: Integer;
begin
        size := Self.highlightedBasicArrayList.size();
        Self.logUtil.putF('size: ' + IntToStr(size), Self, 'deselectAll');
        for index := 0 to size - 1 do begin
            node := TDefaultMutableTreeNode(Self.highlightedBasicArrayList.get(index));
            TMyGraphicItemEventService.fire(TMyGraphicItemEvent.Create(TObject(TMyGraphicItemEventSource.Create(TMyGraphicItemEventService.DESELECT, node))));
        end;
        Self.highlightedBasicArrayList.clear();
end;
    

// throws Exception
procedure TWorkAreaJTreeJPanel.selectGraphicItem(node: TDefaultMutableTreeNode);
begin
        Self.highlightedBasicArrayList.add(node);
        TMyGraphicItemEventService.fire(TMyGraphicItemEvent.Create(TObject(TMyGraphicItemEventSource.Create(TMyGraphicItemEventService.SELECT, node))));
end;
    

// throws Exception
procedure TWorkAreaJTreeJPanel.removeGraphicItem(node: TDefaultMutableTreeNode);
begin
        TMyGraphicItemEventService.fire(TMyGraphicItemEvent.Create(TObject(TMyGraphicItemEventSource.Create(TMyGraphicItemEventService.DELETE_, node))));
end;
    

// throws Exception
procedure TWorkAreaJTreeJPanel.removeCanvas(node: TDefaultMutableTreeNode);
begin
        TMyCanvasEventService.fire(TMyCanvasEvent.Create(TObject(TMyCanvasEventSource.Create(TMyCanvasEventService.DELETE_, node))));
end;
    

// throws Exception
procedure TWorkAreaJTreeJPanel.remove(treePath: TTreePath);
var
  node: TDefaultMutableTreeNode;
  parent: TDefaultMutableTreeNode;
begin
        node := Self.getNode(treePath);
        if (node) <> (nil) then begin
            if (node.getUserObject() is TCanvasTreeLabel) then begin
                Self.removeCanvas(node);
            end else begin
                Self.removeGraphicItem(node);
            end;
        end;
        parent := TDefaultMutableTreeNode(node.getParent());
        parent.remove(node);
end;
    

// throws Exception
procedure TWorkAreaJTreeJPanel.copy;
var
  treePath: TTreePath;
begin
        treePath := Self.workAreaJTree.getSelectionPath();
        Self.copy(treePath);
        Self.updateTree();
        Self.expand();
        Self.repaint();
end;
    

// throws Exception
procedure TWorkAreaJTreeJPanel.copy(treePath: TTreePath);
var
  node: TDefaultMutableTreeNode;
begin
        node := Self.getNode(treePath);
        if (node) <> (nil) then begin
            if (node.getUserObject() is TCanvasTreeLabel) then begin
                TMyCanvasEventService.fire(TMyCanvasEvent.Create(TObject(TMyCanvasEventSource.Create(TMyCanvasEventService.DUPLICATE, node))));
            end else begin
                TMyGraphicItemEventService.fire(TMyGraphicItemEvent.Create(TObject(TMyGraphicItemEventSource.Create(TMyGraphicItemEventService.DUPLICATE, node))));
            end;
        end;
end;
    

// throws Exception
procedure TWorkAreaJTreeJPanel.rotate(treePath: TTreePath; angle: Double);
var
  node: TDefaultMutableTreeNode;
begin
        node := Self.getNode(treePath);
        if (node) <> (nil) then begin
            if (node.getUserObject() is TCanvasTreeLabel) then begin
                TMyCanvasEventService.fire(TMyCanvasEvent.Create(TObject(TMyCanvasEventSource.Create(TMyCanvasEventService.ROTATE, angle, node))));
            end else begin
                TMyGraphicItemEventService.fire(TMyGraphicItemEvent.Create(TObject(TMyGraphicItemEventSource.Create(TMyGraphicItemEventService.ROTATE, angle, node))));
            end;
        end;
end;
    

function TWorkAreaJTreeJPanel.getRootTreeNode: TMutableTreeNode;
begin
        Exit(Self.rootTreeNode);
end;
    

procedure TWorkAreaJTreeJPanel.expand;
begin
        Self.workAreaJTree.expandRow(0);
        Self.workAreaJTree.expandRow(1);
end;
    

procedure TWorkAreaJTreeJPanel.expand(treePath: TTreePath);
begin
        Self.workAreaJTree.expandPath(treePath);
end;
    

procedure TWorkAreaJTreeJPanel.initComponents;
begin
        Self.itemJPopupMenu := TJPopupMenu.Create();
        Self.deleteJMenuItem := TJMenuItem.Create();
        Self.copyJMenuItem := TJMenuItem.Create();
        Self.rotateJMenuItem := TJMenuItem.Create();
        Self.itemJScrollPane1 := TJScrollPane.Create();
        Self.workAreaPropertiesJPanel := TJPanel.Create();
        Self.itemJPopupMenu.addPopupMenuListener(TPopupMenuListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.popupMenuCanceled(evt: TPopupMenuEvent);
begin
end;
            

        procedure T.popupMenuWillBecomeInvisible(evt: TPopupMenuEvent);
begin
                Self.itemJPopupMenuPopupMenuWillBecomeInvisible(evt);
end;
            

        procedure T.popupMenuWillBecomeVisible(evt: TPopupMenuEvent);
begin
                Self.itemJPopupMenuPopupMenuWillBecomeVisible(evt);
end;
*));
        Self.deleteJMenuItem.setText('Delete');
        Self.deleteJMenuItem.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.deleteJMenuItemMousePressed(evt);
end;
*));
        Self.itemJPopupMenu.add(Self.deleteJMenuItem);
        Self.copyJMenuItem.setText('Copy');
        Self.copyJMenuItem.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.copyJMenuItemMousePressed(evt);
end;
*));
        Self.itemJPopupMenu.add(Self.copyJMenuItem);
        Self.rotateJMenuItem.setText('Rotate 45*');
        Self.rotateJMenuItem.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.rotateJMenuItemMousePressed(evt);
end;
*));
        Self.itemJPopupMenu.add(Self.rotateJMenuItem);
        Self.setLayout(TGridLayout.Create(1, 1));
        Self.workAreaPropertiesJPanel.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.workAreaPropertiesJPanelMousePressed(evt);
end;
*));
        Self.workAreaPropertiesJPanel.setLayout(TGridLayout.Create(1, 0));
        Self.itemJScrollPane1.setViewportView(Self.workAreaPropertiesJPanel);
        Self.add(Self.itemJScrollPane1);
end;
    

procedure TWorkAreaJTreeJPanel.rotateJMenuItemMousePressed(evt: TMouseEvent);
var
  treePath: TTreePath;
begin
        try
            treePath := Self.workAreaJTree.getSelectionPath();
            Self.rotate(treePath, 45);
            Self.updateTree();
            Self.expand();
            Self.repaint();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'rotateJMenuItemMousePressed', e);
            end;
        end;
end;
    

procedure TWorkAreaJTreeJPanel.workAreaJTreeMousePressed(evt: TMouseEvent);
var
  selectedTreePathArray: TArray<TTreePath>;
  list: TBasicArrayList;
  defaultMutableTreeNode: TDefaultMutableTreeNode;
  index: Integer;
begin
        try
            selectedTreePathArray := Self.workAreaJTree.getSelectionPaths();
            list := Self.getNode(selectedTreePathArray);
            if (list.size()) > (0) then begin
                if (((evt.getModifiers()) and (evt.BUTTON3_MASK))) = (evt.BUTTON3_MASK) then begin
                    for index := 0 to System.Length(selectedTreePathArray) - 1 do begin
                        defaultMutableTreeNode := TDefaultMutableTreeNode(list.get(index));
                        if (defaultMutableTreeNode.getUserObject() is TCanvasTreeLabel) then begin
                            Self.itemJPopupMenu.show(Self, evt.getX(), evt.getY());
                        end else begin
                            Self.itemJPopupMenu.show(Self, evt.getX(), evt.getY());
                        end;
                    end;
                end;
                if (((evt.getModifiers()) and (evt.BUTTON1_MASK))) = (evt.BUTTON1_MASK) then begin
                    Self.deselectAll();
                    for index := 0 to System.Length(selectedTreePathArray) - 1 do begin
                        defaultMutableTreeNode := TDefaultMutableTreeNode(list.get(index));
                        if (defaultMutableTreeNode.getUserObject() is TCanvasTreeLabel) then begin
                            TMyCanvasEventService.fire(TMyCanvasEvent.Create(TObject(TMyCanvasEventSource.Create(TMyCanvasEventService.SELECT, defaultMutableTreeNode))));
                        end else begin
                            Self.selectGraphicItem(defaultMutableTreeNode);
                        end;
                    end;
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'workAreaJTreeMousePressed', e);
            end;
        end;
end;
    

procedure TWorkAreaJTreeJPanel.itemJPopupMenuPopupMenuWillBecomeInvisible(evt: TPopupMenuEvent);
begin
end;
    

procedure TWorkAreaJTreeJPanel.itemJPopupMenuPopupMenuWillBecomeVisible(evt: TPopupMenuEvent);
begin
end;
    

procedure TWorkAreaJTreeJPanel.copyJMenuItemMousePressed(evt: TMouseEvent);
begin
        try
            Self.copy();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'copyJMenuItemMousePressed', e);
            end;
        end;
end;
    

procedure TWorkAreaJTreeJPanel.deleteJMenuItemMousePressed(evt: TMouseEvent);
var
  selectedTreePathArray: TArray<TTreePath>;
  treePath: TTreePath;
  index: Integer;
begin
        try
            selectedTreePathArray := Self.workAreaJTree.getSelectionPaths();
            for index := 0 to System.Length(selectedTreePathArray) - 1 do begin
                treePath := selectedTreePathArray[index];
                Self.remove(treePath);
                Self.updateTree();
                Self.expand();
                Self.repaint();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'deleteJMenuItemMousePressed', e);
            end;
        end;
end;
    

procedure TWorkAreaJTreeJPanel.workAreaPropertiesJPanelMousePressed(evt: TMouseEvent);
begin
end;

initialization

end.

