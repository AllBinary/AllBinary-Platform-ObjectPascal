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
// package org.allbinary.graphics.canvas.transition.progress
unit ProgressCanvas;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, Processor, RunnableCanvas, GameCommandsFactory, BasicColor, CanvasStrings, MyFontProcessor, UpdateMyFontInterface, UpdateMyFontProcessor, ABCustomGaugeItem, NullPaintable, Paintable, PaintableInterface, PreLogUtil, SmallIntegerSingletonFactory, StringMaker, StringUtil, AllBinaryMidlet, PathFindingThreadPool, ThreadPool, ProgressEndListener;

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

  TProgressPaintable = class(TPaintable)
  public
    progressCanvas: TProgressCanvas;
    procedure InitFields;
        constructor Create(progressCanvas: TProgressCanvas);
        procedure paint(graphics: TGraphics); override;
  end;
  TProgressCanvas = class(TRunnableCanvas, IPaintableInterface, IUpdateMyFontInterface)
  public
    hasPainted: Boolean;
    backgroundBasicColor: TBasicColor;
    GAUGE_PAINTABLE: TPaintable;
    maxValue: Single;
    gauge: TABCustomGaugeItem;
    TEXT: string;
    updateMyFontProcessor: TMyFontProcessor;
    myFontProcessor: TMyFontProcessor;
    allbinaryMidlet: TAllBinaryMidlet;
    value: Single;
    text: string;
    background: Boolean;
    paintable: IPaintableInterface;
    inProgress: Boolean;
    IN_GAME_PROCESSOR: TProcessor;
    inGameProcessor: TProcessor;
    progressEndListener: TProgressEndListener;
    backgroundLabel: string;
    START_BACKGROUND: string;
    ADD_PORTION: string;
    ADD_EARLY_PORTION: string;
    procedure InitFields;
        constructor Create(title: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure updateMeasurement(graphics: TGraphics); virtual;
        procedure init(gameMidlet: TAllBinaryMidlet); virtual;
        procedure update(graphics: TGraphics); virtual;
        procedure initCommands(cmdListener: TCommandListener); virtual;
        function getMaxValue: Single;
        procedure start; virtual;
        procedure startBackground(background: Boolean); virtual;
        procedure endActual; virtual;
        procedure inGame; virtual;
        procedure end_; virtual;
        procedure endFromInitialLazyLoadingComplete; virtual;
        function isInGame: Boolean; virtual;
        procedure endIfPaintedSinceStart; virtual;
        procedure addEarlyPortion(value: Integer; text: string; index: Integer); virtual;
        procedure addPortion(value: Integer; text: string; index: Integer); virtual;
        procedure addNormalPortion(value: Integer; text: string); virtual;
        procedure setValue(value: Integer); virtual;
        procedure paint(graphics: TGraphics); virtual;
        procedure paint2(graphics: TGraphics); virtual;
        procedure paintThreed(graphics: TGraphics); virtual;
        function getValue: Single; virtual;
        procedure setText(text: string); virtual;
        function getText: string; virtual;
        procedure setBackground(background: Boolean); virtual;
        function isBackground: Boolean; virtual;
  end;

implementation
uses
  ProgressPaintable;



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


procedure TProgressPaintable.InitFields;
begin
  
end;
    

    constructor TProgressPaintable.Create(progressCanvas: TProgressCanvas);
begin
        inherited Create;
        InitFields;
            Self.progressCanvas := progressCanvas;
end;
    

    procedure TProgressPaintable.paint(graphics: TGraphics);
begin
            Self.progressCanvas.paint2(graphics);
end;

procedure TProgressCanvas.InitFields;
begin
  
  
  Self.GAUGE_PAINTABLE := TProgressPaintable.Create(Self);
  Self.maxValue := 100.0;
  
  Self.TEXT := Self.commonStrings.LOADING;
  Self.updateMyFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.myFontProcessor := Self.updateMyFontProcessor;
  Self.allbinaryMidlet := TAllBinaryMidlet.getNullInstance();
  
  Self.text := Self.TEXT;
  Self.background := True;
  Self.paintable := Self.GAUGE_PAINTABLE;
  Self.inProgress := False;
  Self.IN_GAME_PROCESSOR := TProcessor.Create() (* Java anonymous class body: implement it as a named class
        Self.pathFindingThreadPool := TPathFindingThreadPool.getInstance();
        

    // throws Exception
    procedure T.process;
begin
            Self.pathFindingThreadPool.runAPriorityTask();
end;
*);
  Self.inGameProcessor := TProcessor.getInstance();
  Self.progressEndListener := TProgressEndListener.instance;
  Self.backgroundLabel := 'Background AI Game Loading...';
  Self.START_BACKGROUND := 'startBackground';
  Self.ADD_PORTION := 'addPortion';
  Self.ADD_EARLY_PORTION := 'addEarlyPortion';
end;
    

constructor TProgressCanvas.Create(title: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(TNullCommandListener.NULL_COMMAND_LISTENER, TCanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, False);
        InitFields;
        Self.backgroundBasicColor := backgroundBasicColor;
        Self.gauge := TABCustomGaugeItem.Create(TStringUtil.getInstance().EMPTY_STRING, Integer(Trunc(Self.maxValue)), 0, backgroundBasicColor, foregroundBasicColor);
end;
    

procedure TProgressCanvas.updateMeasurement(graphics: TGraphics);
var
  font: TFont;
begin
        font := graphics.getFont();
        Self.gauge.setHeight((font.getHeight()) + (2));
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TProgressCanvas.init(gameMidlet: TAllBinaryMidlet);
begin
        Self.allbinaryMidlet := gameMidlet;
end;
    

// throws Exception
procedure TProgressCanvas.update(graphics: TGraphics);
begin
end;
    

procedure TProgressCanvas.initCommands(cmdListener: TCommandListener);
begin
end;
    

function TProgressCanvas.getMaxValue: Single;
begin
        Exit(Self.maxValue);
end;
    

procedure TProgressCanvas.start;
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.commonStrings.START_METHOD_NAME);
        Self.setBackground(True);
        Self.gauge.setHeight(30);
        Self.gauge.setLabel(Self.commonStrings.PLEASE_WAIT);
        Self.setText(Self.TEXT);
        Self.setValue(0);
        Self.inGameProcessor := TProcessor.getInstance();
        Self.paintable := Self.GAUGE_PAINTABLE;
        Self.inProgress := True;
end;
    

procedure TProgressCanvas.startBackground(background: Boolean);
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.START_BACKGROUND);
        Self.setBackground(background);
        Self.myFontProcessor := Self.updateMyFontProcessor;
        Self.gauge.setLabel(Self.backgroundLabel);
        Self.setText(Self.TEXT);
        Self.setValue(0);
        Self.inGameProcessor := TProcessor.getInstance();
        Self.paintable := Self.GAUGE_PAINTABLE;
end;
    

procedure TProgressCanvas.endActual;
begin
        Self.allbinaryMidlet.commandAction(TGameCommandsFactory.getInstance().SHOW_GAME_CANVAS, TNullCanvas.NULL_CANVAS);
        Self.inProgress := False;
        Self.inGame();
end;
    

procedure TProgressCanvas.inGame;
begin
        Self.progressEndListener.onEndEvent();
        Self.inGameProcessor := Self.IN_GAME_PROCESSOR;
end;
    

procedure TProgressCanvas.end_;
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.commonStrings.END_METHOD_NAME);
        Self.gauge.setValue(Self.getMaxValue());
        Self.endActual();
        Self.paintable := TNullPaintable.getInstance();
end;
    

procedure TProgressCanvas.endFromInitialLazyLoadingComplete;
begin
        Self.progressEndListener.onEndEvent();
        Self.gauge.setValue(Self.getMaxValue());
        Self.inGameProcessor := Self.IN_GAME_PROCESSOR;
end;
    

function TProgressCanvas.isInGame: Boolean;
begin
        if (Self.inGameProcessor) = (Self.IN_GAME_PROCESSOR) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

procedure TProgressCanvas.endIfPaintedSinceStart;
begin
end;
    

procedure TProgressCanvas.addEarlyPortion(value: Integer; text: string; index: Integer);
begin
        Self.setText(TStringMaker.Create().append(text).append(TSmallIntegerSingletonFactory.getInstance().getAt(index).toString()).toString());
        Self.gauge.setValue((Self.gauge.getValue()) + ((Self.getMaxValue()) / (value)));
end;
    

procedure TProgressCanvas.addPortion(value: Integer; text: string; index: Integer);
begin
        Self.setText(TStringMaker.Create().append(text).append(TSmallIntegerSingletonFactory.getInstance().getAt(index).toString()).toString());
        TPreLogUtil.put(Self.text, Self, Self.ADD_PORTION);
        Self.gauge.setValue((Self.gauge.getValue()) + ((Self.getMaxValue()) / (value)));
end;
    

procedure TProgressCanvas.addNormalPortion(value: Integer; text: string);
begin
        if (Self.text) <> (text) then begin
            TPreLogUtil.put(text, Self, Self.ADD_PORTION);
        end;
        Self.setText(text);
        Self.gauge.setValue((Self.gauge.getValue()) + ((Self.getMaxValue()) / (value)));
end;
    

procedure TProgressCanvas.setValue(value: Integer);
begin
        Self.value := value;
        Self.gauge.setValue(value);
end;
    

procedure TProgressCanvas.paint(graphics: TGraphics);
begin
        Self.paintable.paint(graphics);
end;
    

procedure TProgressCanvas.paint2(graphics: TGraphics);
begin
        Self.myFontProcessor.process(graphics);
        graphics.setColor(Self.backgroundBasicColor.intValue());
        graphics.fillRect(0, 0, Self.displayInfo.getLastWidth(), Self.displayInfo.getLastHeight());
        Self.gauge.paintXY(graphics, 0, 0);
        Self.hasPainted := True;
end;
    

procedure TProgressCanvas.paintThreed(graphics: TGraphics);
begin
end;
    

function TProgressCanvas.getValue: Single;
begin
        Exit(Self.value);
end;
    

procedure TProgressCanvas.setText(text: string);
begin
        Self.text := text;
end;
    

function TProgressCanvas.getText: string;
begin
        Exit(Self.text);
end;
    

procedure TProgressCanvas.setBackground(background: Boolean);
begin
        Self.background := background;
end;
    

function TProgressCanvas.isBackground: Boolean;
begin
        Exit(Self.background);
end;

initialization

end.

