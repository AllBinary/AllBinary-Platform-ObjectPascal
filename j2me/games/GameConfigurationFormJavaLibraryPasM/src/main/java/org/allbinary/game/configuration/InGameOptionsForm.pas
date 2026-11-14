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
unit InGameOptionsForm;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, CommandListener, BasicColor, CommandForm;

type
  {AB:TYPES}
  TInGameOptionsForm = class(TCommandForm)
  public
    class var DISPLAY: TCommand;
    class var SAVE: TCommand;
    class var DEFAULT: TCommand;
        constructor Create(commandListener_: ICommandListener; title: string; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure initCommands(cmdListener: ICommandListener); override;
  end;

implementation
uses
  Choice, GameCommandsFactory, GameFeatureFormUtil, InGameFeatureChoiceGroups, StringUtil;


{AB:CODE}
    

constructor TInGameOptionsForm.Create(commandListener_: ICommandListener; title: string; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
var
  gameFeatureFormUtil_: TGameFeatureFormUtil;
begin
        inherited Create(commandListener_, title, backgrounBasicColor, foregroundBasicColor);
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        gameFeatureFormUtil_ := TGameFeatureFormUtil.getInstance();
        gameFeatureFormUtil_.addChoiceGroup(Self, TInGameFeatureChoiceGroups.getExclusiveInstance().get(), IChoice.EXCLUSIVE);
        gameFeatureFormUtil_.addChoiceGroup(Self, TInGameFeatureChoiceGroups.getMultipleInstance().get(), IChoice.MULTIPLE);
        Self.initCommands(commandListener_);
end;
    

procedure TInGameOptionsForm.initCommands(cmdListener: ICommandListener);
begin
        Self.removeAllCommands();
        Self.addCommand(TGameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        Self.addCommand(TInGameOptionsForm.DEFAULT);
        Self.setCommandListener(cmdListener);
end;

initialization
  {AB:INITIALIZATION}
  TInGameOptionsForm.DISPLAY := TCommand.Create('Options In Game', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  TInGameOptionsForm.SAVE := TCommand.Create('Save', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  TInGameOptionsForm.DEFAULT := TCommand.Create('Default', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  {AB:END}

end.

