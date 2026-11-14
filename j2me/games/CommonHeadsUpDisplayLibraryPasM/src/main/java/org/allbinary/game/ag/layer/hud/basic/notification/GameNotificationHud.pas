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
// package org.allbinary.game.ag.layer.hud.basic.notification
unit GameNotificationHud;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicHud, GameNotificationEvent, GameNotificationListenerInterface, BasicColor, AllBinaryEventObject, EventListenerInterface;

type
  {AB:TYPES}
  TGameNotificationHud = class(TBasicHud, IGameNotificationListenerInterface, IEventListenerInterface)
  public
    METHOD_NAME: string;
    lastGameNotificationEvent: TGameNotificationEvent;
    class var NULL_GAME_NOTIFICATION: TGameNotificationHud;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(location: Integer; direction: Integer; bufferZone: Integer; basicColor_: TBasicColor);
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onGameNotificationEvent(gameNotificationEvent_: TGameNotificationEvent); virtual;
        procedure add(string_: string; seconds: Integer; basicColor_: TBasicColor; permanent: Boolean); virtual;
        procedure processTick; virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure clear; virtual;
  end;

implementation
uses
  GameNotification, BasicHudFactory, BasicColorFactory, ForcedLogUtil, EventStrings;


{AB:CODE}

procedure TGameNotificationHud.InitFields;
begin
  Self.METHOD_NAME := 'onGameNotificationEvent';
  Self.lastGameNotificationEvent := TGameNotification.NULL_GAME_NOTIFICATION_EVENT;
end;

function TGameNotificationHud.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGameNotificationHud.Create(location: Integer; direction: Integer; bufferZone: Integer; basicColor_: TBasicColor);
begin
        inherited Create(location, direction, bufferZone, basicColor_);
        InitFields;
end;
    

procedure TGameNotificationHud.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

// throws Exception
procedure TGameNotificationHud.onGameNotificationEvent(gameNotificationEvent_: TGameNotificationEvent);
begin
        if (Self.lastGameNotificationEvent) <> (gameNotificationEvent_) then begin
            Self.lastGameNotificationEvent := gameNotificationEvent_;
            Self.logUtil.putF(gameNotificationEvent_.getString(), TJava.Box(Self), Self.METHOD_NAME);
        end;
        Self.add(gameNotificationEvent_.getString(), gameNotificationEvent_.getSeconds(), gameNotificationEvent_.getBasicColorP(), gameNotificationEvent_.getPermanent());
end;
    

procedure TGameNotificationHud.add(string_: string; seconds: Integer; basicColor_: TBasicColor; permanent: Boolean);
begin
end;
    

// throws Exception
procedure TGameNotificationHud.processTick;
begin
end;
    

procedure TGameNotificationHud.paint(graphics_: TGraphics);
begin
end;
    

procedure TGameNotificationHud.clear;
begin
end;

initialization
  {AB:INITIALIZATION}
  TGameNotificationHud.NULL_GAME_NOTIFICATION := TGameNotificationHud.Create(TBasicHudFactory.getInstance().TOPCENTER, TBasicHudFactory.getInstance().HORIZONTAL, 0, TBasicColorFactory.getInstance().RED);
  {AB:END}

end.

