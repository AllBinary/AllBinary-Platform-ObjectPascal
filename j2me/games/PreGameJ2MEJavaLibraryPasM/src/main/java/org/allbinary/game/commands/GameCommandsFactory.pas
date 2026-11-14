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
// package org.allbinary.game.commands
unit GameCommandsFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command;

type
  {AB:TYPES}
  TGameCommandsFactory = class(TObject)
  public
    TOGGLE_FULLSCREEN: TCommand;
    TOGGLE_KEYBOARD: TCommand;
    SET_MENU_DISPLAYABLE: TCommand;
    APPLICATION_UPDATE: TCommand;
    DISPLAY_ABOUT: TCommand;
    OPEN_WEB_URL: TCommand;
    CLOSE_OPTIONS: TCommand;
    DISPLAY_OPTIONS: TCommand;
    START_TRACE: TCommand;
    STOP_TRACE: TCommand;
    DEFAULT_OPTIONS: TCommand;
    SHOW_GAME_CANVAS: TCommand;
    CLOSE_AND_SHOW_GAME_CANVAS: TCommand;
    QUIT_COMMAND: TCommand;
    RESTART_COMMAND: TCommand;
    DISPLAY_SAVE_FORM: TCommand;
    SAVE: TCommand;
    DISPLAY_LOAD_FORM: TCommand;
    LOAD_FILE: TCommand;
    DELETE_FILE: TCommand;
    EXIT_COMMAND: TCommand;
    EXIT_WITHOUT_PROGRESS_COMMAND: TCommand;
    START_COMMAND: TCommand;
    CONTINUE_COMMAND: TCommand;
    SELECT_COMMAND: TCommand;
    FEATURE_UPDATE: TCommand;
    BUY_COMMAND: TCommand;
    class var instance: TObject;
    procedure InitFields;
        class function getInstance: TGameCommandsFactory; static;
        constructor Create;
  end;

implementation
uses
  CanvasStrings, NullUtil, StringUtil, CommonStrings;


{AB:CODE}

procedure TGameCommandsFactory.InitFields;
begin
  Self.TOGGLE_FULLSCREEN := TCommand.Create('Toggle FullScreen', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  Self.TOGGLE_KEYBOARD := TCommand.Create('Keyboard', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  Self.SET_MENU_DISPLAYABLE := TCommand.Create('Set Menu Displayable', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  Self.APPLICATION_UPDATE := TCommand.Create(TCommonStrings.getInstance().UPDATE, TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  Self.DISPLAY_ABOUT := TCommand.Create(TCanvasStrings.getInstance().ABOUT, TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 2);
  Self.OPEN_WEB_URL := TCommand.Create('Open Web URL', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 2);
  Self.CLOSE_OPTIONS := TCommand.Create('Back', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  Self.DISPLAY_OPTIONS := TCommand.Create(TCanvasStrings.getInstance().OPTIONS, TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 2);
  Self.START_TRACE := TCommand.Create('Start Trace', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  Self.STOP_TRACE := TCommand.Create('Stop Trace', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  Self.DEFAULT_OPTIONS := TCommand.Create('Default', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  Self.SHOW_GAME_CANVAS := TCommand.Create('Back to Game', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  Self.CLOSE_AND_SHOW_GAME_CANVAS := TCommand.Create('Back', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  Self.QUIT_COMMAND := TCommand.Create('Quit', TStringUtil.getInstance().EMPTY_STRING, TCommand.STOP, 1);
  Self.RESTART_COMMAND := TCommand.Create('Restart', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 0);
  Self.DISPLAY_SAVE_FORM := TCommand.Create('Save To', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 3);
  Self.SAVE := TCommand.Create('Save', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 3);
  Self.DISPLAY_LOAD_FORM := TCommand.Create('Load', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 3);
  Self.LOAD_FILE := TCommand.Create('Load File', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 3);
  Self.DELETE_FILE := TCommand.Create('Delete File', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  Self.EXIT_COMMAND := TCommand.Create('Exit', TStringUtil.getInstance().EMPTY_STRING, TCommand.EXIT_, 2);
  Self.EXIT_WITHOUT_PROGRESS_COMMAND := TCommand.Create('Exit Without Progress', TStringUtil.getInstance().EMPTY_STRING, TCommand.EXIT_, 2);
  Self.START_COMMAND := TCommand.Create(TCommonStrings.getInstance().START, TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  Self.CONTINUE_COMMAND := TCommand.Create('Continue', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  Self.SELECT_COMMAND := TCommand.Create('Select', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  Self.FEATURE_UPDATE := TCommand.Create('Feature Update', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  Self.BUY_COMMAND := TCommand.Create('BUY', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
end;
    

class function TGameCommandsFactory.getInstance: TGameCommandsFactory;
begin
        if (TGameCommandsFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TGameCommandsFactory.instance := TGameCommandsFactory.Create();
        end;
        Exit(TGameCommandsFactory(TJava.ToObject(TGameCommandsFactory.instance)));
end;
    

constructor TGameCommandsFactory.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TGameCommandsFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

