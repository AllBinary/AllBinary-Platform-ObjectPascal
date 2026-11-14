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
unit GameFeatureFormUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ChoiceGroup, MIDPUtil, CommandForm, LogUtil, ABHashtable;

type
  {AB:TYPES}
  TGameFeatureFormUtil = class(TObject)
  public
    logUtil: TLogUtil;
    meUtil: TMIDPUtil;
    class var instance: TGameFeatureFormUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGameFeatureFormUtil; static;
        function getChoiceGroup(hashtable: TABHashtable<TObject, TObject>; name: string; option: Integer): TChoiceGroup; virtual;
        procedure addChoiceGroup(form: TCommandForm; hashtable: TABHashtable<TObject, TObject>; option: Integer); virtual;
        procedure setDefault(form: TCommandForm); virtual;
  end;

implementation
uses
  Features, Feature, GameFeatureUtil, Item, NullImage, GameConfigurationGauge, GameConfigurationUtil, StringMaker, StringUtil, BasicArrayList, HashtableUtil;


{AB:CODE}

procedure TGameFeatureFormUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.meUtil := TMIDPUtil.getInstance();
end;

constructor TGameFeatureFormUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGameFeatureFormUtil.getInstance: TGameFeatureFormUtil;
begin
        Exit(TGameFeatureFormUtil.instance);
end;
    

function TGameFeatureFormUtil.getChoiceGroup(hashtable: TABHashtable<TObject, TObject>; name: string; option: Integer): TChoiceGroup;
var
  stringMaker_: TStringMaker;
  choiceGroup_: TChoiceGroup;
  list: TBasicArrayList;
  features_: TFeatures;
  ADD_CHOICE: string;
  GET_CHOICE_GROUP: string;
  size: Integer;
  gameFeature: TFeature;
  index: Integer;
begin
        stringMaker_ := TStringMaker.Create();
        choiceGroup_ := TChoiceGroup.Create(name, option, TStringUtil.getInstance().getArrayInstance(), TNullImage.NULL_IMAGE_ARRAY);
        list := TBasicArrayList(TJava.ToObject(hashtable.get(TJava.Box(TJava.Box(name)))));
        features_ := TFeatures.getInstance();
        ADD_CHOICE := ': Adding Choice: ';
        GET_CHOICE_GROUP := 'getChoiceGroup';
        size := list.size();
        for index := 0 to size - 1 do begin
            gameFeature := TFeature(TJava.ToObject(list.objectArray[index]));
            stringMaker_.delete_(0, stringMaker_.length());
            Self.logUtil.putF(stringMaker_.append(name).append(ADD_CHOICE).append(gameFeature.toString()).toString(), TJava.Box(Self), GET_CHOICE_GROUP);
            choiceGroup_.append(gameFeature.toString(), TNullImage.NULL_IMAGE);
            if features_.isFeature(gameFeature) then begin
                choiceGroup_.setSelectedIndex(index, True);
            end;
        end;
        Exit(choiceGroup_);
end;
    

procedure TGameFeatureFormUtil.addChoiceGroup(form: TCommandForm; hashtable: TABHashtable<TObject, TObject>; option: Integer);
var
  stringMaker_: TStringMaker;
  ADDING_CHOICE_GROUP: string;
  ADD_CHOICE_GROUP: string;
  size: Integer;
  objectArray: TArray<TObject>;
  name: string;
  index: Integer;
begin
        stringMaker_ := TStringMaker.Create();
        ADDING_CHOICE_GROUP := 'Adding Choice Group: ';
        ADD_CHOICE_GROUP := 'addChoiceGroup';
        size := hashtable.size();
        objectArray := THashtableUtil.getInstance().getKeysAsArray(hashtable);
        
        for index := 0 to size - 1 do begin
            name := TJava.UnboxString(TJava.ToObject(objectArray[index]));
            stringMaker_.delete_(0, stringMaker_.length());
            Self.logUtil.putF(stringMaker_.append(ADDING_CHOICE_GROUP).append(name).toString(), TJava.Box(Self), ADD_CHOICE_GROUP);
            Self.meUtil.appendItem(form, Self.getChoiceGroup(hashtable, name, option));
        end;
end;
    

// throws Exception
procedure TGameFeatureFormUtil.setDefault(form: TCommandForm);
var
  size: Integer;
  item_: TItem;
  index: Integer;
begin
        size := form.size();
        for index := 0 to size - 1 do begin
            item_ := form.get(index);
            if (TJava.ToObject(item_) is TGameConfigurationGauge) then begin
                TGameConfigurationUtil.getInstance().setDefault(TGameConfigurationGauge(TJava.ToObject(item_)));
            end else if (TJava.ToObject(item_) is TChoiceGroup) then begin
                TGameFeatureUtil.getInstance().setDefault(TChoiceGroup(TJava.ToObject(item_)));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TGameFeatureFormUtil.instance := TGameFeatureFormUtil.Create();
  {AB:END}

end.

