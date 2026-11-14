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
unit StartCanvas;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, Graphics, Item, Animation, SpecialAnimation, GameAdStateFactory, BaseGameStatistics, FullScreenUtil, RunnableCanvas, Features, BasicBuildGameInitializerFactory, GameInputStrings, GameKey, GameKeyEventFactory, InputToGameKeyMapping, AllBinaryGameLayerManager, HighScoresFactoryInterface, HighScoresHelper, HighScoresPaintable, GameState, GameStateFactory, BasicColorFactory, MyCommandsFactory, DisplayChangeEvent, DisplayChangeEventListener, ScrollSelectionForm, OpenGLFeatureFactory, InitUpdatePaintable, Paintable, PaintableInterface, StatePaintable, AbeClientInformationInterface, AllBinaryEventObject, TimeDelayHelper, ABHashtable, FormUtil, BasicMenuInputProcessor, GameRunnable, GameCanvasRunnableInterface, MenuListener, GameStateCompositeInterface, ItemStateListener, RunnableInterface, GameKeyEventSourceInterface, EventListenerInterface;

type
  {AB:TYPES}
  TStartCanvas = class(TRunnableCanvas, IGameCanvasRunnableInterface, IMenuListener, IDisplayChangeEventListener, IGameStateCompositeInterface, IItemStateListener, IPaintableInterface, IRunnable, IRunnableInterface, IGameKeyEventSourceInterface, IEventListenerInterface)
  public
    basicColorFactory: TBasicColorFactory;
    features: TFeatures;
    openGLFeatureFactory: TOpenGLFeatureFactory;
    myCommandsFactory: TMyCommandsFactory;
    gameAdStateFactory: TGameAdStateFactory;
    gameStateFactory: TGameStateFactory;
    gameInputStrings: TGameInputStrings;
    formUtil: TFormUtil;
    basicGameDemoPaintable: TStatePaintable;
    specialAnimationInterface: TSpecialAnimation;
    paintedSpecialAnimationInterface: TAnimation;
    fullScreenUtil: TFullScreenUtil;
    highScoresHelper: THighScoresHelper;
    realHighScoresPaintable: THighScoresPaintable;
    highScoresPaintable: TPaintable;
    state: Integer;
    timeDelayHelper: TTimeDelayHelper;
    highScoresFactoryInterface: IHighScoresFactoryInterface;
    menuInputProcessor: TBasicMenuInputProcessor;
    menuForm: TScrollSelectionForm;
    gameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory;
    initialized: Boolean;
    defaultPaintableInterface: TPaintable;
    paintableInterface: IPaintableInterface;
    overlayPaintable: TInitUpdatePaintable;
    tempWait: Integer;
    inputToGameKeyMapping: TInputToGameKeyMapping;
    gameRunnable: TGameRunnable;
    progressPaintable: IPaintableInterface;
    isSingleKeyRepeatableProcessing: Boolean;
    NONE: TGameKey;
    gameKeyEventFactory: TGameKeyEventFactory;
    SET_STATE: string;
    baseGameStatistics: TBaseGameStatistics;
    class var id: Integer;
    class var BOT_GAME_STATS: string;
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
        procedure createCanvas; virtual;
        procedure start; virtual;
        procedure preDemoProcess; virtual;
        procedure process; virtual;
        procedure startDemoGame;
        procedure processGame; virtual;
        procedure run; virtual;
        procedure setRunning(running: Boolean); virtual;
        procedure end_; virtual;
        procedure setGameState(gameState_: TGameState); virtual;
        function getGameState: TGameState; virtual;
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
        function getTitle: string; virtual;
        function isPaused: Boolean; virtual;
        function getType: Integer; virtual;
  end;

implementation
uses
  NoMenuInputProcessor, NullWaitGameRunnable, GameInputMappingCanvas, Command, J2MEUtil, IndexedAnimationBehavior, CustomGameMenuUtil, GameStatisticsFactory, GameAdState, GameCommandsFactory, ChangedGameFeatureListener, GameFeatureFactory, InputFeatureFactory, MainFeatureFactory, GameInitializationUtil, GameKeyFactory, PlatformInputMappingFactory, DownGameKeyEventHandler, GameKeyEvent, GameKeyEventHandler, UpGameKeyEventHandler, SWTUtil, DemoGameMidlet, HighScoreCommands, HighScores, NullHighScoresSingletonFactory, Rectangle, ResizableListenerHandler, ProgressCanvas, ProgressCanvasFactory, DisplayChangeEventHandler, FormType, FormTypeFactory, CurrentDisplayableFactory, OpenGLFeatureUtil, OpenGLThreadUtil, NullPaintable, StatePaintableFactory, BasicMotionGesturesHandler, ForcedLogUtil, PreLogUtil, SmallIntegerSingletonFactory, StringMaker, OperatingSystemFactory, InApplicationPurchaseFactory, LockableFeature, LockableFeatureFactory, EventStrings, AllBinaryMediaManager, EarlySoundsFactory, CommonSeps, BasicArrayList, BasicArrayListD;


{AB:CODE}

procedure TStartCanvas.InitFields;
begin
  Self.basicColorFactory := TBasicColorFactory.getInstance();
  Self.features := TFeatures.getInstance();
  Self.openGLFeatureFactory := TOpenGLFeatureFactory.getInstance();
  Self.myCommandsFactory := TMyCommandsFactory.getInstance();
  Self.gameAdStateFactory := TGameAdStateFactory.getInstance();
  Self.gameStateFactory := TGameStateFactory.getInstance();
  Self.gameInputStrings := TGameInputStrings.getInstance();
  Self.formUtil := TFormUtil.getInstance();
  Self.basicGameDemoPaintable := TStatePaintableFactory.getInstance();
  Self.specialAnimationInterface := TSpecialAnimation.getInstance();
  Self.paintedSpecialAnimationInterface := TSpecialAnimation.getInstance();
  Self.fullScreenUtil := TFullScreenUtil.getInstance();
  Self.highScoresHelper := THighScoresHelper.Create();
  Self.realHighScoresPaintable := THighScoresPaintable.Create();
  Self.highScoresPaintable := TNullPaintable.getInstance();
  Self.state := 0;
  Self.timeDelayHelper := TTimeDelayHelper.Create(6000);
  
  Self.menuInputProcessor := TNoMenuInputProcessor.getInstance();
  Self.menuForm := TScrollSelectionForm.getNullScrollSelectionForm();
  
  
  Self.defaultPaintableInterface := TNullPaintable.getInstance();
  Self.paintableInterface := TNullPaintable.getInstance();
  
  Self.tempWait := TNullWaitGameRunnable.getInstance().WAIT;
  Self.inputToGameKeyMapping := TPlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping();
  Self.gameRunnable := TNullWaitGameRunnable.getInstance();
  Self.progressPaintable := TProgressCanvasFactory.getLazyInstance();
  Self.isSingleKeyRepeatableProcessing := Self.features.isFeature(TInputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS);
  Self.NONE := TGameKeyFactory.getInstance().NONE;
  Self.gameKeyEventFactory := TGameKeyEventFactory.getInstance();
  Self.SET_STATE := 'setState';
  Self.baseGameStatistics := TGameStatisticsFactory.getInstance();
end;

function TStartCanvas.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStartCanvas.Create(abeClientInformation: IAbeClientInformationInterface; commandListener_: ICommandListener; highScoresFactoryInterface_: IHighScoresFactoryInterface; paintable_: TPaintable; overlayPaintable: TInitUpdatePaintable; gameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory; isContinue: Boolean);
begin
        inherited Create(commandListener_, TCurrentDisplayableFactory.getInstance().DEFAULT_CHILD_NAME_LIST, True);
        InitFields;
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
        TDisplayChangeEventHandler.getInstance().addListenerInterface(Self);
end;
    

procedure TStartCanvas.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, Self);
end;
    

procedure TStartCanvas.onDisplayChangeEvent(displayChangeEvent_: TDisplayChangeEvent);
var
  scrollSelectionForm_: TScrollSelectionForm;
  formType_: TFormType;
  rectangle_: TRectangle;
begin
        try
            scrollSelectionForm_ := Self.getMenuForm();
            if (scrollSelectionForm_) <> (nil) then begin
                formType_ := TFormTypeFactory.getInstance().getFormType();
                rectangle_ := Self.formUtil.createFormRectangle();
                scrollSelectionForm_.init(rectangle_, formType_);
            end;
            Self.overlayPaintable.init();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
            end;
        end;
end;
    

function TStartCanvas.getCustomCommands: TArray<TObject>;
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
            commandArray := [gameCommandsFactory_.START_COMMAND, THighScoreCommands.getInstance().DISPLAY, TGameInputMappingCanvas.DISPLAY, gameCommandsFactory_.DISPLAY_ABOUT];
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
    

procedure TStartCanvas.initCommands(cmdListener: ICommandListener);
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
procedure TStartCanvas.initPostPaint;
begin
end;
    

// throws Exception
procedure TStartCanvas.mediaInit;
begin
        TAllBinaryMediaManager.init(TEarlySoundsFactory.getInstance());
end;
    

procedure TStartCanvas.itemStateChanged(item_: TItem);
begin
        TForcedLogUtil.log(Self.commonStrings.NOT_IMPLEMENTED, Self);
end;
    

// throws Exception
procedure TStartCanvas.initMenu;
begin
        Self.close();
        Self.open();
end;
    

procedure TStartCanvas.open;
begin
        TBasicMotionGesturesHandler.getInstance().addListenerInterface(Self.getMenuInputProcessor());
        TGameKeyEventHandler.getInstance().addListener(Self.getMenuInputProcessor());
end;
    

procedure TStartCanvas.close;
begin
        TBasicMotionGesturesHandler.getInstance().removeListener(Self.getMenuInputProcessor());
        TGameKeyEventHandler.getInstance().removeListener(Self.getMenuInputProcessor());
end;
    

function TStartCanvas.getSourceId: Integer;
begin
        Exit(TStartCanvas.id);
end;
    

procedure TStartCanvas.keyPressed(keyCode: Integer);
begin
        Self.keyPressedByDevice(keyCode, 0);
end;
    

procedure TStartCanvas.keyReleased(keyCode: Integer);
begin
        Self.keyReleasedByDevice(keyCode, 0);
end;
    

procedure TStartCanvas.keyRepeated(keyCode: Integer);
begin
        Self.keyRepeatedByDevice(keyCode, 0);
end;
    

procedure TStartCanvas.keyPressedByDevice(keyCode: Integer; deviceId: Integer);
begin
        Self.addGameKeyEvent(keyCode, False);
end;
    

procedure TStartCanvas.keyReleasedByDevice(keyCode: Integer; deviceId: Integer);
begin
        Self.removeGameKeyEvent(keyCode, False);
end;
    

procedure TStartCanvas.keyRepeatedByDevice(keyCode: Integer; deviceId: Integer);
begin
        if Self.isSingleKeyRepeatableProcessing then begin
            Self.addGameKeyEvent(keyCode, True);
        end;
end;
    

procedure TStartCanvas.addGameKeyEvent(keyCode: Integer; repeated: Boolean);
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
                Self.logUtil.putF(TStringMaker.Create().append(Self.gameInputStrings.NO_KEY).appendint(keyCode).toString(), Self, Self.gameInputStrings.ADD_KEY_EVENT);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Key Event Error', Self, Self.gameInputStrings.ADD_KEY_EVENT, e);
            end;
        end;
end;
    

procedure TStartCanvas.removeGameKeyEvent(keyCode: Integer; repeated: Boolean);
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
                Self.logUtil.putF(TStringMaker.Create().append(Self.gameInputStrings.NO_KEY).appendint(keyCode).toString(), Self, Self.gameInputStrings.REMOVE_KEY_EVENT);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Key Event Error', Self, Self.gameInputStrings.REMOVE_KEY_EVENT, e);
            end;
        end;
end;
    

procedure TStartCanvas.pause;
begin
    TJava.MonitorEnter(Self);
    try
        Self.close();
        Self.setPaused(True);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TStartCanvas.unPause;
begin
    TJava.MonitorEnter(Self);
    try
        Self.open();
        Self.setPaused(False);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TStartCanvas.isPausable: Boolean;
begin
        if (TCurrentDisplayableFactory.getInstance().getUsedRunnable()) = (TNullWaitGameRunnable.getInstance()) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TStartCanvas.isGameOver: Boolean;
begin
        Self.logUtil.putF(TStringMaker.Create().append(Self.commonStrings.NOT_IMPLEMENTED).append(' since not a game').toString(), Self, 'isGameOver');
        Exit(False);
end;
    

// throws Exception
procedure TStartCanvas.setLoadStateHashtable(hashtable: TABHashtable<TObject, TObject>);
begin
        Self.logUtil.putF('Trying to continue a demo lol - only continue a game canvas not the demo', Self, 'setLoadStateHashtable');
end;
    

// throws Exception
function TStartCanvas.getLoadStateHashtable: TABHashtable<TObject, TObject>;
begin
        Self.logUtil.putF('Trying to continue a demo lol - only continue a game canvas not the demo', Self, 'getLoadStateHashtable');
        Exit(Self.stdUtil.NULL_TABLE);
end;
    

// throws Exception
function TStartCanvas.getCurrentStateHashtable: TABHashtable<TObject, TObject>;
begin
        Self.logUtil.putF('Trying to save the AI lol', Self, 'getCurrentStateHashtable');
        Exit(Self.stdUtil.NULL_TABLE);
end;
    

procedure TStartCanvas.setHighScoreSubmitted(isNotUsed: Boolean);
begin
end;
    

procedure TStartCanvas.paint(graphics_: TGraphics);
begin
        Self.paintableInterface.paint(graphics_);
        Self.paintedSpecialAnimationInterface.paintXY(graphics_, 0, 0);
        Self.highScoresPaintable.paint(graphics_);
        Self.getBasicGameDemoPaintable().paint(graphics_);
        Self.overlayPaintable.paint(graphics_);
        Self.progressPaintable.paint(graphics_);
end;
    

procedure TStartCanvas.paintThreed(graphics_: TGraphics);
begin
        Self.paintableInterface.paintThreed(graphics_);
        Self.paintedSpecialAnimationInterface.paintThreedXYZ(graphics_, 0, 0, 0);
end;
    

procedure TStartCanvas.processGameOver;
begin
    TJava.MonitorEnter(Self);
    try
        Self.logUtil.putF('Not Implemented since not a game', Self, 'setGameOver');
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TStartCanvas.demoStateChange;
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
    

procedure TStartCanvas.updateDemoState;
var
  gameAdState_: TGameAdState;
begin
        TPreLogUtil.put(TSmallIntegerSingletonFactory.getInstance().createInstance(Self.state).toString(), Self, Self.SET_STATE);
        Self.getBasicGameDemoPaintable().setState(Self.state);
        if (Self.state) = (0) then begin
            Self.highScoresPaintable := TNullPaintable.getInstance();
            Self.paintedSpecialAnimationInterface := Self.getSpecialAnimationInterface();
            Self.getSpecialAnimationInterface().reset();
        end else if (Self.state) = (1) then begin
            Self.paintedSpecialAnimationInterface := TSpecialAnimation.getInstance();
        end else if (Self.state) = (2) then begin
            Self.highScoresPaintable := Self.getRealHighScoresPaintable();
        end;
        gameAdState_ := Self.gameAdStateFactory.getCurrentInstance();
        gameAdState_.processPageAdState();
end;
    

// throws Exception
function TStartCanvas.getNextRandom: Integer;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
function TStartCanvas.createGameLayerManager(randomValue: Integer): TAllBinaryGameLayerManager;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
function TStartCanvas.createRunnable(randomLevel: Integer): IGameCanvasRunnableInterface;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
procedure TStartCanvas.createCanvas;
var
  randomLevel: Integer;
begin
        Self.highScoresPaintable := TNullPaintable.getInstance();
        randomLevel := Self.getNextRandom();
end;
    

// throws Exception
procedure TStartCanvas.start;
begin
end;
    

procedure TStartCanvas.preDemoProcess;
begin
        Self.overlayPaintable.update();
end;
    

// throws Exception
procedure TStartCanvas.process;
var
  indexedAnimationBehavior_: TIndexedAnimationBehavior;
  demoGameMidlet_: TDemoGameMidlet;
begin
        Self.getMenuInputProcessor().processInputList();
        Self.preDemoProcess();
        if (Self.state) = (0) then begin
            indexedAnimationBehavior_ := TIndexedAnimationBehavior(TJava.ToObject(Self.getSpecialAnimationInterface().getAnimationBehavior()));
            if (indexedAnimationBehavior_.loopIndex) < (1) then begin
                Self.timeDelayHelper.setStartTimeTNT();
            end;
            demoGameMidlet_ := TDemoGameMidlet(TJava.ToObject(Self.getCustomCommandListener()));
        end;
end;
    

// throws Exception
procedure TStartCanvas.startDemoGame;
begin
end;
    

// throws Exception
procedure TStartCanvas.processGame;
begin
        Self.gameRunnable.run();
        Self.specialAnimationInterface.nextFrame();
        Self.process();
end;
    

procedure TStartCanvas.run;
var
  progressCanvas_: TProgressCanvas;
begin
        Self.logUtil.putF(Self.commonStrings.START_RUNNABLE, Self, Self.commonStrings.RUN);
        try
            progressCanvas_ := TProgressCanvasFactory.getInstance();
            progressCanvas_.addNormalPortion(50, 'Demo Thread');
            Self.setCurrentThread();
            Self.setRunning(True);
            if Self.features.isFeature(TMainFeatureFactory.getInstance().LOAD_ONDEMAND) then begin
                progressCanvas_.end_();
            end else begin
                progressCanvas_.addNormalPortion(50, 'Demo Thread Running');
            end;
            Self.fullScreenUtil.initOnRun(Self, Self.getCustomCommandListener());
            Self.initMenu();
            Self.initPostPaint();
            Self.updateDemoState();
            if Self.features.isDefault(Self.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) then begin
                TOpenGLThreadUtil.getInstance().onResume();
            end;
            if (Self.features.isDefault(Self.openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) or (TJ2MEUtil.isHTML()) then begin
            end else begin
                while Self.isRunning() do begin
                    Self.loopTimeHelper.setStartTimeTNT();
                    Self.processGame();
                    Self.processLoopSleep();
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
    

procedure TStartCanvas.setRunning(running: Boolean);
var
  currentDisplayableFactory_: TCurrentDisplayableFactory;
begin
        inherited setRunning(running);
        try
            if (((Self.features.isDefault(Self.openGLFeatureFactory.OPENGL)) or (TJ2MEUtil.isHTML()))) and (not (running)) then begin
                currentDisplayableFactory_ := TCurrentDisplayableFactory.getInstance();
                currentDisplayableFactory_.clearRunnable();
                Self.end_();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.SET_RUNNING, e);
            end;
        end;
end;
    

// throws Exception
procedure TStartCanvas.end_;
var
  progressCanvas_: TProgressCanvas;
begin
        progressCanvas_ := TProgressCanvasFactory.getInstance();
        Self.baseGameStatistics.add(TJava.BoxString(TStringMaker.Create().append(TStartCanvas.BOT_GAME_STATS).append(Self.baseGameStatistics.toString()).append(TCommonSeps.getInstance().NEW_LINE).toString()));
        Self.baseGameStatistics.init();
        if Self.features.isFeature(TMainFeatureFactory.getInstance().LOAD_ONDEMAND) then begin
            progressCanvas_.start();
        end;
        Self.logUtil.putF('Demo End', Self, Self.commonStrings.RUN);
        Self.close();
        TDisplayChangeEventHandler.getInstance().removeListener(Self);
end;
    

procedure TStartCanvas.setGameState(gameState_: TGameState);
begin
end;
    

function TStartCanvas.getGameState: TGameState;
begin
        Exit(Self.gameStateFactory.PLAYING_GAME_STATE);
end;
    

function TStartCanvas.getState: Integer;
begin
        Exit(Self.state);
end;
    

procedure TStartCanvas.setState(state: Integer);
begin
        Self.state := state;
end;
    

function TStartCanvas.isHighScoreSubmitted: Boolean;
begin
        Self.logUtil.putF('Wow the AI got a high score!', Self, 'isHighScoreSubmitted');
        Exit(False);
end;
    

function TStartCanvas.getRealHighScoresPaintable: THighScoresPaintable;
begin
        Exit(Self.realHighScoresPaintable);
end;
    

procedure TStartCanvas.setSpecialAnimationInterface(specialAnimationInterface: TSpecialAnimation);
begin
        specialAnimationInterface.setFrame(0);
        Self.specialAnimationInterface := specialAnimationInterface;
end;
    

function TStartCanvas.getSpecialAnimationInterface: TSpecialAnimation;
begin
        Exit(Self.specialAnimationInterface);
end;
    

procedure TStartCanvas.setPaintableInterface(paintableInterface_: IPaintableInterface);
begin
        Self.paintableInterface := paintableInterface_;
end;
    

function TStartCanvas.getPaintableInterface: IPaintableInterface;
begin
        Exit(Self.paintableInterface);
end;
    

procedure TStartCanvas.setDefaultPaintableInterface(defaultPaintableInterface: TPaintable);
begin
        Self.defaultPaintableInterface := defaultPaintableInterface;
end;
    

function TStartCanvas.getDefaultPaintableInterface: TPaintable;
begin
        Exit(Self.defaultPaintableInterface);
end;
    

function TStartCanvas.getHighScoresFactoryInterface: IHighScoresFactoryInterface;
begin
        Exit(Self.highScoresFactoryInterface);
end;
    

procedure TStartCanvas.setMenuInputProcessor(menuInputProcessor: TBasicMenuInputProcessor);
begin
        Self.menuInputProcessor := menuInputProcessor;
end;
    

function TStartCanvas.getMenuInputProcessor: TBasicMenuInputProcessor;
begin
        Exit(Self.menuInputProcessor);
end;
    

function TStartCanvas.getMenuForm: TScrollSelectionForm;
begin
        Exit(Self.menuForm);
end;
    

procedure TStartCanvas.setMenuForm(menuForm: TScrollSelectionForm);
begin
        Self.menuForm := menuForm;
end;
    

function TStartCanvas.isInitialized: Boolean;
begin
        Exit(Self.initialized);
end;
    

function TStartCanvas.getOverlayPaintable: TPaintable;
begin
        Exit(Self.overlayPaintable);
end;
    

procedure TStartCanvas.setBasicGameDemoPaintable(basicGameDemoPaintable: TStatePaintable);
begin
        Self.basicGameDemoPaintable := basicGameDemoPaintable;
end;
    

function TStartCanvas.getBasicGameDemoPaintable: TStatePaintable;
begin
        Exit(Self.basicGameDemoPaintable);
end;
    

procedure TStartCanvas.setTempWait(tempWait: Integer);
begin
        Self.tempWait := tempWait;
end;
    

function TStartCanvas.getTempWait: Integer;
begin
        Exit(Self.tempWait);
end;
    

function TStartCanvas.isSingleThread: Boolean;
begin
        Exit((TOpenGLFeatureUtil.getInstance().isAnyThreed()) or (TSWTUtil.isSWT));
end;
    

function TStartCanvas.isRunningInAnotherThread: Boolean;
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
    

function TStartCanvas.getGameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory;
begin
        Exit(Self.gameInitializationInterfaceFactoryInterface);
end;
    

function TStartCanvas.getTitle: string;
begin
        Exit(inherited getTitle());
end;
    

function TStartCanvas.isPaused: Boolean;
begin
        Exit(inherited isPaused());
end;
    

function TStartCanvas.getType: Integer;
begin
        Exit(inherited getType());
end;

initialization
  {AB:INITIALIZATION}
  TStartCanvas.id := 0;
  TStartCanvas.BOT_GAME_STATS := 'Bot Game Statistics: ';
  {AB:END}

end.

