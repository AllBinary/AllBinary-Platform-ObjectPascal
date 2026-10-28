{
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.input
unit HumanRTSPlayerGameInput;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, RTSFormInput, MultiSelectPaintable, RTSGameStrings, RTSLayer, RTSLayerInfoPaintable, RTSPlayerLayerInterface, GameStateFactory, EndLevelNoBuildingSelectedTouchButtonsBuilder, EndLevelTouchButtonsBuilder, NoBuildingSelectedTouchButtonsBuilder, RTSTouchButtonsBuilder, SelectBuildingSound, BasicArrayList, CommonSeps, StringMaker, LogUtil, BooleanFactory, AllBinaryGameCanvas, AllBinaryGameLayerManager, GameNotificationEvent, GameNotificationEventHandler, CollidableDestroyableDamageableLayer, GPoint, PointFactory, BasicColorFactory, ScrollSelectionForm, ABCustomItem, NullInitUpdatePaintable, TouchButtonsBuilderFactory, MotionGestureInput, TouchMotionGestureFactory, BaseMotionGestureEventListener, BasicMotionGesturesHandler, MotionGestureEvent, AllBinaryLayerManager, SmallIntegerSingletonFactory, CommonLabels, StringUtil, RectangleCollisionUtil, ErrorSound, BasicGeographicMap, GeographicMapCellPosition, GeographicMapCompositeInterface, ViewPositionBase, LayerPositionFinderInterface, SelectRTSLayerVisitorFactoryInterface, RTSPlayerGameInput;

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

  THumanRTSPlayerGameInput = class(TRTSPlayerGameInput, IBaseMotionGestureEventListener)
  public
    isDragging: Boolean;
    gameStateFactory: TGameStateFactory;
    rectangleCollisionUtil: TRectangleCollisionUtil;
    touchMotionGestureFactory: TTouchMotionGestureFactory;
    PRESSED: TMotionGestureInput;
    RELEASED: TMotionGestureInput;
    touchButtonsBuilderFactory: TTouchButtonsBuilderFactory;
    notYoursGameNotificationEvent: TGameNotificationEvent;
    selectedRtsLayer: TCollidableDestroyableDamageableLayer;
    startPoint: TGPoint;
    endPoint: TGPoint;
    POSSIBLE: string;
    AT: string;
    METHOD: string;
    ADDING: string;
    SPACE: string;
    multiSelectPaintable: TMultiSelectPaintable;
    procedure InitFields;
        constructor Create(gameCanvas: TAllBinaryGameCanvas; inputList: TBasicArrayList; playerInputId: Integer; towerInfoPaintable: TRTSLayerInfoPaintable; rtsPlayerLayerInterface: IRTSPlayerLayerInterface; layerPositionFinderInterface: ILayerPositionFinderInterface; selectRTSLayerVisitorFactoryInterface: ISelectRTSLayerVisitorFactoryInterface; touchButtonsBuilderFactory: TTouchButtonsBuilderFactory);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager: TAllBinaryGameLayerManager); virtual;
        function processDraggingMotionInput(layerManager: TAllBinaryLayerManager): Boolean;
        procedure makeSelection;
        procedure processSelectionBoxMotionInput(layerManager: TAllBinaryLayerManager);
        procedure processMotionInput(layerManager: TAllBinaryLayerManager); virtual;
        procedure setSelectedRtsFormInput(selectedRtsFormInput: TRTSFormInput); virtual;
        procedure updateFormForLayer(rtsLayer: TRTSLayer);
        procedure updateForm(scrollSelectionForm: TScrollSelectionForm; rtfFormInput: TRTSFormInput);
        procedure setSelectedRTSLayer(rtSLayer: TCollidableDestroyableDamageableLayer; geographicMapCellPosition: TGeographicMapCellPosition); virtual;
        procedure updatePaintable; virtual;
        procedure paint(graphics: TGraphics); virtual;
        procedure onMotionGestureEvent(motionGestureEvent: TMotionGestureEvent); virtual;
        procedure onScrolledMotionGestureEvent(motionGestureEvent: TMotionGestureEvent); virtual;
        function getSelectedRtsLayer: TCollidableDestroyableDamageableLayer;
        procedure setSelectedRtsLayer(selectedRtsLayer: TCollidableDestroyableDamageableLayer);
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


procedure THumanRTSPlayerGameInput.InitFields;
begin
  Self.isDragging := False;
  Self.gameStateFactory := TGameStateFactory.getInstance();
  Self.rectangleCollisionUtil := TRectangleCollisionUtil.getInstance();
  Self.touchMotionGestureFactory := TTouchMotionGestureFactory.getInstance();
  Self.PRESSED := Self.touchMotionGestureFactory.PRESSED;
  Self.RELEASED := Self.touchMotionGestureFactory.RELEASED;
  
  
  Self.selectedRtsLayer := TCollidableDestroyableDamageableLayer.getNullInstance();
  Self.startPoint := TPointFactory.getInstance().ZERO_ZERO;
  Self.endPoint := TPointFactory.getInstance().ZERO_ZERO;
  Self.POSSIBLE := 'Possible: ';
  Self.AT := 'At: ';
  Self.METHOD := 'makeSelection';
  Self.ADDING := 'Adding: ';
  Self.SPACE := TCommonSeps.getInstance().SPACE;
  Self.multiSelectPaintable := TMultiSelectPaintable.Create();
end;
    

constructor THumanRTSPlayerGameInput.Create(gameCanvas: TAllBinaryGameCanvas; inputList: TBasicArrayList; playerInputId: Integer; towerInfoPaintable: TRTSLayerInfoPaintable; rtsPlayerLayerInterface: IRTSPlayerLayerInterface; layerPositionFinderInterface: ILayerPositionFinderInterface; selectRTSLayerVisitorFactoryInterface: ISelectRTSLayerVisitorFactoryInterface; touchButtonsBuilderFactory: TTouchButtonsBuilderFactory);
var
  basicColorFactory: TBasicColorFactory;
begin
        inherited Create(gameCanvas, inputList, playerInputId, towerInfoPaintable, rtsPlayerLayerInterface, layerPositionFinderInterface, selectRTSLayerVisitorFactoryInterface);
        InitFields;
        Self.touchButtonsBuilderFactory := touchButtonsBuilderFactory;
        basicColorFactory := TBasicColorFactory.getInstance();
        Self.notYoursGameNotificationEvent := TGameNotificationEvent.Create(Self, TRTSGameStrings.getInstance().NOT_YOURS, TSmallIntegerSingletonFactory.getInstance().getAt(2), basicColorFactory.PINK, TBooleanFactory.getInstance().FALSE_);
        TBasicMotionGesturesHandler.getInstance().addListenerInterface(Self);
end;
    

// throws Exception
procedure THumanRTSPlayerGameInput.setAllBinaryGameLayerManager(allBinaryGameLayerManager: TAllBinaryGameLayerManager);
var
  geographicMapCompositeInterface: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
begin
        geographicMapCompositeInterface := IGeographicMapCompositeInterface(Pointer(allBinaryGameLayerManager));
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface()[0];
        Self.notYoursGameNotificationEvent.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
end;
    

// throws Exception
function THumanRTSPlayerGameInput.processDraggingMotionInput(layerManager: TAllBinaryLayerManager): Boolean;
var
  motionGestureEvent: TMotionGestureEvent;
  motionGestureInput: TMotionGestureInput;
  rtsFormInput: TRTSFormInput;
  point: TGPoint;
  previousRtsFormInput: TRTSFormInput;
begin
        motionGestureEvent := TMotionGestureEvent(Self.getMotionGestureInputList().get((Self.getMotionGestureInputList().size()) - (1)));
        motionGestureInput := motionGestureEvent.getMotionGesture();
        rtsFormInput := Self.getSelectedRtsFormInput();
        if (motionGestureInput) = (Self.PRESSED) then begin
            point := motionGestureEvent.getCurrentPoint();
            if Self.getRtsPlayerLayerInterface().getCurrentScrollSelectionForm().isInForm(point) then begin
                Self.isDragging := rtsFormInput.processSticky(Self.getSelectedRtsLayer(), Self.getRtsPlayerLayerInterface(), layerManager, point);
            end;
        end else if (motionGestureInput) = (Self.RELEASED) then begin
            point := motionGestureEvent.getCurrentPoint();
            if Self.getRtsPlayerLayerInterface().getCurrentScrollSelectionForm().isInForm(point) then begin
                rtsFormInput.processAtPoint(Self.getSelectedRtsLayer(), Self.getRtsPlayerLayerInterface(), layerManager, point);
            end else if rtsFormInput.isStickyItemSelected() then begin
                previousRtsFormInput := rtsFormInput;
                Self.select(motionGestureEvent);
                Self.getSelectedBuildingPlayerGameInput().selectAllPreselected();
                previousRtsFormInput.processAtPoint(Self.getSelectedRtsLayer(), Self.getRtsPlayerLayerInterface(), layerManager, point);
                Self.getSelectedBuildingPlayerGameInput().deselectAllPreselected();
            end else begin
                Self.select(motionGestureEvent);
            end;
            rtsFormInput.setStickyItemSelected(False);
            rtsFormInput.setSelectedStickyItem(TABCustomItem.getNullInstance());
            rtsFormInput.setSelectedStickyItemIndex(-1);
            Exit(True);
        end;
        Exit(False);
end;
    

procedure THumanRTSPlayerGameInput.makeSelection;
var
  rtsLayerList: TBasicArrayList;
  rectX1: Integer;
  rectY1: Integer;
  rectX2: Integer;
  rectY2: Integer;
  stringBuffer: TStringMaker;
  rtsLayer: TRTSLayer;
  viewPosition: TViewPositionBase;
  index: Integer;
  gameLayer: TCollidableDestroyableDamageableLayer;
  lastRTSLayer: TRTSLayer;
begin
        rtsLayerList := Self.getRtsPlayerLayerInterface().getPlayerOwnedRTSLayers().rtsLayerList;
        rectX1 := Self.startPoint.getX();
        rectY1 := Self.startPoint.getY();
        rectX2 := Self.endPoint.getX();
        rectY2 := Self.endPoint.getY();
        if (rectX1) > (rectX2) then begin
            rectX2 := rectX1;
            rectX1 := Self.endPoint.getX();
        end;
        if (rectY1) > (rectY2) then begin
            rectY2 := rectY1;
            rectY1 := Self.endPoint.getY();
        end;
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.AT);
        stringBuffer.appendint(rectX1);
        stringBuffer.append(Self.SPACE);
        stringBuffer.appendint(rectY1);
        stringBuffer.append(Self.SPACE);
        stringBuffer.appendint(rectX2);
        stringBuffer.append(Self.SPACE);
        stringBuffer.appendint(rectY2);
        Self.logUtil.putF(stringBuffer.toString(), Self, Self.METHOD);
        
        for index := (rtsLayerList.size()) - (1) downto 0 do begin
            rtsLayer := TRTSLayer(rtsLayerList.get(index));
            stringBuffer.delete_(0, stringBuffer.length());
            viewPosition := rtsLayer.getViewPosition();
            stringBuffer.append(Self.POSSIBLE);
            stringBuffer.append(rtsLayer.getName());
            stringBuffer.append(Self.SPACE);
            stringBuffer.append(Self.AT);
            stringBuffer.appendint(Integer(Trunc(((viewPosition.getX()) + (rtsLayer.getHalfWidth())))));
            stringBuffer.append(Self.SPACE);
            stringBuffer.appendint(Integer(Trunc(((viewPosition.getY()) + (rtsLayer.getHalfHeight())))));
            Self.logUtil.putF(stringBuffer.toString(), Self, Self.METHOD);
            if Self.rectangleCollisionUtil.isInside(rectX1, rectY1, rectX2, rectY2, (viewPosition.getX()) + (rtsLayer.getHalfWidth()), (viewPosition.getY()) + (rtsLayer.getHalfHeight())) then begin
                Self.logUtil.putF(TStringMaker.Create().append(Self.ADDING).append(rtsLayer.getName()).toString(), Self, Self.METHOD);
                rtsLayer.select();
                Self.getSelectedBuildingPlayerGameInput().addSelectedRTSLayer(rtsLayer);
            end;
        end;
        gameLayer := Self.getSelectedBuildingPlayerGameInput().getLastSelectedRtsLayer();
        if (gameLayer) <> (TCollidableDestroyableDamageableLayer.getNullInstance()) then begin
            lastRTSLayer := TRTSLayer(gameLayer);
            if (lastRTSLayer.getScrollSelectionForm()) <> (TScrollSelectionForm.getNullScrollSelectionForm()) then begin
                Self.updateForm(lastRTSLayer.getScrollSelectionForm(), lastRTSLayer.getRTSFormInput());
                Self.setSelectedRtsLayer(lastRTSLayer);
            end;
        end;
        Self.updatePaintable();
end;
    

// throws Exception
procedure THumanRTSPlayerGameInput.processSelectionBoxMotionInput(layerManager: TAllBinaryLayerManager);
var
  motionGestureEvent: TMotionGestureEvent;
  motionGestureInput: TMotionGestureInput;
  point: TGPoint;
  index: Integer;
begin
        for index := (Self.getMotionGestureInputList().size()) - (1) downto 0 do begin
            motionGestureEvent := TMotionGestureEvent(Self.getMotionGestureInputList().get(index));
            motionGestureInput := motionGestureEvent.getMotionGesture();
            point := motionGestureEvent.getCurrentPoint();
            if (motionGestureInput) = (Self.touchMotionGestureFactory.PRESSED) then begin
                Self.startPoint := point;
                Self.endPoint := point;
            end else if (motionGestureInput) = (Self.touchMotionGestureFactory.RELEASED) then begin
                Self.endPoint := point;
                Self.makeSelection();
                Self.startPoint := TPointFactory.getInstance().ZERO_ZERO;
                Self.endPoint := TPointFactory.getInstance().ZERO_ZERO;
            end else begin
                Self.endPoint := point;
            end;
        end;
end;
    

// throws Exception
procedure THumanRTSPlayerGameInput.processMotionInput(layerManager: TAllBinaryLayerManager);
var
  endDrag: Boolean;
begin
        if (Self.getMotionGestureInputList().size()) > (0) then begin
            endDrag := Self.processDraggingMotionInput(layerManager);
            if not (Self.isDragging) then begin
                Self.processSelectionBoxMotionInput(layerManager);
            end;
            if endDrag then begin
                Self.isDragging := False;
            end;
        end;
        Self.getMotionGestureInputList().clear();
end;
    

procedure THumanRTSPlayerGameInput.setSelectedRtsFormInput(selectedRtsFormInput: TRTSFormInput);
var
  logUtil: TLogUtil;
begin
        logUtil := TLogUtil.getInstance();
        Self.logUtil.putF(TStringMaker.Create().append(TCommonLabels.getInstance().START).append(TStringUtil.getInstance().toString(selectedRtsFormInput)).toString(), Self, 'setSelectedRtsFormInput');
        inherited setSelectedRtsFormInput(selectedRtsFormInput);
        Self.setSelectedRtsLayer(TCollidableDestroyableDamageableLayer.getNullInstance());
end;
    

procedure THumanRTSPlayerGameInput.updateFormForLayer(rtsLayer: TRTSLayer);
var
  scrollSelectionForm: TScrollSelectionForm;
begin
        scrollSelectionForm := rtsLayer.getScrollSelectionForm();
        if ((scrollSelectionForm) <> (TScrollSelectionForm.getNullScrollSelectionForm())) and ((Self.getRtsPlayerLayerInterface().getGroupInterface()[0]) = (rtsLayer.getGroupInterface()[0])) then begin
            Self.updateForm(scrollSelectionForm, rtsLayer.getRTSFormInput());
            Self.getSelectedBuildingPlayerGameInput().setSelectedRTSLayer(TCollidableDestroyableDamageableLayer.getNullInstance());
            Self.setSelectedRtsLayer(rtsLayer);
        end else begin
            Self.getRtsPlayerLayerInterface().setCurrentScrollSelectionForm(Self.getRtsPlayerLayerInterface().getBuildingScrollSelectionForm());
            Self.setSelectedRtsFormInput(Self.getRtsPlayerLayerInterface().getRTSFormInput());
            Self.getSelectedBuildingPlayerGameInput().setSelectedRTSLayer(TCollidableDestroyableDamageableLayer.getNullInstance());
        end;
end;
    

procedure THumanRTSPlayerGameInput.updateForm(scrollSelectionForm: TScrollSelectionForm; rtfFormInput: TRTSFormInput);
begin
        Self.getRtsPlayerLayerInterface().setCurrentScrollSelectionForm(scrollSelectionForm);
        Self.setSelectedRtsFormInput(rtfFormInput);
end;
    

// throws Exception
procedure THumanRTSPlayerGameInput.setSelectedRTSLayer(rtSLayer: TCollidableDestroyableDamageableLayer; geographicMapCellPosition: TGeographicMapCellPosition);
var
  gameCanvas: TAllBinaryGameCanvas;
  endLevelNoBuildingSelectedTouchButtonsBuilder: TEndLevelNoBuildingSelectedTouchButtonsBuilder;
  rtsLayer: TRTSLayer;
  endLevelTouchButtonsBuilder: TEndLevelTouchButtonsBuilder;
begin
        if ((rtSLayer) <> (TCollidableDestroyableDamageableLayer.getNullInstance())) and ((Self.getRtsPlayerLayerInterface().getGroupInterface()[0]) <> (rtSLayer.getGroupInterface()[0])) then begin
            Self.getRtsPlayerLayerInterface().add(TErrorSound.getInstance());
            TGameNotificationEventHandler.getInstance().fireEvent(Self.notYoursGameNotificationEvent);
            Exit;
        end;
        gameCanvas := Self.getGameCanvas();
        if (rtSLayer) <> (TCollidableDestroyableDamageableLayer.getNullInstance()) then begin
            Self.getRtsPlayerLayerInterface().add(TSelectBuildingSound.getInstance());
            rtsLayer := TRTSLayer(rtSLayer);
            rtsLayer.select();
            Self.updateFormForLayer(rtsLayer);
            if (gameCanvas.getGameState()) = (Self.gameStateFactory.PLAYING_GAME_STATE) then begin
                if rtsLayer.isSelfUpgradeable() then begin
                    gameCanvas.updateCurrentTouchInputFactory(TRTSTouchButtonsBuilder.Create());
                end else begin
                    gameCanvas.updateCurrentTouchInputFactory(TNoBuildingSelectedTouchButtonsBuilder.Create());
                end;
            end else begin
                endLevelTouchButtonsBuilder := TEndLevelTouchButtonsBuilder.Create();
                if (Self.touchButtonsBuilderFactory) <> (nil) then begin
                    endLevelTouchButtonsBuilder.add(Self.touchButtonsBuilderFactory.getInstance());
                end;
                gameCanvas.updateCurrentTouchInputFactory(endLevelTouchButtonsBuilder);
            end;
        end else begin
            Self.logUtil.putF('Set Player Default Form', Self, 'setSelectedRTSLayer');
            Self.getRtsPlayerLayerInterface().setCurrentScrollSelectionForm(Self.getRtsPlayerLayerInterface().getBuildingScrollSelectionForm());
            Self.setSelectedRtsFormInput(Self.getRtsPlayerLayerInterface().getRTSFormInput());
            Self.getSelectedBuildingPlayerGameInput().setSelectedRTSLayer(TCollidableDestroyableDamageableLayer.getNullInstance());
            if (gameCanvas.getGameState()) = (Self.gameStateFactory.PLAYING_GAME_STATE) then begin
                gameCanvas.updateCurrentTouchInputFactory(TNoBuildingSelectedTouchButtonsBuilder.Create());
            end else begin
                endLevelNoBuildingSelectedTouchButtonsBuilder := TEndLevelNoBuildingSelectedTouchButtonsBuilder.Create();
                if (Self.touchButtonsBuilderFactory) <> (nil) then begin
                    endLevelNoBuildingSelectedTouchButtonsBuilder.add(Self.touchButtonsBuilderFactory.getInstance());
                end;
                gameCanvas.updateCurrentTouchInputFactory(endLevelNoBuildingSelectedTouchButtonsBuilder);
            end;
        end;
        Self.getSelectedRtsFormInput().setSelectedGeographicCellPosition(geographicMapCellPosition);
        Self.getSelectedBuildingPlayerGameInput().setSelectedRTSLayer(rtSLayer);
        Self.updatePaintable();
end;
    

procedure THumanRTSPlayerGameInput.updatePaintable;
var
  list: TBasicArrayList;
  rtsLayer: TRTSLayer;
  geographicMapCompositeInterface: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
begin
        list := Self.getSelectedBuildingPlayerGameInput().getSelectedBasicArrayList();
        if (list.size()) > (1) then begin
            geographicMapCompositeInterface := IGeographicMapCompositeInterface(Pointer(Self.getGameCanvas()));
            geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface()[0];
            Self.multiSelectPaintable.setBasicColorP(geographicMapInterface.getForegroundBasicColor());
            Self.multiSelectPaintable.update(list);
            Self.getRTSLayerInfoPaintable().updateRTSLayerInfoSelection(Self.multiSelectPaintable);
        end else if (list.size()) = (1) then begin
            rtsLayer := TRTSLayer(list.get(0));
            Self.getRTSLayerInfoPaintable().updateRTSLayerInfoSelection(rtsLayer.createHudPaintable());
        end else begin
            Self.getRTSLayerInfoPaintable().updateRTSLayerInfoInit(TNullInitUpdatePaintable.getInstance());
        end;
end;
    

procedure THumanRTSPlayerGameInput.paint(graphics: TGraphics);
var
  rectX1: Integer;
  rectY1: Integer;
  rectX2: Integer;
  rectY2: Integer;
begin
        inherited paint(graphics);
        if ((Self.startPoint) <> (TPointFactory.getInstance().ZERO_ZERO)) and ((Self.endPoint) <> (TPointFactory.getInstance().ZERO_ZERO)) then begin
            graphics.setColor(TBasicColorFactory.getInstance().RED.intValue());
            rectX1 := Self.startPoint.getX();
            rectY1 := Self.startPoint.getY();
            rectX2 := Self.endPoint.getX();
            rectY2 := Self.endPoint.getY();
            if (rectX1) > (rectX2) then begin
                rectX2 := rectX1;
                rectX1 := Self.endPoint.getX();
            end;
            if (rectY1) > (rectY2) then begin
                rectY2 := rectY1;
                rectY1 := Self.endPoint.getY();
            end;
            graphics.drawRect(rectX1, rectY1, (rectX2) - (rectX1), (rectY2) - (rectY1));
        end;
end;
    

procedure THumanRTSPlayerGameInput.onMotionGestureEvent(motionGestureEvent: TMotionGestureEvent);
begin
        Self.getMotionGestureInputList().add(motionGestureEvent);
end;
    

procedure THumanRTSPlayerGameInput.onScrolledMotionGestureEvent(motionGestureEvent: TMotionGestureEvent);
begin
end;
    

function THumanRTSPlayerGameInput.getSelectedRtsLayer: TCollidableDestroyableDamageableLayer;
begin
        Exit(Self.selectedRtsLayer);
end;
    

procedure THumanRTSPlayerGameInput.setSelectedRtsLayer(selectedRtsLayer: TCollidableDestroyableDamageableLayer);
begin
        Self.selectedRtsLayer := selectedRtsLayer;
end;

initialization

end.

