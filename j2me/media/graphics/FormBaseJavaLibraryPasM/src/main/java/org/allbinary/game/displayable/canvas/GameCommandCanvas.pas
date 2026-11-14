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
unit GameCommandCanvas;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, Graphics, Processor, RepaintBehavior, GameInputStrings, GameKeyFactory, DownGameKeyEventHandler, GameKeyEventFactory, UpGameKeyEventHandler, InputToGameKeyMapping, Rectangle, BasicColor, MyCanvas, DisplayChangeEvent, DisplayChangeEventListener, MyFontProcessor, UpdateMyFontInterface, PaintableForm, ScrollSelectionForm, Paintable, AllBinaryEventObject, BasicMenuInputProcessor, MenuListener, GameKeyEventSourceInterface, EventListenerInterface;

type
  {AB:TYPES}
  TGameCommandCanvas = class(TMyCanvas, IMenuListener, IDisplayChangeEventListener, IUpdateMyFontInterface, IGameKeyEventSourceInterface, IEventListenerInterface)
  public
    repaintProcessor: TProcessor;
    gameInputStrings: TGameInputStrings;
    foregroundBasicColor: TBasicColor;
    backgroundBasicColor: TBasicColor;
    inputToGameKeyMapping: TInputToGameKeyMapping;
    gameKeyFactory: TGameKeyFactory;
    gameKeyEventFactory: TGameKeyEventFactory;
    downGameKeyEventHandler: TDownGameKeyEventHandler;
    upGameKeyEventHandler: TUpGameKeyEventHandler;
    repaintBehavior: TRepaintBehavior;
    updateMyFontProcessor: TMyFontProcessor;
    myFontProcessor: TMyFontProcessor;
    foregroundColor: Integer;
    backgroundColor: Integer;
    menuInputProcessor: TBasicMenuInputProcessor;
    menuPaintable: TPaintable;
    menuForm: TPaintableForm;
    isSingleKeyRepeatableProcessing: Boolean;
    fontHeight: Integer;
    class var id: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(cmdListener: ICommandListener; name: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onDisplayChangeEvent(displayChangeEvent_: TDisplayChangeEvent); virtual;
        procedure initCommands(cmdListener: ICommandListener); virtual;
        procedure initMenu; virtual;
        function createForm: TScrollSelectionForm; virtual;
        function createRectangle(size: Integer): TRectangle; virtual;
        procedure open; virtual;
        procedure close; virtual;
        procedure update; virtual;
        function getSourceId: Integer; virtual;
        procedure keyPressed(keyCode: Integer); virtual;
        procedure keyReleased(keyCode: Integer); virtual;
        procedure keyRepeated(keyCode: Integer); virtual;
        procedure keyPressedByDevice(keyCode: Integer; deviceId: Integer); virtual;
        procedure keyReleasedByDevice(keyCode: Integer; deviceId: Integer); virtual;
        procedure keyRepeatedByDevice(keyCode: Integer; deviceId: Integer); virtual;
        procedure addGameKeyEvent(keyCode: Integer; deviceId: Integer; repeated: Boolean);
        procedure removeGameKeyEvent(keyCode: Integer; deviceId: Integer; repeated: Boolean);
        procedure paint(graphics_: TGraphics); virtual;
        procedure setMenuInputProcessor(menuInputProcessor: TBasicMenuInputProcessor);
        function getMenuInputProcessor: TBasicMenuInputProcessor; virtual;
  end;

implementation
uses
  NoMenuInputProcessor, ImmediateCommandFormInputProcessor, Font, NullCommandListener, GameCommandsFactory, Features, InputFeatureFactory, GameKey, PlatformInputMappingFactory, GameKeyEvent, GameKeyEventHandler, PointFactory, CanvasStrings, DisplayInfoSingleton, DisplayChangeEventHandler, ScreenRepaintProcessorFactory, UpdateMyFontProcessor, CommandCurrentSelectionFormFactory, FormPaintable, FormTypeFactory, ScrollSelectionFormNoneFactory, CommandTextItemArrayFactory, ABCustomItem, AllCommandsVisitor, NullPaintable, BasicMotionGesturesHandler, ForcedLogUtil, StringMaker, StringUtil, EventStrings, CommonSeps, BasicArrayListD;


{AB:CODE}

procedure TGameCommandCanvas.InitFields;
begin
  Self.repaintProcessor := TScreenRepaintProcessorFactory.getInstance().create_(Self);
  Self.gameInputStrings := TGameInputStrings.getInstance();
  
  
  Self.inputToGameKeyMapping := TPlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping();
  Self.gameKeyFactory := TGameKeyFactory.getInstance();
  Self.gameKeyEventFactory := TGameKeyEventFactory.getInstance();
  Self.downGameKeyEventHandler := TDownGameKeyEventHandler.getInstance();
  Self.upGameKeyEventHandler := TUpGameKeyEventHandler.getInstance();
  
  Self.updateMyFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.myFontProcessor := Self.updateMyFontProcessor;
  
  
  Self.menuInputProcessor := TNoMenuInputProcessor.getInstance();
  Self.menuPaintable := TNullPaintable.getInstance();
  Self.menuForm := TPaintableForm.getNullPaintableForm();
  Self.isSingleKeyRepeatableProcessing := TFeatures.getInstance().isFeature(TInputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS);
  Self.fontHeight := 0;
end;

function TGameCommandCanvas.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGameCommandCanvas.Create(cmdListener: ICommandListener; name: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(name, TCanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST);
        InitFields;
        Self.repaintBehavior := TRepaintBehavior.getInstance();
        Self.foregroundBasicColor := foregroundBasicColor;
        Self.backgroundBasicColor := backgroundBasicColor;
        Self.foregroundColor := Self.foregroundBasicColor.intValue();
        Self.backgroundColor := Self.backgroundBasicColor.intValue();
        Self.initCommands(cmdListener);
        if TJava.ToObject(cmdListener) <> TJava.ToObject(TNullCommandListener.NULL_COMMAND_LISTENER) then begin
            try
                Self.initMenu();
                Self.repaintProcessor.process();
            except
                on e: SysUtils.Exception do begin
                raise SysUtils.Exception.Create('');
                end;
            end;
        end;
end;
    

procedure TGameCommandCanvas.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
  rectangle_: TRectangle;
begin
        try
            font_ := graphics_.getFont();
            Self.logUtil.putF(TStringMaker.Create().append(Self.commonStrings.START).append(Self.canvasStrings.FD_WIDTH).appendint(Integer(Trunc(TMyFontProcessor.defaultCharWidth(font_)))).append(Self.canvasStrings.FD_HEIGHT).appendint(Integer(Trunc(font_.getHeight()))).toString(), TJava.Box(Self), Self.canvasStrings.UPDATE_MEASUREMENT);
            Self.fontHeight := font_.getHeight();
            rectangle_ := Self.createRectangle(Self.menuForm.size());
            Self.menuForm.init(rectangle_, TFormTypeFactory.getInstance().VERTICAL_CENTER_FORM);
            Self.update();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.canvasStrings.ON_DISPLAY_CHANGE_EVENT, TJava.Box(e));
            end;
        end;
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TGameCommandCanvas.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

procedure TGameCommandCanvas.onDisplayChangeEvent(displayChangeEvent_: TDisplayChangeEvent);
begin
        Self.logUtil.putF(TStringMaker.Create().append(Self.commonStrings.START).append(TDisplayInfoSingleton.getInstance().toString()).toString(), TJava.Box(Self), Self.canvasStrings.ON_DISPLAY_CHANGE_EVENT);
        Self.myFontProcessor := Self.updateMyFontProcessor;
end;
    

procedure TGameCommandCanvas.initCommands(cmdListener: ICommandListener);
begin
        Self.removeAllCommands();
        Self.addCommand(TGameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        Self.setCommandListener(cmdListener);
end;
    

// throws Exception
procedure TGameCommandCanvas.initMenu;
var
  form: TScrollSelectionForm;
begin
        form := Self.createForm();
        Self.menuForm := form;
        if (form) <> (TScrollSelectionFormNoneFactory.getInstance()) then begin
            Self.setMenuInputProcessor(TImmediateCommandFormInputProcessor.Create(TBasicArrayListD.Create(), -1, Self, form));
            Self.menuPaintable := TFormPaintable.Create(form);
        end;
        Self.repaintBehavior.onChangeRepaint(Self);
end;
    

// throws Exception
function TGameCommandCanvas.createForm: TScrollSelectionForm;
var
  items: TArray<TABCustomItem>;
  rectangle_: TRectangle;
begin
        items := TCommandTextItemArrayFactory.Create(TAllCommandsVisitor.Create()).getInstance(Self.getCommandStack(), Self.backgroundBasicColor, Self.foregroundBasicColor);
        rectangle_ := Self.createRectangle(System.Length(items));
        Exit(TCommandCurrentSelectionFormFactory.getInstance(TStringUtil.getInstance().EMPTY_STRING, items, rectangle_, TFormTypeFactory.getInstance().VERTICAL_CENTER_FORM, 15, False, Self.backgroundBasicColor, Self.foregroundBasicColor));
end;
    

function TGameCommandCanvas.createRectangle(size: Integer): TRectangle;
var
  height: Integer;
  startY: Integer;
  pointFactory_: TPointFactory;
  rectangle_: TRectangle;
begin
        height := (size) * (Self.fontHeight);
        startY := ((((Self.displayInfo.getLastHeight()) * (2)) div (3))) - (height);
        pointFactory_ := TPointFactory.getInstance();
        rectangle_ := TRectangle.Create(pointFactory_.createXY(30, startY), (Self.displayInfo.getLastWidth()) - (30), startY);
        Exit(rectangle_);
end;
    

procedure TGameCommandCanvas.open;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'open');
        TBasicMotionGesturesHandler.getInstance().addListenerInterface(Self.getMenuInputProcessor());
        TGameKeyEventHandler.getInstance().addListener(Self.getMenuInputProcessor());
        TDisplayChangeEventHandler.getInstance().addListenerInterface(Self);
end;
    

// throws Exception
procedure TGameCommandCanvas.close;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CLOSE);
        TBasicMotionGesturesHandler.getInstance().removeListener(Self.getMenuInputProcessor());
        TGameKeyEventHandler.getInstance().removeListener(Self.getMenuInputProcessor());
        TDisplayChangeEventHandler.getInstance().removeListener(Self);
end;
    

// throws Exception
procedure TGameCommandCanvas.update;
begin
        Self.repaintProcessor.process();
end;
    

function TGameCommandCanvas.getSourceId: Integer;
begin
        Exit(TGameCommandCanvas.id);
end;
    

procedure TGameCommandCanvas.keyPressed(keyCode: Integer);
begin
        Self.keyPressedByDevice(keyCode, 0);
end;
    

procedure TGameCommandCanvas.keyReleased(keyCode: Integer);
begin
        Self.keyReleasedByDevice(keyCode, 0);
end;
    

procedure TGameCommandCanvas.keyRepeated(keyCode: Integer);
begin
        Self.keyRepeatedByDevice(keyCode, 0);
end;
    

procedure TGameCommandCanvas.keyPressedByDevice(keyCode: Integer; deviceId: Integer);
begin
        Self.logUtil.putF(TStringMaker.Create().append(TCommonSeps.getInstance().SPACE).appendint(keyCode).toString(), TJava.Box(Self), Self.gameInputStrings.KEY_PRESSED);
        Self.addGameKeyEvent(keyCode, 0, False);
end;
    

procedure TGameCommandCanvas.keyReleasedByDevice(keyCode: Integer; deviceId: Integer);
begin
        Self.removeGameKeyEvent(keyCode, deviceId, False);
end;
    

procedure TGameCommandCanvas.keyRepeatedByDevice(keyCode: Integer; deviceId: Integer);
begin
        if Self.isSingleKeyRepeatableProcessing then begin
            Self.addGameKeyEvent(keyCode, deviceId, True);
        end;
end;
    

procedure TGameCommandCanvas.addGameKeyEvent(keyCode: Integer; deviceId: Integer; repeated: Boolean);
var
  gameKey_: TGameKey;
  gameKeyEvent_: TGameKeyEvent;
begin
        try
            gameKey_ := Self.inputToGameKeyMapping.getInstanceForCanvas(Self, keyCode);
            if (gameKey_) <> (Self.gameKeyFactory.NONE) then begin
                gameKeyEvent_ := Self.gameKeyEventFactory.getInstanceForInput(Self, gameKey_);
                Self.downGameKeyEventHandler.fireEvent(gameKeyEvent_);
                Self.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent_);
            end else begin
                Self.logUtil.putF(TStringMaker.Create().append(Self.gameInputStrings.NO_KEY).appendint(keyCode).toString(), TJava.Box(Self), Self.gameInputStrings.ADD_KEY_EVENT);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Key Event Error', TJava.Box(Self), Self.gameInputStrings.ADD_KEY_EVENT, TJava.Box(e));
            end;
        end;
end;
    

procedure TGameCommandCanvas.removeGameKeyEvent(keyCode: Integer; deviceId: Integer; repeated: Boolean);
var
  gameKey_: TGameKey;
  gameKeyEvent_: TGameKeyEvent;
begin
        try
            gameKey_ := Self.inputToGameKeyMapping.getInstanceForCanvas(Self, keyCode);
            if (gameKey_) <> (Self.gameKeyFactory.NONE) then begin
                gameKeyEvent_ := Self.gameKeyEventFactory.getInstanceForInput(Self, gameKey_);
                Self.upGameKeyEventHandler.fireEvent(gameKeyEvent_);
                Self.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent_);
            end else begin
                Self.logUtil.putF(TStringMaker.Create().append(Self.gameInputStrings.NO_KEY).appendint(keyCode).toString(), TJava.Box(Self), Self.gameInputStrings.REMOVE_KEY_EVENT);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Key Event Error', TJava.Box(Self), Self.gameInputStrings.REMOVE_KEY_EVENT, TJava.Box(e));
            end;
        end;
end;
    

procedure TGameCommandCanvas.paint(graphics_: TGraphics);
begin
        Self.myFontProcessor.process(graphics_);
        Self.menuPaintable.paint(graphics_);
        Self.repaintBehavior.repaint(Self);
end;
    

procedure TGameCommandCanvas.setMenuInputProcessor(menuInputProcessor: TBasicMenuInputProcessor);
begin
        Self.menuInputProcessor := menuInputProcessor;
end;
    

function TGameCommandCanvas.getMenuInputProcessor: TBasicMenuInputProcessor;
begin
        Exit(Self.menuInputProcessor);
end;

initialization
  {AB:INITIALIZATION}
  TGameCommandCanvas.id := 0;
  {AB:END}

end.

