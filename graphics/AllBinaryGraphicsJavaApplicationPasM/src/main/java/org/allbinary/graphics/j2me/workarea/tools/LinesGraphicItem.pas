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
// package org.allbinary.graphics.j2me.workarea.tools
unit LinesGraphicItem;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, BasicArrayList, BasicArrayListD, DomHelper, GameInputStrings, GPoint, PointFactory, BasicColorFactory, StatusFactory, CanvasDom, IntegerDimension, BasicGraphicsPipeline, StdUtil, LogUtil, PositionStrings, CommonStrings, BasicArrayList, Node, NodeList, Color, Points, GraphicItemInterface, Graphics, MouseEvent, KeyEvent;

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

  TLinesGraphicItem = class(TInterfacedObject, IGraphicItemInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    gameInputStrings: TGameInputStrings;
    treeNode: TDefaultMutableTreeNode;
    pointTreeNodeVector: TBasicArrayList;
    currentMousePoint: TGPoint;
    fulcrumPoint: TGPoint;
    active: Boolean;
    theta: Double;
    color: TColor;
    points: TPoints;
    class var RECT: string;
    class var ARC: string;
    class var STRING_: string;
    class var CHAR_: string;
    class var IMAGE: string;
    class var item: Integer;
    class var NAME: string;
    procedure InitFields;
        constructor Create; overload;
        constructor Create(linesNode: TNode); overload;
        procedure init; virtual;
        procedure translate(x: Integer; y: Integer); virtual;
        procedure setRotate(theta: Double); virtual;
        procedure addRotate(theta: Double); virtual;
        procedure setAngle(angle: Double); virtual;
        procedure addAngle(angle: Double); virtual;
        function getTreeNode: TMutableTreeNode; virtual;
        function getName: string; virtual;
        class function getStaticName: string; static;
        procedure addPoint(pointNodes: TNodeList); overload;
        procedure addPoint(point: TGPoint); overload; virtual;
        function removePoint: TGPoint; virtual;
        function isActive: Boolean; virtual;
        procedure deactivate; virtual;
        procedure activate; virtual;
        procedure duplicatePoints(list: TBasicArrayList); virtual;
        function duplicate: IGraphicItemInterface; virtual;
        function getAngle: Double; virtual;
        procedure setFulcrumPoint(point: TGPoint); virtual;
        procedure paint(g: TGraphics; canvasAngle: Double; dimension: TIntegerDimension; x: Integer; y: Integer); virtual;
        function toDom(canvasDom: TCanvasDom): TNode; virtual;
        function isValid: Boolean; virtual;
        function getPointsInterface: TPoints; virtual;
        procedure setPointsInterface(points: TPoints); virtual;
        function getColor: TColor; virtual;
        procedure setColor(color: TColor); virtual;
        procedure mouseClicked(mouseEvent: TMouseEvent; x: Integer; y: Integer); virtual;
        procedure mouseEntered(mouseEvent: TMouseEvent); virtual;
        procedure mouseExited(mouseEvent: TMouseEvent); virtual;
        procedure mousePressed(mouseEvent: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer); virtual;
        procedure mouseReleased(mouseEvent: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer); virtual;
        procedure mouseDragged(mouseEvent: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer); virtual;
        procedure mouseMoved(mouseEvent: TMouseEvent; x: Integer; y: Integer); virtual;
        procedure keyPressed(keyEvent: TKeyEvent); virtual;
        procedure keyReleased(keyEvent: TKeyEvent); virtual;
        procedure keyTyped(keyEvent: TKeyEvent); virtual;
  end;

implementation
uses
  PointsDomUtil, Graphics2D, BasicStroke, PointsUtil;



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


procedure TLinesGraphicItem.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.gameInputStrings := TGameInputStrings.getInstance();
  
  
  
  
  Self.active := False;
  Self.theta := 0.0;
  Self.color := TColor.Create(TBasicColorFactory.getInstance().WHITE.intValue());
  
end;
    

constructor TLinesGraphicItem.Create;
begin
    inherited Create;
    InitFields;
        Self.points := TPoints.Create();
        try
            Self.init();
            Self.active := True;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.CONSTRUCTOR_, e);
            end;
        end;
end;
    

constructor TLinesGraphicItem.Create(linesNode: TNode);
var
  lineNodes: TBasicArrayList;
  numberOfLines: Integer;
  lineNode: TNode;
  pointNodes: TBasicArrayList;
  pointOneNode: TNode;
  pointTwoNode: TNode;
  index: Integer;
begin
    inherited Create;
    InitFields;
        Self.points := TPoints.Create();
        Self.init();
        Self.active := False;
        lineNodes := TDomHelper.getInstance().getWithoutTextNodes(linesNode.getChildNodes());
        numberOfLines := lineNodes.size();
        for index := 0 to numberOfLines - 1 do begin
            lineNode := TNode(lineNodes.get(index));
            pointNodes := TDomHelper.getInstance().getWithoutTextNodes(lineNode.getChildNodes());
            pointOneNode := TDomHelper.getInstance().searchNodeList(TPointsDomUtil.getInstance().POINTONE, pointNodes);
            Self.addPoint(pointOneNode.getChildNodes());
            if (index) = ((numberOfLines) - (1)) then begin
                pointTwoNode := TDomHelper.getInstance().searchNodeList(TPointsDomUtil.getInstance().POINTTWO, pointNodes);
                Self.addPoint(pointTwoNode.getChildNodes());
            end;
        end;
        if (numberOfLines) = (0) then begin
            raise SysUtils.Exception.Create('Lines node does not contain a line');
        end;
end;
    

// throws Exception
procedure TLinesGraphicItem.init;
begin
        Self.treeNode := TDefaultMutableTreeNode.Create((TPointsDomUtil.getInstance().LINES) + (TLinesGraphicItem.item));
        Inc(TLinesGraphicItem.item);
        Self.points.init();
        Self.pointTreeNodeVector := TBasicArrayListD.Create();
        Self.fulcrumPoint := TPointFactory.getInstance().createXY(0, 0);
end;
    

// throws Exception
procedure TLinesGraphicItem.translate(x: Integer; y: Integer);
var
  basicGraphicsPipeline: TBasicGraphicsPipeline;
begin
        TStatusFactory.getInstance().setStatus('Translating: ' + TJava.ToString(Self.points.getPoints()));
        basicGraphicsPipeline := TBasicGraphicsPipeline.Create(Self.points.getPoints());
        basicGraphicsPipeline.translate(x, y);
        Self.points := TPoints.Create();
        Self.points.addPoints(basicGraphicsPipeline.getMatrix());
end;
    

procedure TLinesGraphicItem.setRotate(theta: Double);
begin
        while (theta) > ((2) * (TMath.PI)) do begin
            theta := (theta) - ((2) * (TMath.PI));
        end;
        while (theta) < (0.0) do begin
            theta := (theta) + ((2) * (TMath.PI));
        end;
        Self.theta := theta;
end;
    

procedure TLinesGraphicItem.addRotate(theta: Double);
begin
        Self.setRotate((Self.theta) + (theta));
end;
    

procedure TLinesGraphicItem.setAngle(angle: Double);
begin
        Self.setRotate(DegToRad(angle));
end;
    

procedure TLinesGraphicItem.addAngle(angle: Double);
begin
        Self.setRotate((Self.theta) + (DegToRad(angle)));
end;
    

function TLinesGraphicItem.getTreeNode: TMutableTreeNode;
begin
        Exit(TMutableTreeNode(Self.treeNode));
end;
    

function TLinesGraphicItem.getName: string;
begin
        Exit(TLinesGraphicItem.NAME);
end;
    

class function TLinesGraphicItem.getStaticName: string;
begin
        Exit(TLinesGraphicItem.NAME);
end;
    

// throws Exception
procedure TLinesGraphicItem.addPoint(pointNodes: TNodeList);
var
  list: TBasicArrayList;
  xNode: TNode;
  xTextNode: TNode;
  xInteger: Integer;
  yNode: TNode;
  yTextNode: TNode;
  yInteger: Integer;
  point: TGPoint;
begin
    TJava.MonitorEnter(Self);
    try
        list := TDomHelper.getInstance().getWithoutTextNodes(pointNodes);
        xNode := TDomHelper.getInstance().searchNodeList(TPositionStrings.getInstance().X, list);
        xTextNode := xNode.getFirstChild();
        xInteger := xTextNode.getNodeValue();
        yNode := TDomHelper.getInstance().searchNodeList(TPositionStrings.getInstance().Y, list);
        yTextNode := yNode.getFirstChild();
        yInteger := yTextNode.getNodeValue();
        point := TPointFactory.getInstance().createXY(xInteger, yInteger);
        Self.addPoint(point);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TLinesGraphicItem.addPoint(point: TGPoint);
begin
    TJava.MonitorEnter(Self);
    try
        Self.points.getPoints().add(point);
        Self.logUtil.putF(point.toString(), Self, 'addPoint');
        Self.pointTreeNodeVector.add(TDefaultMutableTreeNode.Create(point.toString()));
        Self.treeNode.add(TDefaultMutableTreeNode(Self.pointTreeNodeVector.get((Self.pointTreeNodeVector.size()) - (1))));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TLinesGraphicItem.removePoint: TGPoint;
var
  point: TGPoint;
  lastPoint: Integer;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        point := nil;
        if (Self.points.getSize()) > (0) then begin
            lastPoint := (Self.points.getSize()) - (1);
            point := TGPoint(Self.points.getPoints().removeAt(lastPoint));
            index := (Self.pointTreeNodeVector.size()) - (1);
            if (index) > (0) then begin
                Self.treeNode.remove(TDefaultMutableTreeNode(Self.pointTreeNodeVector.get(index)));
                Self.pointTreeNodeVector.remove(index);
            end;
        end;
        Exit(point);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TLinesGraphicItem.isActive: Boolean;
begin
        Exit(Self.active);
end;
    

procedure TLinesGraphicItem.deactivate;
begin
        Self.active := False;
end;
    

procedure TLinesGraphicItem.activate;
begin
        Self.active := True;
end;
    

// throws Exception
procedure TLinesGraphicItem.duplicatePoints(list: TBasicArrayList);
var
  size: Integer;
  point: TGPoint;
  index: Integer;
begin
        size := list.size();
        for index := 0 to size - 1 do begin
            point := TGPoint(list.get(index));
            if (point) <> (nil) then begin
                Self.points.getPoints().add(TPointFactory.getInstance().createXY(point.getX(), point.getY()));
                Self.pointTreeNodeVector.add(TDefaultMutableTreeNode.Create(point.toString()));
                Self.treeNode.add(TDefaultMutableTreeNode(Self.pointTreeNodeVector.get((Self.pointTreeNodeVector.size()) - (1))));
            end;
        end;
end;
    

// throws Exception
function TLinesGraphicItem.duplicate: IGraphicItemInterface;
var
  linesGraphicItem: TLinesGraphicItem;
begin
        linesGraphicItem := TLinesGraphicItem.Create();
        linesGraphicItem.duplicatePoints(Self.points.getPoints());
        linesGraphicItem.deactivate();
        Exit(linesGraphicItem);
end;
    

function TLinesGraphicItem.getAngle: Double;
begin
        Exit(RadToDeg(Self.theta));
end;
    

procedure TLinesGraphicItem.setFulcrumPoint(point: TGPoint);
begin
        Self.fulcrumPoint := point;
end;
    

procedure TLinesGraphicItem.paint(g: TGraphics; canvasAngle: Double; dimension: TIntegerDimension; x: Integer; y: Integer);
var
  graphics: TGraphics2D;
  tempPointVector: TBasicArrayList;
  size: Integer;
  firstPoint: TGPoint;
  secondPoint: TGPoint;
  index: Integer;
begin
        try
            graphics := TGraphics2D(g);
            graphics.setColor(Self.getColor());
            graphics.setStroke(TBasicStroke.Create(x));
            if (Self.isActive()) and ((Self.currentMousePoint) <> (nil)) then begin
                Self.points.getPoints().add(Self.currentMousePoint);
            end;
            tempPointVector := TPointsUtil.getInstance().doTransforms(Self.points.getPoints(), canvasAngle, TPointFactory.getInstance().createXY(dimension.getWidth(), dimension.getHeight()));
            if (Self.isActive()) and ((Self.currentMousePoint) <> (nil)) then begin
                Self.currentMousePoint := TGPoint(Self.points.getPoints().removeAt((Self.points.getSize()) - (1)));
            end;
            size := tempPointVector.size();
            firstPoint := nil;
            if (size) > (0) then begin
                firstPoint := TGPoint(tempPointVector.get(0));
            end;
            for index := 1 to size - 1 do begin
                secondPoint := TGPoint(tempPointVector.get(index));
                graphics.drawLine((((firstPoint.getX()) * (x))) - (((x) div (4))), (((firstPoint.getY()) * (y))) - (((y) div (4))), (((secondPoint.getX()) * (x))) - (((x) div (4))), (((secondPoint.getY()) * (y))) - (((y) div (4))));
                firstPoint := secondPoint;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'mouseMoved', e);
            end;
        end;
end;
    

// throws Exception
function TLinesGraphicItem.toDom(canvasDom: TCanvasDom): TNode;
begin
        Exit(TPointsDomUtil.getInstance().toDom(canvasDom, Self.points.getPoints()));
end;
    

function TLinesGraphicItem.isValid: Boolean;
begin
        Exit(Self.points.isValid());
end;
    

function TLinesGraphicItem.getPointsInterface: TPoints;
begin
        Exit(Self.points);
end;
    

procedure TLinesGraphicItem.setPointsInterface(points: TPoints);
begin
        Self.points := points;
end;
    

function TLinesGraphicItem.getColor: TColor;
begin
        Exit(Self.color);
end;
    

procedure TLinesGraphicItem.setColor(color: TColor);
begin
        Self.color := color;
end;
    

procedure TLinesGraphicItem.mouseClicked(mouseEvent: TMouseEvent; x: Integer; y: Integer);
var
  mousePoint: TGPoint;
  point: TGPoint;
begin
        try
            mousePoint := TPointFactory.getInstance().createXY(mouseEvent.getPoint().x, mouseEvent.getPoint().y);
            if (((mouseEvent.getModifiers()) and (mouseEvent.BUTTON1_MASK))) = (mouseEvent.BUTTON1_MASK) then begin
                point := TPointFactory.getInstance().createXY((mousePoint.getX()) / (x), (mousePoint.getY()) / (y));
                TStatusFactory.getInstance().setStatus('Line Point Added: ' + point.toString());
                Self.addPoint(point);
            end else if (((mouseEvent.getModifiers()) and (mouseEvent.BUTTON3_MASK))) = (mouseEvent.BUTTON3_MASK) then begin
                TStatusFactory.getInstance().setStatus('Line Point Removed');
                Self.removePoint();
            end;
            Self.currentMousePoint := mousePoint;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'mouseMoved', e);
            end;
        end;
end;
    

procedure TLinesGraphicItem.mouseEntered(mouseEvent: TMouseEvent);
begin
end;
    

procedure TLinesGraphicItem.mouseExited(mouseEvent: TMouseEvent);
begin
end;
    

procedure TLinesGraphicItem.mousePressed(mouseEvent: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer);
begin
end;
    

procedure TLinesGraphicItem.mouseReleased(mouseEvent: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer);
begin
end;
    

procedure TLinesGraphicItem.mouseDragged(mouseEvent: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer);
begin
end;
    

procedure TLinesGraphicItem.mouseMoved(mouseEvent: TMouseEvent; x: Integer; y: Integer);
var
  mousePoint: TGPoint;
  point: TGPoint;
begin
        try
            mousePoint := TPointFactory.getInstance().createXY(mouseEvent.getPoint().x, mouseEvent.getPoint().y);
            point := TPointFactory.getInstance().createXY((mousePoint.getX()) / (x), (mousePoint.getY()) / (y));
            Self.currentMousePoint := point;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'mouseMoved', e);
            end;
        end;
end;
    

procedure TLinesGraphicItem.keyPressed(keyEvent: TKeyEvent);
var
  keyCode: Integer;
begin
        try
            keyCode := keyEvent.getKeyCode();
            if (keyCode) = (keyEvent.VK_ESCAPE) then begin
                TStatusFactory.getInstance().setStatus('Deactivated');
                Self.deactivate();
            end else if (keyCode) = (keyEvent.VK_UP) then begin
                Self.translate(0, -1);
            end else if (keyCode) = (keyEvent.VK_DOWN) then begin
                Self.translate(0, 1);
            end else if (keyCode) = (keyEvent.VK_LEFT) then begin
                Self.translate(-1, 0);
            end else if (keyCode) = (keyEvent.VK_RIGHT) then begin
                Self.translate(1, 0);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.gameInputStrings.KEY_PRESSED, e);
            end;
        end;
end;
    

procedure TLinesGraphicItem.keyReleased(keyEvent: TKeyEvent);
begin
end;
    

procedure TLinesGraphicItem.keyTyped(keyEvent: TKeyEvent);
begin
end;

initialization
  TLinesGraphicItem.RECT := 'rect';
  TLinesGraphicItem.ARC := 'arc';
  TLinesGraphicItem.STRING_ := 'string';
  TLinesGraphicItem.CHAR_ := 'char';
  TLinesGraphicItem.IMAGE := 'image';
  TLinesGraphicItem.item := 0;
  TLinesGraphicItem.NAME := 'Line Tool';

end.

