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
unit GameDifficultyOptions;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ChoiceGroup, CommandListener, MIDPUtil, BasicColor, CommandForm, BasicArrayList;

type
  {AB:TYPES}
  TGameDifficultyOptions = class(TCommandForm)
  public
    meUtil: TMIDPUtil;
    list: TBasicArrayList;
    procedure InitFields;
        constructor Create(commandListener_: ICommandListener; title: string; list: TBasicArrayList; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure open; override;
        procedure close; override;
        procedure save; virtual;
        procedure initCommands(cmdListener: ICommandListener); override;
        procedure update; override;
        procedure add(list: TBasicArrayList; name: string; option: Integer);
        function getChoiceGroup(list: TBasicArrayList; name: string; option: Integer): TChoiceGroup;
        procedure setSelectedId(id: Integer); virtual;
        function getSelectedId: Integer; virtual;
        function getSelectedText: Integer; virtual;
  end;

implementation
uses
  Choice, NullImage, GameCommandsFactory, GameDifficultyFactory, StringMaker, StringUtil;


{AB:CODE}

procedure TGameDifficultyOptions.InitFields;
begin
  Self.meUtil := TMIDPUtil.getInstance();
  
end;
    

constructor TGameDifficultyOptions.Create(commandListener_: ICommandListener; title: string; list: TBasicArrayList; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
var
  gameDifficultyFactory_: TGameDifficultyFactory;
begin
        inherited Create(commandListener_, title, backgrounBasicColor, foregroundBasicColor);
        InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.list := list;
        Self.update();
        Self.initCommands(commandListener_);
        gameDifficultyFactory_ := TGameDifficultyFactory.getInstance();
        Self.setSelectedId(gameDifficultyFactory_.getLevel());
end;
    

procedure TGameDifficultyOptions.open;
begin
        inherited open();
end;
    

// throws Exception
procedure TGameDifficultyOptions.close;
begin
        inherited close();
        Self.save();
end;
    

// throws Exception
procedure TGameDifficultyOptions.save;
var
  gameDifficultyFactory_: TGameDifficultyFactory;
begin
        gameDifficultyFactory_ := TGameDifficultyFactory.getInstance();
        gameDifficultyFactory_.setLevel(Self.getSelectedId());
end;
    

procedure TGameDifficultyOptions.initCommands(cmdListener: ICommandListener);
var
  gameCommandsFactory_: TGameCommandsFactory;
begin
        gameCommandsFactory_ := TGameCommandsFactory.getInstance();
        Self.removeAllCommands();
        Self.addCommand(gameCommandsFactory_.CLOSE_AND_SHOW_GAME_CANVAS);
        Self.setCommandListener(cmdListener);
end;
    

// throws Exception
procedure TGameDifficultyOptions.update;
begin
        Self.deleteAll();
        Self.add(Self.list, 'Difficulty', IChoice.EXCLUSIVE);
        inherited update();
end;
    

procedure TGameDifficultyOptions.add(list: TBasicArrayList; name: string; option: Integer);
var
  choiceGroup_: TChoiceGroup;
begin
        choiceGroup_ := Self.getChoiceGroup(list, name, option);
        if (list.size()) > (0) then begin
            choiceGroup_.setSelectedIndex(0, True);
        end;
        Self.meUtil.appendItem(Self, choiceGroup_);
end;
    

function TGameDifficultyOptions.getChoiceGroup(list: TBasicArrayList; name: string; option: Integer): TChoiceGroup;
var
  METHOD_NAME: string;
  NAME_: string;
  choiceGroup_: TChoiceGroup;
  size: Integer;
  anyType: TObject;
  index: Integer;
begin
        METHOD_NAME := 'addChoiceGroup';
        NAME_ := 'Adding Choice: ';
        choiceGroup_ := TChoiceGroup.Create(name, option, TStringUtil.getInstance().getArrayInstance(), TNullImage.NULL_IMAGE_ARRAY);
        size := list.size();
        
        for index := 0 to size - 1 do begin
            anyType := TJava.Box(list.objectArray[index]);
            Self.logUtil.putF(TStringMaker.Create().append(NAME_).append(anyType.toString()).toString(), TJava.Box(Self), METHOD_NAME);
            choiceGroup_.append(anyType.toString(), TNullImage.NULL_IMAGE);
        end;
        Exit(choiceGroup_);
end;
    

procedure TGameDifficultyOptions.setSelectedId(id: Integer);
var
  choiceGroup_: TChoiceGroup;
begin
        choiceGroup_ := TChoiceGroup(TJava.ToObject(Self.get(0)));
        choiceGroup_.setSelectedIndex(id, True);
end;
    

function TGameDifficultyOptions.getSelectedId: Integer;
var
  choiceGroup_: TChoiceGroup;
begin
        choiceGroup_ := TChoiceGroup(TJava.ToObject(Self.get(0)));
        Exit(choiceGroup_.getSelectedIndex());
end;
    

function TGameDifficultyOptions.getSelectedText: Integer;
var
  choiceGroup_: TChoiceGroup;
  value: Integer;
begin
        choiceGroup_ := TChoiceGroup(TJava.ToObject(Self.get(0)));
        value := TJava.IntValueOf(choiceGroup_.getString(choiceGroup_.getSelectedIndex()));
        Exit(value);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

