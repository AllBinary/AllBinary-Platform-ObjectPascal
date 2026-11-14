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
unit GameInputMappingCanvas;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, CommandListener, Graphics, GameKey, Input, InputFactory, InputMappingInterface, PersistentInputMapping, AllBinaryGameLayerManager, ColorFillBasePaintable, HelpPaintable, InputMappingHelpPaintable, ProcessPaintable, AbeClientInformationInterface, GameCommandCanvas;

type
  {AB:TYPES}
  TGameInputMappingCanvas = class(TGameCommandCanvas, IInputMappingInterface)
  public
    paintable: TProcessPaintable;
    helpPaintable: TInputMappingHelpPaintable;
    colorFillPaintable: TColorFillBasePaintable;
    inputMapping: TPersistentInputMapping;
    NONE: TGameKey;
    abeClientInformation: IAbeClientInformationInterface;
    selectedGameKey: TGameKey;
    selectedInput: TInput;
    inputFactory: TInputFactory;
    class var NAME: string;
    class var DISPLAY: TCommand;
    class var DEFAULT: TCommand;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; commandListener_: ICommandListener; allBinaryGameLayerManager_: TAllBinaryGameLayerManager; helpPaintable_: THelpPaintable);
        procedure close; virtual;
        procedure initCommands(cmdListener: ICommandListener); virtual;
        procedure keyPressed(keyCode: Integer); virtual;
        procedure keyReleased(keyCode: Integer); virtual;
        procedure keyRepeated(keyCode: Integer); virtual;
        procedure keyPressedByDevice(keyCode: Integer; deviceId: Integer); virtual;
        procedure addGameKey(keyCode: Integer; repeated: Boolean);
        procedure processInputMapping(gameKey_: TGameKey; input_: TInput); virtual;
        procedure setSelectedAction(gameKey_: TGameKey);
        procedure gameActionCrud(gameKey_: TGameKey; input_: TInput);
        procedure addNewMapping(gameKey_: TGameKey; input_: TInput);
        procedure deleteCurrentMapping;
        procedure setDefault; virtual;
        procedure update; virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  GameInputMappingInstructionsCanvas, GameCommandsFactory, GameKeyFactory, PlatformInputMappingFactory, ColorFillPaintableFactory, StringMaker, StringUtil, BasicArrayList;


{AB:CODE}

procedure TGameInputMappingCanvas.InitFields;
begin
  
  
  
  
  Self.NONE := TGameKeyFactory.getInstance().NONE;
  
  Self.selectedGameKey := Self.NONE;
  Self.selectedInput := Self.NONE;
  Self.inputFactory := TInputFactory.getInstance();
end;

function TGameInputMappingCanvas.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGameInputMappingCanvas.Create(abeClientInformation: IAbeClientInformationInterface; commandListener_: ICommandListener; allBinaryGameLayerManager_: TAllBinaryGameLayerManager; helpPaintable_: THelpPaintable);
begin
        inherited Create(commandListener_, TGameInputMappingCanvas.NAME, allBinaryGameLayerManager_.getBackgroundBasicColor(), allBinaryGameLayerManager_.getForegroundBasicColor());
        InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        if (helpPaintable_) = (nil) then begin
            raise SysUtils.Exception.Create('Help Paintable Exception');
        end;
        Self.abeClientInformation := abeClientInformation;
        Self.helpPaintable := TInputMappingHelpPaintable(TJava.ToObject(helpPaintable_));
        Self.inputMapping := TPlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance();
        Self.paintable := TProcessPaintable.Create();
        Self.colorFillPaintable := TColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager_.getBackgroundBasicColor(), False);
end;
    

// throws Exception
procedure TGameInputMappingCanvas.close;
begin
        inherited close();
        Self.paintable.process();
        Self.selectedGameKey := Self.NONE;
        Self.selectedInput := Self.NONE;
        Self.update();
end;
    

procedure TGameInputMappingCanvas.initCommands(cmdListener: ICommandListener);
begin
        Self.removeAllCommands();
        Self.addCommand(TGameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        Self.addCommand(TGameInputMappingCanvas.DEFAULT);
        Self.addCommand(TGameInputMappingInstructionsCanvas.DISPLAY);
        Self.setCommandListener(cmdListener);
end;
    

procedure TGameInputMappingCanvas.keyPressed(keyCode: Integer);
begin
        Self.keyPressedByDevice(keyCode, 0);
end;
    

procedure TGameInputMappingCanvas.keyReleased(keyCode: Integer);
begin
        Self.keyReleasedByDevice(keyCode, 0);
end;
    

procedure TGameInputMappingCanvas.keyRepeated(keyCode: Integer);
begin
        Self.keyRepeatedByDevice(keyCode, 0);
end;
    

procedure TGameInputMappingCanvas.keyPressedByDevice(keyCode: Integer; deviceId: Integer);
begin
        Self.addGameKey(keyCode, False);
        inherited keyPressedByDevice(keyCode, 0);
end;
    

procedure TGameInputMappingCanvas.addGameKey(keyCode: Integer; repeated: Boolean);
var
  gameKey_: TGameKey;
  input_: TInput;
begin
        try
            Self.logUtil.putF(TStringMaker.Create().append('Raw Device Key Code: ').append(IntToHex(keyCode)).toString(), TJava.Box(Self), Self.gameInputStrings.ADD_KEY_EVENT);
            gameKey_ := Self.inputToGameKeyMapping.getInstanceForCanvas(Self, keyCode);
            input_ := Self.inputFactory.getInstanceById(keyCode);
            Self.processInputMapping(gameKey_, input_);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Key Event Error', TJava.Box(Self), Self.gameInputStrings.ADD_KEY_EVENT, TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TGameInputMappingCanvas.processInputMapping(gameKey_: TGameKey; input_: TInput);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Start Passed GameKey: ');
        stringBuffer.append(Self.stringUtil.toString(gameKey_));
        stringBuffer.append(' Input: ');
        stringBuffer.append(Self.stringUtil.toString(input_));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.PROCESS);
        if (Self.selectedGameKey) <> (Self.NONE) then begin
            Self.gameActionCrud(gameKey_, input_);
        end else begin
            Self.setSelectedAction(gameKey_);
        end;
end;
    

procedure TGameInputMappingCanvas.setSelectedAction(gameKey_: TGameKey);
begin
        Self.logUtil.putF(TStringMaker.Create().append('Selected GameKey: ').append(Self.stringUtil.toString(gameKey_)).toString(), TJava.Box(Self), 'setSelectedAction');
        Self.selectedGameKey := gameKey_;
        Self.selectedInput := Self.NONE;
        Self.helpPaintable.update(Self.selectedGameKey, Self.selectedInput);
        Self.repaintBehavior.onChangeRepaint(Self);
end;
    

// throws Exception
procedure TGameInputMappingCanvas.gameActionCrud(gameKey_: TGameKey; input_: TInput);
var
  stringBuffer: TStringMaker;
  list: TBasicArrayList;
  isInputAlreadyMappedToSelectedAction: Boolean;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Start GameKey: ');
        stringBuffer.append(Self.stringUtil.toString(Self.selectedGameKey));
        stringBuffer.append(' Input: ');
        stringBuffer.append(Self.stringUtil.toString(Self.selectedInput));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'gameActionCrud');
        if (Self.selectedInput) = (Self.NONE) then begin
            list := Self.inputMapping.getInputMapping().getMappedInput(Self.selectedGameKey);
            isInputAlreadyMappedToSelectedAction := list.contains(TJava.Box(input_));
            if isInputAlreadyMappedToSelectedAction then begin
                Self.logUtil.putF(TStringMaker.Create().append('Already Mapped Input: ').append(Self.stringUtil.toString(input_)).toString(), TJava.Box(Self), 'gameActionCrud');
                Self.selectedInput := input_;
                Self.helpPaintable.update(Self.selectedGameKey, Self.selectedInput);
                Self.repaintBehavior.onChangeRepaint(Self);
            end else begin
                Self.addNewMapping(gameKey_, input_);
            end;
        end else if Self.inputMapping.isDelete(input_) then begin
            Self.deleteCurrentMapping();
        end else begin
            Self.setSelectedAction(gameKey_);
        end;
end;
    

// throws Exception
procedure TGameInputMappingCanvas.addNewMapping(gameKey_: TGameKey; input_: TInput);
var
  METHOD_NAME: string;
  isInputAlreadyMapped: Boolean;
  stringBuffer: TStringMaker;
begin
        METHOD_NAME := 'addNewMapping';
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), METHOD_NAME);
        isInputAlreadyMapped := Self.inputMapping.getInputMapping().isMapped(input_);
        if (not (isInputAlreadyMapped)) and (not (Self.inputMapping.isSystemInput(input_))) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Add Key Mapping : GameKey: ');
            stringBuffer.append(Self.stringUtil.toString(Self.selectedGameKey));
            stringBuffer.append(' Input: ');
            stringBuffer.append(Self.stringUtil.toString(Self.selectedInput));
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), METHOD_NAME);
            Self.inputMapping.getInputMapping().add(Self.selectedGameKey, input_);
            Self.selectedInput := input_;
            Self.update();
        end else begin
            Self.logUtil.putF('Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to', TJava.Box(Self), METHOD_NAME);
            Self.setSelectedAction(gameKey_);
        end;
end;
    

// throws Exception
procedure TGameInputMappingCanvas.deleteCurrentMapping;
var
  METHOD_NAME: string;
  list: TBasicArrayList;
  stringBuffer: TStringMaker;
begin
        METHOD_NAME := 'deleteCurrentMapping';
        list := Self.inputMapping.getInputMapping().getMappedInput(Self.selectedGameKey);
        if (list.size()) > (1) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Start GameKey: ');
            stringBuffer.append('Remove Key Mapping: GameKey: ');
            stringBuffer.append(Self.stringUtil.toString(Self.selectedGameKey));
            stringBuffer.append(' Input: ');
            stringBuffer.append(Self.stringUtil.toString(Self.selectedInput));
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), METHOD_NAME);
            Self.inputMapping.getInputMapping().remove(Self.selectedGameKey, Self.selectedInput);
            Self.selectedInput := Self.NONE;
            Self.update();
        end else begin
            Self.logUtil.putF('Can''t Remove Last Key Mapping', TJava.Box(Self), METHOD_NAME);
        end;
end;
    

// throws Exception
procedure TGameInputMappingCanvas.setDefault;
begin
        Self.inputMapping.setDefault(Self.abeClientInformation);
        Self.helpPaintable.update(Self.NONE, Self.NONE);
        Self.repaintBehavior.onChangeRepaint(Self);
end;
    

// throws Exception
procedure TGameInputMappingCanvas.update;
begin
        Self.inputMapping.update(Self.abeClientInformation);
        Self.helpPaintable.update(Self.selectedGameKey, Self.selectedInput);
        Self.repaintBehavior.onChangeRepaint(Self);
end;
    

procedure TGameInputMappingCanvas.paint(graphics_: TGraphics);
begin
        Self.colorFillPaintable.paint(graphics_);
        Self.helpPaintable.paint(graphics_);
        Self.paintable.paint(graphics_);
        inherited paint(graphics_);
end;

initialization
  {AB:INITIALIZATION}
  TGameInputMappingCanvas.NAME := 'GameInputMappingCanvas';
  TGameInputMappingCanvas.DISPLAY := TCommand.Create('Controls', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 2);
  TGameInputMappingCanvas.DEFAULT := TCommand.Create('Default', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 2);
  {AB:END}

end.

