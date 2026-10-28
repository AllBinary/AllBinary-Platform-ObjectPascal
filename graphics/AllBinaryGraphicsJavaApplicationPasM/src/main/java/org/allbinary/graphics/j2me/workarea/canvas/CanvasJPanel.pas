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
// package org.allbinary.graphics.j2me.workarea.canvas
unit CanvasJPanel;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, VectorExplosionGenerator, VectorMirrorGenerator, VectorCenterGenerator, GameInputStrings, GPoint, PointFactory, BasicColorFactory, GraphicsException, StatusFactory, WorkAreaJTreeJPanel, GraphicItemFactory, GraphicItemInterface, LinesGraphicItem, MouseStrings, Points, ToolFactory, MyGraphicItemEvent, MyGraphicItemEventListener, MyGraphicItemEventService, RandomRotationFactory, LOGGING, StdUtil, GuiLog, LogUtil, StringMaker, PositionStrings, CommonSeps, CommonStrings, BasicArrayList, BasicArrayListD, Node, IntegerDimension, CanvasTreeLabel, Color, Grid, Dimension, CanvasDom, Graphics, MouseEvent, KeyEvent, JPanel, MouseListener, MouseMotionListener, KeyListener;

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

  TCanvasJPanel = class(TJPanel, IMouseListener, IMouseMotionListener, IKeyListener, IMyGraphicItemEventListener)
  public
    logUtil: TLogUtil;
    guiLog: TGuiLog;
    gameInputStrings: TGameInputStrings;
    selectedTool: IGraphicItemInterface;
    graphicItemHashMap: TJavaHashMap;
    canvasDimension: TIntegerDimension;
    angle: Double;
    canvasTreeNode: TDefaultMutableTreeNode;
    frameLabel: TCanvasTreeLabel;
    workAreaJTreeJPanel: TWorkAreaJTreeJPanel;
    grid: TGrid;
    class var frame: Integer;
    class var gridColor: TColor;
    class var backgroundColor: TColor;
    procedure InitFields;
        constructor Create(workAreaJTreeJPanel: TWorkAreaJTreeJPanel; dimension: TDimension; x: Integer; y: Integer); overload;
        constructor Create(workAreaJTreeJPanel: TWorkAreaJTreeJPanel; dimension: TDimension; canvasDom: TCanvasDom); overload;
        procedure initMyComponents;
        function getTreeNode: TMutableTreeNode; virtual;
        procedure initComponents;
        procedure setCanvasSize(x: Integer; y: Integer); virtual;
        procedure setGrid(point: TGPoint); overload; virtual;
        procedure setGrid(xSize: Integer; ySize: Integer); overload; virtual;
        procedure setDefaultGrid; virtual;
        function getAngle: Double; virtual;
        procedure setAngle(angle: Double); virtual;
        procedure addAngle(angle: Double); virtual;
        procedure explodeAll; virtual;
        procedure explode(howMuch: Integer; explosionType: Integer); virtual;
        procedure mirror; virtual;
        procedure center; virtual;
        procedure setNewTool; virtual;
        procedure duplicateGraphicItem(graphicItem: IGraphicItemInterface); virtual;
        procedure duplicateGraphicItemHashMap(hashMap: TJavaHashMap); virtual;
        function getGraphicItemHashMap: TJavaHashMap; virtual;
        function getXPixelsPerWorkAreaPixel: Integer; virtual;
        function getYPixelsPerWorkAreaPixel: Integer; virtual;
        function getSelectedTool: IGraphicItemInterface; virtual;
        procedure drawItems(graphics: TGraphics); virtual;
        procedure drawGrid(graphics: TGraphics); virtual;
        procedure paint(graphics: TGraphics); virtual;
        procedure repaint; virtual;
        function toDom: TNode; virtual;
        procedure changed; virtual;
        procedure mouseClicked(mouseEvent: TMouseEvent); virtual;
        procedure mouseEntered(mouseEvent: TMouseEvent); virtual;
        procedure mouseExited(mouseEvent: TMouseEvent); virtual;
        procedure mousePressed(mouseEvent: TMouseEvent); virtual;
        procedure mouseReleased(mouseEvent: TMouseEvent); virtual;
        procedure mouseDragged(mouseEvent: TMouseEvent); virtual;
        procedure mouseMoved(mouseEvent: TMouseEvent); virtual;
        function logMouseEvent(mouseEvent: TMouseEvent): string;
        procedure keyPressed(keyEvent: TKeyEvent); virtual;
        procedure keyReleased(keyEvent: TKeyEvent); virtual;
        procedure keyTyped(keyEvent: TKeyEvent); virtual;
        procedure delete_(evt: TMyGraphicItemEvent); virtual;
        procedure deselect(evt: TMyGraphicItemEvent); virtual;
        procedure highlight(evt: TMyGraphicItemEvent); virtual;
        function duplicate: TCanvasJPanel; overload; virtual;
        procedure duplicate(event: TMyGraphicItemEvent); overload; virtual;
        procedure rotate(event: TMyGraphicItemEvent); virtual;
        function getCanvasDimension: TIntegerDimension; virtual;
        procedure setCanvasDimension(canvasDimension: TIntegerDimension); virtual;
        function getGrid: TGrid; virtual;
  end;

implementation
uses
  GridLayout;



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


procedure TCanvasJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.guiLog := TGuiLog.getInstance();
  Self.gameInputStrings := TGameInputStrings.getInstance();
  Self.selectedTool := nil;
  
  
  Self.angle := 0.0;
  
  
  
  
end;
    

constructor TCanvasJPanel.Create(workAreaJTreeJPanel: TWorkAreaJTreeJPanel; dimension: TDimension; x: Integer; y: Integer);
begin
    inherited Create;
    InitFields;
        Self.grid := TGrid.Create();
        try
            Self.workAreaJTreeJPanel := workAreaJTreeJPanel;
            Self.initComponents();
            Self.initMyComponents();
            Self.setSize(dimension);
            Self.setCanvasSize(x, y);
        except
            on e: SysUtils.Exception do begin
            if LOGGING.contains(LOGGING.GRAPHICSCREATION) then begin
                Self.guiLog.put('Constructor Error', Self, 'contructor', e);
            end;
            end;
        end;
end;
    

constructor TCanvasJPanel.Create(workAreaJTreeJPanel: TWorkAreaJTreeJPanel; dimension: TDimension; canvasDom: TCanvasDom);
var
  graphicItemArray: TArray<TObject>;
  size: Integer;
  graphicItemTreeNode: TMutableTreeNode;
  index: Integer;
begin
    inherited Create;
    InitFields;
        Self.grid := TGrid.Create(canvasDom.getGrid());
        try
            Self.workAreaJTreeJPanel := workAreaJTreeJPanel;
            Self.initComponents();
            Self.initMyComponents();
            Self.setSize(dimension);
            Self.setCanvasSize(canvasDom.getDimension().getWidth(), canvasDom.getDimension().getHeight());
            Self.graphicItemHashMap := canvasDom.getGraphicItemHashMap();
            graphicItemArray := Self.graphicItemHashMap.keySet().toArray();
            size := System.Length(graphicItemArray);
            for index := 0 to size - 1 do begin
                graphicItemTreeNode := TMutableTreeNode(graphicItemArray[index]);
                Self.canvasTreeNode.add(graphicItemTreeNode);
            end;
            Self.repaint();
            Self.setAngle(canvasDom.getAngle());
            Self.workAreaJTreeJPanel.updateTree();
            Self.workAreaJTreeJPanel.expand();
            Self.workAreaJTreeJPanel.repaint();
        except
            on e: SysUtils.Exception do begin
            if LOGGING.contains(LOGGING.GRAPHICSCREATION) then begin
                Self.guiLog.put('Constructor Error', Self, 'contructor', e);
            end;
            end;
        end;
end;
    

// throws Exception
procedure TCanvasJPanel.initMyComponents;
begin
        Self.frameLabel := TCanvasTreeLabel.Create('FrameLabel' + TCanvasJPanel.frame.toString());
        Self.canvasTreeNode := TDefaultMutableTreeNode.Create(Self.frameLabel);
        Inc(TCanvasJPanel.frame);
        Self.workAreaJTreeJPanel.add(Self.getTreeNode());
        Self.graphicItemHashMap := TStdUtil.getInstance().createHashMap();
        Self.grid.grid := TPointFactory.getInstance().createXY(0, 0);
        Self.setCanvasDimension(TIntegerDimension.Create(0, 0));
        Self.selectedTool := nil;
        Self.addKeyListener(Self);
        Self.addMouseListener(Self);
        Self.addMouseMotionListener(Self);
        TMyGraphicItemEventService.addListener(Self);
end;
    

function TCanvasJPanel.getTreeNode: TMutableTreeNode;
begin
        Exit(Self.canvasTreeNode);
end;
    

procedure TCanvasJPanel.initComponents;
begin
        Self.setLayout(TGridLayout.Create(1, 1));
end;
    

// throws Exception
procedure TCanvasJPanel.setCanvasSize(x: Integer; y: Integer);
begin
        Self.grid.isGridPossible := True;
        if (x) <= (0) then begin
            Self.grid.isGridPossible := False;
            raise TGraphicsException.Create('X Size Error: ' + IntToStr(x), Self, 'setWorkAreaSize');
        end;
        if (y) <= (0) then begin
            Self.grid.isGridPossible := False;
            raise TGraphicsException.Create('Y Size Error: ' + IntToStr(y), Self, 'setWorkAreaSize');
        end;
        if (x) > (Self.getWidth()) then begin
            Self.grid.isGridPossible := False;
        end;
        if (y) > (Self.getHeight()) then begin
            Self.grid.isGridPossible := False;
        end;
        Self.setCanvasDimension(TIntegerDimension.Create(x, y));
        Self.grid.isChanged := True;
end;
    

procedure TCanvasJPanel.setGrid(point: TGPoint);
begin
        Self.setGrid(point.getX(), point.getY());
end;
    

procedure TCanvasJPanel.setGrid(xSize: Integer; ySize: Integer);
begin
        try
            if ((xSize) >= ((Self.getCanvasDimension().getWidth()) / (2))) or ((xSize) < (1)) then begin
                raise TGraphicsException.Create('X Size Error: ' + IntToStr(xSize) + ' WorkArea X: ' + TJava.ToString(Self.getCanvasDimension().getWidth()), Self, 'setGrid');
            end;
            if ((ySize) >= ((Self.getCanvasDimension().getHeight()) / (2))) or ((ySize) < (1)) then begin
                raise TGraphicsException.Create('Y Size Error' + IntToStr(ySize) + ' WorkArea Y: ' + TJava.ToString(Self.getCanvasDimension().getHeight()), Self, 'setGrid');
            end;
            Self.grid.grid := TPointFactory.getInstance().createXY(xSize, ySize);
            Self.grid.isChanged := True;
        except
            on e: SysUtils.Exception do begin
            end;
        end;
end;
    

// throws Exception
procedure TCanvasJPanel.setDefaultGrid;
var
  xPixelsPerWorkAreaPixel: Integer;
  yPixelsPerWorkAreaPixel: Integer;
begin
        xPixelsPerWorkAreaPixel := (Self.getWidth()) / (Self.getCanvasDimension().getWidth());
        yPixelsPerWorkAreaPixel := (Self.getHeight()) / (Self.getCanvasDimension().getHeight());
        Self.setGrid(1, 1);
        Self.grid.isChanged := True;
end;
    

function TCanvasJPanel.getAngle: Double;
begin
        Exit(Self.angle);
end;
    

procedure TCanvasJPanel.setAngle(angle: Double);
begin
        Self.angle := angle;
end;
    

procedure TCanvasJPanel.addAngle(angle: Double);
begin
        Self.setAngle((Self.angle) + (angle));
end;
    

procedure TCanvasJPanel.explodeAll;
var
  newPoints: TBasicArrayList;
  graphicItemArray: TArray<TObject>;
  size: Integer;
  graphicItemNode: TMutableTreeNode;
  graphicItem: IGraphicItemInterface;
  newGraphicItem: IGraphicItemInterface;
  pointOne: TGPoint;
  pointTwo: TGPoint;
  index: Integer;
  size2: Integer;
begin
        newPoints := TBasicArrayListD.Create();
        graphicItemArray := Self.getGraphicItemHashMap().keySet().toArray();
        size := System.Length(graphicItemArray);
        for index := 0 to size - 1 do begin
            graphicItemNode := TMutableTreeNode(graphicItemArray[index]);
            graphicItem := IGraphicItemInterface(Pointer(Self.getGraphicItemHashMap().get(graphicItemNode)));
            if (graphicItem.getName()) = (TLinesGraphicItem.getStaticName()) then begin
                while (graphicItem.getPointsInterface().getSize()) > (2) do begin
                    newGraphicItem := TGraphicItemFactory.getInstance().getInstance(graphicItem.getName()).getInstance(Self);
                    pointOne := TGPoint.getInstance(graphicItem.removePoint());
                    pointTwo := TGPoint.getInstance(graphicItem.removePoint());
                    if ((pointOne) <> (nil)) and ((pointTwo) <> (nil)) then begin
                        newGraphicItem.addPoint(pointOne);
                        newGraphicItem.addPoint(pointTwo);
                    end;
                    newPoints.add(TObject(Pointer(newGraphicItem)));
                end;
            end;
        end;
        size2 := newPoints.size();
        for index := 0 to size2 - 1 do begin
            newGraphicItem := IGraphicItemInterface(Pointer(newPoints.get(index)));
            Self.canvasTreeNode.add(newGraphicItem.getTreeNode());
            Self.getGraphicItemHashMap().put(newGraphicItem.getTreeNode(), newGraphicItem);
        end;
        Self.workAreaJTreeJPanel.updateTree();
        Self.workAreaJTreeJPanel.expand();
        Self.workAreaJTreeJPanel.repaint();
end;
    

// throws Exception
procedure TCanvasJPanel.explode(howMuch: Integer; explosionType: Integer);
var
  graphicItemArray: TArray<TObject>;
  size: Integer;
  item: IGraphicItemInterface;
  basicArrayList: TBasicArrayList;
  newPoints: TPoints;
  angleDelta: Integer;
  index: Integer;
begin
        graphicItemArray := Self.getGraphicItemHashMap().keySet().toArray();
        size := System.Length(graphicItemArray);
        for index := 0 to size - 1 do begin
            item := IGraphicItemInterface(Pointer(Self.getGraphicItemHashMap().get(graphicItemArray[index])));
            basicArrayList := TVectorExplosionGenerator.getInstance().createList(item.getPointsInterface().getPoints(), howMuch, TVectorExplosionGenerator.getInstance().RANDOM);
            newPoints := TPoints.Create();
            newPoints.addPoints(basicArrayList);
            item.setPointsInterface(newPoints);
            angleDelta := TRandomRotationFactory.getInstance().getNextRandomAngle(howMuch);
            item.setAngle(angleDelta);
        end;
        Self.repaint();
end;
    

// throws Exception
procedure TCanvasJPanel.mirror;
var
  width: Integer;
  graphicItemArray: TArray<TObject>;
  size: Integer;
  item: IGraphicItemInterface;
  basicArrayList: TBasicArrayList;
  newPoints: TPoints;
  index: Integer;
begin
        width := Self.getCanvasDimension().getWidth();
        graphicItemArray := Self.getGraphicItemHashMap().keySet().toArray();
        size := System.Length(graphicItemArray);
        for index := 0 to size - 1 do begin
            item := IGraphicItemInterface(Pointer(Self.getGraphicItemHashMap().get(graphicItemArray[index])));
            basicArrayList := TVectorMirrorGenerator.getInstance().getInstance(item.getPointsInterface().getPoints(), width);
            newPoints := TPoints.Create();
            newPoints.addPoints(basicArrayList);
            item.setPointsInterface(newPoints);
        end;
        Self.repaint();
end;
    

// throws Exception
procedure TCanvasJPanel.center;
begin
        TVectorCenterGenerator.Create().transform(Self.getGraphicItemHashMap());
        Self.repaint();
end;
    

procedure TCanvasJPanel.setNewTool;
var
  newNode: TMutableTreeNode;
begin
        try
            TStatusFactory.getInstance().setStatus('Tool Selected');
            Self.selectedTool := TToolFactory.getInstance().getSelectedToolFactory().getInstance(Self);
            newNode := Self.selectedTool.getTreeNode();
            Self.getGraphicItemHashMap().put(newNode, Self.selectedTool);
            Self.canvasTreeNode.add(newNode);
            if (Self.getSelectedTool()) = (nil) then begin
                raise TGraphicsException.Create('No Tool Selected', Self, 'setSelectedTool');
            end;
        except
            on e: SysUtils.Exception do begin
            end;
        end;
end;
    

// throws Exception
procedure TCanvasJPanel.duplicateGraphicItem(graphicItem: IGraphicItemInterface);
var
  graphicItemClone: IGraphicItemInterface;
begin
        graphicItemClone := graphicItem.duplicate();
        Self.getGraphicItemHashMap().put(graphicItemClone.getTreeNode(), graphicItemClone);
        Self.canvasTreeNode.add(graphicItemClone.getTreeNode());
end;
    

// throws Exception
procedure TCanvasJPanel.duplicateGraphicItemHashMap(hashMap: TJavaHashMap);
var
  mutableTreeNodeArray: TArray<TObject>;
  size: Integer;
  treeNode: TMutableTreeNode;
  graphicItem: IGraphicItemInterface;
  index: Integer;
begin
        mutableTreeNodeArray := hashMap.keySet().toArray();
        size := System.Length(mutableTreeNodeArray);
        for index := 0 to size - 1 do begin
            treeNode := TMutableTreeNode(mutableTreeNodeArray[index]);
            graphicItem := IGraphicItemInterface(Pointer(hashMap.get(treeNode)));
            Self.duplicateGraphicItem(graphicItem);
        end;
end;
    

function TCanvasJPanel.getGraphicItemHashMap: TJavaHashMap;
begin
        Exit(Self.graphicItemHashMap);
end;
    

function TCanvasJPanel.getXPixelsPerWorkAreaPixel: Integer;
var
  x: Integer;
begin
        x := ((Self.getGrid().grid.getX()) * (((Self.getWidth()) - (10)))) / (Self.getCanvasDimension().getWidth());
        if (Self.getGrid().getZoom()) = (1) then begin
            Exit(1);
        end else begin
            Exit(x);
        end;
end;
    

function TCanvasJPanel.getYPixelsPerWorkAreaPixel: Integer;
var
  y: Integer;
begin
        y := ((Self.getGrid().grid.getY()) * (((Self.getHeight()) - (10)))) / (Self.getCanvasDimension().getHeight());
        if (Self.getGrid().getZoom()) = (1) then begin
            Exit(1);
        end else begin
            Exit(y);
        end;
end;
    

function TCanvasJPanel.getSelectedTool: IGraphicItemInterface;
begin
        Exit(Self.selectedTool);
end;
    

procedure TCanvasJPanel.drawItems(graphics: TGraphics);
var
  angleDouble: Double;
  graphicItemArray: TArray<TObject>;
  size: Integer;
  item: IGraphicItemInterface;
  index: Integer;
begin
        angleDouble := Self.angle;
        graphicItemArray := Self.getGraphicItemHashMap().keySet().toArray();
        size := System.Length(graphicItemArray);
        for index := 0 to size - 1 do begin
            item := IGraphicItemInterface(Pointer(Self.getGraphicItemHashMap().get(graphicItemArray[index])));
            item.paint(graphics, angleDouble, Self.getCanvasDimension(), Self.getXPixelsPerWorkAreaPixel(), Self.getYPixelsPerWorkAreaPixel());
        end;
end;
    

procedure TCanvasJPanel.drawGrid(graphics: TGraphics);
var
  xAdjust: Integer;
  yAdjust: Integer;
  xLeft: Integer;
  yUpper: Integer;
  xRight: Integer;
  yLower: Integer;
  value: Integer;
begin
        xAdjust := (((Self.getWidth()) mod (Self.getXPixelsPerWorkAreaPixel()))) / (2);
        yAdjust := (((Self.getHeight()) mod (Self.getYPixelsPerWorkAreaPixel()))) / (2);
        xLeft := xAdjust;
        yUpper := yAdjust;
        xRight := (Self.getWidth()) - (xAdjust);
        yLower := (Self.getHeight()) - (yAdjust);
        graphics.setColor(TCanvasJPanel.gridColor);
        value := yAdjust;
        while (value) <= ((Self.getHeight()) - (yAdjust)) do begin
            graphics.drawLine(xLeft, value, xRight, value);
            value := (value) + (Self.getYPixelsPerWorkAreaPixel());
        end;
        value := xAdjust;
        while (value) <= ((Self.getWidth()) - (xAdjust)) do begin
            graphics.drawLine(value, yUpper, value, yLower);
            value := (value) + (Self.getYPixelsPerWorkAreaPixel());
        end;
end;
    

procedure TCanvasJPanel.paint(graphics: TGraphics);
begin
        try
            if Self.getGrid().isChanged then begin
                graphics.setColor(TCanvasJPanel.backgroundColor);
                graphics.fillRect(0, 0, Self.getWidth(), Self.getHeight());
                if (((Self.getGrid().getZoom()) > (2)) and (Self.getGrid().isGridOn)) and (Self.getGrid().isGridPossible) then begin
                    Self.setDefaultGrid();
                    Self.drawGrid(graphics);
                end;
                Self.drawItems(graphics);
                graphics.drawString(Self.getAngle().toString(), (Self.getWidth()) - (75), (Self.getHeight()) - (15));
                Self.grid.isChanged := False;
            end;
        except
            on e: SysUtils.Exception do begin
            end;
        end;
end;
    

procedure TCanvasJPanel.repaint;
begin
        if (Self.grid) <> (nil) then begin
            Self.grid.isChanged := True;
        end;
        inherited repaint();
end;
    

// throws Exception
function TCanvasJPanel.toDom: TNode;
begin
        Exit(TCanvasDom.Create(Self).toDom());
end;
    

procedure TCanvasJPanel.changed;
begin
        Self.grid.isChanged := True;
end;
    

procedure TCanvasJPanel.mouseClicked(mouseEvent: TMouseEvent);
var
  graphicItem: IGraphicItemInterface;
begin
        TStatusFactory.getInstance().setStatusNoLog((TMouseStrings.getInstance().MOUSE_CLICKED_LABEL) + (Self.logMouseEvent(mouseEvent)));
        if ((Self.getSelectedTool()) <> (nil)) and (Self.getSelectedTool().isActive()) then begin
            graphicItem := Self.getSelectedTool();
            graphicItem.mouseClicked(mouseEvent, Self.getXPixelsPerWorkAreaPixel(), Self.getYPixelsPerWorkAreaPixel());
        end else begin
            Self.setNewTool();
            graphicItem := Self.getSelectedTool();
            if (graphicItem) <> (nil) then begin
                graphicItem.mouseClicked(mouseEvent, Self.getXPixelsPerWorkAreaPixel(), Self.getYPixelsPerWorkAreaPixel());
            end;
        end;
        Self.grid.isChanged := True;
        Self.repaint();
        Self.workAreaJTreeJPanel.updateTree();
        Self.workAreaJTreeJPanel.expand();
        Self.workAreaJTreeJPanel.repaint();
end;
    

procedure TCanvasJPanel.mouseEntered(mouseEvent: TMouseEvent);
begin
        TStatusFactory.getInstance().setStatusNoLog(Self.logMouseEvent(mouseEvent));
end;
    

procedure TCanvasJPanel.mouseExited(mouseEvent: TMouseEvent);
begin
        TStatusFactory.getInstance().setStatusNoLog(Self.logMouseEvent(mouseEvent));
end;
    

procedure TCanvasJPanel.mousePressed(mouseEvent: TMouseEvent);
var
  graphicItem: IGraphicItemInterface;
begin
        TStatusFactory.getInstance().setStatusNoLog((TMouseStrings.getInstance().MOUSE_PRESSED_LABEL) + (Self.logMouseEvent(mouseEvent)));
        if (Self.getSelectedTool()) <> (nil) then begin
            graphicItem := Self.getSelectedTool();
            graphicItem.mousePressed(mouseEvent, Self.getXPixelsPerWorkAreaPixel(), Self.getYPixelsPerWorkAreaPixel());
        end;
        Self.requestFocus();
        Self.grid.isChanged := True;
        Self.repaint();
end;
    

procedure TCanvasJPanel.mouseReleased(mouseEvent: TMouseEvent);
var
  graphicItem: IGraphicItemInterface;
begin
        TStatusFactory.getInstance().setStatusNoLog((TMouseStrings.getInstance().MOUSE_RELEASED_LABEL) + (Self.logMouseEvent(mouseEvent)));
        graphicItem := Self.getSelectedTool();
        if (graphicItem) <> (nil) then begin
            graphicItem.mouseReleased(mouseEvent, Self.getXPixelsPerWorkAreaPixel(), Self.getYPixelsPerWorkAreaPixel());
        end;
        Self.requestFocus();
        Self.grid.isChanged := True;
        Self.repaint();
end;
    

procedure TCanvasJPanel.mouseDragged(mouseEvent: TMouseEvent);
var
  graphicItem: IGraphicItemInterface;
begin
        TStatusFactory.getInstance().setStatusNoLog((TMouseStrings.getInstance().MOUSE_DRAGGED_LABEL) + (Self.logMouseEvent(mouseEvent)));
        graphicItem := Self.getSelectedTool();
        if (graphicItem) <> (nil) then begin
            graphicItem.mouseDragged(mouseEvent, Self.getXPixelsPerWorkAreaPixel(), Self.getYPixelsPerWorkAreaPixel());
        end;
        Self.requestFocus();
        Self.grid.isChanged := True;
        Self.repaint();
end;
    

procedure TCanvasJPanel.mouseMoved(mouseEvent: TMouseEvent);
var
  graphicItem: IGraphicItemInterface;
begin
        TStatusFactory.getInstance().setStatusNoLog((TMouseStrings.getInstance().MOUSE_MOVED_LABEL) + (Self.logMouseEvent(mouseEvent)));
        if ((Self.getSelectedTool()) <> (nil)) and (Self.getSelectedTool().isActive()) then begin
            graphicItem := Self.getSelectedTool();
            graphicItem.mouseMoved(mouseEvent, Self.getXPixelsPerWorkAreaPixel(), Self.getYPixelsPerWorkAreaPixel());
        end;
        Self.requestFocus();
        Self.grid.isChanged := True;
        Self.repaint();
end;
    

function TCanvasJPanel.logMouseEvent(mouseEvent: TMouseEvent): string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TPositionStrings.getInstance().X_LABEL);
        stringBuffer.appendint(Integer(Trunc((mouseEvent.getX()) / (Self.getXPixelsPerWorkAreaPixel()))));
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(TPositionStrings.getInstance().Y_LABEL);
        stringBuffer.appendint(Integer(Trunc((mouseEvent.getY()) / (Self.getYPixelsPerWorkAreaPixel()))));
        Exit(stringBuffer.toString());
end;
    

procedure TCanvasJPanel.keyPressed(keyEvent: TKeyEvent);
var
  graphicItemArray: TArray<TObject>;
  size: Integer;
  graphicItemInterface: IGraphicItemInterface;
  keyCode: Integer;
  index: Integer;
  commonStrings: TCommonStrings;
  graphicItem: IGraphicItemInterface;
begin
        TStatusFactory.getInstance().setStatus('Key Pressed');
        try
            graphicItemArray := Self.graphicItemHashMap.keySet().toArray();
            size := System.Length(graphicItemArray);
            for index := 0 to size - 1 do begin
                graphicItemInterface := IGraphicItemInterface(Pointer(Self.graphicItemHashMap.get(graphicItemArray[index])));
                keyCode := keyEvent.getKeyCode();
                if graphicItemInterface.isActive() then begin
                    if (keyCode) = (keyEvent.VK_UP) then begin
                        graphicItemInterface.translate(0, -1);
                    end else if (keyCode) = (keyEvent.VK_DOWN) then begin
                        graphicItemInterface.translate(0, 1);
                    end else if (keyCode) = (keyEvent.VK_LEFT) then begin
                        graphicItemInterface.translate(-1, 0);
                    end else if (keyCode) = (keyEvent.VK_RIGHT) then begin
                        graphicItemInterface.translate(1, 0);
                    end;
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings.EXCEPTION, Self, Self.gameInputStrings.KEY_PRESSED, e);
            end;
        end;
        if ((Self.getSelectedTool()) <> (nil)) and (Self.getSelectedTool().isActive()) then begin
            TStatusFactory.getInstance().setStatus('Key Pressed for Tool');
            graphicItem := Self.getSelectedTool();
            graphicItem.keyPressed(keyEvent);
        end else begin
            Self.setNewTool();
        end;
        Self.grid.isChanged := True;
        Self.repaint();
end;
    

procedure TCanvasJPanel.keyReleased(keyEvent: TKeyEvent);
begin
end;
    

procedure TCanvasJPanel.keyTyped(keyEvent: TKeyEvent);
begin
end;
    

procedure TCanvasJPanel.delete_(evt: TMyGraphicItemEvent);
begin
        Self.getGraphicItemHashMap().remove(evt.getTreeNode());
        Self.workAreaJTreeJPanel.updateTree();
        Self.workAreaJTreeJPanel.expand();
        Self.workAreaJTreeJPanel.repaint();
end;
    

procedure TCanvasJPanel.deselect(evt: TMyGraphicItemEvent);
var
  graphicItemInterface: IGraphicItemInterface;
begin
        graphicItemInterface := IGraphicItemInterface(Pointer(Self.getGraphicItemHashMap().get(evt.getTreeNode())));
        if (graphicItemInterface) <> (nil) then begin
            graphicItemInterface.setColor(TColor.WHITE);
            graphicItemInterface.deactivate();
            Self.workAreaJTreeJPanel.repaint();
        end;
end;
    

procedure TCanvasJPanel.highlight(evt: TMyGraphicItemEvent);
var
  graphicItemInterface: IGraphicItemInterface;
begin
        graphicItemInterface := IGraphicItemInterface(Pointer(Self.getGraphicItemHashMap().get(evt.getTreeNode())));
        if (graphicItemInterface) <> (nil) then begin
            graphicItemInterface.setColor(TColor.YELLOW);
            graphicItemInterface.activate();
            Self.workAreaJTreeJPanel.repaint();
        end;
end;
    

// throws Exception
function TCanvasJPanel.duplicate: TCanvasJPanel;
var
  newCanvasJPanel: TCanvasJPanel;
begin
        newCanvasJPanel := TCanvasJPanel.Create(Self.workAreaJTreeJPanel, Self.getSize(), Self.getCanvasDimension().getWidth(), Self.getCanvasDimension().getHeight());
        newCanvasJPanel.setGrid(Self.getGrid().getGrid());
        newCanvasJPanel.setAngle(Self.getAngle());
        newCanvasJPanel.duplicateGraphicItemHashMap(Self.getGraphicItemHashMap());
        Self.workAreaJTreeJPanel.updateTree();
        Self.workAreaJTreeJPanel.expand();
        Self.workAreaJTreeJPanel.repaint();
        Exit(newCanvasJPanel);
end;
    

// throws Exception
procedure TCanvasJPanel.duplicate(event: TMyGraphicItemEvent);
var
  treeNode: TMutableTreeNode;
  graphicItem: IGraphicItemInterface;
begin
        treeNode := event.getTreeNode();
        graphicItem := IGraphicItemInterface(Pointer(Self.getGraphicItemHashMap().get(treeNode)));
        if (graphicItem) <> (nil) then begin
            Self.duplicateGraphicItem(graphicItem);
            Self.workAreaJTreeJPanel.updateTree();
            Self.workAreaJTreeJPanel.expand();
            Self.workAreaJTreeJPanel.repaint();
        end;
end;
    

procedure TCanvasJPanel.rotate(event: TMyGraphicItemEvent);
var
  treeNode: TMutableTreeNode;
  graphicItem: IGraphicItemInterface;
begin
        treeNode := event.getTreeNode();
        graphicItem := IGraphicItemInterface(Pointer(Self.getGraphicItemHashMap().get(treeNode)));
        if (graphicItem) <> (nil) then begin
            graphicItem.addAngle(event.getAngle());
        end;
end;
    

function TCanvasJPanel.getCanvasDimension: TIntegerDimension;
begin
        Exit(Self.canvasDimension);
end;
    

procedure TCanvasJPanel.setCanvasDimension(canvasDimension: TIntegerDimension);
begin
        Self.canvasDimension := canvasDimension;
end;
    

function TCanvasJPanel.getGrid: TGrid;
begin
        Exit(Self.grid);
end;

initialization
  TCanvasJPanel.frame := 0;
  TCanvasJPanel.gridColor := TColor.Create(TBasicColorFactory.getInstance().WHITE.intValue());
  TCanvasJPanel.backgroundColor := TColor.Create(TBasicColorFactory.getInstance().CLEAR_COLOR.intValue());

end.

