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
// package org.allbinary.game.layer.resources
unit OnDemandLoader;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BaseResourceAnimationInterfaceFactoryInterfaceFactory, GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, LayerPlacementInterfaceBasicArrayListFactoryInterface, ImageCache, OnDemandResourcesFactory;

type
  {AB:TYPES}
  TOnDemandLoader = class(TObject)
  public
    onDemandResourcesFactory: TOnDemandResourcesFactory;
    gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory: IGameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory;
    resourceAnimationInterfaceFactoryInterfaceFactory: TBaseResourceAnimationInterfaceFactoryInterfaceFactory;
    procedure InitFields;
        constructor Create(onDemandResourcesFactory_: TOnDemandResourcesFactory; gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_: IGameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory; resourceAnimationInterfaceFactoryInterfaceFactory: TBaseResourceAnimationInterfaceFactoryInterfaceFactory);
        procedure init(imageCache_: TImageCache; level: Integer; loadingString: string); virtual;
        procedure initAll(imageCache_: TImageCache; loadingString: string);
        procedure initLevel(layerPlacementInterfaceBasicArrayListFactoryInterface_: ILayerPlacementInterfaceBasicArrayListFactoryInterface; imageCache_: TImageCache; level: Integer; loadingString: string);
  end;

implementation
uses
  OnDemandResources, Features, MainFeatureFactory, ResourceLoadingLevelFactory, PreLogUtil, StringMaker, CommonStrings;


{AB:CODE}

procedure TOnDemandLoader.InitFields;
begin
  
  
  
end;
    

constructor TOnDemandLoader.Create(onDemandResourcesFactory_: TOnDemandResourcesFactory; gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_: IGameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory; resourceAnimationInterfaceFactoryInterfaceFactory: TBaseResourceAnimationInterfaceFactoryInterfaceFactory);
begin
    inherited Create;
    InitFields;
        Self.onDemandResourcesFactory := onDemandResourcesFactory_;
        Self.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory := gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_;
        Self.resourceAnimationInterfaceFactoryInterfaceFactory := resourceAnimationInterfaceFactoryInterfaceFactory;
end;
    

// throws Exception
procedure TOnDemandLoader.init(imageCache_: TImageCache; level: Integer; loadingString: string);
var
  resourceLoadingLevelFactory_: TResourceLoadingLevelFactory;
  layerPlacementInterfaceBasicArrayListFactoryInterface_: ILayerPlacementInterfaceBasicArrayListFactoryInterface;
begin
        resourceLoadingLevelFactory_ := TResourceLoadingLevelFactory.getInstance();
        if TFeatures.getInstance().isFeature(TMainFeatureFactory.getInstance().LOAD_ALL) then begin
            if Self.resourceAnimationInterfaceFactoryInterfaceFactory.isInitialized() then begin
                Exit;
            end;
            Self.initAll(imageCache_, loadingString);
        end else if (level) <> (resourceLoadingLevelFactory_.LOAD_ALL.getLevel()) then begin
            layerPlacementInterfaceBasicArrayListFactoryInterface_ := Self.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.getInstance(level);
            Self.initLevel(layerPlacementInterfaceBasicArrayListFactoryInterface_, imageCache_, level, loadingString);
        end;
end;
    

// throws Exception
procedure TOnDemandLoader.initAll(imageCache_: TImageCache; loadingString: string);
var
  index: Integer;
  portion: Integer;
  onDemandResources_: TOnDemandResources;
  onDemandIndex: Integer;
begin
        index := 0;
        portion := 120;
        
        onDemandIndex := Self.onDemandResourcesFactory.size();
        while (TJava.PreDec(onDemandIndex)) >= (0) do begin
            onDemandResources_ := Self.onDemandResourcesFactory.remove(onDemandIndex);
            if (onDemandResources_) <> (TOnDemandResources.NULL_ON_DEMAND_RESOURCES) then begin
                index := onDemandResources_.initAt(imageCache_, Self.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index);
            end;
        end;
end;
    

// throws Exception
procedure TOnDemandLoader.initLevel(layerPlacementInterfaceBasicArrayListFactoryInterface_: ILayerPlacementInterfaceBasicArrayListFactoryInterface; imageCache_: TImageCache; level: Integer; loadingString: string);
var
  commonStrings_: TCommonStrings;
  portion: Integer;
  index: Integer;
  onDemandArray: TArray<Integer>;
  onDemandResources_: TOnDemandResources;
  onDemandIndex: Integer;
begin
        commonStrings_ := TCommonStrings.getInstance();
        portion := 120;
        index := 0;
        onDemandArray := layerPlacementInterfaceBasicArrayListFactoryInterface_.getOnDemandResources();
        TPreLogUtil.put(TStringMaker.Create().append(commonStrings_.START).appendint(System.Length(onDemandArray)).toString(), TJava.Box(Self), 'initLevel');
        
        onDemandIndex := System.Length(onDemandArray);
        while (TJava.PreDec(onDemandIndex)) >= (0) do begin
            onDemandResources_ := Self.onDemandResourcesFactory.remove(onDemandArray[onDemandIndex]);
            if (onDemandResources_) <> (TOnDemandResources.NULL_ON_DEMAND_RESOURCES) then begin
                index := onDemandResources_.initAt(imageCache_, Self.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

