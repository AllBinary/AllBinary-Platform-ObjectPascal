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
unit LoadGameForm;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ChoiceGroup, CommandListener, MIDPUtil, BasicColor, CommandForm, BasicArrayList;

type
  {AB:TYPES}
  TLoadGameForm = class(TCommandForm)
  public
    meUtil: TMIDPUtil;
    areChoices: Boolean;
    procedure InitFields;
        constructor Create(commandListener_: ICommandListener; title: string; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure initCommands(cmdListener: ICommandListener); override;
        procedure update; override;
        procedure add(list: TBasicArrayList; name: string; option: Integer);
        function getChoiceGroup(list: TBasicArrayList; name: string; option: Integer): TChoiceGroup;
        function getSelectedId: Integer; virtual;
        function getSelectedText: Integer; virtual;
  end;

implementation
uses
  Choice, Item, NullImage, StringItem, GameCommandsFactory, GamePersistanceSingleton, StringMaker, StringUtil;


{AB:CODE}

procedure TLoadGameForm.InitFields;
begin
  Self.meUtil := TMIDPUtil.getInstance();
  
end;
    

constructor TLoadGameForm.Create(commandListener_: ICommandListener; title: string; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(commandListener_, title, backgrounBasicColor, foregroundBasicColor);
        InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.update();
        Self.initCommands(commandListener_);
end;
    

procedure TLoadGameForm.initCommands(cmdListener: ICommandListener);
var
  gameCommandsFactory_: TGameCommandsFactory;
begin
        gameCommandsFactory_ := TGameCommandsFactory.getInstance();
        Self.removeAllCommands();
        Self.addCommand(gameCommandsFactory_.LOAD_FILE);
        Self.addCommand(gameCommandsFactory_.DELETE_FILE);
        Self.addCommand(gameCommandsFactory_.CLOSE_AND_SHOW_GAME_CANVAS);
        Self.setCommandListener(cmdListener);
end;
    

// throws Exception
procedure TLoadGameForm.update;
var
  list: TBasicArrayList;
begin
        list := TGamePersistanceSingleton.getInstance().getIds();
        Self.deleteAll();
        if (list.size()) > (0) then begin
            Self.add(list, 'Select A Saved Game', IChoice.EXCLUSIVE);
            Self.areChoices := True;
        end else begin
            Self.meUtil.appendItem(Self, TStringItem.Create('No Saved Games', TStringUtil.getInstance().EMPTY_STRING, TItem.PLAIN));
            Self.areChoices := False;
        end;
        inherited update();
end;
    

procedure TLoadGameForm.add(list: TBasicArrayList; name: string; option: Integer);
var
  choiceGroup_: TChoiceGroup;
begin
        choiceGroup_ := Self.getChoiceGroup(list, name, option);
        if (list.size()) > (0) then begin
            choiceGroup_.setSelectedIndex(0, True);
        end;
        Self.meUtil.appendItem(Self, choiceGroup_);
end;
    

function TLoadGameForm.getChoiceGroup(list: TBasicArrayList; name: string; option: Integer): TChoiceGroup;
var
  METHOD_NAME: string;
  ADDING_CHOICE: string;
  choiceGroup_: TChoiceGroup;
  size: Integer;
  anyType: TObject;
  index: Integer;
begin
        METHOD_NAME := 'getChoiceGroup';
        ADDING_CHOICE := 'Adding Choice: ';
        choiceGroup_ := TChoiceGroup.Create(name, option, TStringUtil.getInstance().getArrayInstance(), TNullImage.NULL_IMAGE_ARRAY);
        size := list.size();
        for index := 0 to size - 1 do begin
            anyType := TJava.Box(list.objectArray[index]);
            Self.logUtil.putF(TStringMaker.Create().append(ADDING_CHOICE).append(anyType.toString()).toString(), TJava.Box(Self), METHOD_NAME);
            choiceGroup_.append(anyType.toString(), TNullImage.NULL_IMAGE);
        end;
        Exit(choiceGroup_);
end;
    

function TLoadGameForm.getSelectedId: Integer;
var
  choiceGroup_: TChoiceGroup;
begin
        if Self.areChoices then begin
            choiceGroup_ := TChoiceGroup(TJava.ToObject(Self.get(0)));
            Exit(choiceGroup_.getSelectedIndex());
        end else begin
            Exit(-1);
        end;
end;
    

function TLoadGameForm.getSelectedText: Integer;
var
  choiceGroup_: TChoiceGroup;
  value: Integer;
begin
        if Self.areChoices then begin
            choiceGroup_ := TChoiceGroup(TJava.ToObject(Self.get(0)));
            value := TJava.IntValueOf(choiceGroup_.getString(choiceGroup_.getSelectedIndex()));
            Exit(value);
        end else begin
            Exit(-1);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

