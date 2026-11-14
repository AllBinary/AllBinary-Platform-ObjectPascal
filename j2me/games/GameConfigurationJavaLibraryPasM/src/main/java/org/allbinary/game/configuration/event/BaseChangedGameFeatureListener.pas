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
// package org.allbinary.game.configuration.event
unit BaseChangedGameFeatureListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Feature, GameFeatureUtil, LogUtil, AllBinaryEventObject, BasicArrayList, GameFeatureEvent, GameFeatureListenerInterface, EventListenerInterface;

type
  {AB:TYPES}
  TBaseChangedGameFeatureListener = class(TInterfacedObject, IGameFeatureListenerInterface, IEventListenerInterface)
  public
    logUtil: TLogUtil;
    gameFeatureUtil: TGameFeatureUtil;
    list: TBasicArrayList;
    changed: Boolean;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onGameFeatureChange(gameFeatureEvent_: TGameFeatureEvent); virtual;
        procedure add(gameFeature: TFeature); virtual;
        procedure remove(gameFeature: TFeature); virtual;
        procedure setChanged(initialized: Boolean); virtual;
        function isChangedFeature(gameFeature: TFeature): Boolean; virtual;
        function isChanged: Boolean; virtual;
  end;

implementation
uses
  Features, ForcedLogUtil, StringMaker, StringUtil, CommonStrings, BasicArrayListD;


{AB:CODE}

procedure TBaseChangedGameFeatureListener.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.gameFeatureUtil := TGameFeatureUtil.getInstance();
  Self.list := TBasicArrayListD.Create();
  Self.changed := True;
end;

function TBaseChangedGameFeatureListener.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TBaseChangedGameFeatureListener.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TBaseChangedGameFeatureListener.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TCommonStrings.getInstance().NOT_IMPLEMENTED, TJava.Box(Self));
end;
    

procedure TBaseChangedGameFeatureListener.onGameFeatureChange(gameFeatureEvent_: TGameFeatureEvent);
begin
        Self.logUtil.putF(TStringMaker.Create().append(Self.gameFeatureUtil.GAME_FEATURE_CHANGED).append(gameFeatureEvent_.getWhatChanged()).toString(), TJava.Box(Self), Self.gameFeatureUtil.ON_GAME_FEATURE_CHANGE);
        Self.list.add(TJava.Box(gameFeatureEvent_.getGameOption()));
        Self.setChanged(True);
end;
    

procedure TBaseChangedGameFeatureListener.add(gameFeature: TFeature);
begin
        Self.list.add(TJava.Box(gameFeature));
end;
    

procedure TBaseChangedGameFeatureListener.remove(gameFeature: TFeature);
begin
        Self.list.remove(gameFeature);
end;
    

procedure TBaseChangedGameFeatureListener.setChanged(initialized: Boolean);
begin
        Self.changed := initialized;
        if not (Self.isChanged()) then begin
            Self.list.clear();
        end;
end;
    

function TBaseChangedGameFeatureListener.isChangedFeature(gameFeature: TFeature): Boolean;
var
  isChanged: Boolean;
  stringBuffer: TStringMaker;
begin
        isChanged := Self.list.contains(TJava.Box(gameFeature));
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('GameFeature: ');
        stringBuffer.append(TStringUtil.getInstance().toString(gameFeature));
        stringBuffer.append(' isFeature: ');
        stringBuffer.appendboolean(TFeatures.getInstance().isFeature(gameFeature));
        stringBuffer.append(' isChanged: ');
        stringBuffer.appendboolean(isChanged);
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'isChanged');
        Exit(isChanged);
end;
    

function TBaseChangedGameFeatureListener.isChanged: Boolean;
begin
        Exit(Self.changed);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

