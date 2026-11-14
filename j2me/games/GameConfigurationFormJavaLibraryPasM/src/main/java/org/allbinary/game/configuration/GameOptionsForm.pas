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
unit GameOptionsForm;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, MIDPUtil, BasicColor, CommandForm, AbeClientInformationInterface;

type
  {AB:TYPES}
  TGameOptionsForm = class(TCommandForm)
  public
    meUtil: TMIDPUtil;
    procedure InitFields;
        constructor Create(commandListener_: ICommandListener; title: string; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure closeClientInformation(abeClientInformation: IAbeClientInformationInterface); virtual;
        procedure addTextFieldsIfSimulated;
        procedure addTextFields;
        procedure addConfiguration;
        procedure initCommands(cmdListener: ICommandListener); override;
        procedure save(abeClientInformation: IAbeClientInformationInterface); virtual;
  end;

implementation
uses
  GameConfigurationTextInput, GameConfigurationSingleton, GameConfiguration, GameConfigurationGauge, GameConfigurationUtil, GameConfigurationCentral, Choice, Command, Item, TextField, GameCommandsFactory, GameFeatureChoiceGroups, GameFeatureFormUtil, GameFeatureItemCommandListener, GameFeatureItemStateListener, SensorFeatureFactory, GameConfigurationPersistanceSingleton, KeyValuePersistance, MyCommandsFactory, OrientationData, StringMaker, BasicArrayList, HashtableUtil, StdUtil, ABHashtable;


{AB:CODE}

procedure TGameOptionsForm.InitFields;
begin
  Self.meUtil := TMIDPUtil.getInstance();
end;
    

constructor TGameOptionsForm.Create(commandListener_: ICommandListener; title: string; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
var
  gameFeatureFormUtil_: TGameFeatureFormUtil;
begin
        inherited Create(commandListener_, title, backgrounBasicColor, foregroundBasicColor);
        InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.addConfiguration();
        gameFeatureFormUtil_ := TGameFeatureFormUtil.getInstance();
        gameFeatureFormUtil_.addChoiceGroup(Self, TGameFeatureChoiceGroups.getExclusiveInstance().get(), IChoice.EXCLUSIVE);
        gameFeatureFormUtil_.addChoiceGroup(Self, TGameFeatureChoiceGroups.getMultipleInstance().get(), IChoice.MULTIPLE);
        Self.initCommands(commandListener_);
        Self.setItemStateListener(TGameFeatureItemStateListener.Create(Self));
        Self.addTextFieldsIfSimulated();
end;
    

// throws Exception
procedure TGameOptionsForm.closeClientInformation(abeClientInformation: IAbeClientInformationInterface);
begin
        inherited close();
        Self.save(abeClientInformation);
end;
    

procedure TGameOptionsForm.addTextFieldsIfSimulated;
var
  key: string;
  hashtable: TABHashtable<TObject, TObject>;
  listCanBeNull: TObject;
  list: TBasicArrayList;
begin
        key := TOrientationData.getInstance().ORIENTATION_SENSOR_INPUT;
        hashtable := TGameFeatureChoiceGroups.getExclusiveInstance().get();
        if (hashtable) <> (nil) then begin
            listCanBeNull := TJava.Box(hashtable.get(TJava.Box(key)));
            if (listCanBeNull) <> (nil) then begin
                list := TBasicArrayList(TJava.ToObject(listCanBeNull));
                if list.contains(TJava.Box(TSensorFeatureFactory.getInstance().SIMULATED_ORIENTATION_SENSORS)) then begin
                    Self.addTextFields();
                end;
            end;
        end;
end;
    

procedure TGameOptionsForm.addTextFields;
var
  hashtable: TABHashtable<TObject, TObject>;
  size: Integer;
  objectArray: TArray<TObject>;
  gameConfigurationTextInput_: TGameConfigurationTextInput;
  textField_: TTextField;
  index: Integer;
begin
        hashtable := TGameConfigurationTextInput.getHashtable();
        size := hashtable.size();
        objectArray := THashtableUtil.getInstance().getKeysAsArray(hashtable);
        
        
        for index := 0 to size - 1 do begin
            gameConfigurationTextInput_ := TGameConfigurationTextInput(TJava.ToObject(hashtable.get(TJava.Box(TJava.Box(objectArray[index])))));
            textField_ := TTextField.Create(gameConfigurationTextInput_.getLabel(), gameConfigurationTextInput_.getText(), 30, TTextField.ANY);
            Self.meUtil.appendItem(Self, textField_);
        end;
end;
    

procedure TGameOptionsForm.addConfiguration;
var
  METHOD_NAME: string;
  NAME: string;
  list: TBasicArrayList;
  GAUGE_CHANGE: TCommand;
  stringMaker_: TStringMaker;
  size: Integer;
  gameConfiguration_: TGameConfiguration;
  gauge: TGameConfigurationGauge;
  index: Integer;
begin
        METHOD_NAME := 'addConfiguration';
        NAME := 'Name: ';
        list := TGameConfigurationSingleton.getInstance().getOptionsBasicArrayList();
        GAUGE_CHANGE := TMyCommandsFactory.getInstance().GAUGE_CHANGE;
        stringMaker_ := TStringMaker.Create();
        size := list.size();
        
        
        for index := 0 to size - 1 do begin
            gameConfiguration_ := TGameConfiguration(TJava.ToObject(list.objectArray[index]));
            stringMaker_.delete_(0, stringMaker_.length());
            Self.logUtil.putF(stringMaker_.append(NAME).append(gameConfiguration_.toString()).toString(), TJava.Box(Self), METHOD_NAME);
            gauge := TGameConfigurationGauge.Create(gameConfiguration_);
            gauge.setDefaultCommand(GAUGE_CHANGE);
            gauge.setItemCommandListener(TGameFeatureItemCommandListener.Create(Self));
            Self.meUtil.appendItem(Self, gauge);
        end;
end;
    

procedure TGameOptionsForm.initCommands(cmdListener: ICommandListener);
var
  gameCommandsFactory_: TGameCommandsFactory;
begin
        gameCommandsFactory_ := TGameCommandsFactory.getInstance();
        Self.removeAllCommands();
        Self.addCommand(gameCommandsFactory_.CLOSE_OPTIONS);
        Self.addCommand(gameCommandsFactory_.DEFAULT_OPTIONS);
        Self.setCommandListener(cmdListener);
end;
    

// throws Exception
procedure TGameOptionsForm.save(abeClientInformation: IAbeClientInformationInterface);
var
  size: Integer;
  item_: TItem;
  index: Integer;
  hashtable: TABHashtable<TObject, TObject>;
  SCALE: TGameConfiguration;
  keyValuePersistance_: TKeyValuePersistance;
  list: TBasicArrayList;
  size2: Integer;
  integer_: Integer;
begin
        size := Self.size();
        
        for index := 0 to size - 1 do begin
            item_ := Self.get(index);
            if (TJava.ToObject(item_) is TGameConfigurationGauge) then begin
                TGameConfigurationUtil.getInstance().update(TGameConfigurationGauge(TJava.ToObject(item_)));
            end else if (TJava.ToObject(item_) is TTextField) then begin
                TGameConfigurationTextInput.update(TTextField(TJava.ToObject(item_)));
            end;
        end;
        TGameConfigurationUtil.getInstance().updateCompetitionValue();
        hashtable := TStdUtil.getInstance().createHashtable();
        SCALE := TGameConfigurationCentral.getInstance().SCALE;
        hashtable.put(TJava.Box(SCALE.getName()), TJava.Box(IntToStr((SCALE.getValue()))));
        keyValuePersistance_ := TGameConfigurationPersistanceSingleton.getInstance();
        keyValuePersistance_.clear();
        keyValuePersistance_.loadAll(abeClientInformation);
        list := keyValuePersistance_.getIds();
        keyValuePersistance_.save(abeClientInformation, hashtable);
        size2 := list.size();
        
        for index := 0 to size2 - 1 do begin
            integer_ := Integer(list.objectArray[index]);
            keyValuePersistance_.delete_(abeClientInformation, (integer_));
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

