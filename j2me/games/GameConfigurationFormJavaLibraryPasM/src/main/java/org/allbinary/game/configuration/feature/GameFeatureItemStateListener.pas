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
unit GameFeatureItemStateListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Item, ItemStateListener, GameOptionsForm, LogUtil, BasicArrayList, GameFeature;

type
  {AB:TYPES}
  TGameFeatureItemStateListener = class(TInterfacedObject, IItemStateListener)
  public
    logUtil: TLogUtil;
    gameOptionsForm: TGameOptionsForm;
    class var toggleList: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(gameOptionsForm_: TGameOptionsForm);
        class procedure add(gameFeature_: TGameFeature); static;
        procedure itemStateChanged(item_: TItem); virtual;
  end;

implementation
uses
  GameFeatureFactory, GameFeatureUtil, ChoiceGroup, GameConfigurationGauge, GameConfigurationUtil, StringMaker, CommonLabels, CommonStrings, BasicArrayListD;


{AB:CODE}

procedure TGameFeatureItemStateListener.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TGameFeatureItemStateListener.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGameFeatureItemStateListener.Create(gameOptionsForm_: TGameOptionsForm);
var
  gameFeatureFactory_: TGameFeatureFactory;
begin
    inherited Create;
    InitFields;
        Self.gameOptionsForm := gameOptionsForm_;
        gameFeatureFactory_ := TGameFeatureFactory.getInstance();
        TGameFeatureItemStateListener.add(gameFeatureFactory_.ARTIFICIAL_INTELLEGENCE_PROCESSOR);
        TGameFeatureItemStateListener.add(gameFeatureFactory_.COLLIDABLE_INTERFACE_LAYER_PROCESSOR);
        TGameFeatureItemStateListener.add(gameFeatureFactory_.DAMAGE_FLOATERS);
        TGameFeatureItemStateListener.add(gameFeatureFactory_.DROPPED_ITEMS);
        TGameFeatureItemStateListener.add(gameFeatureFactory_.GAME_INPUT_LAYER_PROCESSOR);
        TGameFeatureItemStateListener.add(gameFeatureFactory_.HEALTH_BARS);
        TGameFeatureItemStateListener.add(gameFeatureFactory_.SOUND);
        TGameFeatureItemStateListener.add(gameFeatureFactory_.TICKABLE_LAYER_PROCESSOR);
end;
    

class procedure TGameFeatureItemStateListener.add(gameFeature_: TGameFeature);
begin
        if not (TGameFeatureItemStateListener.toggleList.contains(TJava.Box(gameFeature_))) then begin
            TGameFeatureItemStateListener.toggleList.add(TJava.Box(gameFeature_));
        end;
end;
    

procedure TGameFeatureItemStateListener.itemStateChanged(item_: TItem);
var
  itemLabel: string;
  gameFeatureUtil_: TGameFeatureUtil;
  commonStrings_: TCommonStrings;
begin
        try
            itemLabel := item_.getLabel();
            Self.logUtil.putF(TStringMaker.Create().append(TCommonLabels.getInstance().ITEM_LABEL).append(itemLabel).toString(), TJava.Box(Self), 'itemStateChanged');
            if (TJava.ToObject(item_) is TGameConfigurationGauge) then begin
                TGameConfigurationUtil.getInstance().change(Self.gameOptionsForm, TGameConfigurationGauge(TJava.ToObject(item_)));
            end else if (TJava.ToObject(item_) is TChoiceGroup) then begin
                gameFeatureUtil_ := TGameFeatureUtil.getInstance();
                if gameFeatureUtil_.isExclusive(itemLabel) then begin
                    gameFeatureUtil_.updateExclusiveForChoiceGroup(TChoiceGroup(TJava.ToObject(item_)));
                end else begin
                    gameFeatureUtil_.updateMultiple(TChoiceGroup(TJava.ToObject(item_)));
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'itemStateChanged', TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TGameFeatureItemStateListener.toggleList := TBasicArrayListD.Create();
  {AB:END}

end.

