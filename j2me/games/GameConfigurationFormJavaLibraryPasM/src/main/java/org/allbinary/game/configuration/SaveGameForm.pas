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
// package org.allbinary.game.configuration
unit SaveGameForm;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, MIDPUtil, BasicColor, CommandForm;

type
  {AB:TYPES}
  TSaveGameForm = class(TCommandForm)
  public
    meUtil: TMIDPUtil;
    class var FORM: TCommandForm;
    procedure InitFields;
        class function createForm(commandListener_: ICommandListener; title: string; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor): TCommandForm; static;
        class function getInstance: TCommandForm; static;
        constructor Create(commandListener_: ICommandListener; title: string; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure initCommands(cmdListener: ICommandListener); override;
  end;

implementation
uses
  TextField, GameCommandsFactory, ABSystemWrapper;


{AB:CODE}

procedure TSaveGameForm.InitFields;
begin
  Self.meUtil := TMIDPUtil.getInstance();
end;
    

// throws Exception
class function TSaveGameForm.createForm(commandListener_: ICommandListener; title: string; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor): TCommandForm;
begin
        TSaveGameForm.FORM := TSaveGameForm.Create(commandListener_, title, backgrounBasicColor, foregroundBasicColor);
        Exit(TSaveGameForm.FORM);
end;
    

class function TSaveGameForm.getInstance: TCommandForm;
begin
        Exit(TSaveGameForm.FORM);
end;
    

constructor TSaveGameForm.Create(commandListener_: ICommandListener; title: string; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
var
  timeString: string;
begin
        inherited Create(commandListener_, title, backgrounBasicColor, foregroundBasicColor);
        InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        timeString := IntToStr(TABSystemWrapper.getInstance().currentTimeMillis());
        Self.meUtil.appendItem(Self, TTextField.Create('Name: ', timeString, 30, TTextField.ANY));
        Self.initCommands(commandListener_);
end;
    

procedure TSaveGameForm.initCommands(cmdListener: ICommandListener);
var
  gameCommandsFactory_: TGameCommandsFactory;
begin
        gameCommandsFactory_ := TGameCommandsFactory.getInstance();
        Self.removeAllCommands();
        Self.addCommand(gameCommandsFactory_.SAVE);
        Self.addCommand(gameCommandsFactory_.CLOSE_AND_SHOW_GAME_CANVAS);
        Self.setCommandListener(cmdListener);
end;

initialization
  {AB:INITIALIZATION}
  TSaveGameForm.FORM := TCommandForm.getNullCommandForm();
  {AB:END}

end.

