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
unit AllBinaryGameCanvas;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, AndroidUtil, J2MEUtil, GameAdStateFactory, BaseGameStatistics, GameStatisticsFactory, Processor, RunnableCanvas, DebugFactory, NoDebug, GameAdState, GameInfo, GameStrings, GameTypeFactory, Intermission, IntermissionCompositeInterface, IntermissionEnableListenerInterface, IntermissionInterface, PlayerTypesFactory, GameCommandsFactory, InGameFeatures, InGameOptionsForm, ChangedGameFeatureListener, GameInitializedEvent, GameInitializedEventHandler, Features, GameFeatureFactory, GameFeatureUtil, InputFeatureFactory, MainFeatureFactory, SensorFeatureFactory, TouchFeatureFactory, GameLevelDisplayChangeEventListenersFactory, BasicBuildGameInitializerFactory, GameInitializationUtil, GameInputStrings, InputProcessor, NoPlayerGameInput, PlayerGameInput, GameKeyEventHandler, AllBinaryGameLayerManager, SWTUtil, ColorFillBasePaintable, ColorFillPaintableFactory, ResourceLoadingLevel, ResourceLoadingLevelFactory, HighScore, HighScoresHelperBaseInterface, HighScoresFactoryInterface, HighScoresPaintable, NullHighScoresSingletonFactory, HighScoreTextBox, GameState, GameStateFactory, GraphicsStrings, Rectangle, ScreenCapture, ScreenCaptureFactory, ProgressCanvas, ProgressCanvasFactory, BasicColorFactory, BasicColorSetUtil, CanvasStrings, DisplayInfoSingleton, GameTickDisplayInfoSingleton, MyCommandsFactory, DisplayChangeEvent, DisplayChangeEventHandler, DisplayChangeEventListener, MyFontProcessor, UpdateMyFontInterface, UpdateMyFontProcessor, CommandCurrentSelectionFormFactory, FormPaintable, FormType, FormTypeFactory, ScrollSelectionForm, ScrollSelectionFormNoneFactory, CommandTextItemArrayFactory, ABCustomItem, CurrentDisplayableFactory, OpenGLFeatureFactory, OpenGLFeatureUtil, OpenGLThreadUtil, InitUpdatePaintable, NullInitUpdatePaintable, NullPaintable, Paintable, PaintableInterface, OpenGLImageSpecificFactory, SensorGameUpdateProcessor, SingleSensorGameUpdateProcessor, BaseTouchInput, NoButtonsTouchInputFactory, TouchButtonFactory, TouchButtonsPaintableFactory, TouchScreenFactory, BasicMotionGesturesHandler, ABSystemWrapper, ForcedLogUtil, LogUtil, PreLogUtil, StringMaker, StringUtil, OperatingSystemFactory, AbeClientInformationInterface, AllBinaryEventObject, EventStrings, AllBinaryMediaManager, PlayerQueue, PrimaryPlayerQueueFactory, SecondaryPlayerQueueFactory, SelectSound, CommonSeps, CommonStrings, SecondaryThreadPool, GameTickTimeDelayHelper, GameTickTimeDelayHelperFactory, TimeDelayHelper, ABHashtable, BasicArrayList, BasicArrayListD, BasicArrayListUtil, ARunnable, GameCanvasRunnable, GameCanvasPauseRunnable, FormUtil, MyFormUtil, EndGameInfo, BasicMenuInputProcessor, DemoGameBehavior, BaseMenuBehavior, DemoPaintableInterface, AllBinaryGameCanvasInterface, GameCanvasRunnableInterface, MenuListener, PopupMenuInterface;

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

  TAllBinaryGameCanvas = class(TRunnableCanvas, IAllBinaryGameCanvasInterface, IGameCanvasRunnableInterface, IMenuListener, IIntermissionCompositeInterface, IIntermissionEnableListenerInterface, IPopupMenuInterface, IDisplayChangeEventListener, IUpdateMyFontInterface)
  public
    basicColorFactory: TBasicColorFactory;
    basicSetColorUtil: TBasicColorSetUtil;
    touchFeatureFactory: TTouchFeatureFactory;
    openGLFeatureFactory: TOpenGLFeatureFactory;
    touchButtonFactory: TTouchButtonFactory;
    gameAdStateFactory: TGameAdStateFactory;
    gameStrings: TGameStrings;
    gameInputStrings: TGameInputStrings;
    gameStateFactory: TGameStateFactory;
    gameTickTimeDelayHelper: TGameTickTimeDelayHelper;
    gameTickDisplayInfoSingleton: TGameTickDisplayInfoSingleton;
    gameRunnable: TGameCanvasRunnable;
    gamePauseRunnable: TGameCanvasPauseRunnable;
    formUtil: TFormUtil;
    myFormUtil: TMyFormUtil;
    updateMyFontProcessor: TMyFontProcessor;
    myFontProcessor: TMyFontProcessor;
    gameSpecificPaintable: TPaintable;
    sensorGameUpdateProcessor: TSensorGameUpdateProcessor;
    endGameInfo: TEndGameInfo;
    startIntermissionInterface: IIntermissionInterface;
    endLevelIntermissionInterface: IIntermissionInterface;
    gameLayerManager: TAllBinaryGameLayerManager;
    gameState: TGameState;
    gameOver: Boolean;
    initialized: Boolean;
    gameStateTimeHelper: TTimeDelayHelper;
    highScoresHelper: IHighScoresHelperBaseInterface;
    highScoreSubmitted: Boolean;
    realHighScoresPaintable: THighScoresPaintable;
    highScoresPaintable: TPaintable;
    localPlayerGameInputList: TBasicArrayList;
    isCheating: Boolean;
    hashtable: TABHashtable<TObject, TObject>;
    isSingleKeyRepeatableProcessing: Boolean;
    gameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory;
    touchButtonsPaintable: TPaintable;
    touchPaintable: TPaintable;
    cheatProcessor: TPlayerGameInput;
    gameInputProcessor: TProcessor;
    endGameProcessor: TProcessor;
    realEndGameProcessor: TProcessor;
    startIntermissionProcessor: TProcessor;
    realStartIntermissionProcessor: TProcessor;
    endGamePaintable: TPaintable;
    endGameStatePaintable: TPaintable;
    nonBotPaintable: TPaintable;
    intermissionPaintable: TPaintable;
    startIntermissionPaintable: TInitUpdatePaintable;
    mainStateProcessor: TProcessor;
    processGameProcessor: TProcessor;
    highScoresFactoryInterface: IHighScoresFactoryInterface;
    startLevel: Integer;
    mainMenuInputProcessor: TBasicMenuInputProcessor;
    popupMenuInputProcessor: TBasicMenuInputProcessor;
    menuInputProcessor: TBasicMenuInputProcessor;
    menuForm: TScrollSelectionForm;
    formPaintable: TPaintable;
    openMenuPaintable: TPaintable;
    menuPaintable: TPaintable;
    currentTouchInputFactory: TBaseTouchInput;
    colorFillPaintable: TColorFillBasePaintable;
    baseGameStatistics: TBaseGameStatistics;
    primaryPlayerQueue: TPlayerQueue;
    secondaryPlayerQueue: TPlayerQueue;
    BUILD_GAME: string;
    gameTypeFactory: TGameTypeFactory;
    screenCapture: TScreenCapture;
    basicMotionGesturesHandler: TBasicMotionGesturesHandler;
    gameKeyEventHandler: TGameKeyEventHandler;
    gameBehavior: TDemoGameBehavior;
    menuBehavior: TBaseMenuBehavior;
    progressPaintable: IPaintableInterface;
    fontHeightP: Integer;
    gameCanvasStartListener: IDemoPaintableInterface;
    rawGameInputProcessor: TInputProcessor;
    rawInputProcessor: TInputProcessor;
    inputProcessor: TInputProcessor;
    YIELD_SLEEP: Int64;
    class var id: Integer;
    class var TYPE_: Integer;
    procedure InitFields;
        constructor Create(commandListener: TCommandListener; gameLayerManager: TAllBinaryGameLayerManager; highScoresFactoryInterface: IHighScoresFactoryInterface; gameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory; buffered: Boolean);
        procedure updateMeasurement(graphics: TGraphics); virtual;
        function getInGameMenuBehavior: TBaseMenuBehavior; virtual;
        procedure setCurrentThread; virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onDisplayChangeEvent(displayChangeEvent: TDisplayChangeEvent); virtual;
        procedure updateMenuFromEvent(displayChangeEvent: TDisplayChangeEvent); virtual;
        procedure processSleep; virtual;
        procedure initPopupMenu; virtual;
        procedure initMenu; virtual;
        procedure initMenu2; virtual;
        procedure updateMenu; virtual;
        procedure updateMenu2; virtual;
        procedure pause; virtual;
        procedure unPause; virtual;
        function isPausable: Boolean; virtual;
        procedure popupMenu; virtual;
        procedure popupMenu2; virtual;
        procedure toggleMenu; virtual;
        procedure closeMenu; virtual;
        procedure closeMenu2; virtual;
        procedure open; virtual;
        procedure close; virtual;
        procedure processorInit; virtual;
        procedure setProcessGameProcessorInit; virtual;
        procedure initSpecialPaint; virtual;
        procedure init(gameLayerManager: TAllBinaryGameLayerManager; buffered: Boolean);
        procedure notifyIntermission(enable: Boolean); virtual;
        procedure mediaInit; virtual;
        procedure initConfigurable(abeClientInformation: IAbeClientInformationInterface); virtual;
        procedure initApp(abeClientInformation: IAbeClientInformationInterface); virtual;
        procedure initTouch; virtual;
        procedure updateCurrentTouchInputFactory(nextTouchInput: TBaseTouchInput); virtual;
        procedure updateTouch; virtual;
        procedure updateTouch2; virtual;
        procedure postInitTouch; virtual;
        procedure initCommands(cmdListener: TCommandListener); virtual;
        procedure addCommands; virtual;
        procedure itemStateChanged(item: TItem); virtual;
        procedure updateScreenButtonPaintable; virtual;
        procedure updateScreenButtonPaintable2; virtual;
        function getLayerManager: TAllBinaryGameLayerManager; virtual;
        procedure setLayerManager(layerManager: TAllBinaryGameLayerManager); virtual;
        function isGameOver: Boolean; virtual;
        procedure setGameOver(gameOver: Boolean); virtual;
        procedure processGameOver; virtual;
        function isHighScoreSubmitted: Boolean; virtual;
        procedure setHighScoreSubmitted(highScoreSubmitted: Boolean); virtual;
        function getGameState: TGameState; virtual;
        procedure setGameState(gameState: TGameState); virtual;
        procedure updateGameState; virtual;
        procedure updateGameKeyEventProcessor;
        procedure removeAllGameKeyInputListenersOnBuild; virtual;
        procedure removeAllGameKeyInputListeners; virtual;
        procedure removeAllGameKeyInputListeners2; virtual;
        procedure removeKeyInputListener(playerGameInput: TPlayerGameInput); virtual;
        procedure updateEndGameProcessor; virtual;
        procedure updateEndGameProcessor2; virtual;
        procedure buildGameInit(isPortion: Boolean); virtual;
        procedure cleanupGame; virtual;
        procedure loadResourceLoadingLevel(resourceLoadingLevel: TResourceLoadingLevel); virtual;
        procedure loadResources(level: Integer); virtual;
        procedure updateColor; virtual;
        procedure buildGame(portion: Integer); virtual;
        procedure buildGame2; virtual;
        procedure addKeyInputListener(playerGameInput: TPlayerGameInput); virtual;
        procedure setGameCanvasStartListener(gameCanvasStartListener: IDemoPaintableInterface); virtual;
        procedure loadState; virtual;
        function getLoadStateHashtable: TABHashtable<TObject, TObject>; virtual;
        procedure setLoadStateHashtable(hashtable: TABHashtable<TObject, TObject>); virtual;
        function getCurrentStateHashtable: TABHashtable<TObject, TObject>; virtual;
        procedure paintGameOver(graphics: TGraphics); virtual;
        procedure draw(graphics: TGraphics); virtual;
        procedure clear(graphics: TGraphics); virtual;
        procedure paint(graphics: TGraphics); virtual;
        procedure paintThreed(graphics: TGraphics); virtual;
        procedure processEndLevelIntermissionGameState; virtual;
        procedure nonBotPaint(graphics: TGraphics); virtual;
        procedure paintIntermission(graphics: TGraphics); virtual;
        procedure keyPressed(keyCode: Integer); virtual;
        procedure keyReleased(keyCode: Integer); virtual;
        procedure keyRepeated(keyCode: Integer); virtual;
        procedure keyPressedByDevice(keyCode: Integer; deviceId: Integer); virtual;
        procedure keyRepeatedByDevice(keyCode: Integer; deviceId: Integer); virtual;
        procedure keyReleasedByDevice(keyCode: Integer; deviceId: Integer); virtual;
        procedure handleRawKey(keyCode: Integer; deviceId: Integer; repeated: Boolean); virtual;
        function endProgress(isProgress: Boolean): Integer; virtual;
        procedure processPlayingGame; virtual;
        procedure threadInit; virtual;
        procedure processGame; virtual;
        procedure notifyDonePainting; virtual;
        procedure shouldWait; virtual;
        procedure run; virtual;
        procedure run2; virtual;
        procedure run3; virtual;
        procedure setRunning(running: Boolean); virtual;
        procedure end_; virtual;
        procedure endGameThread; virtual;
        function createHighScore(score: Int64): THighScore; virtual;
        procedure setHighScore(abeClientInformation: IAbeClientInformationInterface; name: string; score: Int64; autoSubmit: Boolean; isLast: Boolean); virtual;
        procedure setHighScore2(abeClientInformation: IAbeClientInformationInterface; name: string; score: Int64; autoSubmit: Boolean; isLast: Boolean); virtual;
        function getGameStateTimeHelper: TTimeDelayHelper; virtual;
        procedure setInitialized(initialized: Boolean); virtual;
        function isInitialized: Boolean; virtual;
        function getSourceId: Integer; virtual;
        procedure setProgressPaintable(paintable: IPaintableInterface); virtual;
        function getStartIntermissionInterface: IIntermissionInterface; virtual;
        function getEndLevelIntermissionInterface: IIntermissionInterface; virtual;
        procedure setTouchPaintableP(paintable: TPaintable); virtual;
        function getTouchPaintableP: TPaintable; virtual;
        procedure setEndGamePaintable(endGamePaintable: TPaintable); virtual;
        function getEndGamePaintable: TPaintable; virtual;
        procedure setIntermissionPaintable(intermissionPaintable: TPaintable); virtual;
        function getIntermissionPaintable: TPaintable; virtual;
        function getEndGameInfoP: TEndGameInfo; virtual;
        procedure setHighScoresPaintable(highScoresPaintable: TPaintable); virtual;
        function getHighScoresPaintable: TPaintable; virtual;
        function getRealHighScoresPaintable: THighScoresPaintable; virtual;
        procedure clearPlayerGameInputList; virtual;
        procedure addPlayerGameInput(playerGameInput: TPlayerGameInput); virtual;
        procedure setMenuInputProcessor(menuInputProcessor: TBasicMenuInputProcessor); virtual;
        function getMenuInputProcessor: TBasicMenuInputProcessor; virtual;
        function getMenuForm: TScrollSelectionForm; virtual;
        procedure setMenuForm(menuForm: TScrollSelectionForm); virtual;
        function getStartLevel: Integer; virtual;
        procedure setStartLevel(startLevel: Integer); virtual;
        procedure setTouchButtonsPaintable(touchButtonsPaintable: TPaintable); virtual;
        function getTouchButtonsPaintable: TPaintable; virtual;
        procedure setGameInputProcessor(gameInputProcessor: TProcessor); virtual;
        function getGameInputProcessor: TProcessor; virtual;
        procedure setEndGameProcessor(endGameProcessor: TProcessor); virtual;
        function getEndGameProcessor: TProcessor; virtual;
        procedure setEndGameStatePaintable(endGameStatePaintable: TPaintable); virtual;
        function getEndGameStatePaintable: TPaintable; virtual;
        procedure setNonBotPaintableP(nonBotPaintable: TPaintable); virtual;
        function getNonBotPaintableP: TPaintable; virtual;
        procedure setStartIntermissionPaintable(startIntermissionPaintable: TInitUpdatePaintable); virtual;
        function getStartIntermissionPaintable: TInitUpdatePaintable; virtual;
        procedure setMainStateProcessor(mainStateProcessor: TProcessor); virtual;
        function getMainStateProcessor: TProcessor; virtual;
        procedure setProcessGameProcessor(processGameProcessor: TProcessor); virtual;
        function getProcessGameProcessor: TProcessor; virtual;
        procedure setOpenMenuPaintable(openMenuPaintable: TPaintable); virtual;
        function getOpenMenuPaintable: TPaintable; virtual;
        procedure setPopupMenuInputProcessor(popupMenuInputProcessor: TBasicMenuInputProcessor); virtual;
        function getPopupMenuInputProcessor: TBasicMenuInputProcessor; virtual;
        function getSensorGameUpdateProcessor: TSensorGameUpdateProcessor; virtual;
        function getRawGameInputProcessor: TInputProcessor; virtual;
        function getRawInputProcessor: TInputProcessor; virtual;
        procedure setInputProcessor(inputProcessor: TInputProcessor); virtual;
        function getInputProcessor: TInputProcessor; virtual;
        procedure setMenuPaintable(menuPaintable: TPaintable); virtual;
        function getMenuPaintable: TPaintable; virtual;
        procedure setFormPaintable(formPaintable: TPaintable);
        function getFormPaintable: TPaintable; virtual;
        procedure setGameSpecificPaintableP(gameSpecificPaintable: TPaintable); virtual;
        function getGameSpecificPaintableP: TPaintable; virtual;
        function isSingleThread: Boolean; virtual;
        function isRunningInAnotherThread: Boolean; virtual;
        function getType: Integer; virtual;
  end;

implementation
uses
  NoMenuInputProcessor, BaseGameBehavior, BasicPopupMenuPaintable, PopupMenuInputProcessor, InGameMenuBehavior, GameLimitedCommandTextItemArrayFactory, PopupCommandFormInputProcessor, NullWaitGameRunnable, GameProcessor, CheatGameInputProcessor, EndGameProcessor, StartIntermissionProcessor, EndGamePaintable, NullDemoPaintable, GameCanvasInputProcessor, FormInputProcessor, SaveHighScoreRunnable;



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


procedure TAllBinaryGameCanvas.InitFields;
begin
  Self.basicColorFactory := TBasicColorFactory.getInstance();
  Self.basicSetColorUtil := TBasicColorSetUtil.getInstance();
  Self.touchFeatureFactory := TTouchFeatureFactory.getInstance();
  Self.openGLFeatureFactory := TOpenGLFeatureFactory.getInstance();
  Self.touchButtonFactory := TTouchButtonFactory.getInstance();
  Self.gameAdStateFactory := TGameAdStateFactory.getInstance();
  Self.gameStrings := TGameStrings.getInstance();
  Self.gameInputStrings := TGameInputStrings.getInstance();
  Self.gameStateFactory := TGameStateFactory.getInstance();
  Self.gameTickTimeDelayHelper := TGameTickTimeDelayHelperFactory.getInstance();
  Self.gameTickDisplayInfoSingleton := TGameTickDisplayInfoSingleton.getInstance();
  Self.gameRunnable := TGameCanvasRunnable.Create(Self);
  Self.gamePauseRunnable := TGameCanvasPauseRunnable.Create(Self);
  Self.formUtil := TFormUtil.getInstance();
  Self.myFormUtil := TMyFormUtil.getInstance();
  Self.updateMyFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.myFontProcessor := Self.updateMyFontProcessor;
  Self.gameSpecificPaintable := TNullPaintable.getInstance();
  Self.sensorGameUpdateProcessor := TSingleSensorGameUpdateProcessor.Create();
  Self.endGameInfo := TEndGameInfo.Create();
  Self.startIntermissionInterface := TIntermission.Create();
  Self.endLevelIntermissionInterface := TIntermission.Create();
  Self.gameLayerManager := TAllBinaryGameLayerManager.getNullInstance();
  Self.gameState := Self.gameStateFactory.NO_GAME_STATE;
  
  
  Self.gameStateTimeHelper := TTimeDelayHelper.Create(0);
  
  
  Self.realHighScoresPaintable := THighScoresPaintable.Create();
  Self.highScoresPaintable := TNullPaintable.getInstance();
  Self.localPlayerGameInputList := TBasicArrayListD.Create();
  
  Self.hashtable := Self.stdUtil.NULL_TABLE;
  
  Self.gameInitializationInterfaceFactoryInterface := TBasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY;
  Self.touchButtonsPaintable := TNullPaintable.getInstance();
  Self.touchPaintable := TNullPaintable.getInstance();
  Self.cheatProcessor := TNoPlayerGameInput.getInstance();
  Self.gameInputProcessor := TProcessor.getInstance();
  Self.endGameProcessor := TProcessor.getInstance();
  Self.realEndGameProcessor := TProcessor.getInstance();
  Self.startIntermissionProcessor := TProcessor.getInstance();
  Self.realStartIntermissionProcessor := TProcessor.getInstance();
  Self.endGamePaintable := TNullPaintable.getInstance();
  Self.endGameStatePaintable := TNullPaintable.getInstance();
  Self.nonBotPaintable := TNullPaintable.getInstance();
  Self.intermissionPaintable := TNullPaintable.getInstance();
  Self.startIntermissionPaintable := TNullInitUpdatePaintable.getInstance();
  Self.mainStateProcessor := TProcessor.getInstance();
  Self.processGameProcessor := TProcessor.getInstance();
  
  
  Self.mainMenuInputProcessor := TNoMenuInputProcessor.getInstance();
  Self.popupMenuInputProcessor := TNoMenuInputProcessor.getInstance();
  Self.menuInputProcessor := TNoMenuInputProcessor.getInstance();
  Self.menuForm := TScrollSelectionForm.getNullScrollSelectionForm();
  Self.formPaintable := TNullPaintable.getInstance();
  Self.openMenuPaintable := TNullPaintable.getInstance();
  Self.menuPaintable := TNullPaintable.getInstance();
  Self.currentTouchInputFactory := TNoButtonsTouchInputFactory.getInstance();
  Self.colorFillPaintable := TColorFillPaintableFactory.getInstance().getInstance(Self.basicColorFactory.BLACK, True);
  Self.baseGameStatistics := TGameStatisticsFactory.getInstance();
  Self.primaryPlayerQueue := TPrimaryPlayerQueueFactory.getInstance();
  Self.secondaryPlayerQueue := TSecondaryPlayerQueueFactory.getInstance();
  Self.BUILD_GAME := 'buildGame';
  Self.gameTypeFactory := TGameTypeFactory.getInstance();
  Self.screenCapture := TScreenCaptureFactory.getInstance();
  Self.basicMotionGesturesHandler := TBasicMotionGesturesHandler.getInstance();
  Self.gameKeyEventHandler := TGameKeyEventHandler.getInstance();
  
  
  Self.progressPaintable := TProgressCanvasFactory.getLazyInstance();
  
  Self.gameCanvasStartListener := TNullDemoPaintable.NULL_DEMO_PAINTABLE;
  Self.rawGameInputProcessor := TGameCanvasInputProcessor.Create(Self);
  Self.rawInputProcessor := TFormInputProcessor.Create(Self);
  Self.inputProcessor := Self.getRawGameInputProcessor();
  Self.YIELD_SLEEP := 100;
end;
    

constructor TAllBinaryGameCanvas.Create(commandListener: TCommandListener; gameLayerManager: TAllBinaryGameLayerManager; highScoresFactoryInterface: IHighScoresFactoryInterface; gameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory; buffered: Boolean);
begin
        inherited Create(commandListener, TCanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, True);
        InitFields;
        Self.highScoresHelper := highScoresFactoryInterface.createHighScoresHelper();
        Self.gameInitializationInterfaceFactoryInterface := gameInitializationInterfaceFactoryInterface;
        Self.init(gameLayerManager, buffered);
        Self.highScoresFactoryInterface := highScoresFactoryInterface;
        if ((Self.gameLayerManager.getGameInfo().getGameType()) = (Self.gameTypeFactory.BOT)) or ((Self.gameLayerManager.getGameInfo().getGameType()) = (Self.gameTypeFactory.NONE)) then begin
            Self.gameBehavior := TDemoGameBehavior.getInstance();
            Self.menuBehavior := TBaseMenuBehavior.getInstance();
        end else begin
            Self.gameBehavior := TBaseGameBehavior.getInstance();
            Self.menuBehavior := Self.getInGameMenuBehavior();
        end;
        Self.initPopupMenu();
        Self.initMenu();
        Self.initSpecialPaint();
        TDisplayChangeEventHandler.getInstance().addListenerInterface(Self);
end;
    

procedure TAllBinaryGameCanvas.updateMeasurement(graphics: TGraphics);
var
  font: TFont;
  popupMenuRectangle: TRectangle;
  basicPopupMenuPaintable: TBasicPopupMenuPaintable;
  popupMenuInputProcessor: TPopupMenuInputProcessor;
begin
        try
            font := graphics.getFont();
            Self.logUtil.putF(TStringMaker.Create().append(Self.commonStrings.START).append(Self.canvasStrings.FD_WIDTH).appendint(Integer(Trunc(TMyFontProcessor.defaultCharWidth(font)))).append(Self.canvasStrings.FD_HEIGHT).appendint(Integer(Trunc(font.getHeight()))).toString(), Self, Self.canvasStrings.UPDATE_MEASUREMENT);
            Self.fontHeightP := font.getHeight();
            Self.myFormUtil.updateMeasurement(graphics);
            popupMenuRectangle := Self.myFormUtil.getPopupMenuRectangle();
            basicPopupMenuPaintable := (TBasicPopupMenuPaintable(Self.getOpenMenuPaintable()));
            basicPopupMenuPaintable.init(popupMenuRectangle);
            if (Self.getPopupMenuInputProcessor()) <> (TNoMenuInputProcessor.getInstance()) then begin
                popupMenuInputProcessor := (TPopupMenuInputProcessor(Self.getPopupMenuInputProcessor()));
                popupMenuInputProcessor.init(popupMenuRectangle);
            end;
            Self.myFontProcessor := TMyFontProcessor.getInstance();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
            end;
        end;
end;
    

function TAllBinaryGameCanvas.getInGameMenuBehavior: TBaseMenuBehavior;
begin
        Exit(TInGameMenuBehavior.getInstance());
end;
    

procedure TAllBinaryGameCanvas.setCurrentThread;
begin
        if TJ2MEUtil.isHTML() then begin
            inherited setCurrentThreadFake();
        end else begin
            inherited setCurrentThread();
        end;
end;
    

procedure TAllBinaryGameCanvas.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, Self);
end;
    

procedure TAllBinaryGameCanvas.onDisplayChangeEvent(displayChangeEvent: TDisplayChangeEvent);
begin
        try
            Self.logUtil.putF(TStringMaker.Create().append(Self.commonStrings.START).append(TDisplayInfoSingleton.getInstance().toString()).toString(), Self, Self.canvasStrings.UPDATE_MEASUREMENT);
            Self.myFontProcessor := Self.updateMyFontProcessor;
            Self.menuBehavior.onDisplayChangeEvent(Self, displayChangeEvent);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
            end;
        end;
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.updateMenuFromEvent(displayChangeEvent: TDisplayChangeEvent);
var
  formType: TFormType;
  rectangle: TRectangle;
begin
        formType := TFormTypeFactory.getInstance().getFormType();
        rectangle := Self.formUtil.createFormRectangle();
        Self.menuForm.init(rectangle, formType);
        if (Self.currentTouchInputFactory) <> (TNoButtonsTouchInputFactory.getInstance()) then begin
            Self.touchButtonFactory.toggle(Self.isPaused(), Self.currentTouchInputFactory.getList());
        end;
        Self.myFontProcessor := Self.updateMyFontProcessor;
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.processSleep;
begin
        inherited processSleep();
        if TAllBinaryMediaManager.update() then begin
            if not (Self.primaryPlayerQueue.process()) then begin
                Self.secondaryPlayerQueue.process();
            end;
        end;
        if (Self.menuInputProcessor.processInputList()) <> (-1) then begin
            Self.runnableCanvasRefreshHelper.process();
        end;
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.initPopupMenu;
var
  features: TFeatures;
  popupMenuRectangle: TRectangle;
begin
        if (Self.popupMenuInputProcessor) = (TNoMenuInputProcessor.getInstance()) then begin
            features := TFeatures.getInstance();
            popupMenuRectangle := Self.myFormUtil.getPopupMenuRectangle();
            if features.isFeature(Self.touchFeatureFactory.TOUCH_ENABLED) then begin
                Self.setOpenMenuPaintable(TBasicPopupMenuPaintable.Create(popupMenuRectangle, Self.gameLayerManager.getBackgroundBasicColor(), Self.gameLayerManager.getForegroundBasicColor()));
                Self.setPopupMenuInputProcessor(TPopupMenuInputProcessor.Create(TBasicArrayListD.Create(), -1, Self, popupMenuRectangle));
            end;
        end else begin
        end;
end;
    

procedure TAllBinaryGameCanvas.initMenu;
begin
        try
            Self.menuBehavior.initMenu(Self);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'initMenu', e);
            end;
        end;
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.initMenu2;
var
  formType: TFormType;
  gameLimitedCommandTextItemArrayFactory: TGameLimitedCommandTextItemArrayFactory;
  commandTextItemArrayFactory: TCommandTextItemArrayFactory;
  items: TArray<TABCustomItem>;
  rectangle: TRectangle;
  scrollSelectionForm: TScrollSelectionForm;
  features: TFeatures;
begin
        Self.closeMenu();
        formType := TFormTypeFactory.getInstance().getFormType();
        gameLimitedCommandTextItemArrayFactory := TGameLimitedCommandTextItemArrayFactory.getInstance();
        commandTextItemArrayFactory := gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory();
        items := commandTextItemArrayFactory.getInstance(Self.getCommandStack(), Self.gameLayerManager.getBackgroundBasicColor(), Self.gameLayerManager.getForegroundBasicColor());
        rectangle := Self.formUtil.createFormRectangle();
        Self.setMenuForm(TCommandCurrentSelectionFormFactory.getInstance(TStringUtil.getInstance().EMPTY_STRING, items, rectangle, formType, 25, False, Self.gameLayerManager.getBackgroundBasicColor(), Self.gameLayerManager.getForegroundBasicColor()));
        scrollSelectionForm := Self.getMenuForm();
        features := TFeatures.getInstance();
        if features.isFeature(Self.touchFeatureFactory.TOUCH_ENABLED) then begin
            Self.mainMenuInputProcessor := TPopupCommandFormInputProcessor.Create(TBasicArrayListD.Create(), -1, Self, scrollSelectionForm, TPopupMenuInputProcessor(Self.getPopupMenuInputProcessor()));
        end else begin
        end;
        Self.setMenuInputProcessor(Self.getPopupMenuInputProcessor());
        if (scrollSelectionForm) <> (TScrollSelectionFormNoneFactory.getInstance()) then begin
            Self.setFormPaintable(TFormPaintable.Create(scrollSelectionForm));
        end else begin
        end;
        Self.closeMenu();
end;
    

procedure TAllBinaryGameCanvas.updateMenu;
begin
        try
            Self.menuBehavior.updateMenu(Self);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'initMenu', e);
            end;
        end;
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.updateMenu2;
var
  scrollSelectionForm: TScrollSelectionForm;
  gameLimitedCommandTextItemArrayFactory: TGameLimitedCommandTextItemArrayFactory;
  commandTextItemArrayFactory: TCommandTextItemArrayFactory;
  items: TArray<TABCustomItem>;
  size: Integer;
  index: Integer;
  formType: TFormType;
  rectangle: TRectangle;
begin
        scrollSelectionForm := Self.getMenuForm();
        scrollSelectionForm.deleteAll();
        gameLimitedCommandTextItemArrayFactory := TGameLimitedCommandTextItemArrayFactory.getInstance();
        commandTextItemArrayFactory := gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory();
        items := commandTextItemArrayFactory.getInstance(Self.getCommandStack(), Self.gameLayerManager.getBackgroundBasicColor(), Self.gameLayerManager.getForegroundBasicColor());
        size := System.Length(items);
        for index := 0 to size - 1 do begin
            scrollSelectionForm.append(items[index]);
        end;
        formType := TFormTypeFactory.getInstance().getFormType();
        rectangle := Self.formUtil.createFormRectangle();
        scrollSelectionForm.init(rectangle, formType);
end;
    

procedure TAllBinaryGameCanvas.pause;
begin
    TJava.MonitorEnter(Self);
    try
        Self.gameBehavior.pause(Self);
        Self.closeMenu();
        inherited pause();
        Self.touchButtonFactory.toggle(Self.isPaused(), TBasicArrayListUtil.getInstance().getImmutableInstance());
        Self.tsUtil.gc();
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TAllBinaryGameCanvas.unPause;
begin
    TJava.MonitorEnter(Self);
    try
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.gameStrings.UNPAUSE);
        Self.closeMenu();
        Self.tsUtil.gc();
        inherited unPause();
        Self.touchButtonFactory.toggle(Self.isPaused(), TBasicArrayListUtil.getInstance().getImmutableInstance());
        Self.gameBehavior.unPause(Self);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TAllBinaryGameCanvas.isPausable: Boolean;
begin
        if (TCurrentDisplayableFactory.getInstance().getUsedRunnable()) = (TNullWaitGameRunnable.getInstance()) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.popupMenu;
begin
        Self.menuBehavior.popupMenu(Self);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.popupMenu2;
begin
        Self.primaryPlayerQueue.add(TSelectSound.getInstance());
        Self.setMenuPaintable(Self.getFormPaintable());
        Self.setMenuInputProcessor(Self.mainMenuInputProcessor);
        Self.basicMotionGesturesHandler.addListenerInterface(Self.mainMenuInputProcessor);
        Self.gameKeyEventHandler.addListener(Self.mainMenuInputProcessor);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.toggleMenu;
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.gameStrings.TOGGLE_MENU);
        if (Self.getMenuPaintable()) = (Self.getOpenMenuPaintable()) then begin
            Self.pause();
            Self.updateMenu();
            Self.popupMenu();
        end else if (Self.getMenuPaintable()) = (Self.getFormPaintable()) then begin
            Self.primaryPlayerQueue.add(TSelectSound.getInstance());
            Self.unPause();
        end;
end;
    

procedure TAllBinaryGameCanvas.closeMenu;
begin
        Self.menuBehavior.closeMenu(Self);
end;
    

procedure TAllBinaryGameCanvas.closeMenu2;
begin
        Self.setMenuPaintable(Self.getOpenMenuPaintable());
        Self.basicMotionGesturesHandler.removeListener(Self.mainMenuInputProcessor);
        Self.gameKeyEventHandler.removeListener(Self.mainMenuInputProcessor);
        Self.setMenuInputProcessor(Self.getPopupMenuInputProcessor());
end;
    

procedure TAllBinaryGameCanvas.open;
begin
        Self.basicMotionGesturesHandler.addListenerInterface(Self.menuInputProcessor);
        Self.gameKeyEventHandler.addListener(Self.menuInputProcessor);
end;
    

procedure TAllBinaryGameCanvas.close;
begin
        Self.basicMotionGesturesHandler.removeListener(Self.menuInputProcessor);
        Self.gameKeyEventHandler.removeListener(Self.menuInputProcessor);
        Self.primaryPlayerQueue.clear();
        Self.secondaryPlayerQueue.clear();
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.processorInit;
begin
        Self.setMainStateProcessor(TProcessor.getInstance());
        Self.setProcessGameProcessorInit();
end;
    

procedure TAllBinaryGameCanvas.setProcessGameProcessorInit;
begin
        Self.setProcessGameProcessor(TGameProcessor.Create(Self));
end;
    

procedure TAllBinaryGameCanvas.initSpecialPaint;
begin
        Self.menuBehavior.initSpecialPaint(Self);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.init(gameLayerManager: TAllBinaryGameLayerManager; buffered: Boolean);
var
  BUFF_MESSAGE: string;
  features: TFeatures;
begin
        Self.gameStateTimeHelper.setStartTimeTNT();
        Self.setHighScoreSubmitted(False);
        Self.setLayerManager(gameLayerManager);
        if not (buffered) then begin
            BUFF_MESSAGE := 'XXX Not Buffering Causes Concurrency Issues XXX';
            Self.logUtil.putF(BUFF_MESSAGE, Self, Self.commonStrings.CONSTRUCTOR_);
        end else begin
            raise SysUtils.Exception.Create('Buffering is disabled');
        end;
        Self.setGameInputProcessor(TProcessor.getInstance());
        features := TFeatures.getInstance();
        if features.isFeature(TGameFeatureFactory.getInstance().CHEATING) then begin
            Self.isCheating := True;
            Self.cheatProcessor := TCheatGameInputProcessor.Create(Self);
            Self.gameKeyEventHandler.addListener(Self.cheatProcessor);
        end else begin
            Self.isCheating := False;
            Self.cheatProcessor := TNoPlayerGameInput.getInstance();
        end;
        Self.realEndGameProcessor := TEndGameProcessor.Create(Self);
        Self.setEndGameProcessor(TProcessor.getInstance());
        Self.realStartIntermissionProcessor := TStartIntermissionProcessor.Create(Self);
        Self.startIntermissionProcessor := TProcessor.getInstance();
        Self.setEndGameStatePaintable(TEndGamePaintable.Create(Self));
        Self.setEndGamePaintable(TNullPaintable.getInstance());
        Self.setIntermissionPaintable(TNullPaintable.getInstance());
        Self.getStartIntermissionInterface().setListener(Self);
end;
    

procedure TAllBinaryGameCanvas.notifyIntermission(enable: Boolean);
begin
        if enable then begin
            Self.startIntermissionProcessor := Self.realStartIntermissionProcessor;
        end else begin
            Self.startIntermissionProcessor := TProcessor.getInstance();
        end;
        if enable then begin
            Self.setIntermissionPaintable(Self.getStartIntermissionPaintable());
        end else begin
            Self.setIntermissionPaintable(TNullPaintable.getInstance());
        end;
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.mediaInit;
begin
        TForcedLogUtil.log(Self.commonStrings.NOT_IMPLEMENTED, Self);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.initConfigurable(abeClientInformation: IAbeClientInformationInterface);
var
  progressCanvas: TProgressCanvas;
  gameFeatureFactory: TGameFeatureFactory;
  changedGameFeatureListener: TChangedGameFeatureListener;
  features: TFeatures;
  sensorFeatureFactory: TSensorFeatureFactory;
  resourceLoadingLevelFactory: TResourceLoadingLevelFactory;
begin
    TJava.MonitorEnter(Self);
    try
        progressCanvas := TProgressCanvasFactory.getInstance();
        progressCanvas.addNormalPortion(50, 'Setting Configurables');
        TGameInitializationUtil.getInstance().initGame(abeClientInformation, Self, Self.gameInitializationInterfaceFactoryInterface);
        gameFeatureFactory := TGameFeatureFactory.getInstance();
        changedGameFeatureListener := TChangedGameFeatureListener.getInstance();
        if changedGameFeatureListener.isChangedFeature(gameFeatureFactory.SOUND) then begin
            features := TFeatures.getInstance();
            Self.logUtil.putF(TStringMaker.Create().append('Sound Changing To: ').appendboolean(features.isFeature(gameFeatureFactory.SOUND)).toString(), Self, 'initConfigurable');
            Self.mediaInit();
            changedGameFeatureListener.remove(gameFeatureFactory.SOUND);
        end;
        sensorFeatureFactory := TSensorFeatureFactory.getInstance();
        if ((changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.ORIENTATION_SENSORS)) or (changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.NO_ORIENTATION))) or (changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)) then begin
            changedGameFeatureListener.remove(sensorFeatureFactory.NO_ORIENTATION);
            changedGameFeatureListener.remove(sensorFeatureFactory.ORIENTATION_SENSORS);
            changedGameFeatureListener.remove(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS);
        end;
        resourceLoadingLevelFactory := TResourceLoadingLevelFactory.getInstance();
        Self.loadResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_GAME);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.initApp(abeClientInformation: IAbeClientInformationInterface);
begin
        Self.initConfigurable(abeClientInformation);
        Self.processorInit();
        Self.sensorGameUpdateProcessor.process(Self.gameLayerManager);
        Self.sensorGameUpdateProcessor.sendNotifications(Self.gameLayerManager);
        Self.initTouch();
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.initTouch;
var
  gameInitializedEvent: TGameInitializedEvent;
  resourceLoadingLevelFactory: TResourceLoadingLevelFactory;
begin
        gameInitializedEvent := TGameInitializationUtil.getInstance().EVENT;
        resourceLoadingLevelFactory := TResourceLoadingLevelFactory.getInstance();
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_TOUCH);
        TGameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent);
        Self.touchButtonFactory.defaultList();
        Self.updateTouch();
        Self.postInitTouch();
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.updateCurrentTouchInputFactory(nextTouchInput: TBaseTouchInput);
begin
        if (nextTouchInput) <> (Self.currentTouchInputFactory) then begin
            Self.currentTouchInputFactory := nextTouchInput;
            TPreLogUtil.put(Self.currentTouchInputFactory.toString(), Self, Self.gameInputStrings.UDPATE_CURRENT_TOUCH_INPUT_FACTORY);
            Self.touchButtonFactory.toggle(Self.isPaused(), Self.currentTouchInputFactory.getList());
        end;
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.updateTouch;
begin
        Self.gameBehavior.updateTouch(Self);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.updateTouch2;
var
  features: TFeatures;
begin
        features := TFeatures.getInstance();
        if features.isFeature(Self.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS) then begin
            if ((Self.gameLayerManager.getGameInfo().getCurrentLevel()) - (Self.getStartLevel())) = (1) then begin
                Self.setTouchPaintableP(TNullPaintable.getInstance());
            end;
        end;
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.postInitTouch;
begin
        Self.setTouchButtonsPaintable(TTouchButtonsPaintableFactory.getInstance(Self.gameLayerManager.getForegroundBasicColor()));
        Self.updateScreenButtonPaintable();
end;
    

procedure TAllBinaryGameCanvas.initCommands(cmdListener: TCommandListener);
begin
        Self.removeAllCommands();
        Self.addCommands();
        Self.setCommandListener(cmdListener);
end;
    

procedure TAllBinaryGameCanvas.addCommands;
var
  gameCommandsFactory: TGameCommandsFactory;
  myCommandsFactory: TMyCommandsFactory;
  isOverScan: Boolean;
begin
        gameCommandsFactory := TGameCommandsFactory.getInstance();
        myCommandsFactory := TMyCommandsFactory.getInstance();
        if (TDebugFactory.getInstance()) <> (TNoDebug.getInstance()) then begin
            Self.addCommand(gameCommandsFactory.START_TRACE);
        end;
        Self.addCommand(gameCommandsFactory.RESTART_COMMAND);
        Self.addCommand(myCommandsFactory.PAUSE_COMMAND);
        Self.addCommand(gameCommandsFactory.QUIT_COMMAND);
        isOverScan := TOperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan();
        if TJ2MEUtil.isHTML() then begin
        end else if TSWTUtil.isSWT then begin
        end else if not (isOverScan) then begin
            if (TTouchScreenFactory.getInstance().isTouch()) and (TInGameFeatures.Create().isAny()) then begin
                Self.addCommand(TInGameOptionsForm.DISPLAY);
            end;
            Self.addCommand(gameCommandsFactory.SAVE);
            Self.addCommand(gameCommandsFactory.DISPLAY_LOAD_FORM);
        end;
end;
    

procedure TAllBinaryGameCanvas.itemStateChanged(item: TItem);
var
  itemLabel: string;
  gameFeatureUtil: TGameFeatureUtil;
begin
        try
            itemLabel := item.getLabel();
            Self.logUtil.putF(TStringMaker.Create().append(Self.commonLabels.ITEM_LABEL).append(itemLabel).toString(), Self, 'itemStateChanged');
            if (item is TChoiceGroup) then begin
                gameFeatureUtil := TGameFeatureUtil.getInstance();
                if gameFeatureUtil.isExclusive(itemLabel) then begin
                    gameFeatureUtil.updateExclusiveForChoiceGroup(TChoiceGroup(item));
                end else begin
                    gameFeatureUtil.updateMultiple(TChoiceGroup(item));
                end;
            end;
            Self.sensorGameUpdateProcessor.process(Self.gameLayerManager);
            Self.updateTouch();
            Self.updateScreenButtonPaintable();
            Self.sensorGameUpdateProcessor.sendNotifications(Self.gameLayerManager);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'itemStateChanged', e);
            end;
        end;
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.updateScreenButtonPaintable;
begin
        Self.gameBehavior.updateScreenButtonPaintable(Self);
end;
    

procedure TAllBinaryGameCanvas.updateScreenButtonPaintable2;
var
  features: TFeatures;
begin
        features := TFeatures.getInstance();
        if features.isFeature(Self.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS) then begin
            Self.setTouchPaintableP(Self.getTouchButtonsPaintable());
            Self.setStartLevel(Self.gameLayerManager.getGameInfo().getCurrentLevel());
        end else if features.isFeature(Self.touchFeatureFactory.SHOW_SCREEN_BUTTONS) then begin
            Self.setTouchPaintableP(Self.getTouchButtonsPaintable());
        end else if features.isFeature(Self.touchFeatureFactory.HIDE_SCREEN_BUTTONS) then begin
            Self.setTouchPaintableP(TNullPaintable.getInstance());
        end else begin
            Self.setTouchPaintableP(TNullPaintable.getInstance());
        end;
end;
    

function TAllBinaryGameCanvas.getLayerManager: TAllBinaryGameLayerManager;
begin
        Exit(Self.gameLayerManager);
end;
    

procedure TAllBinaryGameCanvas.setLayerManager(layerManager: TAllBinaryGameLayerManager);
begin
        Self.gameLayerManager := layerManager;
end;
    

function TAllBinaryGameCanvas.isGameOver: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.gameOver);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TAllBinaryGameCanvas.setGameOver(gameOver: Boolean);
begin
    TJava.MonitorEnter(Self);
    try
        Self.gameOver := gameOver;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.processGameOver;
begin
        TPreLogUtil.put(Self.commonStrings.START, Self, Self.gameStrings.SET_GAME_OVER);
        Self.setGameOver(True);
        Self.removePauseCommand();
        Self.setGameState(Self.gameStateFactory.SHOW_END_RESULT_GAME_STATE);
        Self.setEndGamePaintable(Self.getEndGameStatePaintable());
end;
    

function TAllBinaryGameCanvas.isHighScoreSubmitted: Boolean;
begin
        Exit(Self.highScoreSubmitted);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.setHighScoreSubmitted(highScoreSubmitted: Boolean);
begin
        Self.highScoreSubmitted := highScoreSubmitted;
        if highScoreSubmitted then begin
            Self.highScoresHelper.setSelectedHighScores(TNullHighScoresSingletonFactory.getInstance());
        end;
        Self.logUtil.putF(TStringMaker.Create().append('isHighScoreSubmitted: ').appendboolean(highScoreSubmitted).toString(), Self, 'setHighScoreSubmitted');
end;
    

function TAllBinaryGameCanvas.getGameState: TGameState;
begin
        Exit(Self.gameState);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.setGameState(gameState: TGameState);
begin
        Self.logUtil.putF(TStringMaker.Create().append(Self.gameStrings.GAME_STATE).append(Self.stringUtil.toString(gameState)).toString(), Self, Self.gameStrings.SET_GAME_STATE);
        Self.gameState := gameState;
        Self.gameStateTimeHelper.setStartTimeTNT();
        Self.updateEndGameProcessor();
        Self.updateGameKeyEventProcessor();
        Self.gameBehavior.setGameState(Self);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.updateGameState;
var
  gameAdState: TGameAdState;
begin
        gameAdState := Self.gameAdStateFactory.getCurrentInstance();
        gameAdState.processAdState(Self.gameState, Self.gameLayerManager.getGameInfo().getGameType());
        if (Self.gameState) <> (Self.gameStateFactory.PLAYING_GAME_STATE) then begin
            gameAdState.processPageAdState();
        end;
end;
    

procedure TAllBinaryGameCanvas.updateGameKeyEventProcessor;
begin
        if ((Self.getGameState()) <> (Self.gameStateFactory.PLAYING_GAME_STATE)) or (Self.isCheating) then begin
        end else begin
        end;
end;
    

procedure TAllBinaryGameCanvas.removeAllGameKeyInputListenersOnBuild;
begin
        Self.removeAllGameKeyInputListeners();
end;
    

procedure TAllBinaryGameCanvas.removeAllGameKeyInputListeners;
begin
        Self.gameBehavior.removeAllGameKeyInputListeners(Self);
end;
    

procedure TAllBinaryGameCanvas.removeAllGameKeyInputListeners2;
var
  playerGameInput: TPlayerGameInput;
  index: Integer;
begin
        Self.logUtil.putF('Remove PlayerInput Listeners', Self, 'removeAllGameKeyInputListeners');
        for index := (Self.localPlayerGameInputList.size()) - (1) downto 0 do begin
            playerGameInput := TPlayerGameInput(Self.localPlayerGameInputList.get(index));
            Self.removeKeyInputListener(playerGameInput);
            playerGameInput.removeNonAIInputGameKeyEvents();
        end;
end;
    

procedure TAllBinaryGameCanvas.removeKeyInputListener(playerGameInput: TPlayerGameInput);
begin
        Self.gameKeyEventHandler.removeListener(playerGameInput);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.updateEndGameProcessor;
begin
        Self.gameBehavior.updateEndGameProcessor(Self);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.updateEndGameProcessor2;
begin
        if ((Self.getGameState()) = (Self.gameStateFactory.SHOW_END_RESULT_GAME_STATE)) or ((Self.getGameState()) = (Self.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE)) then begin
            Self.setEndGameProcessor(Self.realEndGameProcessor);
        end else begin
            Self.setEndGameProcessor(TProcessor.getInstance());
        end;
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.buildGameInit(isPortion: Boolean);
begin
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.cleanupGame;
var
  progressCanvas: TProgressCanvas;
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.commonStrings.CLEANUP);
        progressCanvas := TProgressCanvasFactory.getInstance();
        progressCanvas.addNormalPortion(10, 'Cleaning Up');
        Self.primaryPlayerQueue.clear();
        Self.secondaryPlayerQueue.clear();
        TGameLevelDisplayChangeEventListenersFactory.getInstance().clear();
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.loadResourceLoadingLevel(resourceLoadingLevel: TResourceLoadingLevel);
var
  gameInitializedEvent: TGameInitializedEvent;
begin
        gameInitializedEvent := TGameInitializationUtil.getInstance().EVENT;
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevel);
        TGameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.loadResources(level: Integer);
var
  gameInitializedEvent: TGameInitializedEvent;
begin
        gameInitializedEvent := TGameInitializationUtil.getInstance().EVENT;
        gameInitializedEvent.setLevel(level);
        TGameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.updateColor;
begin
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.buildGame(portion: Integer);
var
  progressCanvas: TProgressCanvas;
  features: TFeatures;
begin
        Self.screenCapture.endRecording();
        Self.screenCapture.startRecording();
        progressCanvas := TProgressCanvasFactory.getInstance();
        features := TFeatures.getInstance();
        progressCanvas.addNormalPortion(portion, 'Generic Build');
        Self.removeAllGameKeyInputListenersOnBuild();
        Self.updateTouch();
        progressCanvas.addNormalPortion(portion, 'High Scores');
        Self.highScoresFactoryInterface.fetchHighScores(Self.gameLayerManager.getGameInfo(), Self.highScoresHelper);
        Self.setHighScoresPaintable(TNullPaintable.getInstance());
        progressCanvas.addNormalPortion(portion, 'Finishing.');
        Self.getEndGameInfoP().update(Self.getLayerManager().getGameInfo(), Self);
        Self.isSingleKeyRepeatableProcessing := features.isFeature(TInputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS);
        Self.setGameOver(False);
        progressCanvas.addNormalPortion(portion, 'Finishing..');
        Self.updateColor();
        Self.getStartIntermissionPaintable().update();
        if not (Self.isRunningInAnotherThread()) then begin
            Exit;
        end;
        progressCanvas.addNormalPortion(portion, 'Finishing...');
        if (Self.isMainCanvas()) or (not (Self.isInitialized())) then begin
            if features.isFeature(TMainFeatureFactory.getInstance().LOAD_ONDEMAND) then begin
                if (Self.getCustomCommandListener()) <> (nil) then begin
                    progressCanvas.end_();
                end;
            end else begin
                progressCanvas.end_();
            end;
            Self.setInitialized(True);
        end;
        if (Self.getCustomCommandListener()) = (TNullCommandListener.NULL_COMMAND_LISTENER) then begin
            Self.logUtil.putF('Show Game Paintable in DemoCanvas Thread', Self, Self.BUILD_GAME);
            Self.gameCanvasStartListener.showGamePaintable();
        end else begin
            Self.logUtil.putF('No GameCanvasStartListener', Self, Self.BUILD_GAME);
        end;
        Self.colorFillPaintable.setBasicColorP(Self.gameLayerManager.getBackgroundBasicColor());
        Self.gameBehavior.buildGame(Self);
end;
    

procedure TAllBinaryGameCanvas.buildGame2;
var
  playerGameInput: TPlayerGameInput;
  index: Integer;
begin
        TPreLogUtil.put(TStringMaker.Create().append(Self.gameInputStrings.ENABLE_PLAYER_GAME_INPUTS).appendint(Self.localPlayerGameInputList.size()).toString(), Self, Self.BUILD_GAME);
        
        for index := (Self.localPlayerGameInputList.size()) - (1) downto 0 do begin
            playerGameInput := TPlayerGameInput(Self.localPlayerGameInputList.get(index));
            TPreLogUtil.put(TStringMaker.Create().append(Self.gameInputStrings.ENABLE_PLAYER_GAME_INPUT).append(playerGameInput.toString()).toString(), Self, Self.BUILD_GAME);
            playerGameInput.removeNonAIInputGameKeyEvents();
            Self.addKeyInputListener(playerGameInput);
        end;
end;
    

procedure TAllBinaryGameCanvas.addKeyInputListener(playerGameInput: TPlayerGameInput);
begin
        TGameKeyEventHandler.getInstance().addListenerForPlayer(playerGameInput, playerGameInput.getPlayerInputId());
end;
    

procedure TAllBinaryGameCanvas.setGameCanvasStartListener(gameCanvasStartListener: IDemoPaintableInterface);
begin
        Self.gameCanvasStartListener := gameCanvasStartListener;
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.loadState;
var
  hashtable: TABHashtable<TObject, TObject>;
  levelAsString: string;
  level: Integer;
  gameInfo: TGameInfo;
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.commonStrings.LOAD);
        hashtable := Self.getLoadStateHashtable();
        if ((hashtable) <> (nil)) and ((hashtable.size()) > (0)) then begin
            levelAsString := string(hashtable.get(TObject(TGameInfo.LEVEL_NAME)));
            level := IntToStr(levelAsString).intValue();
            gameInfo := Self.gameLayerManager.getGameInfo();
            gameInfo.setCurrentLevel(level);
        end;
end;
    

// throws Exception
function TAllBinaryGameCanvas.getLoadStateHashtable: TABHashtable<TObject, TObject>;
begin
        Self.logUtil.putF(TStringMaker.Create().append(Self.commonLabels.START_LABEL).append(Self.stringUtil.toString(Self.hashtable)).toString(), Self, 'getLoadStateHashtable');
        Exit(Self.hashtable);
end;
    

procedure TAllBinaryGameCanvas.setLoadStateHashtable(hashtable: TABHashtable<TObject, TObject>);
begin
        Self.logUtil.putF(TStringMaker.Create().append(Self.commonLabels.START_LABEL).append(Self.stringUtil.toString(hashtable)).toString(), Self, 'setLoadStateHashtable');
        Self.hashtable := hashtable;
end;
    

function TAllBinaryGameCanvas.getCurrentStateHashtable: TABHashtable<TObject, TObject>;
var
  hashtable: TABHashtable<TObject, TObject>;
  level: Integer;
begin
        hashtable := Self.stdUtil.createHashtable();
        level := Self.gameLayerManager.getGameInfo().getCurrentLevel();
        hashtable.put(TGameInfo.LEVEL_NAME.toString(), IntToStr(level));
        Self.logUtil.putF(TStringMaker.Create().append('End: ').append(Self.stringUtil.toString(hashtable)).toString(), Self, 'getCurrentStateHashtable');
        Exit(hashtable);
end;
    

procedure TAllBinaryGameCanvas.paintGameOver(graphics: TGraphics);
begin
        TForcedLogUtil.log(Self.commonStrings.NOT_IMPLEMENTED, Self);
end;
    

procedure TAllBinaryGameCanvas.draw(graphics: TGraphics);
begin
        Self.colorFillPaintable.paint(graphics);
        Self.basicSetColorUtil.setBasicColorP(graphics, Self.gameLayerManager.getForegroundBasicColor());
        Self.gameSpecificPaintable.paint(graphics);
end;
    

procedure TAllBinaryGameCanvas.clear(graphics: TGraphics);
begin
        Self.colorFillPaintable.paint(graphics);
end;
    

procedure TAllBinaryGameCanvas.paint(graphics: TGraphics);
begin
        Self.myFontProcessor.process(graphics);
        Self.baseGameStatistics.nextRefresh();
        Self.draw(graphics);
        Self.menuPaintable.paint(graphics);
        Self.progressPaintable.paint(graphics);
end;
    

procedure TAllBinaryGameCanvas.paintThreed(graphics: TGraphics);
begin
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.processEndLevelIntermissionGameState;
begin
end;
    

procedure TAllBinaryGameCanvas.nonBotPaint(graphics: TGraphics);
begin
        Self.endGamePaintable.paint(graphics);
        Self.intermissionPaintable.paint(graphics);
        Self.paintIntermission(graphics);
        Self.touchPaintable.paint(graphics);
end;
    

procedure TAllBinaryGameCanvas.paintIntermission(graphics: TGraphics);
begin
end;
    

procedure TAllBinaryGameCanvas.keyPressed(keyCode: Integer);
begin
        Self.keyPressedByDevice(keyCode, 0);
end;
    

procedure TAllBinaryGameCanvas.keyReleased(keyCode: Integer);
begin
        Self.keyReleasedByDevice(keyCode, 0);
end;
    

procedure TAllBinaryGameCanvas.keyRepeated(keyCode: Integer);
begin
        Self.keyRepeatedByDevice(keyCode, 0);
end;
    

procedure TAllBinaryGameCanvas.keyPressedByDevice(keyCode: Integer; deviceId: Integer);
begin
        Self.inputProcessor.keyPressedByDevice(keyCode, deviceId);
end;
    

procedure TAllBinaryGameCanvas.keyRepeatedByDevice(keyCode: Integer; deviceId: Integer);
begin
        if Self.isSingleKeyRepeatableProcessing then begin
            Self.inputProcessor.keyPressedByDevice(keyCode, deviceId);
        end;
end;
    

procedure TAllBinaryGameCanvas.keyReleasedByDevice(keyCode: Integer; deviceId: Integer);
begin
        Self.inputProcessor.keyReleasedByDevice(Self, keyCode, deviceId);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.handleRawKey(keyCode: Integer; deviceId: Integer; repeated: Boolean);
begin
end;
    

function TAllBinaryGameCanvas.endProgress(isProgress: Boolean): Integer;
var
  portion: Integer;
  myCommandsFactory: TMyCommandsFactory;
  progressCanvas: TProgressCanvas;
begin
        portion := 30;
        if (isProgress) and (Self.isMainCanvas()) then begin
            myCommandsFactory := TMyCommandsFactory.getInstance();
            progressCanvas := TProgressCanvasFactory.getInstance();
            progressCanvas.start();
            Self.getCustomCommandListener().commandAction(myCommandsFactory.SET_DISPLAYABLE, progressCanvas);
            portion := 4;
        end;
        Exit(portion);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.processPlayingGame;
begin
        Self.cheatProcessor.update();
        Self.sensorGameUpdateProcessor.getInputSensor().update();
        Self.gameInputProcessor.process();
        Self.gameLayerManager.process();
        Self.startIntermissionProcessor.process();
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.threadInit;
begin
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.processGame;
begin
        inherited process();
        if TAllBinaryMediaManager.update() then begin
            if not (Self.primaryPlayerQueue.process()) then begin
                Self.secondaryPlayerQueue.process();
            end;
        end;
        Self.mainStateProcessor.process();
        Self.menuInputProcessor.processInputList();
        Self.endGameProcessor.process();
        Self.baseGameStatistics.nextFrame();
end;
    

procedure TAllBinaryGameCanvas.notifyDonePainting;
begin
        TJava.MonitorEnter(Self);
        try
            Self.threadObjectUtil.notifyObject(Self);
        finally
            TJava.MonitorExit(Self);
        end;
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.shouldWait;
var
  features: TFeatures;
  openGLImageSpecificFactory: TOpenGLImageSpecificFactory;
begin
        features := TFeatures.getInstance();
        if TAndroidUtil.isAndroid() then begin
        end else if features.isFeature(Self.openGLFeatureFactory.OPENGL_2D) then begin
        end else begin
            if features.isDefault(Self.openGLFeatureFactory.OPENGL) then begin
                openGLImageSpecificFactory := TOpenGLImageSpecificFactory.getInstance();
                while openGLImageSpecificFactory.updating do begin
                    Sleep(Self.YIELD_SLEEP);
                end;
            end;
        end;
end;
    

procedure TAllBinaryGameCanvas.run;
var
  progressCanvas: TProgressCanvas;
  gameAdState: TGameAdState;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START_RUNNABLE, Self, Self.commonStrings.RUN);
            progressCanvas := TProgressCanvasFactory.getInstance();
            progressCanvas.addNormalPortion(50, 'Game Thread');
            Self.setCurrentThread();
            Self.setRunning(True);
            if (Self.getCustomCommandListener()) = (TNullCommandListener.NULL_COMMAND_LISTENER) then begin
                Sleep(Self.YIELD_SLEEP);
            end;
            Self.shouldWait();
            Self.threadInit();
            if (Self.getCustomCommandListener()) = (TNullCommandListener.NULL_COMMAND_LISTENER) then begin
                Sleep(Self.YIELD_SLEEP);
            end;
            Self.open();
            gameAdState := Self.gameAdStateFactory.getCurrentInstance();
            gameAdState.init();
            gameAdState.setGameIsReady(True);
            Self.gameBehavior.run(Self);
            Self.logUtil.putF(Self.commonStrings.END_RUNNABLE, Self, Self.commonStrings.RUN);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.RUN, e);
            end;
        end;
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.run2;
var
  features: TFeatures;
  currentDisplayableFactory: TCurrentDisplayableFactory;
begin
        features := TFeatures.getInstance();
        if (features.isDefault(Self.openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) or (TJ2MEUtil.isHTML()) then begin
            if features.isDefault(Self.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) then begin
                Self.logUtil.putF(Self.openGLFeatureFactory.OPENGL_AS_GAME_THREAD.getName(), Self, Self.commonStrings.RUN);
            end;
            if TJ2MEUtil.isHTML() then begin
                Self.logUtil.putF(TGraphicsStrings.getInstance().HTML, Self, Self.commonStrings.RUN);
            end;
            currentDisplayableFactory := TCurrentDisplayableFactory.getInstance();
            currentDisplayableFactory.setRunnable(Self.gameRunnable);
            currentDisplayableFactory.setDisplayable(Self);
            TOpenGLThreadUtil.getInstance().onResume();
        end else if features.isDefault(Self.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS) then begin
            Self.logUtil.putF(Self.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.getName(), Self, Self.commonStrings.RUN);
            TOpenGLThreadUtil.getInstance().onResume();
            while Self.isRunning() do begin
                Self.run3();
            end;
            Self.end_();
        end else begin
            Self.logUtil.putF('this thread', Self, Self.commonStrings.RUN);
            while Self.isRunning() do begin
                Self.run3();
            end;
            Self.end_();
        end;
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.run3;
begin
        Self.loopTimeHelper.setStartTime(Self.gameTickTimeDelayHelper.setStartTime());
        Self.gameTickDisplayInfoSingleton.update();
        Self.processGame();
        Self.processLoopSleep();
end;
    

procedure TAllBinaryGameCanvas.setRunning(running: Boolean);
var
  features: TFeatures;
  currentDisplayableFactory: TCurrentDisplayableFactory;
begin
        inherited setRunning(running);
        try
            features := TFeatures.getInstance();
            if running then begin
            end else begin
                if (features.isDefault(Self.openGLFeatureFactory.OPENGL)) or (TSWTUtil.isSWT) then begin
                    if (Self.gameLayerManager.getGameInfo().getGameType()) <> (Self.gameTypeFactory.BOT) then begin
                        currentDisplayableFactory := TCurrentDisplayableFactory.getInstance();
                        currentDisplayableFactory.clearRunnable();
                    end;
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
procedure TAllBinaryGameCanvas.end_;
begin
        Self.screenCapture.endRecording();
        Self.baseGameStatistics.add(TJava.BoxString(TStringMaker.Create().append(Self.baseGameStatistics.toString()).append(TCommonSeps.getInstance().NEW_LINE).toString()));
        Self.baseGameStatistics.init();
        Self.gameKeyEventHandler.removeListener(Self.cheatProcessor);
        Self.close();
        Self.removeAllGameKeyInputListeners();
        Self.endGameThread();
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.endGameThread;
var
  gameAdState: TGameAdState;
begin
        TDisplayChangeEventHandler.getInstance().removeListener(Self);
        TGameLevelDisplayChangeEventListenersFactory.getInstance().clear();
        gameAdState := Self.gameAdStateFactory.getCurrentInstance();
        gameAdState.notPlayingAdState();
end;
    

function TAllBinaryGameCanvas.createHighScore(score: Int64): THighScore;
var
  gameInfo: TGameInfo;
begin
        gameInfo := Self.gameLayerManager.getGameInfo();
        Exit(THighScore.Create(0, 'NONE', TGameInfo.Create(gameInfo.getGameType(), gameInfo.getGameMode(), TPlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0), score));
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.setHighScore(abeClientInformation: IAbeClientInformationInterface; name: string; score: Int64; autoSubmit: Boolean; isLast: Boolean);
begin
        Self.gameBehavior.setHighScore(abeClientInformation, Self, name, score, autoSubmit, isLast);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.setHighScore2(abeClientInformation: IAbeClientInformationInterface; name: string; score: Int64; autoSubmit: Boolean; isLast: Boolean);
var
  highScore: THighScore;
  textBox: THighScoreTextBox;
begin
        highScore := Self.createHighScore(score);
        textBox := THighScoreTextBox.Create(Self.highScoresFactoryInterface, Self.highScoresHelper, abeClientInformation, Self.gameLayerManager.getGameInfo(), Self.getCustomCommandListener(), name, highScore, Self.gameLayerManager.getBackgroundBasicColor(), Self.gameLayerManager.getForegroundBasicColor());
        if isLast then begin
            Self.getCustomCommandListener().commandAction(TGameCommandsFactory.getInstance().SET_MENU_DISPLAYABLE, textBox);
        end;
        if autoSubmit then begin
            { Java local class SaveHighScoreRunnable: move it to the unit }
            TSecondaryThreadPool.getInstance().runTask(TSaveHighScoreRunnable.Create());
        end;
end;
    

function TAllBinaryGameCanvas.getGameStateTimeHelper: TTimeDelayHelper;
begin
        Exit(Self.gameStateTimeHelper);
end;
    

procedure TAllBinaryGameCanvas.setInitialized(initialized: Boolean);
begin
        Self.initialized := initialized;
end;
    

function TAllBinaryGameCanvas.isInitialized: Boolean;
begin
        Exit(Self.initialized);
end;
    

function TAllBinaryGameCanvas.getSourceId: Integer;
begin
        Exit(TAllBinaryGameCanvas.id);
end;
    

procedure TAllBinaryGameCanvas.setProgressPaintable(paintable: IPaintableInterface);
begin
        Self.progressPaintable := paintable;
end;
    

function TAllBinaryGameCanvas.getStartIntermissionInterface: IIntermissionInterface;
begin
        Exit(Self.startIntermissionInterface);
end;
    

function TAllBinaryGameCanvas.getEndLevelIntermissionInterface: IIntermissionInterface;
begin
        Exit(Self.endLevelIntermissionInterface);
end;
    

procedure TAllBinaryGameCanvas.setTouchPaintableP(paintable: TPaintable);
begin
        Self.touchPaintable := paintable;
end;
    

function TAllBinaryGameCanvas.getTouchPaintableP: TPaintable;
begin
        Exit(Self.touchPaintable);
end;
    

procedure TAllBinaryGameCanvas.setEndGamePaintable(endGamePaintable: TPaintable);
begin
        Self.endGamePaintable := endGamePaintable;
end;
    

function TAllBinaryGameCanvas.getEndGamePaintable: TPaintable;
begin
        Exit(Self.endGamePaintable);
end;
    

procedure TAllBinaryGameCanvas.setIntermissionPaintable(intermissionPaintable: TPaintable);
begin
        Self.intermissionPaintable := intermissionPaintable;
end;
    

function TAllBinaryGameCanvas.getIntermissionPaintable: TPaintable;
begin
        Exit(Self.intermissionPaintable);
end;
    

function TAllBinaryGameCanvas.getEndGameInfoP: TEndGameInfo;
begin
        Exit(Self.endGameInfo);
end;
    

procedure TAllBinaryGameCanvas.setHighScoresPaintable(highScoresPaintable: TPaintable);
begin
        Self.highScoresPaintable := highScoresPaintable;
end;
    

function TAllBinaryGameCanvas.getHighScoresPaintable: TPaintable;
begin
        Exit(Self.highScoresPaintable);
end;
    

function TAllBinaryGameCanvas.getRealHighScoresPaintable: THighScoresPaintable;
begin
        Exit(Self.realHighScoresPaintable);
end;
    

procedure TAllBinaryGameCanvas.clearPlayerGameInputList;
var
  playerGameInput: TPlayerGameInput;
  index: Integer;
begin
        
        for index := (Self.localPlayerGameInputList.size()) - (1) downto 0 do begin
            playerGameInput := TPlayerGameInput(Self.localPlayerGameInputList.get(index));
            Self.gameKeyEventHandler.removeListener(playerGameInput);
        end;
        Self.localPlayerGameInputList.clear();
end;
    

procedure TAllBinaryGameCanvas.addPlayerGameInput(playerGameInput: TPlayerGameInput);
begin
        Self.localPlayerGameInputList.add(playerGameInput);
end;
    

procedure TAllBinaryGameCanvas.setMenuInputProcessor(menuInputProcessor: TBasicMenuInputProcessor);
begin
        Self.menuInputProcessor := menuInputProcessor;
end;
    

function TAllBinaryGameCanvas.getMenuInputProcessor: TBasicMenuInputProcessor;
begin
        Exit(Self.menuInputProcessor);
end;
    

function TAllBinaryGameCanvas.getMenuForm: TScrollSelectionForm;
begin
        Exit(Self.menuForm);
end;
    

procedure TAllBinaryGameCanvas.setMenuForm(menuForm: TScrollSelectionForm);
begin
        Self.menuForm := menuForm;
end;
    

function TAllBinaryGameCanvas.getStartLevel: Integer;
begin
        Exit(Self.startLevel);
end;
    

procedure TAllBinaryGameCanvas.setStartLevel(startLevel: Integer);
begin
        Self.startLevel := startLevel;
end;
    

procedure TAllBinaryGameCanvas.setTouchButtonsPaintable(touchButtonsPaintable: TPaintable);
begin
        Self.touchButtonsPaintable := touchButtonsPaintable;
end;
    

function TAllBinaryGameCanvas.getTouchButtonsPaintable: TPaintable;
begin
        Exit(Self.touchButtonsPaintable);
end;
    

procedure TAllBinaryGameCanvas.setGameInputProcessor(gameInputProcessor: TProcessor);
begin
        Self.gameInputProcessor := gameInputProcessor;
end;
    

function TAllBinaryGameCanvas.getGameInputProcessor: TProcessor;
begin
        Exit(Self.gameInputProcessor);
end;
    

procedure TAllBinaryGameCanvas.setEndGameProcessor(endGameProcessor: TProcessor);
begin
        Self.endGameProcessor := endGameProcessor;
end;
    

function TAllBinaryGameCanvas.getEndGameProcessor: TProcessor;
begin
        Exit(Self.endGameProcessor);
end;
    

procedure TAllBinaryGameCanvas.setEndGameStatePaintable(endGameStatePaintable: TPaintable);
begin
        Self.endGameStatePaintable := endGameStatePaintable;
end;
    

function TAllBinaryGameCanvas.getEndGameStatePaintable: TPaintable;
begin
        Exit(Self.endGameStatePaintable);
end;
    

procedure TAllBinaryGameCanvas.setNonBotPaintableP(nonBotPaintable: TPaintable);
begin
        Self.nonBotPaintable := nonBotPaintable;
end;
    

function TAllBinaryGameCanvas.getNonBotPaintableP: TPaintable;
begin
        Exit(Self.nonBotPaintable);
end;
    

procedure TAllBinaryGameCanvas.setStartIntermissionPaintable(startIntermissionPaintable: TInitUpdatePaintable);
begin
        Self.startIntermissionPaintable := startIntermissionPaintable;
end;
    

function TAllBinaryGameCanvas.getStartIntermissionPaintable: TInitUpdatePaintable;
begin
        Exit(Self.startIntermissionPaintable);
end;
    

procedure TAllBinaryGameCanvas.setMainStateProcessor(mainStateProcessor: TProcessor);
begin
        Self.mainStateProcessor := mainStateProcessor;
end;
    

function TAllBinaryGameCanvas.getMainStateProcessor: TProcessor;
begin
        Exit(Self.mainStateProcessor);
end;
    

procedure TAllBinaryGameCanvas.setProcessGameProcessor(processGameProcessor: TProcessor);
begin
        Self.processGameProcessor := processGameProcessor;
end;
    

function TAllBinaryGameCanvas.getProcessGameProcessor: TProcessor;
begin
        Exit(Self.processGameProcessor);
end;
    

procedure TAllBinaryGameCanvas.setOpenMenuPaintable(openMenuPaintable: TPaintable);
begin
        Self.openMenuPaintable := openMenuPaintable;
end;
    

function TAllBinaryGameCanvas.getOpenMenuPaintable: TPaintable;
begin
        Exit(Self.openMenuPaintable);
end;
    

procedure TAllBinaryGameCanvas.setPopupMenuInputProcessor(popupMenuInputProcessor: TBasicMenuInputProcessor);
begin
        Self.popupMenuInputProcessor := popupMenuInputProcessor;
end;
    

function TAllBinaryGameCanvas.getPopupMenuInputProcessor: TBasicMenuInputProcessor;
begin
        Exit(Self.popupMenuInputProcessor);
end;
    

function TAllBinaryGameCanvas.getSensorGameUpdateProcessor: TSensorGameUpdateProcessor;
begin
        Exit(Self.sensorGameUpdateProcessor);
end;
    

function TAllBinaryGameCanvas.getRawGameInputProcessor: TInputProcessor;
begin
        Exit(Self.rawGameInputProcessor);
end;
    

function TAllBinaryGameCanvas.getRawInputProcessor: TInputProcessor;
begin
        Exit(Self.rawInputProcessor);
end;
    

procedure TAllBinaryGameCanvas.setInputProcessor(inputProcessor: TInputProcessor);
begin
        Self.inputProcessor := inputProcessor;
end;
    

function TAllBinaryGameCanvas.getInputProcessor: TInputProcessor;
begin
        Exit(Self.inputProcessor);
end;
    

procedure TAllBinaryGameCanvas.setMenuPaintable(menuPaintable: TPaintable);
begin
        Self.menuPaintable := menuPaintable;
end;
    

function TAllBinaryGameCanvas.getMenuPaintable: TPaintable;
begin
        Exit(Self.menuPaintable);
end;
    

procedure TAllBinaryGameCanvas.setFormPaintable(formPaintable: TPaintable);
begin
        Self.formPaintable := formPaintable;
end;
    

function TAllBinaryGameCanvas.getFormPaintable: TPaintable;
begin
        Exit(Self.formPaintable);
end;
    

procedure TAllBinaryGameCanvas.setGameSpecificPaintableP(gameSpecificPaintable: TPaintable);
begin
        Self.gameSpecificPaintable := gameSpecificPaintable;
end;
    

function TAllBinaryGameCanvas.getGameSpecificPaintableP: TPaintable;
begin
        Exit(Self.gameSpecificPaintable);
end;
    

function TAllBinaryGameCanvas.isSingleThread: Boolean;
begin
        Exit((TOpenGLFeatureUtil.getInstance().isAnyThreed()) or (TSWTUtil.isSWT));
end;
    

function TAllBinaryGameCanvas.isRunningInAnotherThread: Boolean;
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
    

function TAllBinaryGameCanvas.getType: Integer;
begin
        Exit(TAllBinaryGameCanvas.TYPE_);
end;

initialization
  TAllBinaryGameCanvas.id := 0;
  TAllBinaryGameCanvas.TYPE_ := 2;

end.

