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
unit GameFeatureItemCommandListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, Item, ItemCommandListener, GameOptionsForm, LogUtil;

type
  {AB:TYPES}
  TGameFeatureItemCommandListener = class(TInterfacedObject, IItemCommandListener)
  public
    logUtil: TLogUtil;
    gameOptionsForm: TGameOptionsForm;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(gameOptionsForm_: TGameOptionsForm);
        procedure commandAction(command_: TCommand; item_: TItem); virtual;
  end;

implementation
uses
  GameConfigurationGauge, GameConfigurationUtil, StringMaker, MidletStrings, CommonLabels, CommonStrings;


{AB:CODE}

procedure TGameFeatureItemCommandListener.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TGameFeatureItemCommandListener.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGameFeatureItemCommandListener.Create(gameOptionsForm_: TGameOptionsForm);
begin
    inherited Create;
    InitFields;
        Self.gameOptionsForm := gameOptionsForm_;
end;
    

procedure TGameFeatureItemCommandListener.commandAction(command_: TCommand; item_: TItem);
var
  itemLabel: string;
  commonStrings_: TCommonStrings;
begin
        try
            itemLabel := item_.getLabel();
            Self.logUtil.putF(TStringMaker.Create().append(TCommonLabels.getInstance().ITEM_LABEL).append(itemLabel).toString(), TJava.Box(Self), TMidletStrings.getInstance().COMMAND_ACTION);
            if (TJava.ToObject(item_) is TGameConfigurationGauge) then begin
                TGameConfigurationUtil.getInstance().change(Self.gameOptionsForm, TGameConfigurationGauge(TJava.ToObject(item_)));
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), TMidletStrings.getInstance().COMMAND_ACTION, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

