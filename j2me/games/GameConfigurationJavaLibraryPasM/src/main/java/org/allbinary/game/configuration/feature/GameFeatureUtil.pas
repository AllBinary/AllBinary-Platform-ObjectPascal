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
// package org.allbinary.game.configuration.feature
unit GameFeatureUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ChoiceGroup, TsUtil, LogUtil, BasicArrayList, EnumerationUtil, Feature;

type
  {AB:TYPES}
  TGameFeatureUtil = class(TObject)
  public
    logUtil: TLogUtil;
    tsUtil: TTsUtil;
    enumerationUtil: TEnumerationUtil;
    ON_GAME_FEATURE_CHANGE: string;
    GAME_FEATURE_CHANGED: string;
    class var instance: TGameFeatureUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGameFeatureUtil; static;
        procedure setDefault(choiceGroup_: TChoiceGroup); virtual;
        procedure updateMultiple(choiceGroup_: TChoiceGroup); virtual;
        procedure updateExclusiveForChoiceGroup(choiceGroup_: TChoiceGroup); virtual;
        function isExclusive(itemLabel: string): Boolean; virtual;
        procedure updateExclusive(selectedChoiceLabel: string);
        procedure updateExclusiveList(gameFeature: TFeature; list: TBasicArrayList); virtual;
  end;

implementation
uses
  Features, GameFeatureChoiceGroups, StringMaker, CommonLabels, ABHashtable, HashtableUtil;


{AB:CODE}

procedure TGameFeatureUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tsUtil := TTsUtil.getInstance();
  Self.enumerationUtil := TEnumerationUtil.getInstance();
  Self.ON_GAME_FEATURE_CHANGE := 'onGameFeatureChange';
  Self.GAME_FEATURE_CHANGED := 'Game Feature Changed: ';
end;

constructor TGameFeatureUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGameFeatureUtil.getInstance: TGameFeatureUtil;
begin
        Exit(TGameFeatureUtil.instance);
end;
    

// throws Exception
procedure TGameFeatureUtil.setDefault(choiceGroup_: TChoiceGroup);
var
  stringBuffer: TStringMaker;
  METHOD_NAME: string;
  SELECTED_ARRAY_RETURN: string;
  SELECTED_SEP: string;
  selectedArray_return: TArray<Boolean>;
  total: Integer;
  features_: TFeatures;
  isSelected: Boolean;
  selectedChoiceLabel: string;
  gameFeature: TFeature;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        METHOD_NAME := 'setDefault';
        SELECTED_ARRAY_RETURN := 'selectedArray_return[';
        SELECTED_SEP := '] = ';
        selectedArray_return := TJava.NewArray<Boolean>(choiceGroup_.size());
        total := choiceGroup_.getSelectedFlags(selectedArray_return);
        stringBuffer.append('Multiple Total Choices: ');
        stringBuffer.appendint(total);
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), METHOD_NAME);
        features_ := TFeatures.getInstance();
        for index := 0 to System.Length(selectedArray_return) - 1 do begin
            isSelected := selectedArray_return[index];
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(SELECTED_ARRAY_RETURN);
            stringBuffer.appendint(index);
            stringBuffer.append(SELECTED_SEP);
            stringBuffer.appendboolean(isSelected);
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), METHOD_NAME);
            selectedChoiceLabel := choiceGroup_.getString(index);
            gameFeature := TFeature.getInstance(selectedChoiceLabel);
            if features_.isDefault(gameFeature) then begin
                features_.add(gameFeature);
                choiceGroup_.setSelectedIndex(index, True);
            end else begin
                features_.remove(gameFeature);
                choiceGroup_.setSelectedIndex(index, False);
            end;
        end;
end;
    

// throws Exception
procedure TGameFeatureUtil.updateMultiple(choiceGroup_: TChoiceGroup);
var
  stringBuffer: TStringMaker;
  METHOD_NAME: string;
  SELECTED_ARRAY_RETURN: string;
  SELECTED_SEP: string;
  selectedArray_return: TArray<Boolean>;
  total: Integer;
  features_: TFeatures;
  isSelected: Boolean;
  selectedChoiceLabel: string;
  gameFeature: TFeature;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        METHOD_NAME := 'updateMultiple';
        SELECTED_ARRAY_RETURN := 'selectedArray_return[';
        SELECTED_SEP := '] = ';
        selectedArray_return := TJava.NewArray<Boolean>(choiceGroup_.size());
        total := choiceGroup_.getSelectedFlags(selectedArray_return);
        stringBuffer.append('Multiple Total Choices: ');
        stringBuffer.appendint(total);
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), METHOD_NAME);
        features_ := TFeatures.getInstance();
        for index := 0 to System.Length(selectedArray_return) - 1 do begin
            isSelected := selectedArray_return[index];
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(SELECTED_ARRAY_RETURN);
            stringBuffer.appendint(index);
            stringBuffer.append(SELECTED_SEP);
            stringBuffer.appendboolean(isSelected);
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), METHOD_NAME);
            selectedChoiceLabel := choiceGroup_.getString(index);
            gameFeature := TFeature.getInstance(selectedChoiceLabel);
            if (not (isSelected)) and (features_.isFeature(gameFeature)) then begin
                features_.remove(gameFeature);
            end else if (isSelected) and (not (features_.isFeature(gameFeature))) then begin
                features_.add(gameFeature);
            end;
        end;
end;
    

// throws Exception
procedure TGameFeatureUtil.updateExclusiveForChoiceGroup(choiceGroup_: TChoiceGroup);
var
  stringBuffer: TStringMaker;
  METHOD_NAME: string;
  SELECTED_ARRAY_RETURN: string;
  SELECTED_SEP: string;
  selectedArray_return: TArray<Boolean>;
  total: Integer;
  isSelected: Boolean;
  selectedChoiceLabel: string;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        METHOD_NAME := 'updateExclusive';
        SELECTED_ARRAY_RETURN := 'selectedArray_return[';
        SELECTED_SEP := '] = ';
        selectedArray_return := TJava.NewArray<Boolean>(choiceGroup_.size());
        total := choiceGroup_.getSelectedFlags(selectedArray_return);
        stringBuffer.append('Exclusive Total Choices: 1==');
        stringBuffer.appendint(total);
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), METHOD_NAME);
        for index := 0 to System.Length(selectedArray_return) - 1 do begin
            isSelected := selectedArray_return[index];
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(SELECTED_ARRAY_RETURN);
            stringBuffer.appendint(index);
            stringBuffer.append(SELECTED_SEP);
            stringBuffer.appendboolean(isSelected);
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), METHOD_NAME);
            if isSelected then begin
                selectedChoiceLabel := choiceGroup_.getString(index);
                Self.updateExclusive(selectedChoiceLabel);
            end;
        end;
end;
    

function TGameFeatureUtil.isExclusive(itemLabel: string): Boolean;
var
  enumeration: TObject;
  name: string;
begin
        enumeration := TGameFeatureChoiceGroups.getExclusiveInstance().get().keys();
        
        while Self.enumerationUtil.hasMoreElements(enumeration) do begin
            name := TJava.UnboxString(TJava.ToObject(Self.enumerationUtil.nextElement(enumeration)));
            if (Self.tsUtil.compareTo(itemLabel, name)) = (0) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

// throws Exception
procedure TGameFeatureUtil.updateExclusive(selectedChoiceLabel: string);
var
  gameFeature: TFeature;
  hashtable: TABHashtable<TObject, TObject>;
  objectArray: TArray<TObject>;
  basicArrayList_: TBasicArrayList;
  anyType: TObject;
  size: Integer;
  index: Integer;
begin
        Self.logUtil.putF(TStringMaker.Create().append(TCommonLabels.getInstance().ITEM_LABEL).append(selectedChoiceLabel).toString(), TJava.Box(Self), 'updateExclusive');
        gameFeature := TFeature.getInstance(selectedChoiceLabel);
        hashtable := TGameFeatureChoiceGroups.getExclusiveInstance().get();
        objectArray := THashtableUtil.getInstance().getKeysAsArray(hashtable);
        
        
        size := System.Length(objectArray);
        for index := 0 to size - 1 do begin
            anyType := TJava.Box(TJava.Box(objectArray[index]));
            basicArrayList_ := TBasicArrayList(TJava.ToObject(hashtable.get(TJava.Box(anyType))));
            Self.updateExclusiveList(gameFeature, basicArrayList_);
        end;
end;
    

// throws Exception
procedure TGameFeatureUtil.updateExclusiveList(gameFeature: TFeature; list: TBasicArrayList);
var
  features_: TFeatures;
  addIndex: Integer;
  size: Integer;
  index: Integer;
begin
        if list.contains(TJava.Box(gameFeature)) then begin
            features_ := TFeatures.getInstance();
            addIndex := list.indexOf(TJava.Box(gameFeature));
            size := list.size();
            for index := 0 to size - 1 do begin
                if (addIndex) <> (index) then begin
                    features_.remove(TFeature(TJava.ToObject(list.objectArray[index])));
                end else begin
                    features_.add(TFeature(TJava.ToObject(list.objectArray[index])));
                end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TGameFeatureUtil.instance := TGameFeatureUtil.Create();
  {AB:END}

end.

