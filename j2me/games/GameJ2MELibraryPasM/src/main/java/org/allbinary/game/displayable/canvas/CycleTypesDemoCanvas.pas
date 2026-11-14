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
// AB:CYCLE TYPES DemoCanvas DemoGameStartupRunnable
// The units DemoCanvas DemoGameStartupRunnable use each other in their interface sections, so their types are declared together here.
unit CycleTypesDemoCanvas;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, Graphics, Item, Animation, SpecialAnimation, GameAdStateFactory, BaseGameStatistics, FullScreenUtil, RunnableCanvas, BasicBuildGameInitializerFactory, GameInputStrings, GameKey, GameKeyEventFactory, InputToGameKeyMapping, AllBinaryGameLayerManager, HighScoresFactoryInterface, HighScoresHelperBase, HighScoresPaintable, GameState, GameStateFactory, BasicColor, BasicColorFactory, MyCommandsFactory, DisplayChangeEvent, DisplayChangeEventListener, ScrollSelectionForm, InitUpdatePaintable, Paintable, PaintableInterface, StatePaintable, AbeClientInformationInterface, AllBinaryEventObject, ThreadFactoryUtil, TimeDelayHelper, ABHashtable, FormUtil, AllBinaryGameCanvas, BasicMenuInputProcessor, GameRunnable, GameCanvasRunnableInterface, MenuListener, DemoPaintableInterface, GameStateCompositeInterface, ItemStateListener, RunnableInterface, GameKeyEventSourceInterface, EventListenerInterface, LogUtil, ABRunnable;

type
  { Forward declarations like C++ so the cycle members can refer to each other }
  TDemoCanvas = class;
  TDemoGameStartupRunnable = class;
  {AB:TYPES}
  { DemoCanvas }
  TDemoCanvas = class(TRunnableCanvas, IGameCanvasRunnableInterface, IMenuListener, IDisplayChangeEventListener, IDemoPaintableInterface, IGameStateCompositeInterface, IItemStateListener, IPaintableInterface, IRunnable, IRunnableInterface, IGameKeyEventSourceInterface, IEventListenerInterface)
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
    function JavaObject: TObject;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; commandListener_: ICommandListener; highScoresFactoryInterface_: IHighScoresFactoryInterface; paintable_: TPaintable; overlayPaintable: TInitUpdatePaintable; gameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory; isContinue: Boolean);
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onDisplayChangeEvent(displayChangeEvent_: TDisplayChangeEvent); virtual;
        function getCustomCommands: TArray<TObject>; virtual;
        procedure initCommands(cmdListener: ICommandListener); virtual;
        procedure initPostPaint; virtual;
        procedure mediaInit; virtual;
        procedure itemStateChanged(item_: TItem); virtual;
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
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
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
        procedure setGameState(gameState_: TGameState); virtual;
        function getGameState: TGameState; virtual;
        function getGameCanvasRunnableInterface: TAllBinaryGameCanvas; virtual;
        function isDemoLoading: Boolean; virtual;
        function getState: Integer; virtual;
        procedure setState(state: Integer); virtual;
        function isHighScoreSubmitted: Boolean; virtual;
        function getRealHighScoresPaintable: THighScoresPaintable; virtual;
        procedure setSpecialAnimationInterface(specialAnimationInterface: TSpecialAnimation); virtual;
        function getSpecialAnimationInterface: TSpecialAnimation; virtual;
        procedure setPaintableInterface(paintableInterface_: IPaintableInterface); virtual;
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
        function getTitle: string; virtual;
        function isPaused: Boolean; virtual;
  end;

  { DemoGameStartupRunnable }
  TDemoGameStartupRunnable = class(TABRunnable)
  public
    logUtil: TLogUtil;
    demoCanvas: TDemoCanvas;
    class var TYPE_: Integer;
    procedure InitFields;
        constructor Create(demoCanvas_: TDemoCanvas);
        procedure run; override;
        function getType: Integer; override;
  end;


implementation
uses
  NullGameCanvas, NoMenuInputProcessor, NullWaitGameRunnable, GameInputMappingCanvas, DemoLimitedCommandTextItemArrayFactory, CommandFormInputProcessor, DemoCanvasProgressUtil, DemoGameRunnable, Command, J2MEUtil, IndexedAnimationBehavior, CustomGameMenuUtil, GameStatisticsFactory, GameAdState, GameInfo, GameCommandsFactory, ChangedGameFeatureListener, Features, GameFeatureFactory, InputFeatureFactory, MainFeatureFactory, GameInitializationUtil, GameKeyFactory, PlatformInputMappingFactory, DownGameKeyEventHandler, GameKeyEvent, GameKeyEventHandler, UpGameKeyEventHandler, SWTUtil, DemoGameMidlet, HighScoreCommands, HighScores, HighScoresHelper, NullHighScoresSingletonFactory, Rectangle, ResizableListenerHandler, ProgressCanvas, ProgressCanvasFactory, DisplayChangeEventHandler, FullScreenPaintableFactory, CommandCurrentSelectionFormFactory, FormType, FormTypeFactory, ScrollSelectionFormNoneFactory, CommandTextItemArrayFactory, ABCustomItem, CurrentDisplayableFactory, OpenGLFeatureFactory, OpenGLFeatureUtil, OpenGLThreadUtil, NullPaintable, StatePaintableFactory, BasicMotionGesturesHandler, ForcedLogUtil, PreLogUtil, SmallIntegerSingletonFactory, StringMaker, StringUtil, OperatingSystemFactory, InApplicationPurchaseFactory, LockableFeature, LockableFeatureFactory, EventStrings, AllBinaryMediaManager, EarlySoundsFactory, PrimaryPlayerQueueFactory, SecondaryPlayerQueueFactory, CommonSeps, NullThread, ThreadUtil, BasicArrayList, BasicArrayListD, CommonStrings;


{AB:CODE}

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

function TDemoCanvas.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TDemoCanvas.Create(abeClientInformation: IAbeClientInformationInterface; commandListener_: ICommandListener; highScoresFactoryInterface_: IHighScoresFactoryInterface; paintable_: TPaintable; overlayPaintable: TInitUpdatePaintable; gameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory; isContinue: Boolean);
begin
        inherited Create(commandListener_, TCurrentDisplayableFactory.getInstance().DEFAULT_CHILD_NAME_LIST, True);
        InitFields;
        Self.abeClientInformation := abeClientInformation;
        Self.setWait(TNullWaitGameRunnable.getInstance().WAIT);
        Self.gameInitializationInterfaceFactoryInterface := gameInitializationInterfaceFactoryInterface;
        TGameInitializationUtil.getInstance().initDemo(abeClientInformation, Self, gameInitializationInterfaceFactoryInterface);
        TResizableListenerHandler.getInstance().fireEvent(False);
        Self.overlayPaintable := overlayPaintable;
        Self.highScoresFactoryInterface := highScoresFactoryInterface_;
        Self.setDefaultPaintableInterface(paintable_);
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
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

procedure TDemoCanvas.onDisplayChangeEvent(displayChangeEvent_: TDisplayChangeEvent);
var
  scrollSelectionForm_: TScrollSelectionForm;
  formType_: TFormType;
  rectangle_: TRectangle;
begin
        try
            Self.logUtil.putF(TStringMaker.Create().append(Self.commonLabels.START_LABEL).append(Self.displayInfo.toString()).toString(), TJava.Box(Self), Self.canvasStrings.ON_DISPLAY_CHANGE_EVENT);
            scrollSelectionForm_ := Self.getMenuForm();
            if (scrollSelectionForm_) <> (nil) then begin
                formType_ := TFormTypeFactory.getInstance().getFormType();
                rectangle_ := Self.formUtil.createFormRectangle();
                scrollSelectionForm_.init(rectangle_, formType_);
            end;
            Self.overlayPaintable.init();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.canvasStrings.ON_DISPLAY_CHANGE_EVENT, TJava.Box(e));
            end;
        end;
end;
    

function TDemoCanvas.getCustomCommands: TArray<TObject>;
var
  gameCommandsFactory_: TGameCommandsFactory;
  commandList: TBasicArrayList;
  inApplicationPurchaseFactory_: TInApplicationPurchaseFactory;
  list: TBasicArrayList;
  isOverScan: Boolean;
  commandArray: TArray<TObject>;
begin
        gameCommandsFactory_ := TGameCommandsFactory.getInstance();
        if TJ2MEUtil.isHTML() then begin
            commandArray := TArray<TObject>.Create(TJava.Box(gameCommandsFactory_.START_COMMAND), TJava.Box(THighScoreCommands.getInstance().DISPLAY), TJava.Box(TGameInputMappingCanvas.DISPLAY), TJava.Box(gameCommandsFactory_.DISPLAY_ABOUT));
            Exit(commandArray);
        end else begin
            commandList := TBasicArrayListD.Create();
            commandList.add(TJava.Box(gameCommandsFactory_.START_COMMAND));
            inApplicationPurchaseFactory_ := TInApplicationPurchaseFactory.getInstance();
            if inApplicationPurchaseFactory_.isEnabled() then begin
                list := TLockableFeatureFactory.getInstance().getList();
                if ((list.size()) > (0)) and (not (inApplicationPurchaseFactory_.isPurchased(TLockableFeature(TJava.ToObject(list.get(0)))))) then begin
                    commandList.add(TJava.Box(gameCommandsFactory_.BUY_COMMAND));
                end;
            end;
            commandList.add(TJava.Box(THighScoreCommands.getInstance().DISPLAY));
            try
                isOverScan := TOperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan();
                if TSWTUtil.isSWT then begin
                    commandList.add(TJava.Box(TGameInputMappingCanvas.DISPLAY));
                end else if not (isOverScan) then begin
                    commandList.add(TJava.Box(gameCommandsFactory_.DISPLAY_OPTIONS));
                    commandList.add(TJava.Box(gameCommandsFactory_.DISPLAY_LOAD_FORM));
                    commandList.add(TJava.Box(TGameInputMappingCanvas.DISPLAY));
                end;
            except
                on e: SysUtils.Exception do begin
                end;
            end;
            commandList.add(TJava.Box(gameCommandsFactory_.DISPLAY_ABOUT));
            commandArray := commandList.toArray();
            Exit(commandArray);
        end;
end;
    

procedure TDemoCanvas.initCommands(cmdListener: ICommandListener);
var
  commandArray: TArray<TObject>;
  size: Integer;
  index: Integer;
begin
        Self.removeAllCommands();
        commandArray := Self.getCustomCommands();
        size := System.Length(commandArray);
        for index := 0 to size - 1 do begin
            Self.addCommand(TCommand(TJava.ToObject(commandArray[index])));
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
    

procedure TDemoCanvas.itemStateChanged(item_: TItem);
begin
        TForcedLogUtil.log(Self.commonStrings.NOT_IMPLEMENTED, TJava.Box(Self));
end;
    

// throws Exception
procedure TDemoCanvas.initMenu;
var
  commandTextItemArrayFactory_: TCommandTextItemArrayFactory;
  items: TArray<TABCustomItem>;
  formType_: TFormType;
  rectangle_: TRectangle;
  scrollSelectionForm_: TScrollSelectionForm;
  formType2: TFormType;
  rectangle2: TRectangle;
begin
        Self.close();
        commandTextItemArrayFactory_ := TDemoLimitedCommandTextItemArrayFactory.getInstance().getCommandTextItemArrayFactory();
        items := commandTextItemArrayFactory_.getInstance(Self.getCommandStack(), Self.basicColorFactory.BLACK, Self.basicColorFactory.WHITE);
        formType_ := TFormTypeFactory.getInstance().getFormType();
        rectangle_ := Self.formUtil.createFormRectangle();
        TPreLogUtil.put(TStringMaker.Create().append(Self.commonLabels.START_LABEL).append(Self.displayInfo.toString()).toString(), TJava.Box(Self), 'initMenu');
        scrollSelectionForm_ := TCommandCurrentSelectionFormFactory.getInstance(TStringUtil.getInstance().EMPTY_STRING, items, rectangle_, formType_, 15, True, Self.basicColorFactory.BLACK, Self.basicColorFactory.WHITE);
        Self.setMenuForm(scrollSelectionForm_);
        formType2 := TFormTypeFactory.getInstance().getFormType();
        rectangle2 := Self.formUtil.createFormRectangle();
        scrollSelectionForm_.init(rectangle2, formType2);
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
  gameKey_: TGameKey;
  gameKeyEvent_: TGameKeyEvent;
begin
        try
            gameKey_ := Self.inputToGameKeyMapping.getInstanceForCanvas(Self, keyCode);
            if (gameKey_) <> (Self.NONE) then begin
                gameKeyEvent_ := Self.gameKeyEventFactory.getInstanceForInput(Self, gameKey_);
                TDownGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent_);
            end else begin
                if (Self.lastKeyNotMapped) <> (keyCode) then begin
                    Self.lastKeyNotMapped := keyCode;
                    Self.logUtil.putF(TStringMaker.Create().append(Self.gameInputStrings.NO_KEY).appendint(keyCode).toString(), TJava.Box(Self), Self.gameInputStrings.ADD_KEY_EVENT);
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Key Event Error', TJava.Box(Self), Self.gameInputStrings.ADD_KEY_EVENT, TJava.Box(e));
            end;
        end;
end;
    

procedure TDemoCanvas.removeGameKeyEvent(keyCode: Integer; repeated: Boolean);
var
  gameKey_: TGameKey;
  gameKeyEvent_: TGameKeyEvent;
begin
        try
            gameKey_ := Self.inputToGameKeyMapping.getInstanceForCanvas(Self, keyCode);
            if (gameKey_) <> (Self.NONE) then begin
                gameKeyEvent_ := Self.gameKeyEventFactory.getInstanceForInput(Self, gameKey_);
                TUpGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent_);
            end else begin
                Self.logUtil.putF(TStringMaker.Create().append(Self.gameInputStrings.NO_KEY).appendint(keyCode).toString(), TJava.Box(Self), Self.gameInputStrings.REMOVE_KEY_EVENT);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Key Event Error', TJava.Box(Self), Self.gameInputStrings.REMOVE_KEY_EVENT, TJava.Box(e));
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
        Self.logUtil.putF(TStringMaker.Create().append(Self.commonStrings.NOT_IMPLEMENTED).append(' since not a game').toString(), TJava.Box(Self), 'isGameOver');
        Exit(False);
end;
    

// throws Exception
procedure TDemoCanvas.setLoadStateHashtable(hashtable: TABHashtable<TObject, TObject>);
begin
        Self.logUtil.putF('Trying to continue a demo lol - only continue a game canvas not the demo', TJava.Box(Self), 'setLoadStateHashtable');
end;
    

// throws Exception
function TDemoCanvas.getLoadStateHashtable: TABHashtable<TObject, TObject>;
begin
        Self.logUtil.putF('Trying to continue a demo lol - only continue a game canvas not the demo', TJava.Box(Self), 'getLoadStateHashtable');
        Exit(Self.stdUtil.NULL_TABLE);
end;
    

// throws Exception
function TDemoCanvas.getCurrentStateHashtable: TABHashtable<TObject, TObject>;
begin
        Self.logUtil.putF('Trying to save the AI lol', TJava.Box(Self), 'getCurrentStateHashtable');
        Exit(Self.stdUtil.NULL_TABLE);
end;
    

procedure TDemoCanvas.setHighScoreSubmitted(isNotUsed: Boolean);
begin
end;
    

procedure TDemoCanvas.paint(graphics_: TGraphics);
begin
        Self.paintableInterface.paint(graphics_);
        Self.paintedSpecialAnimationInterface.paintXY(graphics_, 0, 0);
        Self.highScoresPaintable.paint(graphics_);
        Self.getBasicGameDemoPaintable().paint(graphics_);
        Self.overlayPaintable.paint(graphics_);
        Self.fullscreenPaintable.paint(graphics_);
        Self.progressPaintable.paint(graphics_);
end;
    

procedure TDemoCanvas.paintThreed(graphics_: TGraphics);
begin
        Self.paintableInterface.paintThreed(graphics_);
        Self.paintedSpecialAnimationInterface.paintThreedXYZ(graphics_, 0, 0, 0);
end;
    

procedure TDemoCanvas.processGameOver;
begin
    TJava.MonitorEnter(Self);
    try
        Self.logUtil.putF('Not Implemented since not a game', TJava.Box(Self), 'setGameOver');
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TDemoCanvas.demoStateChange;
var
  newState: Integer;
  highScores_: THighScores;
begin
        newState := (Self.state) + (1);
        if (newState) > (2) then begin
            newState := 0;
        end else if (newState) = (2) then begin
            if not (Self.highScoresHelper.isAnyHighScores()) then begin
                newState := 0;
            end else begin
                highScores_ := Self.highScoresHelper.getNextHighScores();
                if (highScores_) = (TNullHighScoresSingletonFactory.getInstance()) then begin
                    newState := 0;
                end else begin
                    Self.getRealHighScoresPaintable().setHighScores(highScores_);
                end;
            end;
        end;
        Self.setState(newState);
        Self.updateDemoState();
end;
    

procedure TDemoCanvas.updateDemoState;
var
  gameAdState_: TGameAdState;
begin
        TPreLogUtil.put(TSmallIntegerSingletonFactory.getInstance().createInstance(Self.state).toString(), TJava.Box(Self), Self.SET_STATE);
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
        gameAdState_ := Self.gameAdStateFactory.getCurrentInstance();
        gameAdState_.processPageAdState();
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
  gameInfo_: TGameInfo;
begin
        TPreLogUtil.put(Self.commonStrings.START, TJava.Box(Self), 'create');
        Self.highScoresPaintable := TNullPaintable.getInstance();
        randomLevel := Self.getNextRandom();
        Self.gameCanvas := TAllBinaryGameCanvas(TJava.ToObject(Self.createRunnable(randomLevel)));
        Self.basicColor := Self.gameCanvas.getLayerManager().getForegroundBasicColor();
        Self.getRealHighScoresPaintable().setBasicColorP(Self.basicColor);
        Self.gameCanvas.setGameCanvasStartListener(Self);
        gameInfo_ := Self.gameCanvas.getLayerManager().getGameInfo();
        Self.getHighScoresFactoryInterface().fetchHighScores(gameInfo_, Self.highScoresHelper);
end;
    

// throws Exception
procedure TDemoCanvas.start;
var
  gameCanvas: TAllBinaryGameCanvas;
begin
        gameCanvas := Self.gameCanvas;
        TPreLogUtil.put(TStringMaker.Create().append('Game Thread in DemoCanvas: ').append(Self.stringUtil.toString(gameCanvas)).toString(), TJava.Box(Self), Self.commonStrings.START);
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
  indexedAnimationBehavior_: TIndexedAnimationBehavior;
  demoGameMidlet_: TDemoGameMidlet;
  thread: TThread;
  randomLevel: Integer;
  gameInfo_: TGameInfo;
begin
        inherited process();
        Self.getMenuInputProcessor().processInputList();
        Self.preDemoProcess();
        if (Self.state) = (0) then begin
            indexedAnimationBehavior_ := (TIndexedAnimationBehavior(TJava.ToObject(Self.getSpecialAnimationInterface().getAnimationBehavior())));
            if (indexedAnimationBehavior_.loopIndex) < (1) then begin
                Self.timeDelayHelper.setStartTimeTNT();
            end;
            demoGameMidlet_ := TDemoGameMidlet(TJava.ToObject(Self.getCustomCommandListener()));
            if ((Self.gameCanvas) <> (TNullGameCanvas.getInstance())) and (Self.gameCanvas.isGameOver()) then begin
                Self.stopGameDemo();
                randomLevel := Self.getNextRandom();
                gameInfo_ := Self.gameCanvas.getLayerManager().getGameInfo();
                gameInfo_.setCurrentLevel(randomLevel);
                Self.gameCanvas.setGameOver(False);
                Self.start();
            end else if ((Self.gameCanvas) = (TNullGameCanvas.getInstance())) and (demoGameMidlet_.isReady()) then begin
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
            Self.logUtil.putF('Set Running False', TJava.Box(Self), 'stopGameDemo');
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
        TPreLogUtil.put(Self.commonStrings.START, TJava.Box(Self), METHOD_NAME);
        isDefault := TJ2MEUtil.isHTML();
        if (((Self.gameCanvas) <> (TNullGameCanvas.getInstance())) and ((((Self.gameCanvas.isRunning()) or (isDefault)) or (TSWTUtil.isSWT)))) and (not (((Self.gameCanvas.getType()) = (TNullGameCanvas.TYPE_)))) then begin
            Self.gameRunnable := Self.gameCanvas.gameRunnable;
            TPreLogUtil.put('Showing Game', TJava.Box(Self), METHOD_NAME);
            Self.setPaintableInterface(Self.gameCanvas);
        end else begin
            Self.gameRunnable := TNullWaitGameRunnable.getInstance();
            TPreLogUtil.put('Not Showing Game', TJava.Box(Self), METHOD_NAME);
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
  progressCanvas_: TProgressCanvas;
  features_: TFeatures;
  openGLFeatureFactory_: TOpenGLFeatureFactory;
  demoGameRunnable_: TDemoGameRunnable;
  currentDisplayableFactory_: TCurrentDisplayableFactory;
begin
        Self.logUtil.putF(Self.commonStrings.START_RUNNABLE, TJava.Box(Self), Self.commonStrings.RUN);
        try
            progressCanvas_ := TProgressCanvasFactory.getInstance();
            features_ := TFeatures.getInstance();
            openGLFeatureFactory_ := TOpenGLFeatureFactory.getInstance();
            progressCanvas_.addNormalPortion(50, 'Demo Thread');
            Self.setCurrentThread();
            Self.setRunning(True);
            if features_.isFeature(TMainFeatureFactory.getInstance().LOAD_ONDEMAND) then begin
                progressCanvas_.end_();
            end else begin
                progressCanvas_.addNormalPortion(50, 'Demo Thread Running');
            end;
            Self.fullScreenUtil.initOnRun(Self, Self.getCustomCommandListener());
            Self.initMenu();
            Self.initPostPaint();
            Self.updateDemoState();
            if features_.isDefault(openGLFeatureFactory_.OPENGL_AS_GAME_THREAD) then begin
                while ((Self.gameCanvas) = (TNullGameCanvas.getInstance())) or (not (Self.gameCanvas.isInitialized())) do begin
                    Self.loopTimeHelper.setStartTimeTNT();
                    Self.processGame();
                    Self.processLoopSleep();
                end;
                demoGameRunnable_ := TDemoGameRunnable.Create(Self);
                currentDisplayableFactory_ := TCurrentDisplayableFactory.getInstance();
                currentDisplayableFactory_.setRunnable(demoGameRunnable_);
                currentDisplayableFactory_.setMyCanvas(Self);
                TOpenGLThreadUtil.getInstance().onResume();
            end;
            if (features_.isDefault(openGLFeatureFactory_.OPENGL_AS_GAME_THREAD)) or (TJ2MEUtil.isHTML()) then begin
                demoGameRunnable_ := TDemoGameRunnable.Create(Self);
                currentDisplayableFactory_ := TCurrentDisplayableFactory.getInstance();
                currentDisplayableFactory_.setRunnable(demoGameRunnable_);
                currentDisplayableFactory_.setMyCanvas(Self);
            end else begin
                while Self.isRunning() do begin
                    Self.run3();
                end;
                Self.end_();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.RUN, TJava.Box(e));
            end;
        end;
        Self.logUtil.putF(Self.commonStrings.END_RUNNABLE, TJava.Box(Self), Self.commonStrings.RUN);
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
  features_: TFeatures;
  openGLFeatureFactory_: TOpenGLFeatureFactory;
  currentDisplayableFactory_: TCurrentDisplayableFactory;
begin
        inherited setRunning(running);
        try
            features_ := TFeatures.getInstance();
            openGLFeatureFactory_ := TOpenGLFeatureFactory.getInstance();
            if running then begin
            end else begin
                if (((features_.isDefault(openGLFeatureFactory_.OPENGL)) or (TJ2MEUtil.isHTML()))) or (TSWTUtil.isSWT) then begin
                    currentDisplayableFactory_ := TCurrentDisplayableFactory.getInstance();
                    currentDisplayableFactory_.clearRunnable();
                    Self.end_();
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.SET_RUNNING, TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TDemoCanvas.end_;
var
  progressCanvas_: TProgressCanvas;
  features_: TFeatures;
begin
        progressCanvas_ := TProgressCanvasFactory.getInstance();
        features_ := TFeatures.getInstance();
        Self.baseGameStatistics.add(TStringMaker.Create().append(TDemoCanvas.BOT_GAME_STATS).append(Self.baseGameStatistics.toString()).append(TCommonSeps.getInstance().NEW_LINE).toString());
        Self.baseGameStatistics.init();
        if features_.isFeature(TMainFeatureFactory.getInstance().LOAD_ONDEMAND) then begin
            progressCanvas_.start();
        end;
        Self.logUtil.putF('Demo End', TJava.Box(Self), Self.commonStrings.RUN);
        Self.close();
        TDisplayChangeEventHandler.getInstance().removeListener(Self);
        Self.stopGameDemo();
end;
    

procedure TDemoCanvas.setGameState(gameState_: TGameState);
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
        Self.logUtil.putF('Wow the AI got a high score!', TJava.Box(Self), 'isHighScoreSubmitted');
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
    

procedure TDemoCanvas.setPaintableInterface(paintableInterface_: IPaintableInterface);
begin
        Self.paintableInterface := paintableInterface_;
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
    

function TDemoCanvas.getGameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory;
begin
        Exit(Self.gameInitializationInterfaceFactoryInterface);
end;
    

function TDemoCanvas.getType: Integer;
begin
        Exit(TDemoCanvas.TYPE_);
end;
    

function TDemoCanvas.getTitle: string;
begin
        Exit(inherited getTitle());
end;
    

function TDemoCanvas.isPaused: Boolean;
begin
        Exit(inherited isPaused());
end;


procedure TDemoGameStartupRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TDemoGameStartupRunnable.Create(demoCanvas_: TDemoCanvas);
begin
    inherited Create;
    InitFields;
        Self.demoCanvas := demoCanvas_;
end;
    

procedure TDemoGameStartupRunnable.run;
var
  commonStrings_: TCommonStrings;
begin
        try
            Self.setRunning(True);
            Self.demoCanvas.stopGameDemo();
            Self.demoCanvas.create_();
            Self.demoCanvas.start();
            Self.setRunning(False);
        except
            on e: SysUtils.Exception do begin
            Self.setRunning(False);
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
            end;
        end;
end;
    

function TDemoGameStartupRunnable.getType: Integer;
begin
        Exit(TDemoGameStartupRunnable.TYPE_);
end;


initialization
  {AB:INITIALIZATION}
  TDemoCanvas.id := 0;
  TDemoCanvas.BOT_GAME_STATS := 'Bot Game Statistics: ';
  TDemoCanvas.TYPE_ := 3;
  TDemoGameStartupRunnable.TYPE_ := 4;
  {AB:END}

end.
