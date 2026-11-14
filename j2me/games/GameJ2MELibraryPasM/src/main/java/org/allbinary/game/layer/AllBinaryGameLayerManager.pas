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
// package org.allbinary.game.layer
unit AllBinaryGameLayerManager;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInfo, PlayerGameInputCompositeInterface, BasicColor, AllBinaryLayerManager, BasicArrayList;

type
  {AB:TYPES}
  TAllBinaryGameLayerManager = class(TAllBinaryLayerManager)
  public
    backgroundBasicColor: TBasicColor;
    foregroundBasicColor: TBasicColor;
    gameInfo: TGameInfo;
    playerGameInputCompositeInterface: IPlayerGameInputCompositeInterface;
    class var NULL_ALLBINARY_LAYER_MANAGER: TObject;
    class var ID: Integer;
    procedure InitFields;
        class function getNullInstance: TAllBinaryGameLayerManager; static;
        constructor Create(backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor; gameInfo_: TGameInfo);
        function getLayerManager: TAllBinaryLayerManager; virtual;
        procedure init; virtual;
        function getBackgroundBasicColor: TBasicColor; virtual;
        procedure setBackgroundBasicColor(backgroundBasicColor: TBasicColor); virtual;
        function getForegroundBasicColor: TBasicColor; virtual;
        procedure setForegroundBasicColor(foregroundBasicColor: TBasicColor); virtual;
        function getGameInfo: TGameInfo; virtual;
        procedure setGameInfo(gameInfo_: TGameInfo); virtual;
        procedure setLayerProcessorList(list: TBasicArrayList); virtual;
        procedure setPlayerGameInputCompositeInterface(playerGameInputCompositeInterface_: IPlayerGameInputCompositeInterface); virtual;
        function getPlayerGameInputCompositeInterface: IPlayerGameInputCompositeInterface; virtual;
  end;

implementation
uses
  NullPlayerGameInputComposite, ItemColorFactory, BasicColorFactory, LayerProcessor, NullUtil, SmallIntegerSingletonFactory;


{AB:CODE}

procedure TAllBinaryGameLayerManager.InitFields;
begin
  
  
  
  Self.playerGameInputCompositeInterface := TNullPlayerGameInputComposite.NULL_PLAYER_GAME_INPUT_COMPOSITE;
end;
    

class function TAllBinaryGameLayerManager.getNullInstance: TAllBinaryGameLayerManager;
begin
        if (TAllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TAllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER := TAllBinaryGameLayerManager.Create(TBasicColorFactory.getInstance().BLACK, TBasicColorFactory.getInstance().WHITE, TGameInfo.NONE);
        end;
        Exit(TAllBinaryGameLayerManager(TJava.ToObject(TAllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER)));
end;
    

constructor TAllBinaryGameLayerManager.Create(backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor; gameInfo_: TGameInfo);
var
  itemColorFactory_: TItemColorFactory;
begin
    inherited Create;
    InitFields;
        Self.backgroundBasicColor := backgroundBasicColor;
        Self.foregroundBasicColor := foregroundBasicColor;
        itemColorFactory_ := TItemColorFactory.getInstance();
        itemColorFactory_.INVERT_PAINT := Self.backgroundBasicColor.intValue();
        itemColorFactory_.PAINT := Self.foregroundBasicColor.intValue();
        Self.gameInfo := gameInfo_;
end;
    

function TAllBinaryGameLayerManager.getLayerManager: TAllBinaryLayerManager;
begin
        Exit(Self);
end;
    

procedure TAllBinaryGameLayerManager.init;
begin
end;
    

function TAllBinaryGameLayerManager.getBackgroundBasicColor: TBasicColor;
begin
        Exit(Self.backgroundBasicColor);
end;
    

procedure TAllBinaryGameLayerManager.setBackgroundBasicColor(backgroundBasicColor: TBasicColor);
begin
        Self.backgroundBasicColor := backgroundBasicColor;
        TItemColorFactory.getInstance().INVERT_PAINT := Self.backgroundBasicColor.intValue();
end;
    

function TAllBinaryGameLayerManager.getForegroundBasicColor: TBasicColor;
begin
        Exit(Self.foregroundBasicColor);
end;
    

procedure TAllBinaryGameLayerManager.setForegroundBasicColor(foregroundBasicColor: TBasicColor);
begin
        Self.foregroundBasicColor := foregroundBasicColor;
        TItemColorFactory.getInstance().PAINT := Self.foregroundBasicColor.intValue();
end;
    

function TAllBinaryGameLayerManager.getGameInfo: TGameInfo;
begin
        Exit(Self.gameInfo);
end;
    

procedure TAllBinaryGameLayerManager.setGameInfo(gameInfo_: TGameInfo);
begin
        Self.gameInfo := gameInfo_;
end;
    

procedure TAllBinaryGameLayerManager.setLayerProcessorList(list: TBasicArrayList);
var
  layerProcessorInterfaceArray: TArray<TLayerProcessor>;
  size: Integer;
  index: Integer;
begin
        layerProcessorInterfaceArray := TJava.NewArray<TLayerProcessor>(list.size());
        size := System.Length(layerProcessorInterfaceArray);
        for index := 0 to size - 1 do begin
            layerProcessorInterfaceArray[index] := TLayerProcessor(TJava.ToObject(list.objectArray[index]));
        end;
        Self.setLayerProcessorArray(layerProcessorInterfaceArray);
end;
    

procedure TAllBinaryGameLayerManager.setPlayerGameInputCompositeInterface(playerGameInputCompositeInterface_: IPlayerGameInputCompositeInterface);
begin
        Self.playerGameInputCompositeInterface := playerGameInputCompositeInterface_;
end;
    

function TAllBinaryGameLayerManager.getPlayerGameInputCompositeInterface: IPlayerGameInputCompositeInterface;
begin
        Exit(Self.playerGameInputCompositeInterface);
end;

initialization
  {AB:INITIALIZATION}
  TAllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  TAllBinaryGameLayerManager.ID := TSmallIntegerSingletonFactory.getInstance().getAt(22);
  {AB:END}

end.

