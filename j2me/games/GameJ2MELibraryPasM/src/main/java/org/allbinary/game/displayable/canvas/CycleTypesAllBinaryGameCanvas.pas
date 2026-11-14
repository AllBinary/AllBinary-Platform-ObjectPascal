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
// AB:CYCLE TYPES AllBinaryGameCanvas BaseMenuBehavior DemoGameBehavior GameCanvasPauseRunnable GameCanvasRunnable
// The units AllBinaryGameCanvas BaseMenuBehavior DemoGameBehavior GameCanvasPauseRunnable GameCanvasRunnable use each other in their interface sections, so their types are declared together here.
unit CycleTypesAllBinaryGameCanvas;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, Graphics, Item, GameAdStateFactory, BaseGameStatistics, Processor, RunnableCanvas, GameStrings, GameTypeFactory, IntermissionCompositeInterface, IntermissionEnableListenerInterface, IntermissionInterface, TouchFeatureFactory, BasicBuildGameInitializerFactory, GameInputStrings, InputProcessor, PlayerGameInput, GameKeyEventHandler, AllBinaryGameLayerManager, ColorFillBasePaintable, ResourceLoadingLevel, HighScore, HighScoresHelperBaseInterface, HighScoresFactoryInterface, HighScoresPaintable, GameState, GameStateFactory, ScreenCapture, BasicColorFactory, BasicColorSetUtil, GameTickDisplayInfoSingleton, DisplayChangeEvent, DisplayChangeEventListener, MyFontProcessor, UpdateMyFontInterface, ScrollSelectionForm, OpenGLFeatureFactory, InitUpdatePaintable, Paintable, PaintableInterface, SensorGameUpdateProcessor, BaseTouchInput, TouchButtonFactory, BasicMotionGesturesHandler, AbeClientInformationInterface, AllBinaryEventObject, PlayerQueue, GameTickTimeDelayHelper, TimeDelayHelper, ABHashtable, BasicArrayList, FormUtil, MyFormUtil, EndGameInfo, BasicMenuInputProcessor, DemoPaintableInterface, AllBinaryGameCanvasInterface, GameCanvasRunnableInterface, MenuListener, PopupMenuInterface, DisplayableInterface, GameStateCompositeInterface, ItemStateListener, RunnableInterface, GameKeyEventSourceInterface, EventListenerInterface, LogUtil, GameRunnable;

type
  { Forward declarations like C++ so the cycle members can refer to each other }
  TAllBinaryGameCanvas = class;
  TBaseMenuBehavior = class;
  TDemoGameBehavior = class;
  TGameCanvasPauseRunnable = class;
  TGameCanvasRunnable = class;
  {AB:TYPES}
  { AllBinaryGameCanvas }
  TAllBinaryGameCanvas = class(TRunnableCanvas, IAllBinaryGameCanvasInterface, IGameCanvasRunnableInterface, IMenuListener, IIntermissionCompositeInterface, IIntermissionEnableListenerInterface, IPopupMenuInterface, IDisplayChangeEventListener, IUpdateMyFontInterface, IDisplayableInterface, IGameStateCompositeInterface, IItemStateListener, IPaintableInterface, IRunnable, IRunnableInterface, IGameKeyEventSourceInterface, IEventListenerInterface)
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
    function JavaObject: TObject;
        constructor Create(commandListener_: ICommandListener; gameLayerManager: TAllBinaryGameLayerManager; highScoresFactoryInterface_: IHighScoresFactoryInterface; gameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory; buffered: Boolean);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        function getInGameMenuBehavior: TBaseMenuBehavior; virtual;
        procedure setCurrentThread; virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onDisplayChangeEvent(displayChangeEvent_: TDisplayChangeEvent); virtual;
        procedure updateMenuFromEvent(displayChangeEvent_: TDisplayChangeEvent); virtual;
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
        procedure initCommands(cmdListener: ICommandListener); virtual;
        procedure addCommands; virtual;
        procedure itemStateChanged(item_: TItem); virtual;
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
        procedure setGameState(gameState_: TGameState); virtual;
        procedure updateGameState; virtual;
        procedure updateGameKeyEventProcessor;
        procedure removeAllGameKeyInputListenersOnBuild; virtual;
        procedure removeAllGameKeyInputListeners; virtual;
        procedure removeAllGameKeyInputListeners2; virtual;
        procedure removeKeyInputListener(playerGameInput_: TPlayerGameInput); virtual;
        procedure updateEndGameProcessor; virtual;
        procedure updateEndGameProcessor2; virtual;
        procedure buildGameInit(isPortion: Boolean); virtual;
        procedure cleanupGame; virtual;
        procedure loadResourceLoadingLevel(resourceLoadingLevel_: TResourceLoadingLevel); virtual;
        procedure loadResources(level: Integer); virtual;
        procedure updateColor; virtual;
        procedure buildGame(portion: Integer); virtual;
        procedure buildGame2; virtual;
        procedure addKeyInputListener(playerGameInput_: TPlayerGameInput); virtual;
        procedure setGameCanvasStartListener(gameCanvasStartListener: IDemoPaintableInterface); virtual;
        procedure loadState; virtual;
        function getLoadStateHashtable: TABHashtable<TObject, TObject>; virtual;
        procedure setLoadStateHashtable(hashtable: TABHashtable<TObject, TObject>); virtual;
        function getCurrentStateHashtable: TABHashtable<TObject, TObject>; virtual;
        procedure paintGameOver(graphics_: TGraphics); virtual;
        procedure draw(graphics_: TGraphics); virtual;
        procedure clear(graphics_: TGraphics); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
        procedure processEndLevelIntermissionGameState; virtual;
        procedure nonBotPaint(graphics_: TGraphics); virtual;
        procedure paintIntermission(graphics_: TGraphics); virtual;
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
        procedure setProgressPaintable(paintable_: IPaintableInterface); virtual;
        function getStartIntermissionInterface: IIntermissionInterface; virtual;
        function getEndLevelIntermissionInterface: IIntermissionInterface; virtual;
        procedure setTouchPaintableP(paintable_: TPaintable); virtual;
        function getTouchPaintableP: TPaintable; virtual;
        procedure setEndGamePaintable(endGamePaintable_: TPaintable); virtual;
        function getEndGamePaintable: TPaintable; virtual;
        procedure setIntermissionPaintable(intermissionPaintable: TPaintable); virtual;
        function getIntermissionPaintable: TPaintable; virtual;
        function getEndGameInfoP: TEndGameInfo; virtual;
        procedure setHighScoresPaintable(highScoresPaintable_: TPaintable); virtual;
        function getHighScoresPaintable: TPaintable; virtual;
        function getRealHighScoresPaintable: THighScoresPaintable; virtual;
        procedure clearPlayerGameInputList; virtual;
        procedure addPlayerGameInput(playerGameInput_: TPlayerGameInput); virtual;
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
        procedure setEndGameProcessor(endGameProcessor_: TProcessor); virtual;
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
        procedure setPopupMenuInputProcessor(popupMenuInputProcessor_: TBasicMenuInputProcessor); virtual;
        function getPopupMenuInputProcessor: TBasicMenuInputProcessor; virtual;
        function getSensorGameUpdateProcessor: TSensorGameUpdateProcessor; virtual;
        function getRawGameInputProcessor: TInputProcessor; virtual;
        function getRawInputProcessor: TInputProcessor; virtual;
        procedure setInputProcessor(inputProcessor_: TInputProcessor); virtual;
        function getInputProcessor: TInputProcessor; virtual;
        procedure setMenuPaintable(menuPaintable: TPaintable); virtual;
        function getMenuPaintable: TPaintable; virtual;
        procedure setFormPaintable(formPaintable_: TPaintable);
        function getFormPaintable: TPaintable; virtual;
        procedure setGameSpecificPaintableP(gameSpecificPaintable: TPaintable); virtual;
        function getGameSpecificPaintableP: TPaintable; virtual;
        function isSingleThread: Boolean; virtual;
        function isRunningInAnotherThread: Boolean; virtual;
        function getType: Integer; virtual;
        function getTitle: string; virtual;
        function isPaused: Boolean; virtual;
  end;

  { BaseMenuBehavior }
  TBaseMenuBehavior = class(TObject)
  public
    class var instance: TBaseMenuBehavior;
    constructor Create;
        class function getInstance: TBaseMenuBehavior; static;
        procedure onDisplayChangeEvent(allBinaryGameCanvas_: TAllBinaryGameCanvas; displayChangeEvent_: TDisplayChangeEvent); virtual;
        procedure initSpecialPaint(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure initMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure updateMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure popupMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure closeMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
  end;

  { DemoGameBehavior }
  TDemoGameBehavior = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TDemoGameBehavior;
    procedure InitFields;
    constructor Create;
        class function getInstance: TDemoGameBehavior; static;
        procedure init; virtual;
        procedure pause(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure unPause(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure updateTouch(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure updateScreenButtonPaintable(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure setGameState(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure removeAllGameKeyInputListeners(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure updateEndGameProcessor(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure buildGame(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure run(allBinaryGameCanvas_: TAllBinaryGameCanvas); virtual;
        procedure setHighScore(abeClientInformation: IAbeClientInformationInterface; allBinaryGameCanvas_: TAllBinaryGameCanvas; name: string; score: Int64; autoSubmit: Boolean; isLast: Boolean); virtual;
  end;

  { GameCanvasPauseRunnable }
  TGameCanvasPauseRunnable = class(TGameRunnable)
  public
    logUtil: TLogUtil;
    allBinaryGameCanvas: TAllBinaryGameCanvas;
    procedure InitFields;
        constructor Create(allBinaryGameCanvas_: TAllBinaryGameCanvas);
        procedure run; override;
        procedure processLoopSleep; override;
  end;

  { GameCanvasRunnable }
  TGameCanvasRunnable = class(TGameRunnable)
  public
    logUtil: TLogUtil;
    gameTickDisplayInfoSingleton: TGameTickDisplayInfoSingleton;
    allBinaryGameCanvas: TAllBinaryGameCanvas;
    gameTickTimeDelayHelper: TGameTickTimeDelayHelper;
    procedure InitFields;
        constructor Create(allBinaryGameCanvas_: TAllBinaryGameCanvas);
        procedure run; override;
        procedure processLoopSleep; override;
  end;


implementation
uses
  NoMenuInputProcessor, BaseGameBehavior, BasicPopupMenuPaintable, PopupMenuInputProcessor, InGameMenuBehavior, GameLimitedCommandTextItemArrayFactory, PopupCommandFormInputProcessor, NullWaitGameRunnable, GameProcessor, CheatGameInputProcessor, EndGameProcessor, StartIntermissionProcessor, EndGamePaintable, NullDemoPaintable, GameCanvasInputProcessor, FormInputProcessor, SaveHighScoreRunnable, ChoiceGroup, Font, NullCommandListener, AndroidUtil, J2MEUtil, GameStatisticsFactory, DebugFactory, NoDebug, GameAdState, GameInfo, Intermission, PlayerTypesFactory, GameCommandsFactory, InGameFeatures, InGameOptionsForm, ChangedGameFeatureListener, GameInitializedEvent, GameInitializedEventHandler, Features, GameFeatureFactory, GameFeatureUtil, InputFeatureFactory, MainFeatureFactory, SensorFeatureFactory, GameLevelDisplayChangeEventListenersFactory, GameInitializationUtil, NoPlayerGameInput, SWTUtil, ColorFillPaintableFactory, ResourceLoadingLevelFactory, NullHighScoresSingletonFactory, HighScoreTextBox, GraphicsStrings, Rectangle, ScreenCaptureFactory, ProgressCanvas, ProgressCanvasFactory, CanvasStrings, DisplayInfoSingleton, MyCommandsFactory, DisplayChangeEventHandler, UpdateMyFontProcessor, CommandCurrentSelectionFormFactory, FormPaintable, FormType, FormTypeFactory, ScrollSelectionFormNoneFactory, CommandTextItemArrayFactory, ABCustomItem, CurrentDisplayableFactory, OpenGLFeatureUtil, OpenGLThreadUtil, NullInitUpdatePaintable, NullPaintable, OpenGLImageSpecificFactory, SingleSensorGameUpdateProcessor, NoButtonsTouchInputFactory, TouchButtonsPaintableFactory, TouchScreenFactory, ABSystemWrapper, ForcedLogUtil, PreLogUtil, StringMaker, StringUtil, OperatingSystemFactory, EventStrings, AllBinaryMediaManager, PrimaryPlayerQueueFactory, SecondaryPlayerQueueFactory, SelectSound, CommonSeps, CommonStrings, SecondaryThreadPool, GameTickTimeDelayHelperFactory, BasicArrayListD, BasicArrayListUtil;


{AB:CODE}

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

function TAllBinaryGameCanvas.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAllBinaryGameCanvas.Create(commandListener_: ICommandListener; gameLayerManager: TAllBinaryGameLayerManager; highScoresFactoryInterface_: IHighScoresFactoryInterface; gameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory; buffered: Boolean);
begin
        inherited Create(commandListener_, TCanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, True);
        InitFields;
        Self.highScoresHelper := highScoresFactoryInterface_.createHighScoresHelper();
        Self.gameInitializationInterfaceFactoryInterface := gameInitializationInterfaceFactoryInterface;
        Self.init(gameLayerManager, buffered);
        Self.highScoresFactoryInterface := highScoresFactoryInterface_;
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
    

procedure TAllBinaryGameCanvas.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
  popupMenuRectangle: TRectangle;
  basicPopupMenuPaintable_: TBasicPopupMenuPaintable;
  popupMenuInputProcessor_: TPopupMenuInputProcessor;
begin
        try
            font_ := graphics_.getFont();
            Self.logUtil.putF(TStringMaker.Create().append(Self.commonStrings.START).append(Self.canvasStrings.FD_WIDTH).appendint(Integer(Trunc(TMyFontProcessor.defaultCharWidth(font_)))).append(Self.canvasStrings.FD_HEIGHT).appendint(Integer(Trunc(font_.getHeight()))).toString(), Self, Self.canvasStrings.UPDATE_MEASUREMENT);
            Self.fontHeightP := font_.getHeight();
            Self.myFormUtil.updateMeasurement(graphics_);
            popupMenuRectangle := Self.myFormUtil.getPopupMenuRectangle();
            basicPopupMenuPaintable_ := (TBasicPopupMenuPaintable(TJava.ToObject(Self.getOpenMenuPaintable())));
            basicPopupMenuPaintable_.init(popupMenuRectangle);
            if (Self.getPopupMenuInputProcessor()) <> (TNoMenuInputProcessor.getInstance()) then begin
                popupMenuInputProcessor_ := (TPopupMenuInputProcessor(TJava.ToObject(Self.getPopupMenuInputProcessor())));
                popupMenuInputProcessor_.init(popupMenuRectangle);
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
    

procedure TAllBinaryGameCanvas.onDisplayChangeEvent(displayChangeEvent_: TDisplayChangeEvent);
begin
        try
            Self.logUtil.putF(TStringMaker.Create().append(Self.commonStrings.START).append(TDisplayInfoSingleton.getInstance().toString()).toString(), Self, Self.canvasStrings.UPDATE_MEASUREMENT);
            Self.myFontProcessor := Self.updateMyFontProcessor;
            Self.menuBehavior.onDisplayChangeEvent(Self, displayChangeEvent_);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
            end;
        end;
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.updateMenuFromEvent(displayChangeEvent_: TDisplayChangeEvent);
var
  formType_: TFormType;
  rectangle_: TRectangle;
begin
        formType_ := TFormTypeFactory.getInstance().getFormType();
        rectangle_ := Self.formUtil.createFormRectangle();
        Self.menuForm.init(rectangle_, formType_);
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
  features_: TFeatures;
  popupMenuRectangle: TRectangle;
begin
        if (Self.popupMenuInputProcessor) = (TNoMenuInputProcessor.getInstance()) then begin
            features_ := TFeatures.getInstance();
            popupMenuRectangle := Self.myFormUtil.getPopupMenuRectangle();
            if features_.isFeature(Self.touchFeatureFactory.TOUCH_ENABLED) then begin
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
  formType_: TFormType;
  gameLimitedCommandTextItemArrayFactory_: TGameLimitedCommandTextItemArrayFactory;
  commandTextItemArrayFactory_: TCommandTextItemArrayFactory;
  items: TArray<TABCustomItem>;
  rectangle_: TRectangle;
  scrollSelectionForm_: TScrollSelectionForm;
  features_: TFeatures;
begin
        Self.closeMenu();
        formType_ := TFormTypeFactory.getInstance().getFormType();
        gameLimitedCommandTextItemArrayFactory_ := TGameLimitedCommandTextItemArrayFactory.getInstance();
        commandTextItemArrayFactory_ := gameLimitedCommandTextItemArrayFactory_.getCommandTextItemArrayFactory();
        items := commandTextItemArrayFactory_.getInstance(Self.getCommandStack(), Self.gameLayerManager.getBackgroundBasicColor(), Self.gameLayerManager.getForegroundBasicColor());
        rectangle_ := Self.formUtil.createFormRectangle();
        Self.setMenuForm(TCommandCurrentSelectionFormFactory.getInstance(TStringUtil.getInstance().EMPTY_STRING, items, rectangle_, formType_, 25, False, Self.gameLayerManager.getBackgroundBasicColor(), Self.gameLayerManager.getForegroundBasicColor()));
        scrollSelectionForm_ := Self.getMenuForm();
        features_ := TFeatures.getInstance();
        if features_.isFeature(Self.touchFeatureFactory.TOUCH_ENABLED) then begin
            Self.mainMenuInputProcessor := TPopupCommandFormInputProcessor.Create(TBasicArrayListD.Create(), -1, Self, scrollSelectionForm_, TPopupMenuInputProcessor(TJava.ToObject(Self.getPopupMenuInputProcessor())));
        end else begin
        end;
        Self.setMenuInputProcessor(Self.getPopupMenuInputProcessor());
        if (scrollSelectionForm_) <> (TScrollSelectionFormNoneFactory.getInstance()) then begin
            Self.setFormPaintable(TFormPaintable.Create(scrollSelectionForm_));
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
  scrollSelectionForm_: TScrollSelectionForm;
  gameLimitedCommandTextItemArrayFactory_: TGameLimitedCommandTextItemArrayFactory;
  commandTextItemArrayFactory_: TCommandTextItemArrayFactory;
  items: TArray<TABCustomItem>;
  size: Integer;
  index: Integer;
  formType_: TFormType;
  rectangle_: TRectangle;
begin
        scrollSelectionForm_ := Self.getMenuForm();
        scrollSelectionForm_.deleteAll();
        gameLimitedCommandTextItemArrayFactory_ := TGameLimitedCommandTextItemArrayFactory.getInstance();
        commandTextItemArrayFactory_ := gameLimitedCommandTextItemArrayFactory_.getCommandTextItemArrayFactory();
        items := commandTextItemArrayFactory_.getInstance(Self.getCommandStack(), Self.gameLayerManager.getBackgroundBasicColor(), Self.gameLayerManager.getForegroundBasicColor());
        size := System.Length(items);
        for index := 0 to size - 1 do begin
            scrollSelectionForm_.append(items[index]);
        end;
        formType_ := TFormTypeFactory.getInstance().getFormType();
        rectangle_ := Self.formUtil.createFormRectangle();
        scrollSelectionForm_.init(rectangle_, formType_);
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
  features_: TFeatures;
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
        features_ := TFeatures.getInstance();
        if features_.isFeature(TGameFeatureFactory.getInstance().CHEATING) then begin
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
  progressCanvas_: TProgressCanvas;
  gameFeatureFactory_: TGameFeatureFactory;
  changedGameFeatureListener_: TChangedGameFeatureListener;
  features_: TFeatures;
  sensorFeatureFactory_: TSensorFeatureFactory;
  resourceLoadingLevelFactory_: TResourceLoadingLevelFactory;
begin
    TJava.MonitorEnter(Self);
    try
        progressCanvas_ := TProgressCanvasFactory.getInstance();
        progressCanvas_.addNormalPortion(50, 'Setting Configurables');
        TGameInitializationUtil.getInstance().initGame(abeClientInformation, Self, Self.gameInitializationInterfaceFactoryInterface);
        gameFeatureFactory_ := TGameFeatureFactory.getInstance();
        changedGameFeatureListener_ := TChangedGameFeatureListener.getInstance();
        if changedGameFeatureListener_.isChangedFeature(gameFeatureFactory_.SOUND) then begin
            features_ := TFeatures.getInstance();
            Self.logUtil.putF(TStringMaker.Create().append('Sound Changing To: ').appendboolean(features_.isFeature(gameFeatureFactory_.SOUND)).toString(), Self, 'initConfigurable');
            Self.mediaInit();
            changedGameFeatureListener_.remove(gameFeatureFactory_.SOUND);
        end;
        sensorFeatureFactory_ := TSensorFeatureFactory.getInstance();
        if ((changedGameFeatureListener_.isChangedFeature(sensorFeatureFactory_.ORIENTATION_SENSORS)) or (changedGameFeatureListener_.isChangedFeature(sensorFeatureFactory_.NO_ORIENTATION))) or (changedGameFeatureListener_.isChangedFeature(sensorFeatureFactory_.SIMULATED_ORIENTATION_SENSORS)) then begin
            changedGameFeatureListener_.remove(sensorFeatureFactory_.NO_ORIENTATION);
            changedGameFeatureListener_.remove(sensorFeatureFactory_.ORIENTATION_SENSORS);
            changedGameFeatureListener_.remove(sensorFeatureFactory_.SIMULATED_ORIENTATION_SENSORS);
        end;
        resourceLoadingLevelFactory_ := TResourceLoadingLevelFactory.getInstance();
        Self.loadResourceLoadingLevel(resourceLoadingLevelFactory_.LOAD_GAME);
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
  gameInitializedEvent_: TGameInitializedEvent;
  resourceLoadingLevelFactory_: TResourceLoadingLevelFactory;
begin
        gameInitializedEvent_ := TGameInitializationUtil.getInstance().EVENT;
        resourceLoadingLevelFactory_ := TResourceLoadingLevelFactory.getInstance();
        gameInitializedEvent_.setResourceLoadingLevel(resourceLoadingLevelFactory_.LOAD_TOUCH);
        TGameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent_);
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
  features_: TFeatures;
begin
        features_ := TFeatures.getInstance();
        if features_.isFeature(Self.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS) then begin
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
    

procedure TAllBinaryGameCanvas.initCommands(cmdListener: ICommandListener);
begin
        Self.removeAllCommands();
        Self.addCommands();
        Self.setCommandListener(cmdListener);
end;
    

procedure TAllBinaryGameCanvas.addCommands;
var
  gameCommandsFactory_: TGameCommandsFactory;
  myCommandsFactory_: TMyCommandsFactory;
  isOverScan: Boolean;
begin
        gameCommandsFactory_ := TGameCommandsFactory.getInstance();
        myCommandsFactory_ := TMyCommandsFactory.getInstance();
        if (TDebugFactory.getInstance()) <> (TNoDebug.getInstance()) then begin
            Self.addCommand(gameCommandsFactory_.START_TRACE);
        end;
        Self.addCommand(gameCommandsFactory_.RESTART_COMMAND);
        Self.addCommand(myCommandsFactory_.PAUSE_COMMAND);
        Self.addCommand(gameCommandsFactory_.QUIT_COMMAND);
        isOverScan := TOperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan();
        if TJ2MEUtil.isHTML() then begin
        end else if TSWTUtil.isSWT then begin
        end else if not (isOverScan) then begin
            if (TTouchScreenFactory.getInstance().isTouch()) and (TInGameFeatures.Create().isAny()) then begin
                Self.addCommand(TInGameOptionsForm.DISPLAY);
            end;
            Self.addCommand(gameCommandsFactory_.SAVE);
            Self.addCommand(gameCommandsFactory_.DISPLAY_LOAD_FORM);
        end;
end;
    

procedure TAllBinaryGameCanvas.itemStateChanged(item_: TItem);
var
  itemLabel: string;
  gameFeatureUtil_: TGameFeatureUtil;
begin
        try
            itemLabel := item_.getLabel();
            Self.logUtil.putF(TStringMaker.Create().append(Self.commonLabels.ITEM_LABEL).append(itemLabel).toString(), Self, 'itemStateChanged');
            if (TJava.ToObject(item_) is TChoiceGroup) then begin
                gameFeatureUtil_ := TGameFeatureUtil.getInstance();
                if gameFeatureUtil_.isExclusive(itemLabel) then begin
                    gameFeatureUtil_.updateExclusiveForChoiceGroup(TChoiceGroup(TJava.ToObject(item_)));
                end else begin
                    gameFeatureUtil_.updateMultiple(TChoiceGroup(TJava.ToObject(item_)));
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
  features_: TFeatures;
begin
        features_ := TFeatures.getInstance();
        if features_.isFeature(Self.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS) then begin
            Self.setTouchPaintableP(Self.getTouchButtonsPaintable());
            Self.setStartLevel(Self.gameLayerManager.getGameInfo().getCurrentLevel());
        end else if features_.isFeature(Self.touchFeatureFactory.SHOW_SCREEN_BUTTONS) then begin
            Self.setTouchPaintableP(Self.getTouchButtonsPaintable());
        end else if features_.isFeature(Self.touchFeatureFactory.HIDE_SCREEN_BUTTONS) then begin
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
procedure TAllBinaryGameCanvas.setGameState(gameState_: TGameState);
begin
        Self.logUtil.putF(TStringMaker.Create().append(Self.gameStrings.GAME_STATE).append(Self.stringUtil.toString(gameState_)).toString(), Self, Self.gameStrings.SET_GAME_STATE);
        Self.gameState := gameState_;
        Self.gameStateTimeHelper.setStartTimeTNT();
        Self.updateEndGameProcessor();
        Self.updateGameKeyEventProcessor();
        Self.gameBehavior.setGameState(Self);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.updateGameState;
var
  gameAdState_: TGameAdState;
begin
        gameAdState_ := Self.gameAdStateFactory.getCurrentInstance();
        gameAdState_.processAdState(Self.gameState, Self.gameLayerManager.getGameInfo().getGameType());
        if (Self.gameState) <> (Self.gameStateFactory.PLAYING_GAME_STATE) then begin
            gameAdState_.processPageAdState();
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
  playerGameInput_: TPlayerGameInput;
  index: Integer;
begin
        Self.logUtil.putF('Remove PlayerInput Listeners', Self, 'removeAllGameKeyInputListeners');
        for index := (Self.localPlayerGameInputList.size()) - (1) downto 0 do begin
            playerGameInput_ := TPlayerGameInput(TJava.ToObject(Self.localPlayerGameInputList.get(index)));
            Self.removeKeyInputListener(playerGameInput_);
            playerGameInput_.removeNonAIInputGameKeyEvents();
        end;
end;
    

procedure TAllBinaryGameCanvas.removeKeyInputListener(playerGameInput_: TPlayerGameInput);
begin
        Self.gameKeyEventHandler.removeListener(playerGameInput_);
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
  progressCanvas_: TProgressCanvas;
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.commonStrings.CLEANUP);
        progressCanvas_ := TProgressCanvasFactory.getInstance();
        progressCanvas_.addNormalPortion(10, 'Cleaning Up');
        Self.primaryPlayerQueue.clear();
        Self.secondaryPlayerQueue.clear();
        TGameLevelDisplayChangeEventListenersFactory.getInstance().clear();
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.loadResourceLoadingLevel(resourceLoadingLevel_: TResourceLoadingLevel);
var
  gameInitializedEvent_: TGameInitializedEvent;
begin
        gameInitializedEvent_ := TGameInitializationUtil.getInstance().EVENT;
        gameInitializedEvent_.setResourceLoadingLevel(resourceLoadingLevel_);
        TGameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent_);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.loadResources(level: Integer);
var
  gameInitializedEvent_: TGameInitializedEvent;
begin
        gameInitializedEvent_ := TGameInitializationUtil.getInstance().EVENT;
        gameInitializedEvent_.setLevel(level);
        TGameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent_);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.updateColor;
begin
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.buildGame(portion: Integer);
var
  progressCanvas_: TProgressCanvas;
  features_: TFeatures;
begin
        Self.screenCapture.endRecording();
        Self.screenCapture.startRecording();
        progressCanvas_ := TProgressCanvasFactory.getInstance();
        features_ := TFeatures.getInstance();
        progressCanvas_.addNormalPortion(portion, 'Generic Build');
        Self.removeAllGameKeyInputListenersOnBuild();
        Self.updateTouch();
        progressCanvas_.addNormalPortion(portion, 'High Scores');
        Self.highScoresFactoryInterface.fetchHighScores(Self.gameLayerManager.getGameInfo(), Self.highScoresHelper);
        Self.setHighScoresPaintable(TNullPaintable.getInstance());
        progressCanvas_.addNormalPortion(portion, 'Finishing.');
        Self.getEndGameInfoP().update(Self.getLayerManager().getGameInfo(), Self);
        Self.isSingleKeyRepeatableProcessing := features_.isFeature(TInputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS);
        Self.setGameOver(False);
        progressCanvas_.addNormalPortion(portion, 'Finishing..');
        Self.updateColor();
        Self.getStartIntermissionPaintable().update();
        if not (Self.isRunningInAnotherThread()) then begin
            Exit;
        end;
        progressCanvas_.addNormalPortion(portion, 'Finishing...');
        if (Self.isMainCanvas()) or (not (Self.isInitialized())) then begin
            if features_.isFeature(TMainFeatureFactory.getInstance().LOAD_ONDEMAND) then begin
                if not TJava.IsNull(Self.getCustomCommandListener()) then begin
                    progressCanvas_.end_();
                end;
            end else begin
                progressCanvas_.end_();
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
  playerGameInput_: TPlayerGameInput;
  index: Integer;
begin
        TPreLogUtil.put(TStringMaker.Create().append(Self.gameInputStrings.ENABLE_PLAYER_GAME_INPUTS).appendint(Self.localPlayerGameInputList.size()).toString(), Self, Self.BUILD_GAME);
        
        for index := (Self.localPlayerGameInputList.size()) - (1) downto 0 do begin
            playerGameInput_ := TPlayerGameInput(TJava.ToObject(Self.localPlayerGameInputList.get(index)));
            TPreLogUtil.put(TStringMaker.Create().append(Self.gameInputStrings.ENABLE_PLAYER_GAME_INPUT).append(playerGameInput_.toString()).toString(), Self, Self.BUILD_GAME);
            playerGameInput_.removeNonAIInputGameKeyEvents();
            Self.addKeyInputListener(playerGameInput_);
        end;
end;
    

procedure TAllBinaryGameCanvas.addKeyInputListener(playerGameInput_: TPlayerGameInput);
begin
        TGameKeyEventHandler.getInstance().addListenerForPlayer(playerGameInput_, playerGameInput_.getPlayerInputId());
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
  gameInfo_: TGameInfo;
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.commonStrings.LOAD);
        hashtable := Self.getLoadStateHashtable();
        if ((hashtable) <> (nil)) and ((hashtable.size()) > (0)) then begin
            levelAsString := TJava.UnboxString(TJava.ToObject(hashtable.get(TJava.Box(TJava.Box(TGameInfo.LEVEL_NAME)))));
            level := StrToInt(levelAsString);
            gameInfo_ := Self.gameLayerManager.getGameInfo();
            gameInfo_.setCurrentLevel(level);
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
        hashtable.put(TJava.Box(TGameInfo.LEVEL_NAME.toString()), TJava.Box(IntToStr(level)));
        Self.logUtil.putF(TStringMaker.Create().append('End: ').append(Self.stringUtil.toString(hashtable)).toString(), Self, 'getCurrentStateHashtable');
        Exit(hashtable);
end;
    

procedure TAllBinaryGameCanvas.paintGameOver(graphics_: TGraphics);
begin
        TForcedLogUtil.log(Self.commonStrings.NOT_IMPLEMENTED, Self);
end;
    

procedure TAllBinaryGameCanvas.draw(graphics_: TGraphics);
begin
        Self.colorFillPaintable.paint(graphics_);
        Self.basicSetColorUtil.setBasicColorP(graphics_, Self.gameLayerManager.getForegroundBasicColor());
        Self.gameSpecificPaintable.paint(graphics_);
end;
    

procedure TAllBinaryGameCanvas.clear(graphics_: TGraphics);
begin
        Self.colorFillPaintable.paint(graphics_);
end;
    

procedure TAllBinaryGameCanvas.paint(graphics_: TGraphics);
begin
        Self.myFontProcessor.process(graphics_);
        Self.baseGameStatistics.nextRefresh();
        Self.draw(graphics_);
        Self.menuPaintable.paint(graphics_);
        Self.progressPaintable.paint(graphics_);
end;
    

procedure TAllBinaryGameCanvas.paintThreed(graphics_: TGraphics);
begin
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.processEndLevelIntermissionGameState;
begin
end;
    

procedure TAllBinaryGameCanvas.nonBotPaint(graphics_: TGraphics);
begin
        Self.endGamePaintable.paint(graphics_);
        Self.intermissionPaintable.paint(graphics_);
        Self.paintIntermission(graphics_);
        Self.touchPaintable.paint(graphics_);
end;
    

procedure TAllBinaryGameCanvas.paintIntermission(graphics_: TGraphics);
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
  myCommandsFactory_: TMyCommandsFactory;
  progressCanvas_: TProgressCanvas;
begin
        portion := 30;
        if (isProgress) and (Self.isMainCanvas()) then begin
            myCommandsFactory_ := TMyCommandsFactory.getInstance();
            progressCanvas_ := TProgressCanvasFactory.getInstance();
            progressCanvas_.start();
            Self.getCustomCommandListener().commandAction(myCommandsFactory_.SET_DISPLAYABLE, progressCanvas_);
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
  features_: TFeatures;
  openGLImageSpecificFactory_: TOpenGLImageSpecificFactory;
begin
        features_ := TFeatures.getInstance();
        if TAndroidUtil.isAndroid() then begin
        end else if features_.isFeature(Self.openGLFeatureFactory.OPENGL_2D) then begin
        end else begin
            if features_.isDefault(Self.openGLFeatureFactory.OPENGL) then begin
                openGLImageSpecificFactory_ := TOpenGLImageSpecificFactory.getInstance();
                while openGLImageSpecificFactory_.updating do begin
                    Sleep(Self.YIELD_SLEEP);
                end;
            end;
        end;
end;
    

procedure TAllBinaryGameCanvas.run;
var
  progressCanvas_: TProgressCanvas;
  gameAdState_: TGameAdState;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START_RUNNABLE, Self, Self.commonStrings.RUN);
            progressCanvas_ := TProgressCanvasFactory.getInstance();
            progressCanvas_.addNormalPortion(50, 'Game Thread');
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
            gameAdState_ := Self.gameAdStateFactory.getCurrentInstance();
            gameAdState_.init();
            gameAdState_.setGameIsReady(True);
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
  features_: TFeatures;
  currentDisplayableFactory_: TCurrentDisplayableFactory;
begin
        features_ := TFeatures.getInstance();
        if (features_.isDefault(Self.openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) or (TJ2MEUtil.isHTML()) then begin
            if features_.isDefault(Self.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) then begin
                Self.logUtil.putF(Self.openGLFeatureFactory.OPENGL_AS_GAME_THREAD.getName(), Self, Self.commonStrings.RUN);
            end;
            if TJ2MEUtil.isHTML() then begin
                Self.logUtil.putF(TGraphicsStrings.getInstance().HTML, Self, Self.commonStrings.RUN);
            end;
            currentDisplayableFactory_ := TCurrentDisplayableFactory.getInstance();
            currentDisplayableFactory_.setRunnable(Self.gameRunnable);
            currentDisplayableFactory_.setDisplayable(Self);
            TOpenGLThreadUtil.getInstance().onResume();
        end else if features_.isDefault(Self.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS) then begin
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
  features_: TFeatures;
  currentDisplayableFactory_: TCurrentDisplayableFactory;
begin
        inherited setRunning(running);
        try
            features_ := TFeatures.getInstance();
            if running then begin
            end else begin
                if (features_.isDefault(Self.openGLFeatureFactory.OPENGL)) or (TSWTUtil.isSWT) then begin
                    if (Self.gameLayerManager.getGameInfo().getGameType()) <> (Self.gameTypeFactory.BOT) then begin
                        currentDisplayableFactory_ := TCurrentDisplayableFactory.getInstance();
                        currentDisplayableFactory_.clearRunnable();
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
  gameAdState_: TGameAdState;
begin
        TDisplayChangeEventHandler.getInstance().removeListener(Self);
        TGameLevelDisplayChangeEventListenersFactory.getInstance().clear();
        gameAdState_ := Self.gameAdStateFactory.getCurrentInstance();
        gameAdState_.notPlayingAdState();
end;
    

function TAllBinaryGameCanvas.createHighScore(score: Int64): THighScore;
var
  gameInfo_: TGameInfo;
begin
        gameInfo_ := Self.gameLayerManager.getGameInfo();
        Exit(THighScore.Create(0, 'NONE', TGameInfo.Create(gameInfo_.getGameType(), gameInfo_.getGameMode(), TPlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0), score));
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.setHighScore(abeClientInformation: IAbeClientInformationInterface; name: string; score: Int64; autoSubmit: Boolean; isLast: Boolean);
begin
        Self.gameBehavior.setHighScore(abeClientInformation, Self, name, score, autoSubmit, isLast);
end;
    

// throws Exception
procedure TAllBinaryGameCanvas.setHighScore2(abeClientInformation: IAbeClientInformationInterface; name: string; score: Int64; autoSubmit: Boolean; isLast: Boolean);
var
  highScore_: THighScore;
  textBox: THighScoreTextBox;
begin
        highScore_ := Self.createHighScore(score);
        textBox := THighScoreTextBox.Create(Self.highScoresFactoryInterface, Self.highScoresHelper, abeClientInformation, Self.gameLayerManager.getGameInfo(), Self.getCustomCommandListener(), name, highScore_, Self.gameLayerManager.getBackgroundBasicColor(), Self.gameLayerManager.getForegroundBasicColor());
        if isLast then begin
            Self.getCustomCommandListener().commandAction(TGameCommandsFactory.getInstance().SET_MENU_DISPLAYABLE, textBox);
        end;
        if autoSubmit then begin
            TSecondaryThreadPool.getInstance().runTask(TSaveHighScoreRunnable.Create(isLast, textBox));
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
    

procedure TAllBinaryGameCanvas.setProgressPaintable(paintable_: IPaintableInterface);
begin
        Self.progressPaintable := paintable_;
end;
    

function TAllBinaryGameCanvas.getStartIntermissionInterface: IIntermissionInterface;
begin
        Exit(Self.startIntermissionInterface);
end;
    

function TAllBinaryGameCanvas.getEndLevelIntermissionInterface: IIntermissionInterface;
begin
        Exit(Self.endLevelIntermissionInterface);
end;
    

procedure TAllBinaryGameCanvas.setTouchPaintableP(paintable_: TPaintable);
begin
        Self.touchPaintable := paintable_;
end;
    

function TAllBinaryGameCanvas.getTouchPaintableP: TPaintable;
begin
        Exit(Self.touchPaintable);
end;
    

procedure TAllBinaryGameCanvas.setEndGamePaintable(endGamePaintable_: TPaintable);
begin
        Self.endGamePaintable := endGamePaintable_;
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
    

procedure TAllBinaryGameCanvas.setHighScoresPaintable(highScoresPaintable_: TPaintable);
begin
        Self.highScoresPaintable := highScoresPaintable_;
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
  playerGameInput_: TPlayerGameInput;
  index: Integer;
begin
        
        for index := (Self.localPlayerGameInputList.size()) - (1) downto 0 do begin
            playerGameInput_ := TPlayerGameInput(TJava.ToObject(Self.localPlayerGameInputList.get(index)));
            Self.gameKeyEventHandler.removeListener(playerGameInput_);
        end;
        Self.localPlayerGameInputList.clear();
end;
    

procedure TAllBinaryGameCanvas.addPlayerGameInput(playerGameInput_: TPlayerGameInput);
begin
        Self.localPlayerGameInputList.add(TJava.Box(playerGameInput_));
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
    

procedure TAllBinaryGameCanvas.setEndGameProcessor(endGameProcessor_: TProcessor);
begin
        Self.endGameProcessor := endGameProcessor_;
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
    

procedure TAllBinaryGameCanvas.setPopupMenuInputProcessor(popupMenuInputProcessor_: TBasicMenuInputProcessor);
begin
        Self.popupMenuInputProcessor := popupMenuInputProcessor_;
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
    

procedure TAllBinaryGameCanvas.setInputProcessor(inputProcessor_: TInputProcessor);
begin
        Self.inputProcessor := inputProcessor_;
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
    

procedure TAllBinaryGameCanvas.setFormPaintable(formPaintable_: TPaintable);
begin
        Self.formPaintable := formPaintable_;
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
  features_: TFeatures;
  openGLFeatureFactory_: TOpenGLFeatureFactory;
begin
        features_ := TFeatures.getInstance();
        openGLFeatureFactory_ := TOpenGLFeatureFactory.getInstance();
        if features_.isDefault(openGLFeatureFactory_.OPENGL_AS_GAME_THREAD) then begin
            Exit(True);
        end else begin
            Exit(Self.isRunning());
        end;
end;
    

function TAllBinaryGameCanvas.getType: Integer;
begin
        Exit(TAllBinaryGameCanvas.TYPE_);
end;
    

function TAllBinaryGameCanvas.getTitle: string;
begin
        Exit(inherited getTitle());
end;
    

function TAllBinaryGameCanvas.isPaused: Boolean;
begin
        Exit(inherited isPaused());
end;


constructor TBaseMenuBehavior.Create;
begin
  inherited Create;
end;
    

class function TBaseMenuBehavior.getInstance: TBaseMenuBehavior;
begin
        Exit(TBaseMenuBehavior.instance);
end;
    

// throws Exception
procedure TBaseMenuBehavior.onDisplayChangeEvent(allBinaryGameCanvas_: TAllBinaryGameCanvas; displayChangeEvent_: TDisplayChangeEvent);
begin
end;
    

procedure TBaseMenuBehavior.initSpecialPaint(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
        allBinaryGameCanvas_.setNonBotPaintableP(TNullPaintable.getInstance());
end;
    

// throws Exception
procedure TBaseMenuBehavior.initMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

// throws Exception
procedure TBaseMenuBehavior.updateMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

// throws Exception
procedure TBaseMenuBehavior.popupMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

procedure TBaseMenuBehavior.closeMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;


procedure TDemoGameBehavior.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TDemoGameBehavior.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TDemoGameBehavior.getInstance: TDemoGameBehavior;
begin
        Exit(TDemoGameBehavior.instance);
end;
    

// throws Exception
procedure TDemoGameBehavior.init;
begin
end;
    

procedure TDemoGameBehavior.pause(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

procedure TDemoGameBehavior.unPause(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

// throws Exception
procedure TDemoGameBehavior.updateTouch(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

// throws Exception
procedure TDemoGameBehavior.updateScreenButtonPaintable(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
        allBinaryGameCanvas_.setTouchPaintableP(TNullPaintable.getInstance());
end;
    

// throws Exception
procedure TDemoGameBehavior.setGameState(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

procedure TDemoGameBehavior.removeAllGameKeyInputListeners(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

// throws Exception
procedure TDemoGameBehavior.updateEndGameProcessor(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

// throws Exception
procedure TDemoGameBehavior.buildGame(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
end;
    

// throws Exception
procedure TDemoGameBehavior.run(allBinaryGameCanvas_: TAllBinaryGameCanvas);
var
  commonStrings_: TCommonStrings;
begin
        commonStrings_ := TCommonStrings.getInstance();
        Self.logUtil.putF(TGameTypeFactory.getInstance().BOT.toString(), Self, commonStrings_.RUN);
end;
    

// throws Exception
procedure TDemoGameBehavior.setHighScore(abeClientInformation: IAbeClientInformationInterface; allBinaryGameCanvas_: TAllBinaryGameCanvas; name: string; score: Int64; autoSubmit: Boolean; isLast: Boolean);
begin
end;


procedure TGameCanvasPauseRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TGameCanvasPauseRunnable.Create(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
    inherited Create;
    InitFields;
        Self.allBinaryGameCanvas := allBinaryGameCanvas_;
end;
    

procedure TGameCanvasPauseRunnable.run;
begin
end;
    

// throws Exception
procedure TGameCanvasPauseRunnable.processLoopSleep;
var
  features_: TFeatures;
  isOpenGL: Boolean;
  commonStrings_: TCommonStrings;
begin
        try
            features_ := TFeatures.getInstance();
            isOpenGL := features_.isDefault(TOpenGLFeatureFactory.getInstance().OPENGL);
            if isOpenGL then begin
                Self.allBinaryGameCanvas.processSleep();
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, Self, commonStrings_.RUN, e);
            end;
        end;
end;


procedure TGameCanvasRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.gameTickDisplayInfoSingleton := TGameTickDisplayInfoSingleton.getInstance();
  
  Self.gameTickTimeDelayHelper := TGameTickTimeDelayHelperFactory.getInstance();
end;
    

constructor TGameCanvasRunnable.Create(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
    inherited Create;
    InitFields;
        Self.allBinaryGameCanvas := allBinaryGameCanvas_;
end;
    

procedure TGameCanvasRunnable.run;
var
  commonStrings_: TCommonStrings;
begin
        try
            Self.allBinaryGameCanvas.getLoopTimeHelperP().setStartTime(Self.gameTickTimeDelayHelper.setStartTime());
            Self.gameTickDisplayInfoSingleton.update();
            Self.allBinaryGameCanvas.processGame();
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, Self, commonStrings_.RUN, e);
            end;
        end;
end;
    

// throws Exception
procedure TGameCanvasRunnable.processLoopSleep;
begin
        Self.allBinaryGameCanvas.processLoopSleep();
end;


initialization
  {AB:INITIALIZATION}
  TAllBinaryGameCanvas.id := 0;
  TAllBinaryGameCanvas.TYPE_ := 2;
  TBaseMenuBehavior.instance := TBaseMenuBehavior.Create();
  TDemoGameBehavior.instance := TDemoGameBehavior.Create();
  {AB:END}

end.
