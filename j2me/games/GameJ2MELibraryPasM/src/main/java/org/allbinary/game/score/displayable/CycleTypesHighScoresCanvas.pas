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
// AB:CYCLE TYPES HighScoresCanvas HighScoresCanvasInputProcessor HighScoresCanvasInputProcessorFactoryInterface
// The units HighScoresCanvas HighScoresCanvasInputProcessor HighScoresCanvasInputProcessorFactoryInterface use each other in their interface sections, so their types are declared together here.
unit CycleTypesHighScoresCanvas;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, CommandListener, Graphics, GameInfo, GameCommandCanvas, AllBinaryGameLayerManager, ColorFillBasePaintable, HighScoreCommandsFactory, HighScores, HighScoresFactoryInterface, HighScoresHelperBase, HighScoresPaintable, HighScoresResultsListener, Paintable, SimpleTextPaintable, PlayerGameInput, GameKeyEvent;

type
  { Forward declarations like C++ so the cycle members can refer to each other }
  THighScoresCanvas = class;
  THighScoresCanvasInputProcessor = class;
  IHighScoresCanvasInputProcessorFactoryInterface = interface;
  THighScoresCanvasInputProcessorFactoryInterface = IHighScoresCanvasInputProcessorFactoryInterface;
  {AB:TYPES}
  { HighScoresCanvas }
  THighScoresCanvas = class(TGameCommandCanvas, IHighScoresResultsListener)
  public
    paintable: TPaintable;
    highScoreCommandsFactory: THighScoreCommandsFactory;
    waitPaintable: TSimpleTextPaintable;
    highScoresPaintable: THighScoresPaintable;
    highScoresFactoryInterface: IHighScoresFactoryInterface;
    colorFillPaintable: TColorFillBasePaintable;
    highScoresHelper: THighScoresHelperBase;
    gameInfo: TGameInfo;
    highScoresCanvasInputProcessor: THighScoresCanvasInputProcessor;
    currentCommand: TCommand;
    hasPainted: Boolean;
    class var NAME: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(commandListener_: ICommandListener; allBinaryGameLayerManager_: TAllBinaryGameLayerManager; gameInfo_: TGameInfo; paintable_: THighScoresPaintable; highScoresFactoryInterface_: IHighScoresFactoryInterface; highScoresCanvasInputProcessorFactoryInterface_: IHighScoresCanvasInputProcessorFactoryInterface);
        procedure initCommands(cmdListener: ICommandListener); virtual;
        procedure open; virtual;
        procedure close; virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure executeUpdate; virtual;
        function getHighScoresPaintable: THighScoresPaintable;
        procedure setHighScoresArray(highScoresArray: TArray<THighScores>); virtual;
        procedure updateCommand(command_: TCommand); virtual;
        function getGameInfo: TGameInfo; virtual;
        procedure setPaintable(paintable_: TPaintable);
  end;

  { HighScoresCanvasInputProcessor }
  THighScoresCanvasInputProcessor = class(TPlayerGameInput)
  public
    highScoresCanvas: THighScoresCanvas;
    procedure InitFields;
        constructor Create(highScoresCanvas_: THighScoresCanvas);
        procedure open; virtual;
        procedure close; virtual;
        procedure onPressGameKeyEvent(gameKeyEvent_: TGameKeyEvent); override;
        procedure onDownGameKeyEvent(gameKeyEvent_: TGameKeyEvent); override;
        procedure onUpGameKeyEvent(gameKeyEvent_: TGameKeyEvent); override;
        procedure paint(graphics_: TGraphics); virtual;
        function getHighScoresCanvas: THighScoresCanvas; virtual;
  end;

  { HighScoresCanvasInputProcessorFactoryInterface }
  IHighScoresCanvasInputProcessorFactoryInterface = interface(IJavaObject) ['IHighScoresCanvasInputProcessorFactoryInterface']
        function getInstance(highScoresCanvas_: THighScoresCanvas): THighScoresCanvasInputProcessor;
  end;


implementation
uses
  HighScoreRunnable, GameCommandsFactory, ColorFillPaintableFactory, NoHighScoresFactory, NullHighScoresSingletonFactory, BasicColorFactory, NullPaintable, LogUtil, StringMaker, CommonStrings, SecondaryThreadPool, BasicArrayList, BasicArrayListD;


{AB:CODE}

procedure THighScoresCanvas.InitFields;
begin
  Self.paintable := TNullPaintable.getInstance();
  Self.highScoreCommandsFactory := THighScoreCommandsFactory.getInstance();
  Self.waitPaintable := TSimpleTextPaintable.Create(Self.commonStrings.PLEASE_WAIT_FOR_SERVER, TBasicColorFactory.getInstance().WHITE);
  
  
  
  Self.highScoresHelper := THighScoresHelperBase.Create();
  
  
  Self.currentCommand := Self.highScoreCommandsFactory.HIGH_SCORE_COMMANDS[0];
  Self.hasPainted := False;
end;

function THighScoresCanvas.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor THighScoresCanvas.Create(commandListener_: ICommandListener; allBinaryGameLayerManager_: TAllBinaryGameLayerManager; gameInfo_: TGameInfo; paintable_: THighScoresPaintable; highScoresFactoryInterface_: IHighScoresFactoryInterface; highScoresCanvasInputProcessorFactoryInterface_: IHighScoresCanvasInputProcessorFactoryInterface);
begin
        inherited Create(commandListener_, THighScoresCanvas.NAME, allBinaryGameLayerManager_.getBackgroundBasicColor(), allBinaryGameLayerManager_.getForegroundBasicColor());
        InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.highScoresPaintable := paintable_;
        Self.highScoresFactoryInterface := highScoresFactoryInterface_;
        Self.highScoresCanvasInputProcessor := highScoresCanvasInputProcessorFactoryInterface_.getInstance(Self);
        Self.gameInfo := gameInfo_;
        Self.waitPaintable.setBasicColorP(allBinaryGameLayerManager_.getForegroundBasicColor());
        Self.getHighScoresPaintable().setBasicColorP(allBinaryGameLayerManager_.getForegroundBasicColor());
        Self.colorFillPaintable := TColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager_.getBackgroundBasicColor(), False);
        if (System.Length(Self.highScoresHelper.getHighScoresArray())) = (System.Length(TNoHighScoresFactory.getInstance().NO_HIGH_SCORES)) then begin
            Self.setPaintable(Self.waitPaintable);
        end else begin
            Self.logUtil.putF('Show HighScores that are already loaded', TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            Self.updateCommand(Self.currentCommand);
            Self.setPaintable(Self.getHighScoresPaintable());
        end;
        TSecondaryThreadPool.getInstance().runTask(THighScoreRunnable.Create(Self));
end;
    

procedure THighScoresCanvas.initCommands(cmdListener: ICommandListener);
begin
        Self.removeAllCommands();
        Self.addCommand(TGameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        Self.setCommandListener(cmdListener);
end;
    

procedure THighScoresCanvas.open;
begin
        inherited open();
        Self.highScoresCanvasInputProcessor.open();
end;
    

// throws Exception
procedure THighScoresCanvas.close;
begin
        inherited close();
        Self.highScoresCanvasInputProcessor.close();
end;
    

procedure THighScoresCanvas.paint(graphics_: TGraphics);
begin
        Self.colorFillPaintable.paint(graphics_);
        Self.paintable.paint(graphics_);
        if (Self.waitPaintable) <> (Self.paintable) then begin
            Self.highScoresCanvasInputProcessor.paint(graphics_);
        end;
        inherited paint(graphics_);
        Self.hasPainted := True;
end;
    

procedure THighScoresCanvas.executeUpdate;
begin
        try
            Self.highScoresFactoryInterface.fetchHighScores(Self.getGameInfo(), Self);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.UPDATE, TJava.Box(e));
            end;
        end;
end;
    

function THighScoresCanvas.getHighScoresPaintable: THighScoresPaintable;
begin
        Exit(Self.highScoresPaintable);
end;
    

procedure THighScoresCanvas.setHighScoresArray(highScoresArray: TArray<THighScores>);
begin
        try
            if (highScoresArray) <> (nil) then begin
                Self.logUtil.putF(TStringMaker.Create().append(Self.commonStrings.START).appendint(System.Length(highScoresArray)).toString(), TJava.Box(Self), 'setHighScoresArray');
            end else begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'setHighScoresArray');
            end;
            Self.highScoresHelper.setHighScoresArray(highScoresArray);
            Self.updateCommand(Self.currentCommand);
            Self.setPaintable(Self.getHighScoresPaintable());
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.UPDATE, TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure THighScoresCanvas.updateCommand(command_: TCommand);
var
  gameCommandsFactory_: TGameCommandsFactory;
  index: Integer;
  nextIndex: Integer;
  highScoresArray: TArray<THighScores>;
begin
        Self.logUtil.putF(TStringMaker.Create().append(Self.commonStrings.START).append(Self.stringUtil.toString(command_)).toString(), TJava.Box(Self), Self.commonStrings.UPDATE);
        gameCommandsFactory_ := TGameCommandsFactory.getInstance();
        if Self.highScoreCommandsFactory.isHighScoreCommand(command_) then begin
            index := Self.highScoreCommandsFactory.getIndex(command_);
            nextIndex := (index) + (1);
            highScoresArray := Self.highScoresHelper.getHighScoresArray();
            if (nextIndex) >= (System.Length(highScoresArray)) then begin
                nextIndex := 0;
            end;
            if (System.Length(highScoresArray)) > (0) then begin
                Self.getHighScoresPaintable().setHighScores(highScoresArray[index]);
            end else begin
                Self.getHighScoresPaintable().setHighScores(TNullHighScoresSingletonFactory.getInstance());
            end;
            if (index) <> (nextIndex) then begin
                Self.removeAllCommands();
                Self.addCommand(gameCommandsFactory_.CLOSE_AND_SHOW_GAME_CANVAS);
                Self.addCommand(Self.highScoreCommandsFactory.HIGH_SCORE_COMMANDS[nextIndex]);
            end;
        end;
        Self.currentCommand := command_;
        Self.close();
        inherited initMenu();
        Self.open();
        Self.repaintBehavior.onChangeRepaint(Self);
end;
    

function THighScoresCanvas.getGameInfo: TGameInfo;
begin
        Exit(Self.gameInfo);
end;
    

procedure THighScoresCanvas.setPaintable(paintable_: TPaintable);
begin
        Self.paintable := paintable_;
        Self.repaintBehavior.onChangeRepaint(Self);
end;


procedure THighScoresCanvasInputProcessor.InitFields;
begin
  
end;
    

constructor THighScoresCanvasInputProcessor.Create(highScoresCanvas_: THighScoresCanvas);
begin
        inherited Create(TBasicArrayListD.Create(), TBasicArrayListD.Create(), -1);
        InitFields;
        Self.highScoresCanvas := highScoresCanvas_;
end;
    

procedure THighScoresCanvasInputProcessor.open;
begin
end;
    

procedure THighScoresCanvasInputProcessor.close;
begin
end;
    

procedure THighScoresCanvasInputProcessor.onPressGameKeyEvent(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
        inherited onPressGameKeyEvent(gameKeyEvent_);
        Self.update();
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure THighScoresCanvasInputProcessor.onDownGameKeyEvent(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
        inherited onDownGameKeyEvent(gameKeyEvent_);
        Self.update();
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure THighScoresCanvasInputProcessor.onUpGameKeyEvent(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
        inherited onUpGameKeyEvent(gameKeyEvent_);
        Self.update();
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure THighScoresCanvasInputProcessor.paint(graphics_: TGraphics);
begin
end;
    

function THighScoresCanvasInputProcessor.getHighScoresCanvas: THighScoresCanvas;
begin
        Exit(Self.highScoresCanvas);
end;



initialization
  {AB:INITIALIZATION}
  THighScoresCanvas.NAME := 'HighScoresCanvas';
  {AB:END}

end.
