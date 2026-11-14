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
unit NoGameNotificationHudSingleton;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, GameNotificationHud;

type
  {AB:TYPES}
  TNoGameNotificationHudSingleton = class(TObject)
  public
    logUtil: TLogUtil;
    gameNotificationHud: TGameNotificationHud;
    class var instance: TNoGameNotificationHudSingleton;
    procedure InitFields;
        class function getInstance: TNoGameNotificationHudSingleton; static;
        constructor Create;
        function getGameNotificationHud: TGameNotificationHud; virtual;
  end;

implementation
uses
  NoGameGameNotificationHud, BasicHudFactory, BasicColorFactory, CommonStrings;


{AB:CODE}

procedure TNoGameNotificationHudSingleton.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.gameNotificationHud := TGameNotificationHud.NULL_GAME_NOTIFICATION;
end;
    

class function TNoGameNotificationHudSingleton.getInstance: TNoGameNotificationHudSingleton;
begin
        Exit(TNoGameNotificationHudSingleton.instance);
end;
    

constructor TNoGameNotificationHudSingleton.Create;
var
  basicHudFactory_: TBasicHudFactory;
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        try
            basicHudFactory_ := TBasicHudFactory.getInstance();
            Self.gameNotificationHud := TNoGameGameNotificationHud.Create();
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.CONSTRUCTOR_, TJava.Box(e));
            end;
        end;
end;
    

function TNoGameNotificationHudSingleton.getGameNotificationHud: TGameNotificationHud;
begin
        Exit(Self.gameNotificationHud);
end;

initialization
  {AB:INITIALIZATION}
  TNoGameNotificationHudSingleton.instance := TNoGameNotificationHudSingleton.Create();
  {AB:END}

end.

