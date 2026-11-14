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
// package org.allbinary.game.combat.canvas
unit CombatGameCanvas;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, AllBinaryGameCanvas, BasicBuildGameInitializerFactory, AllBinaryGameLayerManager, HighScoresFactoryInterface, BasicLayerProcessor, AbeClientInformationInterface;

type
  {AB:TYPES}
  TCombatGameCanvas = class(TAllBinaryGameCanvas)
  public
    class var basicLayerProcessor: TArray<TBasicLayerProcessor>;
        constructor Create(cmdListener: ICommandListener; gameLayerManager: TAllBinaryGameLayerManager; highScoresFactoryInterface_: IHighScoresFactoryInterface; gameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory; buffered: Boolean);
        procedure CombatGameCanvas_init;
        procedure initApp(abeClientInformation: IAbeClientInformationInterface); override;
        procedure initConfigurablePortion(portion: Integer); virtual;
        procedure processPlayingGame; override;
        procedure cleanupGame; override;
        procedure cleanupManager; virtual;
  end;

implementation
uses
  DestroyedLayerProcessor, DestroyEventCircularStaticPool, DestroyedEventHandler, Features, GameFeatureFactory, DropLayerProcessor, GroupLayerManagerListener, ProgressCanvasFactory;


{AB:CODE}
    

constructor TCombatGameCanvas.Create(cmdListener: ICommandListener; gameLayerManager: TAllBinaryGameLayerManager; highScoresFactoryInterface_: IHighScoresFactoryInterface; gameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory; buffered: Boolean);
begin
        inherited Create(cmdListener, gameLayerManager, highScoresFactoryInterface_, gameInitializationInterfaceFactoryInterface, buffered);
end;
    

procedure TCombatGameCanvas.CombatGameCanvas_init;
begin
        TDestroyEventCircularStaticPool.getInstance().init(Self);
        TProgressCanvasFactory.getInstance().addNormalPortion(50, 'Destroy Events');
end;
    

// throws Exception
procedure TCombatGameCanvas.initApp(abeClientInformation: IAbeClientInformationInterface);
begin
        Self.CombatGameCanvas_init();
        inherited initApp(abeClientInformation);
end;
    

procedure TCombatGameCanvas.initConfigurablePortion(portion: Integer);
var
  features_: TFeatures;
  gameFeatureFactory_: TGameFeatureFactory;
begin
        TDestroyedLayerProcessor.init();
        TProgressCanvasFactory.getInstance().addNormalPortion(portion, 'Basic Processors');
        features_ := TFeatures.getInstance();
        gameFeatureFactory_ := TGameFeatureFactory.getInstance();
        if (features_.isFeature(gameFeatureFactory_.DROPPED_ITEMS)) and (features_.isFeature(gameFeatureFactory_.DROPPED_ITEMS_FROM_DEATH)) then begin
            TCombatGameCanvas.basicLayerProcessor := TJava.NewArray<TBasicLayerProcessor>(2);
            TCombatGameCanvas.basicLayerProcessor[0] := TDestroyedLayerProcessor.getInstance();
            TCombatGameCanvas.basicLayerProcessor[1] := TDropLayerProcessor.getInstance();
        end else begin
            TCombatGameCanvas.basicLayerProcessor := TJava.NewArray<TBasicLayerProcessor>(1);
            TCombatGameCanvas.basicLayerProcessor[0] := TDestroyedLayerProcessor.getInstance();
        end;
end;
    

// throws Exception
procedure TCombatGameCanvas.processPlayingGame;
var
  index: Integer;
begin
        inherited processPlayingGame();
        index := System.Length(TCombatGameCanvas.basicLayerProcessor);
        while (TJava.PreDec(index)) >= (0) do begin
            TCombatGameCanvas.basicLayerProcessor[index].process(Self.gameLayerManager);
        end;
end;
    

// throws Exception
procedure TCombatGameCanvas.cleanupGame;
var
  index: Integer;
begin
        inherited cleanupGame();
        index := System.Length(TCombatGameCanvas.basicLayerProcessor);
        while (TJava.PreDec(index)) >= (0) do begin
            TCombatGameCanvas.basicLayerProcessor[index].getList().clear();
        end;
        TGroupLayerManagerListener.getInstance().clear();
        TGroupLayerManagerListener.getInstance().log();
        TDestroyedEventHandler.getInstance().removeAllListeners();
        Self.cleanupManager();
end;
    

// throws Exception
procedure TCombatGameCanvas.cleanupManager;
begin
        Self.gameLayerManager.cleanup();
end;

initialization
  {AB:INITIALIZATION}
  TCombatGameCanvas.basicLayerProcessor := nil;
  {AB:END}

end.

