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
// package org.allbinary.game.midlet
unit GameMidlet;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, CommandListener, Displayable, TsUtil, GameAdStateFactory, FullScreenUtil, DebugInterface, GameStrings, LoadGameForm, Features, GameCanvasRunnableInterface, AllBinaryGameLayerManager, HelpPaintable, HighScoresCanvas, GameStateFactory, BasicColorFactory, MyCanvas, MyCommandsFactory, AboutCommandProcessor, CommandForm, WebCommandProcessor, ClientInformationFactory, AllBinaryEventObject, MidletStrings, ProgressMidlet, TimeDelayHelper, EnumerationUtil, ABHashtable, GameMidletStateFactory;

type
  {AB:TYPES}
  TGameMidlet = class(TProgressMidlet, ICommandListener)
  public
    enumerationUtil: TEnumerationUtil;
    basicColorFactory: TBasicColorFactory;
    features: TFeatures;
    midletStrings: TMidletStrings;
    myCommandsFactory: TMyCommandsFactory;
    gameStrings: TGameStrings;
    gameAdStateFactory: TGameAdStateFactory;
    gameStateFactory: TGameStateFactory;
    tsUtil: TTsUtil;
    DISPLAYABLE: string;
    COMMAND_NAME: string;
    NO_COMMAND: string;
    NO_DISPLAYABLE: string;
    COMMAND_ACTION: string;
    PAUSE_APP_BACKGROUND: string;
    UN_PAUSE_APP_BACKGROUND: string;
    aboutCommandProcessor: TAboutCommandProcessor;
    webCommandProcessor: TWebCommandProcessor;
    gameMidletStateFactory: TGameMidletStateFactory;
    gameStartTimeHelper: TTimeDelayHelper;
    fullScreenUtil: TFullScreenUtil;
    debugInterface: IDebugInterface;
    allbinaryGameCanvasRunnableInterface: IGameCanvasRunnableInterface;
    thread: TThread;
    loadGameForm: TCommandForm;
    isFullScreen: Boolean;
    resized: Boolean;
    startedBefore: Boolean;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(clientInformationFactory_: TClientInformationFactory);
        procedure init; virtual;
        procedure setDemo; virtual;
        procedure createGame; virtual;
        procedure mediaShutdown; virtual;
        procedure stopAll; virtual;
        procedure pauseApp; virtual;
        procedure pauseAppBackground(background: Boolean); virtual;
        procedure unPauseApp; virtual;
        procedure unPauseAppBackground(background: Boolean); virtual;
        procedure destroyAppInRunnable(unconditional: Boolean; isProgress: Boolean); virtual;
        procedure destroyApp(unconditional: Boolean); virtual;
        procedure startApp; virtual;
        procedure commandAction(command_: TCommand; displayable_: TDisplayable); virtual;
        procedure updateFullScreen;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        function getInputMappingInstructionsCanvas: TMyCanvas; virtual;
        function getInputMappingCanvas: TMyCanvas; virtual;
        function getAboutCanvas: TMyCanvas; virtual;
        function getHelpPaintable: THelpPaintable; virtual;
        function createHighScoresCanvas: THighScoresCanvas; virtual;
        procedure startGameCanvasRunnableInterface; virtual;
        procedure stopGameCanvasRunnableInterface; virtual;
        function getGameCanvasRunnableInterface: IGameCanvasRunnableInterface; virtual;
        procedure setGameCanvasRunnableInterface(gameCanvasRunnableInterface_: IGameCanvasRunnableInterface); virtual;
        function createGameLayerManager: TAllBinaryGameLayerManager; virtual;
        function getGameOptionsForm: TCommandForm; virtual;
        procedure save; virtual;
        function getCurrentStateHashtable: TABHashtable<TObject, TObject>; virtual;
        procedure setLoadGameForm(loadGameForm_: TLoadGameForm); virtual;
        function getLoadGameForm: TCommandForm; virtual;
        procedure setResized(resized: Boolean); virtual;
        function isResized: Boolean; virtual;
        function isDemoLoading: Boolean; virtual;
  end;

implementation
uses
  GameMidletEventHandler, DemoGameMidletEvent, DemoGameMidletStateFactory, Canvas, NullCanvas, MIDletStateChangeException, J2MEUtil, GameStatisticsFactory, DebugFactory, GameAdState, GameInfo, GameMode, GameTypeFactory, PlayerTypesFactory, GameCommandsFactory, GameOptionsForm, GameOptionsFormFactory, InGameFeatures, InGameOptionsForm, InGameOptionsFormFactory, ChangedGameFeatureListener, GameFeatureEventHandler, GameFeatureFormUtil, MainFeatureFactory, GamePersistanceSingleton, KeyValuePersistance, AllBinaryGameCanvas, BasicPaintablesCanvas, DemoCanvas, GameEventHandlerUtil, GameInputMappingCanvas, GameInputMappingInstructionsCanvas, MenuListener, NullGameCanvasRunnable, TextNotificationUtil, GameNotificationEventHandler, HighScoreCommands, HighScoreCommandsFactory, HighScoreTextBox, HighScoreUtil, ResizableListenerHandler, ProgressCanvas, ProgressCanvasFactory, ColorChangeEventHandler, CanvasStrings, AboutPaintableFactory, AllBinarySensorManager, VirtualKeyboardEventHandler, BasicMotionGesturesHandler, ForcedLogUtil, PreLogUtil, SmallIntegerSingletonFactory, StringMaker, InApplicationPurchaseFactory, LockableFeature, LockableFeatureFactory, EventStrings, AllBinaryMediaManager, NullThread, ThreadFactoryUtil, ThreadUtil, BasicArrayList, StdUtil, ItemStateListener;


{AB:CODE}

procedure TGameMidlet.InitFields;
begin
  Self.enumerationUtil := TEnumerationUtil.getInstance();
  Self.basicColorFactory := TBasicColorFactory.getInstance();
  Self.features := TFeatures.getInstance();
  Self.midletStrings := TMidletStrings.getInstance();
  Self.myCommandsFactory := TMyCommandsFactory.getInstance();
  Self.gameStrings := TGameStrings.getInstance();
  Self.gameAdStateFactory := TGameAdStateFactory.getInstance();
  Self.gameStateFactory := TGameStateFactory.getInstance();
  Self.tsUtil := TTsUtil.getInstance();
  Self.DISPLAYABLE := ' Displayable: ';
  Self.COMMAND_NAME := 'command Name/Label: ';
  Self.NO_COMMAND := 'No Command';
  Self.NO_DISPLAYABLE := 'No Displayable';
  Self.COMMAND_ACTION := TStringMaker.Create().append('GameMidlet::').append(Self.midletStrings.COMMAND_ACTION).toString();
  Self.PAUSE_APP_BACKGROUND := 'pauseAppBackground';
  Self.UN_PAUSE_APP_BACKGROUND := 'unPauseAppBackground';
  Self.aboutCommandProcessor := TAboutCommandProcessor.getInstance();
  Self.webCommandProcessor := TWebCommandProcessor.getInstance();
  Self.gameMidletStateFactory := TGameMidletStateFactory.getInstance();
  Self.gameStartTimeHelper := TTimeDelayHelper.Create(240);
  Self.fullScreenUtil := TFullScreenUtil.getInstance();
  
  Self.allbinaryGameCanvasRunnableInterface := TNullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE;
  Self.thread := TNullThread.NULL_THREAD;
  
  
  
  Self.startedBefore := False;
end;

function TGameMidlet.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGameMidlet.Create(clientInformationFactory_: TClientInformationFactory);
var
  progressCanvas_: TProgressCanvas;
begin
        inherited Create(clientInformationFactory_);
        InitFields;
        TSmallIntegerSingletonFactory.getInstance().initWithRange($291, 6);
        Self.loadGameForm := TCommandForm.getNullCommandForm();
        progressCanvas_ := TProgressCanvasFactory.getInstance();
        progressCanvas_.init(Self);
        TGameFeatureEventHandler.getInstance().addListenerInterface(TChangedGameFeatureListener.getInstance());
        TGamePersistanceSingleton.getInstance().clear();
        Self.debugInterface := TDebugFactory.getInstance();
        Self.init();
end;
    

procedure TGameMidlet.init;
begin
end;
    

// throws Exception
procedure TGameMidlet.setDemo;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
procedure TGameMidlet.createGame;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
procedure TGameMidlet.mediaShutdown;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

procedure TGameMidlet.stopAll;
begin
end;
    

procedure TGameMidlet.pauseApp;
var
  gameAdState_: TGameAdState;
begin
        Self.pauseAppBackground(True);
        gameAdState_ := Self.gameAdStateFactory.getCurrentInstance();
        gameAdState_.getAdvertisements().stopAll();
end;
    

procedure TGameMidlet.pauseAppBackground(background: Boolean);
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.PAUSE_APP_BACKGROUND);
        if TJava.ToObject(Self.allbinaryGameCanvasRunnableInterface) <> TJava.ToObject(TNullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) then begin
            Self.allbinaryGameCanvasRunnableInterface.pause();
        end else begin
            Self.logUtil.putF('<<<<<< Null', TJava.Box(Self), Self.PAUSE_APP_BACKGROUND);
        end;
        TAllBinarySensorManager.getInstance().shutdown();
end;
    

procedure TGameMidlet.unPauseApp;
var
  gameAdState_: TGameAdState;
begin
        Self.unPauseAppBackground(True);
        gameAdState_ := Self.gameAdStateFactory.getCurrentInstance();
        gameAdState_.getAdvertisements().startAll();
end;
    

procedure TGameMidlet.unPauseAppBackground(background: Boolean);
var
  gameCanvasRunnableInterface_: IGameCanvasRunnableInterface;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.UN_PAUSE_APP_BACKGROUND);
        TAllBinarySensorManager.getInstance().init();
        gameCanvasRunnableInterface_ := Self.allbinaryGameCanvasRunnableInterface;
        if TJava.ToObject(gameCanvasRunnableInterface_) <> TJava.ToObject(TNullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) then begin
            gameCanvasRunnableInterface_.unPause();
        end else begin
            Self.logUtil.putF('<<<<<< Null', TJava.Box(Self), Self.UN_PAUSE_APP_BACKGROUND);
        end;
end;
    

procedure TGameMidlet.destroyAppInRunnable(unconditional: Boolean; isProgress: Boolean);
var
  progressCanvas_: TProgressCanvas;
begin
        progressCanvas_ := TProgressCanvasFactory.getInstance();
        if isProgress then begin
            progressCanvas_.start();
            Self.commandAction(Self.myCommandsFactory.SET_DISPLAYABLE, progressCanvas_);
        end;
        Self.destroyApp(unconditional);
        if isProgress then begin
            progressCanvas_.end_();
        end;
end;
    

procedure TGameMidlet.destroyApp(unconditional: Boolean);
var
  METHOD_NAME: string;
  gameAdState_: TGameAdState;
begin
        METHOD_NAME := 'GameMidlet::destroyApp';
        try
            TPreLogUtil.put(TGameStatisticsFactory.getInstance().toString(), TJava.Box(Self), METHOD_NAME);
            gameAdState_ := Self.gameAdStateFactory.getCurrentInstance();
            gameAdState_.getAdvertisements().stopAll();
            if not (Self.isDestroyed()) then begin
                Self.stopGameCanvasRunnableInterface();
                Self.setGameCanvasRunnableInterface(TNullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE);
                Self.mediaShutdown();
            end else begin
                Self.logUtil.putF('Midlet Managment Error: Midlet Should Only Be Destroyed Once', TJava.Box(Self), METHOD_NAME);
            end;
            inherited destroyApp(True);
            TPreLogUtil.put(Self.commonStrings.END_, TJava.Box(Self), METHOD_NAME);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), METHOD_NAME, TJava.Box(e));
            end;
        end;
        Self.logUtil.putF(Self.commonStrings.END_, TJava.Box(Self), METHOD_NAME);
end;
    

// throws MIDletStateChangeException
procedure TGameMidlet.startApp;
var
  gameAdState_: TGameAdState;
  START_APP: string;
  gameCanvasRunnableInterface_: TObject;
begin
        try
            gameAdState_ := Self.gameAdStateFactory.getCurrentInstance();
            gameAdState_.getAdvertisements().startAll();
            START_APP := 'startApp';
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), START_APP);
            gameCanvasRunnableInterface_ := TJava.Box(Self.allbinaryGameCanvasRunnableInterface);
            if TJava.ToObject(gameCanvasRunnableInterface_) = TJava.ToObject(TNullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) then begin
                Self.gameMidletStateFactory.setCurrentGameState(Self.gameStateFactory.NO_GAME_STATE);
                Self.setDemo();
            end else begin
                Self.logUtil.putF('GameCanvasRunnableInterface is available', TJava.Box(Self), START_APP);
                if TJava.ToObject(gameCanvasRunnableInterface_) = TJava.ToObject(Self.getCurrentDisplayable()) then begin
                    Self.unPauseAppBackground(False);
                end else begin
                    Self.logUtil.putF('GameCanvasRunnableInterface is not current displayable', TJava.Box(Self), START_APP);
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'startApp', TJava.Box(e));
            Self.destroyApp(False);
            Self.notifyDestroyed();
            end;
        end;
end;
    

procedure TGameMidlet.commandAction(command_: TCommand; displayable_: TDisplayable);
var
  displayableAsString: string;
  label_: string;
  gameCommandsFactory_: TGameCommandsFactory;
  allbinaryGameCanvasRunnableInterface: IGameCanvasRunnableInterface;
  gameCanvasRunnableInterface_: TObject;
  mainFeatureFactory_: TMainFeatureFactory;
  isFullScreen: Boolean;
  virtualKeyboardEventHandler_: TVirtualKeyboardEventHandler;
  highScoreTextBox_: THighScoreTextBox;
  keyValuePersistance_: TKeyValuePersistance;
  loadGameForm_: TLoadGameForm;
  index: Integer;
  menuListener_: IMenuListener;
  layerManager: TAllBinaryGameLayerManager;
  stringBuffer: TStringMaker;
  inGameOptionsForm_: TInGameOptionsForm;
  progressCanvas_: TProgressCanvas;
  inGameOptionsFormFactory_: TInGameOptionsFormFactory;
  inGameOptionsForm__2: TCommandForm;
  tempDisplayable: TDisplayable;
  gameInputMappingCanvas_: TGameInputMappingCanvas;
  highScoresCanvas_: THighScoresCanvas;
  gameCanvas: TAllBinaryGameCanvas;
  inApplicationPurchaseFactory_: TInApplicationPurchaseFactory;
  list: TBasicArrayList;
  lockableFeature_: TLockableFeature;
begin
    TJava.MonitorEnter(Self);
    try
        try
            displayableAsString := Self.NO_DISPLAYABLE;
            if (displayable_) <> (nil) then begin
                displayableAsString := displayable_.toString();
            end;
            label_ := Self.NO_COMMAND;
            if (command_) <> (nil) then begin
                label_ := command_.getLabel();
            end;
            TPreLogUtil.put(TStringMaker.Create().append(Self.COMMAND_NAME).append(label_).append(Self.DISPLAYABLE).append(displayableAsString).toString(), TJava.Box(Self), Self.COMMAND_ACTION);
            gameCommandsFactory_ := TGameCommandsFactory.getInstance();
            allbinaryGameCanvasRunnableInterface := Self.allbinaryGameCanvasRunnableInterface;
            gameCanvasRunnableInterface_ := TJava.Box(allbinaryGameCanvasRunnableInterface);
            if (command_) = (gameCommandsFactory_.SHOW_GAME_CANVAS) then begin
                if (TJava.ToObject(Self.getDisplay().getCurrent()) <> TJava.ToObject(gameCanvasRunnableInterface_)) and ((allbinaryGameCanvasRunnableInterface.getType()) <> (TNullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE.getType())) then begin
                    Self.setDisplay(TDisplayable(TJava.ToObject(gameCanvasRunnableInterface_)));
                end;
                Self.unPauseAppBackground(False);
            end else if (command_) = (gameCommandsFactory_.CLOSE_AND_SHOW_GAME_CANVAS) then begin
                menuListener_ := (TJava.ToObject(displayable_) as IMenuListener);
                menuListener_.close();
                Self.setDisplay(TDisplayable(TJava.ToObject(gameCanvasRunnableInterface_)));
                Self.unPauseAppBackground(False);
            end else if (command_) = (gameCommandsFactory_.EXIT_COMMAND) then begin
                if (TGameMidletEventHandler.getInstance().getEventListenerInterfaceListP().size()) = (0) then begin
                    Self.exitProgress(True);
                end;
                TGameMidletEventHandler.getInstance().fireEvent(TDemoGameMidletEvent.Create(TJava.Box(Self), TDemoGameMidletStateFactory.getInstance().NONE));
            end else if (command_) = (gameCommandsFactory_.EXIT_WITHOUT_PROGRESS_COMMAND) then begin
                Self.exitProgress(False);
            end else if (((command_) = (gameCommandsFactory_.START_COMMAND)) or ((command_) = (gameCommandsFactory_.RESTART_COMMAND))) or ((command_) = (gameCommandsFactory_.CONTINUE_COMMAND)) then begin
                if ((Self.gameMidletStateFactory.getCurrentGameState()) <> (Self.gameStateFactory.PLAYING_GAME_STATE)) or ((command_) = (gameCommandsFactory_.RESTART_COMMAND)) then begin
                    if Self.gameStartTimeHelper.isTimeTNT() then begin
                        if ((command_) = (gameCommandsFactory_.START_COMMAND)) and (Self.isDemoLoading()) then begin
                            Self.logUtil.putF('Trying to Start Game Before Loading Complete', TJava.Box(Self), Self.midletStrings.COMMAND_ACTION);
                        end else begin
                            Self.startedBefore := True;
                            Self.createGame();
                            Self.gameMidletStateFactory.setCurrentGameState(Self.gameStateFactory.PLAYING_GAME_STATE);
                        end;
                    end else begin
                        Self.logUtil.putF('Starting Game Too Often', TJava.Box(Self), Self.midletStrings.COMMAND_ACTION);
                    end;
                end else begin
                    Self.logUtil.putF('Already in playing state', TJava.Box(Self), Self.COMMAND_ACTION);
                end;
            end else if (command_) = (gameCommandsFactory_.BUY_COMMAND) then begin
                inApplicationPurchaseFactory_ := TInApplicationPurchaseFactory.getInstance();
                list := TLockableFeatureFactory.getInstance().getList();
                lockableFeature_ := TLockableFeature(TJava.ToObject(list.get(0)));
                if ((list.size()) > (0)) and (not (inApplicationPurchaseFactory_.isPurchased(lockableFeature_))) then begin
                    inApplicationPurchaseFactory_.purchase(lockableFeature_);
                end else begin
                    TTextNotificationUtil.getInstance().fireSuccess('Already Purchased');
                end;
            end else if (command_) = (gameCommandsFactory_.QUIT_COMMAND) then begin
                if Self.gameStartTimeHelper.isTimeTNT() then begin
                    if (TJava.ToObject(displayable_) is THighScoreTextBox) then begin
                        menuListener_ := (TJava.ToObject(displayable_) as IMenuListener);
                        menuListener_.close();
                    end;
                    Self.stopGameCanvasRunnableInterface();
                    Self.gameMidletStateFactory.setCurrentGameState(Self.gameStateFactory.NO_GAME_STATE);
                    Self.setDemo();
                end;
            end else if (command_) = (Self.myCommandsFactory.RESUME_COMMAND) then begin
                Self.unPauseAppBackground(False);
            end else if (command_) = (Self.myCommandsFactory.PAUSE_COMMAND) then begin
                Self.pauseAppBackground(False);
            end else if (command_) = (Self.myCommandsFactory.SET_DISPLAYABLE) then begin
                Self.pauseAppBackground(False);
                Self.setDisplay(displayable_);
            end else if (command_) = (gameCommandsFactory_.SET_MENU_DISPLAYABLE) then begin
                Self.pauseAppBackground(False);
                menuListener_ := (TJava.ToObject(displayable_) as IMenuListener);
                menuListener_.open();
                Self.setDisplay(displayable_);
            end else if (command_) = (gameCommandsFactory_.START_TRACE) then begin
                Self.debugInterface.start();
                gameCanvas := TAllBinaryGameCanvas(TJava.ToObject(allbinaryGameCanvasRunnableInterface));
                gameCanvas.addCommand(gameCommandsFactory_.STOP_TRACE);
                gameCanvas.removeCommand(gameCommandsFactory_.START_TRACE);
            end else if (command_) = (gameCommandsFactory_.STOP_TRACE) then begin
                Self.pauseAppBackground(False);
                Self.debugInterface.stop();
                Self.unPauseAppBackground(False);
                gameCanvas := TAllBinaryGameCanvas(TJava.ToObject(allbinaryGameCanvasRunnableInterface));
                gameCanvas.addCommand(gameCommandsFactory_.START_TRACE);
                gameCanvas.removeCommand(gameCommandsFactory_.STOP_TRACE);
            end else if (command_) = (gameCommandsFactory_.DEFAULT_OPTIONS) then begin
                tempDisplayable := displayable_;
                if (TJava.ToObject(tempDisplayable) is TGameOptionsForm) then begin
                    TGameFeatureFormUtil.getInstance().setDefault(TCommandForm(TJava.ToObject(tempDisplayable)));
                end;
            end else if (command_) = (TGameInputMappingInstructionsCanvas.DISPLAY) then begin
                tempDisplayable := displayable_;
                if (TJava.ToObject(tempDisplayable) is TGameInputMappingCanvas) then begin
                    gameInputMappingCanvas_ := TGameInputMappingCanvas(TJava.ToObject(tempDisplayable));
                    gameInputMappingCanvas_.update();
                end;
                Self.commandAction(gameCommandsFactory_.SET_MENU_DISPLAYABLE, Self.getInputMappingInstructionsCanvas());
            end else if THighScoreCommandsFactory.getInstance().isHighScoreCommand(command_) then begin
                tempDisplayable := displayable_;
                if (TJava.ToObject(tempDisplayable) is THighScoresCanvas) then begin
                    highScoresCanvas_ := THighScoresCanvas(TJava.ToObject(tempDisplayable));
                    highScoresCanvas_.updateCommand(command_);
                end;
            end else if (command_) = (THighScoreCommands.getInstance().DISPLAY) then begin
                Self.commandAction(gameCommandsFactory_.SET_MENU_DISPLAYABLE, Self.createHighScoresCanvas());
            end else if (command_) = (TGameInputMappingInstructionsCanvas.CLOSE) then begin
                menuListener_ := (TJava.ToObject(displayable_) as IMenuListener);
                menuListener_.close();
                Self.commandAction(TGameInputMappingCanvas.DISPLAY, TNullCanvas.NULL_CANVAS);
            end else if (command_) = (TGameInputMappingCanvas.DISPLAY) then begin
                if TJ2MEUtil.isHTML() then begin
                    Self.pauseAppBackground(False);
                end;
                Self.commandAction(gameCommandsFactory_.SET_MENU_DISPLAYABLE, Self.getInputMappingCanvas());
            end else if (command_) = (TGameInputMappingCanvas.DEFAULT) then begin
                tempDisplayable := displayable_;
                if (TJava.ToObject(tempDisplayable) is TGameInputMappingCanvas) then begin
                    gameInputMappingCanvas_ := TGameInputMappingCanvas(TJava.ToObject(tempDisplayable));
                    gameInputMappingCanvas_.setDefault();
                end;
            end else if (command_) = (TInGameOptionsForm.DISPLAY) then begin
                Self.pauseAppBackground(False);
                progressCanvas_ := TProgressCanvasFactory.getInstance();
                progressCanvas_.addNormalPortion(50, 'In Game Options');
                layerManager := Self.createGameLayerManager();
                inGameOptionsFormFactory_ := TInGameOptionsFormFactory.getInstance();
                inGameOptionsFormFactory_.init(Self, TInGameFeatures.Create(), 'Options In Game', layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor());
                inGameOptionsForm__2 := inGameOptionsFormFactory_.get();
                inGameOptionsForm__2.setItemStateListener((TJava.ToObject(allbinaryGameCanvasRunnableInterface) as IItemStateListener));
                Self.commandAction(gameCommandsFactory_.SET_MENU_DISPLAYABLE, inGameOptionsForm__2);
            end else if (command_) = (TInGameOptionsForm.DEFAULT) then begin
                inGameOptionsForm_ := TInGameOptionsForm(TJava.ToObject(TInGameOptionsFormFactory.getInstance().get()));
                TGameFeatureFormUtil.getInstance().setDefault(inGameOptionsForm_);
            end else if (command_) = (gameCommandsFactory_.DISPLAY_OPTIONS) then begin
                TAllBinaryMediaManager.setMuted(True);
                Self.stopAll();
                mainFeatureFactory_ := TMainFeatureFactory.getInstance();
                Self.isFullScreen := Self.features.isFeature(mainFeatureFactory_.FULL_SCREEN);
                TResizableListenerHandler.getInstance().fireEvent(True);
                Self.setResized(False);
                Self.commandAction(gameCommandsFactory_.SET_MENU_DISPLAYABLE, Self.getGameOptionsForm());
            end else if (command_) = (gameCommandsFactory_.CLOSE_OPTIONS) then begin
                TResizableListenerHandler.getInstance().fireEvent(False);
                Self.commandAction(gameCommandsFactory_.CLOSE_AND_SHOW_GAME_CANVAS, displayable_);
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Close isFullScreen/change: ');
                stringBuffer.appendboolean(Self.isFullScreen);
                stringBuffer.appendboolean(Self.fullScreenUtil.isScreenChange(Self.isFullScreen));
                stringBuffer.append(' isResized: ');
                stringBuffer.appendboolean(Self.isResized());
                TPreLogUtil.put(stringBuffer.toString(), TJava.Box(Self), Self.COMMAND_ACTION);
                if (Self.isResized()) or (Self.fullScreenUtil.isScreenChange(Self.isFullScreen)) then begin
                    Self.updateFullScreen();
                end;
                TAllBinaryMediaManager.setMuted(False);
            end else if (command_) = (gameCommandsFactory_.DISPLAY_LOAD_FORM) then begin
                Self.pauseAppBackground(False);
                keyValuePersistance_ := TGamePersistanceSingleton.getInstance();
                keyValuePersistance_.clear();
                keyValuePersistance_.loadAll(Self.abeClientInformation);
                if (Self.getLoadGameForm()) = (TCommandForm.getNullCommandForm()) then begin
                    layerManager := Self.createGameLayerManager();
                    Self.setLoadGameForm(TLoadGameForm.Create(Self, 'Load Game', layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor()));
                end else begin
                    Self.getLoadGameForm().update();
                end;
                Self.commandAction(gameCommandsFactory_.SET_MENU_DISPLAYABLE, Self.getLoadGameForm());
            end else if (command_) = (gameCommandsFactory_.LOAD_FILE) then begin
                loadGameForm_ := TLoadGameForm(TJava.ToObject(Self.getLoadGameForm()));
                index := loadGameForm_.getSelectedId();
                if (index) <> (-1) then begin
                    keyValuePersistance_ := TGamePersistanceSingleton.getInstance();
                    Self.setStartStateHashtable(keyValuePersistance_.get(index));
                    menuListener_ := Self.getLoadGameForm();
                    menuListener_.close();
                    TPreLogUtil.put(TBasicMotionGesturesHandler.getInstance().toString(), TJava.Box(Self), Self.COMMAND_ACTION);
                    Self.commandAction(gameCommandsFactory_.START_COMMAND, TNullCanvas.NULL_CANVAS);
                    TPreLogUtil.put(TBasicMotionGesturesHandler.getInstance().toString(), TJava.Box(Self), Self.COMMAND_ACTION);
                end;
            end else if (command_) = (gameCommandsFactory_.DELETE_FILE) then begin
                loadGameForm_ := TLoadGameForm(TJava.ToObject(Self.getLoadGameForm()));
                index := loadGameForm_.getSelectedText();
                if (index) <> (-1) then begin
                    keyValuePersistance_ := TGamePersistanceSingleton.getInstance();
                    keyValuePersistance_.delete_(Self.abeClientInformation, index);
                    keyValuePersistance_.clear();
                    keyValuePersistance_.loadAllSize(Self.abeClientInformation, 1);
                    Self.getLoadGameForm().update();
                end;
            end else if (command_) = (gameCommandsFactory_.SAVE) then begin
                keyValuePersistance_ := TGamePersistanceSingleton.getInstance();
                Self.pauseAppBackground(False);
                keyValuePersistance_.save(Self.abeClientInformation, Self.getCurrentStateHashtable());
                Self.unPauseAppBackground(False);
            end else if (command_) = (THighScoreUtil.SUBMIT_TEXTBOX_COMMAND) then begin
                Self.logUtil.putF('Submitted Score', TJava.Box(Self), Self.COMMAND_ACTION);
                if (TJava.ToObject(displayable_) is THighScoreTextBox) then begin
                    highScoreTextBox_ := THighScoreTextBox(TJava.ToObject(displayable_));
                    highScoreTextBox_.submitted := True;
                end;
                allbinaryGameCanvasRunnableInterface.setHighScoreSubmitted(True);
                Self.commandAction(gameCommandsFactory_.CLOSE_AND_SHOW_GAME_CANVAS, displayable_);
            end else if (command_) = (gameCommandsFactory_.DISPLAY_ABOUT) then begin
                Self.aboutCommandProcessor.process(Self, gameCommandsFactory_.SET_MENU_DISPLAYABLE, Self.getAboutCanvas());
            end else if (command_) = (gameCommandsFactory_.OPEN_WEB_URL) then begin
                Self.webCommandProcessor.process(Self, gameCommandsFactory_.OPEN_WEB_URL, TNullCanvas.NULL_CANVAS);
            end else if (command_) = (gameCommandsFactory_.TOGGLE_KEYBOARD) then begin
                virtualKeyboardEventHandler_ := TVirtualKeyboardEventHandler.getInstance();
                virtualKeyboardEventHandler_.fireEvent(virtualKeyboardEventHandler_.SHOW_EVENT);
            end else if (Self.tsUtil.compareTo(command_.getLabel(), gameCommandsFactory_.TOGGLE_FULLSCREEN.getLabel())) = (0) then begin
                mainFeatureFactory_ := TMainFeatureFactory.getInstance();
                isFullScreen := Self.features.isFeature(mainFeatureFactory_.FULL_SCREEN);
                if isFullScreen then begin
                    Self.features.removeDefault(mainFeatureFactory_.FULL_SCREEN);
                end else begin
                    Self.features.addDefault(mainFeatureFactory_.FULL_SCREEN);
                end;
                Self.updateFullScreen();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(TStringMaker.Create().append(Self.commonStrings.EXCEPTION_LABEL).append(command_.getLabel()).toString(), TJava.Box(Self), Self.midletStrings.COMMAND_ACTION, TJava.Box(e));
            if (command_) <> (TGameCommandsFactory.getInstance().EXIT_COMMAND) then begin
                Self.exitProgress(False);
            end;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TGameMidlet.updateFullScreen;
var
  mainFeatureFactory_: TMainFeatureFactory;
  isFullScreen: Boolean;
  displayable_: TDisplayable;
  canvas_: TCanvas;
begin
        mainFeatureFactory_ := TMainFeatureFactory.getInstance();
        isFullScreen := Self.features.isFeature(mainFeatureFactory_.FULL_SCREEN);
        displayable_ := Self.getDisplay().getCurrent();
        if (TJava.ToObject(displayable_) is TCanvas) then begin
            canvas_ := TCanvas(TJava.ToObject(displayable_));
            canvas_.setFullScreenMode(isFullScreen);
        end;
end;
    

procedure TGameMidlet.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

// throws Exception
function TGameMidlet.getInputMappingInstructionsCanvas: TMyCanvas;
begin
        Exit(TGameInputMappingInstructionsCanvas.Create(Self, Self.createGameLayerManager()));
end;
    

// throws Exception
function TGameMidlet.getInputMappingCanvas: TMyCanvas;
begin
        Exit(TGameInputMappingCanvas.Create(Self.abeClientInformation, Self, Self.createGameLayerManager(), Self.getHelpPaintable()));
end;
    

// throws Exception
function TGameMidlet.getAboutCanvas: TMyCanvas;
begin
        Exit(TBasicPaintablesCanvas.Create(Self, TCanvasStrings.getInstance().ABOUT, Self.createGameLayerManager(), TAboutPaintableFactory.getInstance().paintableArray));
end;
    

// throws Exception
function TGameMidlet.getHelpPaintable: THelpPaintable;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
function TGameMidlet.createHighScoresCanvas: THighScoresCanvas;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
procedure TGameMidlet.startGameCanvasRunnableInterface;
var
  threadFactoryUtil_: TThreadFactoryUtil;
begin
        threadFactoryUtil_ := TThreadFactoryUtil.getInstance();
        Self.thread := threadFactoryUtil_.getInstanceGameCanvasRunnable(Self.allbinaryGameCanvasRunnableInterface);
        Self.logUtil.putF(TStringMaker.Create().append('Thread Priority: ').appendint(Integer(Trunc(5))).toString(), TJava.Box(Self), 'startGameCanvasRunnableInterface');
        Self.allbinaryGameCanvasRunnableInterface.setThread(Self.thread);
        threadFactoryUtil_.start(Self.thread);
end;
    

// throws Exception
procedure TGameMidlet.stopGameCanvasRunnableInterface;
var
  gameCanvasRunnableInterface_: IGameCanvasRunnableInterface;
  progressCanvas_: TProgressCanvas;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
        TGameNotificationEventHandler.getInstance().removeAllListeners();
        TColorChangeEventHandler.getInstance().removeAllListeners();
        TGameEventHandlerUtil.removeAllListeners();
        gameCanvasRunnableInterface_ := Self.allbinaryGameCanvasRunnableInterface;
        if TJava.ToObject(gameCanvasRunnableInterface_) <> TJava.ToObject(TNullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) then begin
            Self.logUtil.putF(TStringMaker.Create().append('Set Running False: ').append(TJava.ToString(TJava.ToObject(gameCanvasRunnableInterface_))).toString(), TJava.Box(Self), Self.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
            gameCanvasRunnableInterface_.setRunning(False);
        end else begin
            Self.logUtil.putF('StopGame - Could Not Stop', TJava.Box(Self), Self.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
        end;
        TThreadUtil.getInstance().join(Self.thread);
        progressCanvas_ := TProgressCanvasFactory.getInstance();
        if Self.features.isFeature(TMainFeatureFactory.getInstance().LOAD_ALL) then begin
            progressCanvas_.addNormalPortion(50, 'Stopped Game Runnable');
        end else begin
            progressCanvas_.addNormalPortion(50, 'Stopped Main Runnable');
        end;
        Self.logUtil.putF(Self.commonStrings.END_, TJava.Box(Self), Self.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
end;
    

function TGameMidlet.getGameCanvasRunnableInterface: IGameCanvasRunnableInterface;
begin
        Exit(Self.allbinaryGameCanvasRunnableInterface);
end;
    

procedure TGameMidlet.setGameCanvasRunnableInterface(gameCanvasRunnableInterface_: IGameCanvasRunnableInterface);
begin
        Self.allbinaryGameCanvasRunnableInterface := gameCanvasRunnableInterface_;
end;
    

function TGameMidlet.createGameLayerManager: TAllBinaryGameLayerManager;
var
  gameInfo_: TGameInfo;
begin
        gameInfo_ := TGameInfo.Create(TGameTypeFactory.getInstance().SINGLE_PLAYER, TGameMode.SERVER, TPlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 1, 1);
        Exit(TAllBinaryGameLayerManager.Create(Self.basicColorFactory.BLACK, Self.basicColorFactory.WHITE, gameInfo_));
end;
    

function TGameMidlet.getGameOptionsForm: TCommandForm;
var
  layerManager: TAllBinaryGameLayerManager;
begin
        layerManager := Self.createGameLayerManager();
        Exit(TGameOptionsFormFactory.getInstance().init(Self, 'Game Options', layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor()));
end;
    

// throws Exception
procedure TGameMidlet.save;
var
  hashtable: TABHashtable<TObject, TObject>;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.SAVE);
        hashtable := Self.getCurrentStateHashtable();
        TGamePersistanceSingleton.getInstance().save(Self.abeClientInformation, hashtable);
end;
    

// throws Exception
function TGameMidlet.getCurrentStateHashtable: TABHashtable<TObject, TObject>;
var
  hashtable: TABHashtable<TObject, TObject>;
  currentHashtable: TABHashtable<TObject, TObject>;
  enumeration: TObject;
  key: TObject;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'getCurrentStateHashtable');
        hashtable := TStdUtil.getInstance().createHashtable();
        if TJava.ToObject(Self.allbinaryGameCanvasRunnableInterface) <> TJava.ToObject(TNullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) then begin
            currentHashtable := Self.allbinaryGameCanvasRunnableInterface.getCurrentStateHashtable();
            enumeration := currentHashtable.keys();
            
            while Self.enumerationUtil.hasMoreElements(enumeration) do begin
                key := TJava.Box(Self.enumerationUtil.nextElement(enumeration));
                hashtable.put(TJava.Box(key), TJava.Box(currentHashtable.get(TJava.Box(key))));
            end;
        end;
        Exit(hashtable);
end;
    

procedure TGameMidlet.setLoadGameForm(loadGameForm_: TLoadGameForm);
begin
        Self.loadGameForm := loadGameForm_;
end;
    

function TGameMidlet.getLoadGameForm: TCommandForm;
begin
        Exit(Self.loadGameForm);
end;
    

procedure TGameMidlet.setResized(resized: Boolean);
begin
        Self.resized := resized;
end;
    

function TGameMidlet.isResized: Boolean;
begin
        Exit(Self.resized);
end;
    

function TGameMidlet.isDemoLoading: Boolean;
var
  displayable_: TDisplayable;
  demoCanvas_: TDemoCanvas;
begin
        if Self.startedBefore then begin
            Exit(False);
        end;
        displayable_ := Self.getDisplay().getCurrent();
        if (TJava.ToObject(displayable_) is TDemoCanvas) then begin
            demoCanvas_ := TDemoCanvas(TJava.ToObject(displayable_));
            if demoCanvas_.isDemoLoading() then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

