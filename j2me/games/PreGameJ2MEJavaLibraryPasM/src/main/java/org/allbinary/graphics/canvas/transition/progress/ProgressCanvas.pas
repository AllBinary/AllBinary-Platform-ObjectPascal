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
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, Graphics, Processor, RunnableCanvas, BasicColor, MyFontProcessor, UpdateMyFontInterface, ABCustomGaugeItem, Paintable, PaintableInterface, AllBinaryMidlet, ProgressEndListener;

type
  {AB:TYPES}
  TProgressCanvas = class(TRunnableCanvas, IPaintableInterface, IUpdateMyFontInterface)
  public
    hasPainted: Boolean;
    backgroundBasicColor: TBasicColor;
    GAUGE_PAINTABLE: TPaintable;
    maxValue: Single;
    gauge: TABCustomGaugeItem;
    TEXT_: string;
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
    function JavaObject: TObject;
        constructor Create(title: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure init(gameMidlet: TAllBinaryMidlet); virtual;
        procedure update(graphics_: TGraphics); virtual;
        procedure initCommands(cmdListener: ICommandListener); virtual;
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
        procedure paint(graphics_: TGraphics); virtual;
        procedure paint2(graphics_: TGraphics); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
        function getValue: Single; virtual;
        procedure setText(text: string); virtual;
        function getText: string; virtual;
        procedure setBackground(background: Boolean); virtual;
        function isBackground: Boolean; virtual;
  end;

implementation
uses
  ProgressPaintable, Font, NullCanvas, NullCommandListener, GameCommandsFactory, CanvasStrings, UpdateMyFontProcessor, NullPaintable, PreLogUtil, SmallIntegerSingletonFactory, StringMaker, StringUtil, PathFindingThreadPool, ThreadPool;


{AB:CODE}

procedure TProgressCanvas.InitFields;
begin
  
  
  Self.GAUGE_PAINTABLE := TProgressPaintable.Create(Self);
  Self.maxValue := 100.0;
  
  Self.TEXT_ := Self.commonStrings.LOADING;
  Self.updateMyFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.myFontProcessor := Self.updateMyFontProcessor;
  Self.allbinaryMidlet := TAllBinaryMidlet.getNullInstance();
  
  Self.text := Self.TEXT_;
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

function TProgressCanvas.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TProgressCanvas.Create(title: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(TNullCommandListener.NULL_COMMAND_LISTENER, TCanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, False);
        InitFields;
        Self.backgroundBasicColor := backgroundBasicColor;
        Self.gauge := TABCustomGaugeItem.Create(TStringUtil.getInstance().EMPTY_STRING, Integer(Trunc(Self.maxValue)), 0, backgroundBasicColor, foregroundBasicColor);
end;
    

procedure TProgressCanvas.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.gauge.setHeight((font_.getHeight()) + (2));
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TProgressCanvas.init(gameMidlet: TAllBinaryMidlet);
begin
        Self.allbinaryMidlet := gameMidlet;
end;
    

// throws Exception
procedure TProgressCanvas.update(graphics_: TGraphics);
begin
end;
    

procedure TProgressCanvas.initCommands(cmdListener: ICommandListener);
begin
end;
    

function TProgressCanvas.getMaxValue: Single;
begin
        Exit(Self.maxValue);
end;
    

procedure TProgressCanvas.start;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.START_METHOD_NAME);
        Self.setBackground(True);
        Self.gauge.setHeight(30);
        Self.gauge.setLabel(Self.commonStrings.PLEASE_WAIT);
        Self.setText(Self.TEXT_);
        Self.setValue(0);
        Self.inGameProcessor := TProcessor.getInstance();
        Self.paintable := Self.GAUGE_PAINTABLE;
        Self.inProgress := True;
end;
    

procedure TProgressCanvas.startBackground(background: Boolean);
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.START_BACKGROUND);
        Self.setBackground(background);
        Self.myFontProcessor := Self.updateMyFontProcessor;
        Self.gauge.setLabel(Self.backgroundLabel);
        Self.setText(Self.TEXT_);
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
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.END_METHOD_NAME);
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
        TPreLogUtil.put(Self.text, TJava.Box(Self), Self.ADD_PORTION);
        Self.gauge.setValue((Self.gauge.getValue()) + ((Self.getMaxValue()) / (value)));
end;
    

procedure TProgressCanvas.addNormalPortion(value: Integer; text: string);
begin
        if (Self.text) <> (text) then begin
            TPreLogUtil.put(text, TJava.Box(Self), Self.ADD_PORTION);
        end;
        Self.setText(text);
        Self.gauge.setValue((Self.gauge.getValue()) + ((Self.getMaxValue()) / (value)));
end;
    

procedure TProgressCanvas.setValue(value: Integer);
begin
        Self.value := value;
        Self.gauge.setValue(value);
end;
    

procedure TProgressCanvas.paint(graphics_: TGraphics);
begin
        Self.paintable.paint(graphics_);
end;
    

procedure TProgressCanvas.paint2(graphics_: TGraphics);
begin
        Self.myFontProcessor.process(graphics_);
        graphics_.setColor(Self.backgroundBasicColor.intValue());
        graphics_.fillRect(0, 0, Self.displayInfo.getLastWidth(), Self.displayInfo.getLastHeight());
        Self.gauge.paintXY(graphics_, 0, 0);
        Self.hasPainted := True;
end;
    

procedure TProgressCanvas.paintThreed(graphics_: TGraphics);
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
  {AB:INITIALIZATION}
  {AB:END}

end.

