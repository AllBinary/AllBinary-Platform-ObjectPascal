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
unit GameInitializationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInitializedEvent, MyCanvas, AbeClientInformationInterface, BasicBuildGameInitializerFactory;

type
  {AB:TYPES}
  TGameInitializationUtil = class(TObject)
  public
    EVENT: TGameInitializedEvent;
    class var instance: TGameInitializationUtil;
    procedure InitFields;
    constructor Create;
        procedure initDemo(abeClientInformation: IAbeClientInformationInterface; canvas: TMyCanvas; gameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory);
        procedure initGame(abeClientInformation: IAbeClientInformationInterface; canvas: TMyCanvas; gameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory);
        class function getInstance: TGameInitializationUtil; static;
  end;

implementation
uses
  GameInitializationInterface, ChangedGameFeatureListener, GameInitializedEventHandler, Features, MainFeatureFactory, ResourceLoadingLevelFactory;


{AB:CODE}

procedure TGameInitializationUtil.InitFields;
begin
  Self.EVENT := TGameInitializedEvent.Create(TJava.Box(Self));
end;

constructor TGameInitializationUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws Exception
procedure TGameInitializationUtil.initDemo(abeClientInformation: IAbeClientInformationInterface; canvas: TMyCanvas; gameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory);
var
  mainFeatureFactory_: TMainFeatureFactory;
  gameInitializationInterface_: IGameInitializationInterface;
  features_: TFeatures;
  resourceLoadingLevelFactory_: TResourceLoadingLevelFactory;
begin
        mainFeatureFactory_ := TMainFeatureFactory.getInstance();
        if TChangedGameFeatureListener.getInstance().isChangedFeature(mainFeatureFactory_.STATIC_) then begin
            gameInitializationInterface_ := gameInitializationInterfaceFactoryInterface.getInstance();
            features_ := TFeatures.getInstance();
            if features_.isFeature(mainFeatureFactory_.LOAD_ALL) then begin
                Self.initGame(abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface);
            end else if features_.isFeature(mainFeatureFactory_.LOAD_ONDEMAND) then begin
                resourceLoadingLevelFactory_ := TResourceLoadingLevelFactory.getInstance();
                gameInitializationInterface_.init(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory_.LOAD_EARLY.getLevel());
                Self.EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory_.LOAD_EARLY);
            end else begin
                raise SysUtils.Exception.Create('No Loading Feature Available');
            end;
            TGameInitializedEventHandler.getInstance().fireEvent(Self.EVENT);
        end;
end;
    

// throws Exception
procedure TGameInitializationUtil.initGame(abeClientInformation: IAbeClientInformationInterface; canvas: TMyCanvas; gameInitializationInterfaceFactoryInterface: TBasicBuildGameInitializerFactory);
var
  gameInitializationInterface_: IGameInitializationInterface;
  resourceLoadingLevelFactory_: TResourceLoadingLevelFactory;
begin
        if TChangedGameFeatureListener.getInstance().isChangedFeature(TMainFeatureFactory.getInstance().STATIC_) then begin
            gameInitializationInterface_ := gameInitializationInterfaceFactoryInterface.getInstance();
            resourceLoadingLevelFactory_ := TResourceLoadingLevelFactory.getInstance();
            gameInitializationInterface_.init(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory_.LOAD_ALL.getLevel());
            Self.EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory_.LOAD_ALL);
            TGameInitializedEventHandler.getInstance().fireEvent(Self.EVENT);
            TChangedGameFeatureListener.getInstance().remove(TMainFeatureFactory.getInstance().STATIC_);
        end;
end;
    

class function TGameInitializationUtil.getInstance: TGameInitializationUtil;
begin
        Exit(TGameInitializationUtil.instance);
end;

initialization
  {AB:INITIALIZATION}
  TGameInitializationUtil.instance := TGameInitializationUtil.Create();
  {AB:END}

end.

