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
// package org.allbinary.game.displayable.canvas
unit DemoCanvas;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, J2MEUtil, Animation, IndexedAnimationBehavior, SpecialAnimation, GameAdStateFactory, BaseGameStatistics, CustomGameMenuUtil, FullScreenUtil, GameStatisticsFactory, RunnableCanvas, GameAdState, GameInfo, GameCommandsFactory, ChangedGameFeatureListener, Features, GameFeatureFactory, InputFeatureFactory, MainFeatureFactory, BasicBuildGameInitializerFactory, GameInitializationUtil, GameInputStrings, GameKey, GameKeyFactory, PlatformInputMappingFactory, DownGameKeyEventHandler, GameKeyEvent, GameKeyEventFactory, GameKeyEventHandler, UpGameKeyEventHandler, InputToGameKeyMapping, AllBinaryGameLayerManager, SWTUtil, DemoGameMidlet, HighScoreCommands, HighScores, HighScoresFactoryInterface, HighScoresHelper, HighScoresHelperBase, HighScoresPaintable, NullHighScoresSingletonFactory, GameState, GameStateFactory, Rectangle, ResizableListenerHandler, ProgressCanvas, ProgressCanvasFactory, BasicColor, BasicColorFactory, MyCommandsFactory, DisplayChangeEvent, DisplayChangeEventHandler, DisplayChangeEventListener, FullScreenPaintableFactory, CommandCurrentSelectionFormFactory, FormType, FormTypeFactory, ScrollSelectionForm, ScrollSelectionFormNoneFactory, CommandTextItemArrayFactory, ABCustomItem, CurrentDisplayableFactory, OpenGLFeatureFactory, OpenGLFeatureUtil, OpenGLThreadUtil, InitUpdatePaintable, NullPaintable, Paintable, PaintableInterface, StatePaintable, StatePaintableFactory, BasicMotionGesturesHandler, ForcedLogUtil, PreLogUtil, SmallIntegerSingletonFactory, StringMaker, StringUtil, OperatingSystemFactory, AbeClientInformationInterface, InApplicationPurchaseFactory, LockableFeature, LockableFeatureFactory, AllBinaryEventObject, EventStrings, AllBinaryMediaManager, EarlySoundsFactory, PrimaryPlayerQueueFactory, SecondaryPlayerQueueFactory, CommonSeps, NullThread, ThreadFactoryUtil, ThreadUtil, TimeDelayHelper, ABHashtable, BasicArrayList, BasicArrayListD, FormUtil, AllBinaryGameCanvas, BasicMenuInputProcessor, DemoGameStartupRunnable, GameRunnable, GameCanvasRunnableInterface, MenuListener, DemoPaintableInterface;

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

  TDemoCanvas = class(TRunnableCanvas, IGameCanvasRunnableInterface, IMenuListener, IDisplayChangeEventListener, IDemoPaintableInterface)
  public
    basicColorFactory: TBasicColorFactory;
    myCommandsFactory: TMyCommandsFactory;
    gameAdStateFactory: TGameAdStateFactory;
    gameInputStrings: TGameInputStrings;
    gameStateFactory: TGameStateFactory;
    threadFactoryUtil: TThreadFactoryUtil;
    formUtil: TFormUtil;
    fullscreenPaintable: TPaintable;
    basicGameDemoPaintable: TStatePaintable;
    specialAnimationInterface: TSpecialAnimation;
    paintedSpecialAnimationInterface: TAnimation;
    fullScreenUtil: TFullScreenUtil;
    gameCanvas: TAllBinaryGameCanvas;
    highScoresHelper: THighScoresHelperBase;
    realHighScoresPaintable: THighScoresPaintable;
    highScoresPaintable: TPaintable;
    state: Integer;
    canvasThread: TThread;
    timeDelayHelper: TTimeDelayHelper;
    basicColor: TBasicColor;
    abeClientInformation: IAbeClientInformationInterface;
    highScoresFactoryInterface: IHighScoresFactoryInterface;
    menuInputProcessor: TBasicMenuInputProcessor;
    menuForm: TScrollSelectionForm;
    gameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory;
    initialized: Boolean;
    demoGameRunnable: TDemoGameStartupRunnable;
    defaultPaintableInterface: TPaintable;
    paintableInterface: IPaintableInterface;
    overlayPaintable: TInitUpdatePaintable;
    progressPaintable: IPaintableInterface;
    tempWait: Integer;
    inputToGameKeyMapping: TInputToGameKeyMapping;
    gameRunnable: TGameRunnable;
    isSingleKeyRepeatableProcessing: Boolean;
    NONE: TGameKey;
    gameKeyEventFactory: TGameKeyEventFactory;
    lastKeyNotMapped: Integer;
    SET_STATE: string;
    baseGameStatistics: TBaseGameStatistics;
    class var id: Integer;
    class var BOT_GAME_STATS: string;
    class var TYPE_: Integer;
    procedure InitFields;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; commandListener: TCommandListener; highScoresFactoryInterface: IHighScoresFactoryInterface; paintable: TPaintable; overlayPaintable: TInitUpdatePaintable; gameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory; isContinue: Boolean);
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onDisplayChangeEvent(displayChangeEvent: TDisplayChangeEvent); virtual;
        function getCustomCommands: TArray<TObject>; virtual;
        procedure initCommands(cmdListener: TCommandListener); virtual;
        procedure initPostPaint; virtual;
        procedure mediaInit; virtual;
        procedure itemStateChanged(item: TItem); virtual;
        procedure initMenu; virtual;
        procedure open; virtual;
        procedure close; virtual;
        function getSourceId: Integer; virtual;
        procedure keyPressed(keyCode: Integer); virtual;
        procedure keyReleased(keyCode: Integer); virtual;
        procedure keyRepeated(keyCode: Integer); virtual;
        procedure keyPressedByDevice(keyCode: Integer; deviceId: Integer); virtual;
        procedure keyReleasedByDevice(keyCode: Integer; deviceId: Integer); virtual;
        procedure keyRepeatedByDevice(keyCode: Integer; deviceId: Integer); virtual;
        procedure addGameKeyEvent(keyCode: Integer; repeated: Boolean);
        procedure removeGameKeyEvent(keyCode: Integer; repeated: Boolean);
        procedure pause; virtual;
        procedure unPause; virtual;
        function isPausable: Boolean; virtual;
        function isGameOver: Boolean; virtual;
        procedure setLoadStateHashtable(hashtable: TABHashtable<TObject, TObject>); virtual;
        function getLoadStateHashtable: TABHashtable<TObject, TObject>; virtual;
        function getCurrentStateHashtable: TABHashtable<TObject, TObject>; virtual;
        procedure setHighScoreSubmitted(isNotUsed: Boolean); virtual;
        procedure paint(graphics: TGraphics); virtual;
        procedure paintThreed(graphics: TGraphics); virtual;
        procedure processGameOver; virtual;
        procedure demoStateChange; virtual;
        procedure updateDemoState; virtual;
        function getNextRandom: Integer; virtual;
        function createGameLayerManager(randomValue: Integer): TAllBinaryGameLayerManager; virtual;
        function createRunnable(randomLevel: Integer): IGameCanvasRunnableInterface; virtual;
        procedure create_; virtual;
        procedure start; virtual;
        procedure preDemoProcess; virtual;
        procedure process; virtual;
        procedure startDemoGame;
        procedure stopGameDemo; virtual;
        procedure showGamePaintable; virtual;
        function isReadyForStateChange: Boolean; virtual;
        procedure processGame; virtual;
        procedure run; virtual;
        procedure run3; virtual;
        procedure setRunning(running: Boolean); virtual;
        procedure end_; virtual;
        procedure setGameState(gameState: TGameState); virtual;
        function getGameState: TGameState; virtual;
        function getGameCanvasRunnableInterface: TAllBinaryGameCanvas; virtual;
        function isDemoLoading: Boolean; virtual;
        function getState: Integer; virtual;
        procedure setState(state: Integer); virtual;
        function isHighScoreSubmitted: Boolean; virtual;
        function getRealHighScoresPaintable: THighScoresPaintable; virtual;
        procedure setSpecialAnimationInterface(specialAnimationInterface: TSpecialAnimation); virtual;
        function getSpecialAnimationInterface: TSpecialAnimation; virtual;
        procedure setPaintableInterface(paintableInterface: IPaintableInterface); virtual;
        function getPaintableInterface: IPaintableInterface; virtual;
        procedure setDefaultPaintableInterface(defaultPaintableInterface: TPaintable); virtual;
        function getDefaultPaintableInterface: TPaintable; virtual;
        function getHighScoresFactoryInterface: IHighScoresFactoryInterface; virtual;
        procedure setMenuInputProcessor(menuInputProcessor: TBasicMenuInputProcessor); virtual;
        function getMenuInputProcessor: TBasicMenuInputProcessor; virtual;
        function getMenuForm: TScrollSelectionForm; virtual;
        procedure setMenuForm(menuForm: TScrollSelectionForm); virtual;
        function isInitialized: Boolean; virtual;
        function getOverlayPaintable: TPaintable; virtual;
        procedure setBasicGameDemoPaintable(basicGameDemoPaintable: TStatePaintable); virtual;
        function getBasicGameDemoPaintable: TStatePaintable; virtual;
        procedure setTempWait(tempWait: Integer); virtual;
        function getTempWait: Integer; virtual;
        function isSingleThread: Boolean; virtual;
        function isRunningInAnotherThread: Boolean; virtual;
        function getGameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory; virtual;
        function getType: Integer; virtual;
  end;

implementation
uses
  NullGameCanvas, NoMenuInputProcessor, NullWaitGameRunnable, GameInputMappingCanvas, DemoLimitedCommandTextItemArrayFactory, CommandFormInputProcessor, DemoCanvasProgressUtil, DemoGameRunnable;



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


procedure TDemoCanvas.InitFields;
begin
  Self.basicColorFactory := TBasicColorFactory.getInstance();
  Self.myCommandsFactory := TMyCommandsFactory.getInstance();
  Self.gameAdStateFactory := TGameAdStateFactory.getInstance();
  Self.gameInputStrings := TGameInputStrings.getInstance();
  Self.gameStateFactory := TGameStateFactory.getInstance();
  Self.threadFactoryUtil := TThreadFactoryUtil.getInstance();
  Self.formUtil := TFormUtil.getInstance();
  Self.fullscreenPaintable := TFullScreenPaintableFactory.getInstance().paintable;
  Self.basicGameDemoPaintable := TStatePaintableFactory.getInstance();
  Self.specialAnimationInterface := TSpecialAnimation.getInstance();
  Self.paintedSpecialAnimationInterface := TSpecialAnimation.getInstance();
  Self.fullScreenUtil := TFullScreenUtil.getInstance();
  Self.gameCanvas := TNullGameCanvas.getInstance();
  Self.highScoresHelper := THighScoresHelper.Create();
  Self.realHighScoresPaintable := THighScoresPaintable.Create();
  Self.highScoresPaintable := TNullPaintable.getInstance();
  Self.state := 0;
  Self.canvasThread := TNullThread.NULL_THREAD;
  Self.timeDelayHelper := TTimeDelayHelper.Create(6000);
  Self.basicColor := Self.basicColorFactory.RED;
  
  
  Self.menuInputProcessor := TNoMenuInputProcessor.getInstance();
  Self.menuForm := TScrollSelectionForm.getNullScrollSelectionForm();
  
  
  
  Self.defaultPaintableInterface := TNullPaintable.getInstance();
  Self.paintableInterface := TNullPaintable.getInstance();
  
  Self.progressPaintable := TProgressCanvasFactory.getLazyInstance();
  Self.tempWait := TNullWaitGameRunnable.getInstance().WAIT;
  Self.inputToGameKeyMapping := TPlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping();
  Self.gameRunnable := TNullWaitGameRunnable.getInstance();
  Self.isSingleKeyRepeatableProcessing := TFeatures.getInstance().isFeature(TInputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS);
  Self.NONE := TGameKeyFactory.getInstance().NONE;
  Self.gameKeyEventFactory := TGameKeyEventFactory.getInstance();
  Self.lastKeyNotMapped := -1;
  Self.SET_STATE := 'setState';
  Self.baseGameStatistics := TGameStatisticsFactory.getInstance();
end;
    

constructor TDemoCanvas.Create(abeClientInformation: IAbeClientInformationInterface; commandListener: TCommandListener; highScoresFactoryInterface: IHighScoresFactoryInterface; paintable: TPaintable; overlayPaintable: TInitUpdatePaintable; gameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory; isContinue: Boolean);
begin
        inherited Create(commandListener, TCurrentDisplayableFactory.getInstance().DEFAULT_CHILD_NAME_LIST, True);
        InitFields;
        Self.abeClientInformation := abeClientInformation;
        Self.setWait(TNullWaitGameRunnable.getInstance().WAIT);
        Self.gameInitializationInterfaceFactoryInterface := gameInitializationInterfaceFactoryInterface;
        TGameInitializationUtil.getInstance().initDemo(abeClientInformation, Self, gameInitializationInterfaceFactoryInterface);
        TResizableListenerHandler.getInstance().fireEvent(False);
        Self.overlayPaintable := overlayPaintable;
        Self.highScoresFactoryInterface := highScoresFactoryInterface;
        Self.setDefaultPaintableInterface(paintable);
        Self.setPaintableInterface(Self.getDefaultPaintableInterface());
        if isContinue then begin
            Self.addCommand(TGameCommandsFactory.getInstance().CONTINUE_COMMAND);
        end;
        if TChangedGameFeatureListener.getInstance().isChangedFeature(TGameFeatureFactory.getInstance().SOUND) then begin
            Self.mediaInit();
        end;
        Self.demoGameRunnable := TDemoGameStartupRunnable.Create(Self);
        TDisplayChangeEventHandler.getInstance().addListenerInterface(Self);
end;
    

procedure TDemoCanvas.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, Self);
end;
    

procedure TDemoCanvas.onDisplayChangeEvent(displayChangeEvent: TDisplayChangeEvent);
var
  scrollSelectionForm: TScrollSelectionForm;
  formType: TFormType;
  rectangle: TRectangle;
begin
        try
            Self.logUtil.putF(TStringMaker.Create().append(Self.commonLabels.START_LABEL).append(Self.displayInfo.toString()).toString(), Self, Self.canvasStrings.ON_DISPLAY_CHANGE_EVENT);
            scrollSelectionForm := Self.getMenuForm();
            if (scrollSelectionForm) <> (nil) then begin
                formType := TFormTypeFactory.getInstance().getFormType();
                rectangle := Self.formUtil.createFormRectangle();
                scrollSelectionForm.init(rectangle, formType);
            end;
            Self.overlayPaintable.init();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
            end;
        end;
end;
    

function TDemoCanvas.getCustomCommands: TArray<TObject>;
var
  gameCommandsFactory: TGameCommandsFactory;
  commandList: TBasicArrayList;
  inApplicationPurchaseFactory: TInApplicationPurchaseFactory;
  list: TBasicArrayList;
  isOverScan: Boolean;
  commandArray: TArray<TObject>;
begin
        gameCommandsFactory := TGameCommandsFactory.getInstance();
        if TJ2MEUtil.isHTML() then begin
            commandArray := [gameCommandsFactory.START_COMMAND, THighScoreCommands.getInstance().DISPLAY, TGameInputMappingCanvas.DISPLAY, gameCommandsFactory.DISPLAY_ABOUT];
            Exit(commandArray);
        end else begin
            commandList := TBasicArrayListD.Create();
            commandList.add(gameCommandsFactory.START_COMMAND);
            inApplicationPurchaseFactory := TInApplicationPurchaseFactory.getInstance();
            if inApplicationPurchaseFactory.isEnabled() then begin
                list := TLockableFeatureFactory.getInstance().getList();
                if ((list.size()) > (0)) and (not (inApplicationPurchaseFactory.isPurchased(TLockableFeature(list.get(0))))) then begin
                    commandList.add(gameCommandsFactory.BUY_COMMAND);
                end;
            end;
            commandList.add(THighScoreCommands.getInstance().DISPLAY);
            try
                isOverScan := TOperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan();
                if TSWTUtil.isSWT then begin
                    commandList.add(TGameInputMappingCanvas.DISPLAY);
                end else if not (isOverScan) then begin
                    commandList.add(gameCommandsFactory.DISPLAY_OPTIONS);
                    commandList.add(gameCommandsFactory.DISPLAY_LOAD_FORM);
                    commandList.add(TGameInputMappingCanvas.DISPLAY);
                end;
            except
                on e: SysUtils.Exception do begin
                end;
            end;
            commandList.add(gameCommandsFactory.DISPLAY_ABOUT);
            commandArray := commandList.toArray();
            Exit(commandArray);
        end;
end;
    

procedure TDemoCanvas.initCommands(cmdListener: TCommandListener);
var
  commandArray: TArray<TObject>;
  size: Integer;
  index: Integer;
begin
        Self.removeAllCommands();
        commandArray := Self.getCustomCommands();
        size := System.Length(commandArray);
        for index := 0 to size - 1 do begin
            Self.addCommand(TCommand(commandArray[index]));
        end;
        TCustomGameMenuUtil.add(Self);
        Self.setCommandListener(cmdListener);
end;
    

// throws Exception
procedure TDemoCanvas.initPostPaint;
begin
end;
    

// throws Exception
procedure TDemoCanvas.mediaInit;
begin
        TAllBinaryMediaManager.init(TEarlySoundsFactory.getInstance());
end;
    

procedure TDemoCanvas.itemStateChanged(item: TItem);
begin
        TForcedLogUtil.log(Self.commonStrings.NOT_IMPLEMENTED, Self);
end;
    

// throws Exception
procedure TDemoCanvas.initMenu;
var
  commandTextItemArrayFactory: TCommandTextItemArrayFactory;
  items: TArray<TABCustomItem>;
  formType: TFormType;
  rectangle: TRectangle;
  scrollSelectionForm: TScrollSelectionForm;
  formType2: TFormType;
  rectangle2: TRectangle;
begin
        Self.close();
        commandTextItemArrayFactory := TDemoLimitedCommandTextItemArrayFactory.getInstance().getCommandTextItemArrayFactory();
        items := commandTextItemArrayFactory.getInstance(Self.getCommandStack(), Self.basicColorFactory.BLACK, Self.basicColorFactory.WHITE);
        formType := TFormTypeFactory.getInstance().getFormType();
        rectangle := Self.formUtil.createFormRectangle();
        TPreLogUtil.put(TStringMaker.Create().append(Self.commonLabels.START_LABEL).append(Self.displayInfo.toString()).toString(), Self, 'initMenu');
        scrollSelectionForm := TCommandCurrentSelectionFormFactory.getInstance(TStringUtil.getInstance().EMPTY_STRING, items, rectangle, formType, 15, True, Self.basicColorFactory.BLACK, Self.basicColorFactory.WHITE);
        Self.setMenuForm(scrollSelectionForm);
        formType2 := TFormTypeFactory.getInstance().getFormType();
        rectangle2 := Self.formUtil.createFormRectangle();
        scrollSelectionForm.init(rectangle2, formType2);
        if (Self.getMenuForm()) <> (TScrollSelectionFormNoneFactory.getInstance()) then begin
            Self.setMenuInputProcessor(TCommandFormInputProcessor.Create(TBasicArrayListD.Create(), -1, Self, Self.getMenuForm()));
        end;
        Self.open();
end;
    

procedure TDemoCanvas.open;
begin
        TBasicMotionGesturesHandler.getInstance().addListenerInterface(Self.getMenuInputProcessor());
        TGameKeyEventHandler.getInstance().addListener(Self.getMenuInputProcessor());
end;
    

procedure TDemoCanvas.close;
begin
        TBasicMotionGesturesHandler.getInstance().removeListener(Self.getMenuInputProcessor());
        TGameKeyEventHandler.getInstance().removeListener(Self.getMenuInputProcessor());
end;
    

function TDemoCanvas.getSourceId: Integer;
begin
        Exit(TDemoCanvas.id);
end;
    

procedure TDemoCanvas.keyPressed(keyCode: Integer);
begin
        Self.keyPressedByDevice(keyCode, 0);
end;
    

procedure TDemoCanvas.keyReleased(keyCode: Integer);
begin
        Self.keyReleasedByDevice(keyCode, 0);
end;
    

procedure TDemoCanvas.keyRepeated(keyCode: Integer);
begin
        Self.keyRepeatedByDevice(keyCode, 0);
end;
    

procedure TDemoCanvas.keyPressedByDevice(keyCode: Integer; deviceId: Integer);
begin
        Self.addGameKeyEvent(keyCode, False);
end;
    

procedure TDemoCanvas.keyReleasedByDevice(keyCode: Integer; deviceId: Integer);
begin
        Self.removeGameKeyEvent(keyCode, False);
end;
    

procedure TDemoCanvas.keyRepeatedByDevice(keyCode: Integer; deviceId: Integer);
begin
        if Self.isSingleKeyRepeatableProcessing then begin
            Self.addGameKeyEvent(keyCode, True);
        end;
end;
    

procedure TDemoCanvas.addGameKeyEvent(keyCode: Integer; repeated: Boolean);
var
  gameKey: TGameKey;
  gameKeyEvent: TGameKeyEvent;
begin
        try
            gameKey := Self.inputToGameKeyMapping.getInstanceForCanvas(Self, keyCode);
            if (gameKey) <> (Self.NONE) then begin
                gameKeyEvent := Self.gameKeyEventFactory.getInstanceForInput(Self, gameKey);
                TDownGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent);
            end else begin
                if (Self.lastKeyNotMapped) <> (keyCode) then begin
                    Self.lastKeyNotMapped := keyCode;
                    Self.logUtil.putF(TStringMaker.Create().append(Self.gameInputStrings.NO_KEY).appendint(keyCode).toString(), Self, Self.gameInputStrings.ADD_KEY_EVENT);
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Key Event Error', Self, Self.gameInputStrings.ADD_KEY_EVENT, e);
            end;
        end;
end;
    

procedure TDemoCanvas.removeGameKeyEvent(keyCode: Integer; repeated: Boolean);
var
  gameKey: TGameKey;
  gameKeyEvent: TGameKeyEvent;
begin
        try
            gameKey := Self.inputToGameKeyMapping.getInstanceForCanvas(Self, keyCode);
            if (gameKey) <> (Self.NONE) then begin
                gameKeyEvent := Self.gameKeyEventFactory.getInstanceForInput(Self, gameKey);
                TUpGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent);
            end else begin
                Self.logUtil.putF(TStringMaker.Create().append(Self.gameInputStrings.NO_KEY).appendint(keyCode).toString(), Self, Self.gameInputStrings.REMOVE_KEY_EVENT);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Key Event Error', Self, Self.gameInputStrings.REMOVE_KEY_EVENT, e);
            end;
        end;
end;
    

procedure TDemoCanvas.pause;
begin
    TJava.MonitorEnter(Self);
    try
        Self.close();
        Self.setPaused(True);
        Self.gameRunnable := TNullWaitGameRunnable.getInstance();
        Self.gameCanvas.pause();
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TDemoCanvas.unPause;
begin
    TJava.MonitorEnter(Self);
    try
        Self.open();
        Self.gameCanvas.unPause();
        Self.gameRunnable := Self.gameCanvas.gameRunnable;
        Self.setPaused(False);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TDemoCanvas.isPausable: Boolean;
begin
        if (TCurrentDisplayableFactory.getInstance().getUsedRunnable()) = (TNullWaitGameRunnable.getInstance()) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TDemoCanvas.isGameOver: Boolean;
begin
        Self.logUtil.putF(TStringMaker.Create().append(Self.commonStrings.NOT_IMPLEMENTED).append(' since not a game').toString(), Self, 'isGameOver');
        Exit(False);
end;
    

// throws Exception
procedure TDemoCanvas.setLoadStateHashtable(hashtable: TABHashtable<TObject, TObject>);
begin
        Self.logUtil.putF('Trying to continue a demo lol - only continue a game canvas not the demo', Self, 'setLoadStateHashtable');
end;
    

// throws Exception
function TDemoCanvas.getLoadStateHashtable: TABHashtable<TObject, TObject>;
begin
        Self.logUtil.putF('Trying to continue a demo lol - only continue a game canvas not the demo', Self, 'getLoadStateHashtable');
        Exit(Self.stdUtil.NULL_TABLE);
end;
    

// throws Exception
function TDemoCanvas.getCurrentStateHashtable: TABHashtable<TObject, TObject>;
begin
        Self.logUtil.putF('Trying to save the AI lol', Self, 'getCurrentStateHashtable');
        Exit(Self.stdUtil.NULL_TABLE);
end;
    

procedure TDemoCanvas.setHighScoreSubmitted(isNotUsed: Boolean);
begin
end;
    

procedure TDemoCanvas.paint(graphics: TGraphics);
begin
        Self.paintableInterface.paint(graphics);
        Self.paintedSpecialAnimationInterface.paintXY(graphics, 0, 0);
        Self.highScoresPaintable.paint(graphics);
        Self.getBasicGameDemoPaintable().paint(graphics);
        Self.overlayPaintable.paint(graphics);
        Self.fullscreenPaintable.paint(graphics);
        Self.progressPaintable.paint(graphics);
end;
    

procedure TDemoCanvas.paintThreed(graphics: TGraphics);
begin
        Self.paintableInterface.paintThreed(graphics);
        Self.paintedSpecialAnimationInterface.paintThreedXYZ(graphics, 0, 0, 0);
end;
    

procedure TDemoCanvas.processGameOver;
begin
    TJava.MonitorEnter(Self);
    try
        Self.logUtil.putF('Not Implemented since not a game', Self, 'setGameOver');
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TDemoCanvas.demoStateChange;
var
  newState: Integer;
  highScores: THighScores;
begin
        newState := (Self.state) + (1);
        if (newState) > (2) then begin
            newState := 0;
        end else if (newState) = (2) then begin
            if not (Self.highScoresHelper.isAnyHighScores()) then begin
                newState := 0;
            end else begin
                highScores := Self.highScoresHelper.getNextHighScores();
                if (highScores) = (TNullHighScoresSingletonFactory.getInstance()) then begin
                    newState := 0;
                end else begin
                    Self.getRealHighScoresPaintable().setHighScores(highScores);
                end;
            end;
        end;
        Self.setState(newState);
        Self.updateDemoState();
end;
    

procedure TDemoCanvas.updateDemoState;
var
  gameAdState: TGameAdState;
begin
        TPreLogUtil.put(TSmallIntegerSingletonFactory.getInstance().createInstance(Self.state).toString(), Self, Self.SET_STATE);
        Self.getBasicGameDemoPaintable().setState(Self.state);
        if (Self.state) = (0) then begin
            Self.highScoresPaintable := TNullPaintable.getInstance();
            Self.paintedSpecialAnimationInterface := Self.getSpecialAnimationInterface();
            if (not (Self.demoGameRunnable.isRunning())) and (Self.gameCanvas.isInitialized()) then begin
                Self.getSpecialAnimationInterface().reset();
            end;
        end else if (Self.state) = (1) then begin
            Self.paintedSpecialAnimationInterface := TSpecialAnimation.getInstance();
        end else if (Self.state) = (2) then begin
            Self.highScoresPaintable := Self.getRealHighScoresPaintable();
        end;
        gameAdState := Self.gameAdStateFactory.getCurrentInstance();
        gameAdState.processPageAdState();
end;
    

// throws Exception
function TDemoCanvas.getNextRandom: Integer;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
function TDemoCanvas.createGameLayerManager(randomValue: Integer): TAllBinaryGameLayerManager;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
function TDemoCanvas.createRunnable(randomLevel: Integer): IGameCanvasRunnableInterface;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
procedure TDemoCanvas.create_;
var
  randomLevel: Integer;
  gameInfo: TGameInfo;
begin
        TPreLogUtil.put(Self.commonStrings.START, Self, 'create');
        Self.highScoresPaintable := TNullPaintable.getInstance();
        randomLevel := Self.getNextRandom();
        Self.gameCanvas := TAllBinaryGameCanvas(Self.createRunnable(randomLevel));
        Self.basicColor := Self.gameCanvas.getLayerManager().getForegroundBasicColor();
        Self.getRealHighScoresPaintable().setBasicColorP(Self.basicColor);
        Self.gameCanvas.setGameCanvasStartListener(Self);
        gameInfo := Self.gameCanvas.getLayerManager().getGameInfo();
        Self.getHighScoresFactoryInterface().fetchHighScores(gameInfo, Self.highScoresHelper);
end;
    

// throws Exception
procedure TDemoCanvas.start;
var
  gameCanvas: TAllBinaryGameCanvas;
begin
        gameCanvas := Self.gameCanvas;
        TPreLogUtil.put(TStringMaker.Create().append('Game Thread in DemoCanvas: ').append(Self.stringUtil.toString(gameCanvas)).toString(), Self, Self.commonStrings.START);
        Self.canvasThread := Self.threadFactoryUtil.getInstanceGameCanvasRunnable(gameCanvas);
        Self.gameCanvas.setThread(Self.canvasThread);
        Self.threadFactoryUtil.start(Self.canvasThread);
        if (Self.getWait()) = (TNullWaitGameRunnable.getInstance().WAIT) then begin
            Self.setWait(Self.getTempWait());
        end;
end;
    

procedure TDemoCanvas.preDemoProcess;
begin
        if (not (Self.gameCanvas.isInitialized())) or ((Self.gameCanvas.getTitle()) = (TNullGameCanvas.NO_GAME)) then begin
            if TAllBinaryMediaManager.update() then begin
                if not (TPrimaryPlayerQueueFactory.getInstance().process()) then begin
                    TSecondaryPlayerQueueFactory.getInstance().process();
                end;
            end;
        end;
        Self.overlayPaintable.update();
end;
    

// throws Exception
procedure TDemoCanvas.process;
var
  indexedAnimationBehavior: TIndexedAnimationBehavior;
  demoGameMidlet: TDemoGameMidlet;
  thread: TThread;
  randomLevel: Integer;
  gameInfo: TGameInfo;
begin
        inherited process();
        Self.getMenuInputProcessor().processInputList();
        Self.preDemoProcess();
        if (Self.state) = (0) then begin
            indexedAnimationBehavior := (TIndexedAnimationBehavior(Self.getSpecialAnimationInterface().getAnimationBehavior()));
            if (indexedAnimationBehavior.loopIndex) < (1) then begin
                Self.timeDelayHelper.setStartTimeTNT();
            end;
            demoGameMidlet := TDemoGameMidlet(Self.getCustomCommandListener());
            if ((Self.gameCanvas) <> (TNullGameCanvas.getInstance())) and (Self.gameCanvas.isGameOver()) then begin
                Self.stopGameDemo();
                randomLevel := Self.getNextRandom();
                gameInfo := Self.gameCanvas.getLayerManager().getGameInfo();
                gameInfo.setCurrentLevel(randomLevel);
                Self.gameCanvas.setGameOver(False);
                Self.start();
            end else if ((Self.gameCanvas) = (TNullGameCanvas.getInstance())) and (demoGameMidlet.isReady()) then begin
                if not (Self.demoGameRunnable.isRunning()) then begin
                    Self.startDemoGame();
                    Self.demoGameRunnable.setRunning(True);
                    thread := Self.threadFactoryUtil.getInstanceForRunnable(Self.demoGameRunnable);
                    Self.demoGameRunnable.setThread(thread);
                    Self.threadFactoryUtil.start(thread);
                end;
            end;
        end;
end;
    

// throws Exception
procedure TDemoCanvas.startDemoGame;
begin
        TDemoCanvasProgressUtil.showProgress(Self);
end;
    

// throws Exception
procedure TDemoCanvas.stopGameDemo;
begin
        if (Self.gameCanvas) <> (TNullGameCanvas.getInstance()) then begin
            Self.logUtil.putF('Set Running False', Self, 'stopGameDemo');
            Self.gameCanvas.setRunning(False);
        end;
        TThreadUtil.getInstance().join(Self.canvasThread);
end;
    

procedure TDemoCanvas.showGamePaintable;
var
  METHOD_NAME: string;
  isDefault: Boolean;
begin
        METHOD_NAME := 'showGamePaintable';
        TPreLogUtil.put(Self.commonStrings.START, Self, METHOD_NAME);
        isDefault := TJ2MEUtil.isHTML();
        if (((Self.gameCanvas) <> (TNullGameCanvas.getInstance())) and ((((Self.gameCanvas.isRunning()) or (isDefault)) or (TSWTUtil.isSWT)))) and (not (((Self.gameCanvas.getType()) = (TNullGameCanvas.TYPE_)))) then begin
            Self.gameRunnable := Self.gameCanvas.gameRunnable;
            TPreLogUtil.put('Showing Game', Self, METHOD_NAME);
            Self.setPaintableInterface(Self.gameCanvas);
        end else begin
            Self.gameRunnable := TNullWaitGameRunnable.getInstance();
            TPreLogUtil.put('Not Showing Game', Self, METHOD_NAME);
            Self.setPaintableInterface(Self.getDefaultPaintableInterface());
        end;
end;
    

function TDemoCanvas.isReadyForStateChange: Boolean;
begin
        Exit((not (Self.demoGameRunnable.isRunning())) and (Self.gameCanvas.isInitialized()));
end;
    

// throws Exception
procedure TDemoCanvas.processGame;
begin
        Self.gameRunnable.run();
        if (not (Self.specialAnimationInterface.isComplete())) and (Self.isReadyForStateChange()) then begin
            Self.specialAnimationInterface.nextFrame();
        end;
        if (Self.timeDelayHelper.isTimeTNT()) and (Self.isReadyForStateChange()) then begin
            Self.demoStateChange();
        end else begin
            Self.process();
        end;
end;
    

procedure TDemoCanvas.run;
var
  progressCanvas: TProgressCanvas;
  features: TFeatures;
  openGLFeatureFactory: TOpenGLFeatureFactory;
  demoGameRunnable: TDemoGameRunnable;
  currentDisplayableFactory: TCurrentDisplayableFactory;
begin
        Self.logUtil.putF(Self.commonStrings.START_RUNNABLE, Self, Self.commonStrings.RUN);
        try
            progressCanvas := TProgressCanvasFactory.getInstance();
            features := TFeatures.getInstance();
            openGLFeatureFactory := TOpenGLFeatureFactory.getInstance();
            progressCanvas.addNormalPortion(50, 'Demo Thread');
            Self.setCurrentThread();
            Self.setRunning(True);
            if features.isFeature(TMainFeatureFactory.getInstance().LOAD_ONDEMAND) then begin
                progressCanvas.end_();
            end else begin
                progressCanvas.addNormalPortion(50, 'Demo Thread Running');
            end;
            Self.fullScreenUtil.initOnRun(Self, Self.getCustomCommandListener());
            Self.initMenu();
            Self.initPostPaint();
            Self.updateDemoState();
            if features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD) then begin
                while ((Self.gameCanvas) = (TNullGameCanvas.getInstance())) or (not (Self.gameCanvas.isInitialized())) do begin
                    Self.loopTimeHelper.setStartTimeTNT();
                    Self.processGame();
                    Self.processLoopSleep();
                end;
                demoGameRunnable := TDemoGameRunnable.Create(Self);
                currentDisplayableFactory := TCurrentDisplayableFactory.getInstance();
                currentDisplayableFactory.setRunnable(demoGameRunnable);
                currentDisplayableFactory.setMyCanvas(Self);
                TOpenGLThreadUtil.getInstance().onResume();
            end;
            if (features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) or (TJ2MEUtil.isHTML()) then begin
                demoGameRunnable := TDemoGameRunnable.Create(Self);
                currentDisplayableFactory := TCurrentDisplayableFactory.getInstance();
                currentDisplayableFactory.setRunnable(demoGameRunnable);
                currentDisplayableFactory.setMyCanvas(Self);
            end else begin
                while Self.isRunning() do begin
                    Self.run3();
                end;
                Self.end_();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.RUN, e);
            end;
        end;
        Self.logUtil.putF(Self.commonStrings.END_RUNNABLE, Self, Self.commonStrings.RUN);
end;
    

// throws Exception
procedure TDemoCanvas.run3;
begin
        Self.loopTimeHelper.setStartTimeTNT();
        Self.processGame();
        Self.processLoopSleep();
end;
    

procedure TDemoCanvas.setRunning(running: Boolean);
var
  features: TFeatures;
  openGLFeatureFactory: TOpenGLFeatureFactory;
  currentDisplayableFactory: TCurrentDisplayableFactory;
begin
        inherited setRunning(running);
        try
            features := TFeatures.getInstance();
            openGLFeatureFactory := TOpenGLFeatureFactory.getInstance();
            if running then begin
            end else begin
                if (((features.isDefault(openGLFeatureFactory.OPENGL)) or (TJ2MEUtil.isHTML()))) or (TSWTUtil.isSWT) then begin
                    currentDisplayableFactory := TCurrentDisplayableFactory.getInstance();
                    currentDisplayableFactory.clearRunnable();
                    Self.end_();
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.SET_RUNNING, e);
            end;
        end;
end;
    

// throws Exception
procedure TDemoCanvas.end_;
var
  progressCanvas: TProgressCanvas;
  features: TFeatures;
begin
        progressCanvas := TProgressCanvasFactory.getInstance();
        features := TFeatures.getInstance();
        Self.baseGameStatistics.add(TJava.BoxString(TStringMaker.Create().append(TDemoCanvas.BOT_GAME_STATS).append(Self.baseGameStatistics.toString()).append(TCommonSeps.getInstance().NEW_LINE).toString()));
        Self.baseGameStatistics.init();
        if features.isFeature(TMainFeatureFactory.getInstance().LOAD_ONDEMAND) then begin
            progressCanvas.start();
        end;
        Self.logUtil.putF('Demo End', Self, Self.commonStrings.RUN);
        Self.close();
        TDisplayChangeEventHandler.getInstance().removeListener(Self);
        Self.stopGameDemo();
end;
    

procedure TDemoCanvas.setGameState(gameState: TGameState);
begin
end;
    

function TDemoCanvas.getGameState: TGameState;
begin
        Exit(Self.gameStateFactory.PLAYING_GAME_STATE);
end;
    

function TDemoCanvas.getGameCanvasRunnableInterface: TAllBinaryGameCanvas;
begin
        Exit(Self.gameCanvas);
end;
    

function TDemoCanvas.isDemoLoading: Boolean;
var
  gameCanvas: TAllBinaryGameCanvas;
begin
        gameCanvas := Self.gameCanvas;
        if (gameCanvas) = (TNullGameCanvas.getInstance()) then begin
            Exit(True);
        end else if gameCanvas.isInitialized() then begin
            Exit(False);
        end;
        Exit(True);
end;
    

function TDemoCanvas.getState: Integer;
begin
        Exit(Self.state);
end;
    

procedure TDemoCanvas.setState(state: Integer);
begin
        Self.state := state;
end;
    

function TDemoCanvas.isHighScoreSubmitted: Boolean;
begin
        Self.logUtil.putF('Wow the AI got a high score!', Self, 'isHighScoreSubmitted');
        Exit(False);
end;
    

function TDemoCanvas.getRealHighScoresPaintable: THighScoresPaintable;
begin
        Exit(Self.realHighScoresPaintable);
end;
    

procedure TDemoCanvas.setSpecialAnimationInterface(specialAnimationInterface: TSpecialAnimation);
begin
        specialAnimationInterface.setFrame(0);
        Self.specialAnimationInterface := specialAnimationInterface;
end;
    

function TDemoCanvas.getSpecialAnimationInterface: TSpecialAnimation;
begin
        Exit(Self.specialAnimationInterface);
end;
    

procedure TDemoCanvas.setPaintableInterface(paintableInterface: IPaintableInterface);
begin
        Self.paintableInterface := paintableInterface;
end;
    

function TDemoCanvas.getPaintableInterface: IPaintableInterface;
begin
        Exit(Self.paintableInterface);
end;
    

procedure TDemoCanvas.setDefaultPaintableInterface(defaultPaintableInterface: TPaintable);
begin
        Self.defaultPaintableInterface := defaultPaintableInterface;
end;
    

function TDemoCanvas.getDefaultPaintableInterface: TPaintable;
begin
        Exit(Self.defaultPaintableInterface);
end;
    

function TDemoCanvas.getHighScoresFactoryInterface: IHighScoresFactoryInterface;
begin
        Exit(Self.highScoresFactoryInterface);
end;
    

procedure TDemoCanvas.setMenuInputProcessor(menuInputProcessor: TBasicMenuInputProcessor);
begin
        Self.menuInputProcessor := menuInputProcessor;
end;
    

function TDemoCanvas.getMenuInputProcessor: TBasicMenuInputProcessor;
begin
        Exit(Self.menuInputProcessor);
end;
    

function TDemoCanvas.getMenuForm: TScrollSelectionForm;
begin
        Exit(Self.menuForm);
end;
    

procedure TDemoCanvas.setMenuForm(menuForm: TScrollSelectionForm);
begin
        Self.menuForm := menuForm;
end;
    

function TDemoCanvas.isInitialized: Boolean;
begin
        Exit(Self.initialized);
end;
    

function TDemoCanvas.getOverlayPaintable: TPaintable;
begin
        Exit(Self.overlayPaintable);
end;
    

procedure TDemoCanvas.setBasicGameDemoPaintable(basicGameDemoPaintable: TStatePaintable);
begin
        Self.basicGameDemoPaintable := basicGameDemoPaintable;
end;
    

function TDemoCanvas.getBasicGameDemoPaintable: TStatePaintable;
begin
        Exit(Self.basicGameDemoPaintable);
end;
    

procedure TDemoCanvas.setTempWait(tempWait: Integer);
begin
        Self.tempWait := tempWait;
end;
    

function TDemoCanvas.getTempWait: Integer;
begin
        Exit(Self.tempWait);
end;
    

function TDemoCanvas.isSingleThread: Boolean;
begin
        Exit((TOpenGLFeatureUtil.getInstance().isAnyThreed()) or (TSWTUtil.isSWT));
end;
    

function TDemoCanvas.isRunningInAnotherThread: Boolean;
var
  features: TFeatures;
  openGLFeatureFactory: TOpenGLFeatureFactory;
begin
        features := TFeatures.getInstance();
        openGLFeatureFactory := TOpenGLFeatureFactory.getInstance();
        if features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD) then begin
            Exit(True);
        end else begin
            Exit(Self.isRunning());
        end;
end;
    

function TDemoCanvas.getGameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory;
begin
        Exit(Self.gameInitializationInterfaceFactoryInterface);
end;
    

function TDemoCanvas.getType: Integer;
begin
        Exit(TDemoCanvas.TYPE_);
end;

initialization
  TDemoCanvas.id := 0;
  TDemoCanvas.BOT_GAME_STATS := 'Bot Game Statistics: ';
  TDemoCanvas.TYPE_ := 3;

end.

