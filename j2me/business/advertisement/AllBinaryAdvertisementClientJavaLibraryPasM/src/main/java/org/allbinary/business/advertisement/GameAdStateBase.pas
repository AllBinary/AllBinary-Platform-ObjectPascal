{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.business.advertisement
unit GameAdStateBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameType, GameState, AllBinaryEventObject, AdConfiguration, Advertisements;

type
  {AB:TYPES}
  TGameAdStateBase = class(TObject)
  public
    adConfigurationP: TAdConfiguration;
    advertisementsP: TAdvertisements;
    okayToShowAdsP: Boolean;
    procedure InitFields;
        constructor Create(adConfiguration_: TAdConfiguration);
        procedure initViewArray(viewArray: TArray<TObject>); virtual;
        procedure onStart(anyType: TObject); virtual;
        procedure init; virtual;
        function isShowingAtLocation(location: Integer): Boolean; virtual;
        function isShowingAt: Boolean; virtual;
        procedure show; virtual;
        procedure hide; virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure processAdState(gameState_: TGameState; gameType_: TGameType); virtual;
        procedure processPageAdState; virtual;
        procedure playingAdState; virtual;
        procedure playingAdStateWH(width: Integer; height: Integer); virtual;
        procedure notPlayingAdState; virtual;
        procedure setGameIsReady(gameIsReady: Boolean); virtual;
        function isGameIsReady: Boolean; virtual;
        function getAdvertisements: TAdvertisements; virtual;
        function getAdConfiguration: TAdConfiguration; virtual;
        function isOkayToShowPageAd: Boolean; virtual;
        procedure setOkayToShowAds(okayToShowAds: Boolean); virtual;
        function isOkayToShowAds: Boolean; virtual;
        function isEnabled: Boolean; virtual;
  end;

implementation
uses
  ForcedLogUtil, EventStrings;


{AB:CODE}

procedure TGameAdStateBase.InitFields;
begin
  
  Self.advertisementsP := TAdvertisements.Create();
  
end;
    

constructor TGameAdStateBase.Create(adConfiguration_: TAdConfiguration);
begin
    inherited Create;
    InitFields;
        Self.adConfigurationP := adConfiguration_;
end;
    

procedure TGameAdStateBase.initViewArray(viewArray: TArray<TObject>);
begin
end;
    

procedure TGameAdStateBase.onStart(anyType: TObject);
begin
        Self.init();
end;
    

procedure TGameAdStateBase.init;
begin
end;
    

function TGameAdStateBase.isShowingAtLocation(location: Integer): Boolean;
begin
        Exit(False);
end;
    

function TGameAdStateBase.isShowingAt: Boolean;
begin
        Exit(False);
end;
    

procedure TGameAdStateBase.show;
begin
end;
    

procedure TGameAdStateBase.hide;
begin
end;
    

procedure TGameAdStateBase.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

procedure TGameAdStateBase.processAdState(gameState_: TGameState; gameType_: TGameType);
begin
end;
    

procedure TGameAdStateBase.processPageAdState;
begin
end;
    

// throws Exception
procedure TGameAdStateBase.playingAdState;
begin
end;
    

// throws Exception
procedure TGameAdStateBase.playingAdStateWH(width: Integer; height: Integer);
begin
end;
    

// throws Exception
procedure TGameAdStateBase.notPlayingAdState;
begin
end;
    

procedure TGameAdStateBase.setGameIsReady(gameIsReady: Boolean);
begin
end;
    

function TGameAdStateBase.isGameIsReady: Boolean;
begin
        Exit(False);
end;
    

function TGameAdStateBase.getAdvertisements: TAdvertisements;
begin
        Exit(Self.advertisementsP);
end;
    

function TGameAdStateBase.getAdConfiguration: TAdConfiguration;
begin
        Exit(Self.adConfigurationP);
end;
    

function TGameAdStateBase.isOkayToShowPageAd: Boolean;
begin
        Exit(False);
end;
    

procedure TGameAdStateBase.setOkayToShowAds(okayToShowAds: Boolean);
begin
        Self.okayToShowAdsP := okayToShowAds;
end;
    

function TGameAdStateBase.isOkayToShowAds: Boolean;
begin
        Exit(Self.okayToShowAdsP);
end;
    

function TGameAdStateBase.isEnabled: Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

