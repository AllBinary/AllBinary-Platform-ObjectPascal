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
// package org.allbinary.game.init
unit BaseGameInitialization;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, ResourceInitialization, AbeClientInformationInterface, GameInitializationInterface;

type
  {AB:TYPES}
  TBaseGameInitialization = class(TInterfacedObject, IGameInitializationInterface)
  public
    resourceInitializationArray: TArray<TResourceInitialization>;
    portion: Integer;
    initialized: Boolean;
    EARLY_RESOURCES: Integer;
    GAME_RESOURCES: Integer;
    EARLY_CHANGABLE_RESOURCES: Integer;
    GAME_CHANGABLE_RESOURCES: Integer;
    gameInitialized: Boolean;
    allLoaded: Boolean;
    class var NULL_BASE_GAME_INITIALIZATION: TBaseGameInitialization;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(resourceInitializationArray: TArray<TResourceInitialization>; portion: Integer);
        procedure initKey(portion: Integer); virtual;
        procedure initKeyMapping(abeClientInformation: IAbeClientInformationInterface; portion: Integer); virtual;
        procedure init(abeClientInformation: IAbeClientInformationInterface; commandListener_: ICommandListener; level: Integer); virtual;
        procedure resourceInitialization(level: Integer); virtual;
        function resourceAnimationChange: Boolean; virtual;
        procedure clearResources;
        procedure setGameInitialized(gameInitialized: Boolean); virtual;
        function isGameInitialized: Boolean; virtual;
        function getPortion: Integer; virtual;
        procedure setInitialized(initialized: Boolean); virtual;
        function isInitialized: Boolean; virtual;
  end;

implementation
uses
  FeaturedAnimationInterfaceFactoryInterfaceFactory, GameConfigurationCentral, ChangedGameFeatureListener, InputFeatureFactory, MainFeatureFactory, PlatformInputMappingFactory, GameKeyEventFactory, FeaturedResourceRelativeRelationshipFactory, ResourceLoadingLevelFactory, ProgressCanvas, ProgressCanvasFactory, GameFeatureImageCacheFactory, CompleteMotionGestureInputToGameMotionGestureInput, BasicTouchInputFactory, CancelTouchButtonInputFactory;


{AB:CODE}

procedure TBaseGameInitialization.InitFields;
begin
  
  
  
  Self.EARLY_RESOURCES := 0;
  Self.GAME_RESOURCES := 1;
  Self.EARLY_CHANGABLE_RESOURCES := 2;
  Self.GAME_CHANGABLE_RESOURCES := 3;
  
  
end;

function TBaseGameInitialization.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBaseGameInitialization.Create(resourceInitializationArray: TArray<TResourceInitialization>; portion: Integer);
begin
    inherited Create;
    InitFields;
        Self.resourceInitializationArray := resourceInitializationArray;
        Self.portion := portion;
end;
    

// throws Exception
procedure TBaseGameInitialization.initKey(portion: Integer);
begin
end;
    

// throws Exception
procedure TBaseGameInitialization.initKeyMapping(abeClientInformation: IAbeClientInformationInterface; portion: Integer);
begin
        if TChangedGameFeatureListener.getInstance().isChangedFeature(TInputFeatureFactory.getInstance().INPUT_MAPPING) then begin
            TPlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().init(abeClientInformation);
            TProgressCanvasFactory.getInstance().addNormalPortion(50, 'Game Keys');
            TChangedGameFeatureListener.getInstance().remove(TInputFeatureFactory.getInstance().INPUT_MAPPING);
        end;
end;
    

// throws Exception
procedure TBaseGameInitialization.init(abeClientInformation: IAbeClientInformationInterface; commandListener_: ICommandListener; level: Integer);
var
  resourceLoadingLevelFactory_: TResourceLoadingLevelFactory;
  localPortion: Integer;
  progressCanvas_: TProgressCanvas;
begin
        resourceLoadingLevelFactory_ := TResourceLoadingLevelFactory.getInstance();
        if (not (Self.isInitialized())) and ((((level) = (resourceLoadingLevelFactory_.LOAD_ALL.getLevel())) or ((level) = (resourceLoadingLevelFactory_.LOAD_EARLY.getLevel())))) then begin
            localPortion := 40;
            if (level) = (resourceLoadingLevelFactory_.LOAD_EARLY.getLevel()) then begin
                localPortion := 8;
            end;
            Self.setInitialized(True);
            Self.initKey(Self.getPortion());
            Self.initKeyMapping(abeClientInformation, Self.getPortion());
            TGameKeyEventFactory.getInstance().init();
            progressCanvas_ := TProgressCanvasFactory.getInstance();
            progressCanvas_.addNormalPortion(localPortion, 'Game Key Events');
            TBasicTouchInputFactory.getInstance().init(TPlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
            TCancelTouchButtonInputFactory.getInstance();
            progressCanvas_.addNormalPortion(localPortion, 'Touch Input');
            TCompleteMotionGestureInputToGameMotionGestureInput.getInstance().init();
            progressCanvas_.addNormalPortion(localPortion, 'Motion Input');
            TGameFeatureImageCacheFactory.init();
            progressCanvas_.addNormalPortion(localPortion, 'Image Cache');
            Self.resourceInitializationArray[Self.EARLY_RESOURCES].init();
        end;
end;
    

// throws Exception
procedure TBaseGameInitialization.resourceInitialization(level: Integer);
var
  resourceLoadingLevelFactory_: TResourceLoadingLevelFactory;
begin
        resourceLoadingLevelFactory_ := TResourceLoadingLevelFactory.getInstance();
        if (Self.resourceAnimationChange()) and ((level) = (resourceLoadingLevelFactory_.LOAD_EARLY.getLevel())) then begin
            Self.clearResources();
            Self.resourceInitializationArray[Self.EARLY_CHANGABLE_RESOURCES].init();
        end;
        if (Self.resourceAnimationChange()) and ((level) = (resourceLoadingLevelFactory_.LOAD_ALL.getLevel())) then begin
            if Self.allLoaded then begin
                Self.clearResources();
            end;
            if (TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().getList().size()) = (0) then begin
                Self.resourceInitializationArray[Self.EARLY_CHANGABLE_RESOURCES].init();
            end;
            Self.resourceInitializationArray[Self.GAME_CHANGABLE_RESOURCES].init();
            Self.allLoaded := True;
        end;
end;
    

function TBaseGameInitialization.resourceAnimationChange: Boolean;
var
  changedGameFeatureListener_: TChangedGameFeatureListener;
  gameConfigurationCentral_: TGameConfigurationCentral;
begin
        changedGameFeatureListener_ := TChangedGameFeatureListener.getInstance();
        gameConfigurationCentral_ := TGameConfigurationCentral.getInstance();
        if changedGameFeatureListener_.isChangedGameConfiguration(gameConfigurationCentral_.SCALE) then begin
            Exit(True);
        end;
        if TChangedGameFeatureListener.getInstance().isChangedFeature(TMainFeatureFactory.getInstance().STATIC_) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

procedure TBaseGameInitialization.clearResources;
var
  featuredAnimationInterfaceFactoryInterfaceFactory_: TFeaturedAnimationInterfaceFactoryInterfaceFactory;
begin
        Self.allLoaded := False;
        TGameFeatureImageCacheFactory.releaseAll();
        featuredAnimationInterfaceFactoryInterfaceFactory_ := TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance();
        featuredAnimationInterfaceFactoryInterfaceFactory_.clear();
        TFeaturedResourceRelativeRelationshipFactory.getInstance().clear();
end;
    

procedure TBaseGameInitialization.setGameInitialized(gameInitialized: Boolean);
begin
        Self.gameInitialized := gameInitialized;
end;
    

function TBaseGameInitialization.isGameInitialized: Boolean;
begin
        Exit(Self.gameInitialized);
end;
    

function TBaseGameInitialization.getPortion: Integer;
begin
        Exit(Self.portion);
end;
    

procedure TBaseGameInitialization.setInitialized(initialized: Boolean);
begin
        Self.initialized := initialized;
end;
    

function TBaseGameInitialization.isInitialized: Boolean;
begin
        Exit(Self.initialized);
end;

initialization
  {AB:INITIALIZATION}
  TBaseGameInitialization.NULL_BASE_GAME_INITIALIZATION := TBaseGameInitialization.Create(nil, 0);
  {AB:END}

end.

