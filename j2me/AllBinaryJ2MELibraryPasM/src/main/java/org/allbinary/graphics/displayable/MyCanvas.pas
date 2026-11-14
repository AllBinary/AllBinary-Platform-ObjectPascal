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
// package org.allbinary.graphics.displayable
unit MyCanvas;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas, Command, CommandListener, Graphics, MyCommandInterface, TouchJ2ME, LogUtil, StringUtil, Sound, CommonStrings, BasicArrayList, ABStack, CanvasStrings, DisplayInfoSingleton, DisplayableInterface;

type
  {AB:TYPES}
  TMyCanvas = class(TCanvas, IDisplayableInterface, IMyCommandInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    canvasStrings: TCanvasStrings;
    stringUtil: TStringUtil;
    displayInfo: TDisplayInfoSingleton;
    name: string;
    childNameList: TBasicArrayList;
    commandStack: TABStack<TObject>;
    commandListener: ICommandListener;
    paused: Boolean;
    touchME: TTouchJ2ME;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(name: string; childNameList: TBasicArrayList);
        function getWidth: Integer; virtual;
        function getHeight: Integer; virtual;
        procedure setFullScreenMode(mode: Boolean); virtual;
        procedure sizeChanged(w: Integer; h: Integer); virtual;
        function getCommandStack: TABStack<TObject>; virtual;
        function isCommand(command_: TCommand): Boolean; virtual;
        procedure addCommand(command_: TCommand); virtual;
        procedure removeCommand(command_: TCommand); virtual;
        procedure removeAllCommands; virtual;
        procedure setCommandListener(l: ICommandListener); virtual;
        function getCustomCommandListener: ICommandListener; virtual;
        function isPaused: Boolean; virtual;
        procedure removePauseCommand; virtual;
        procedure pause; virtual;
        procedure unPause; virtual;
        procedure process; virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure draw(graphics_: TGraphics); virtual;
        function hasChild(displayable: TMyCanvas): Boolean; virtual;
        procedure destroy; virtual;
        procedure setPaused(isPaused: Boolean); virtual;
        procedure keyPressedByDevice(keyCode: Integer; deviceId: Integer); virtual;
        procedure keyRepeatedByDevice(keyCode: Integer; deviceId: Integer); virtual;
        procedure keyReleasedByDevice(keyCode: Integer; deviceId: Integer); virtual;
        procedure pointerDragged(x: Integer; y: Integer); virtual;
        procedure pointerPressed(x: Integer; y: Integer); virtual;
        procedure pointerReleased(x: Integer; y: Integer); virtual;
        procedure nextSong(nextSongSound: TSound; leftVolume: Integer; rightVolume: Integer); virtual;
  end;

implementation
uses
  NullCommandListener, MyCommandsFactory, StdUtil;


{AB:CODE}

procedure TMyCanvas.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.canvasStrings := TCanvasStrings.getInstance();
  Self.stringUtil := TStringUtil.getInstance();
  Self.displayInfo := TDisplayInfoSingleton.getInstance();
  
  
  
  Self.commandListener := TNullCommandListener.NULL_COMMAND_LISTENER;
  
  Self.touchME := TTouchJ2ME.Create();
end;

function TMyCanvas.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMyCanvas.Create(name: string; childNameList: TBasicArrayList);
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.CONSTRUCTOR_, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.displayInfo.update(Self, Self.canvasStrings.CONSTRUCTOR_);
        Self.name := name;
        Self.childNameList := childNameList;
        Self.commandStack := TStdUtil.getInstance().createStack();
end;
    

function TMyCanvas.getWidth: Integer;
begin
        Exit(inherited getWidth());
end;
    

function TMyCanvas.getHeight: Integer;
begin
        Exit(inherited getHeight());
end;
    

procedure TMyCanvas.setFullScreenMode(mode: Boolean);
begin
        inherited setFullScreenMode(mode);
        Self.displayInfo.update(Self, Self.canvasStrings.SET_FULL_SCREEN_MODE);
end;
    

procedure TMyCanvas.sizeChanged(w: Integer; h: Integer);
begin
        Self.displayInfo.update(Self, Self.canvasStrings.SIZE_CHANGED);
end;
    

function TMyCanvas.getCommandStack: TABStack<TObject>;
begin
        Exit(Self.commandStack);
end;
    

function TMyCanvas.isCommand(command_: TCommand): Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.commandStack.contains(command_));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TMyCanvas.addCommand(command_: TCommand);
begin
    TJava.MonitorEnter(Self);
    try
        if not (Self.commandStack.contains(command_)) then begin
            Self.commandStack.push(command_);
            inherited addCommand(command_);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TMyCanvas.removeCommand(command_: TCommand);
begin
    TJava.MonitorEnter(Self);
    try
        Self.commandStack.removeElement(command_);
        inherited removeCommand(command_);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TMyCanvas.removeAllCommands;
var
  size: Integer;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        size := Self.commandStack.size();
        for index := 0 to size - 1 do begin
            inherited removeCommand(TCommand(TJava.ToObject(Self.commandStack.pop())));
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TMyCanvas.setCommandListener(l: ICommandListener);
begin
        inherited setCommandListener(l);
        Self.commandListener := l;
end;
    

function TMyCanvas.getCustomCommandListener: ICommandListener;
begin
        Exit(Self.commandListener);
end;
    

function TMyCanvas.isPaused: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.paused);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TMyCanvas.removePauseCommand;
begin
        Self.removeCommand(TMyCommandsFactory.getInstance().PAUSE_COMMAND);
end;
    

procedure TMyCanvas.pause;
begin
    TJava.MonitorEnter(Self);
    try
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.canvasStrings.PAUSE);
        Self.removePauseCommand();
        Self.addCommand(TMyCommandsFactory.getInstance().RESUME_COMMAND);
        Self.setPaused(True);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TMyCanvas.unPause;
begin
    TJava.MonitorEnter(Self);
    try
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.canvasStrings.UN_PAUSE);
        Self.removeCommand(TMyCommandsFactory.getInstance().RESUME_COMMAND);
        Self.addCommand(TMyCommandsFactory.getInstance().PAUSE_COMMAND);
        Self.setPaused(False);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TMyCanvas.process;
begin
        Self.displayInfo.process();
end;
    

procedure TMyCanvas.paint(graphics_: TGraphics);
begin
end;
    

procedure TMyCanvas.draw(graphics_: TGraphics);
begin
end;
    

function TMyCanvas.hasChild(displayable: TMyCanvas): Boolean;
begin
        Exit(Self.childNameList.contains(TJava.Box(displayable.name)));
end;
    

procedure TMyCanvas.destroy;
begin
        Self.logUtil.putF('Destroyed MyCanvas', TJava.Box(Self), 'destroy');
end;
    

procedure TMyCanvas.setPaused(isPaused: Boolean);
begin
        Self.paused := isPaused;
end;
    

procedure TMyCanvas.keyPressedByDevice(keyCode: Integer; deviceId: Integer);
begin
end;
    

procedure TMyCanvas.keyRepeatedByDevice(keyCode: Integer; deviceId: Integer);
begin
end;
    

procedure TMyCanvas.keyReleasedByDevice(keyCode: Integer; deviceId: Integer);
begin
end;
    

procedure TMyCanvas.pointerDragged(x: Integer; y: Integer);
begin
        Self.touchME.pointerDragged(x, y);
end;
    

procedure TMyCanvas.pointerPressed(x: Integer; y: Integer);
begin
        Self.touchME.pointerPressed(x, y);
end;
    

procedure TMyCanvas.pointerReleased(x: Integer; y: Integer);
begin
        Self.touchME.pointerReleased(x, y);
end;
    

procedure TMyCanvas.nextSong(nextSongSound: TSound; leftVolume: Integer; rightVolume: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

