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
unit NoGameGameNotificationHud;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameNotificationHud;

type
  {AB:TYPES}
  TNoGameGameNotificationHud = class(TGameNotificationHud)
  public
        constructor Create;
  end;

implementation
uses
  BasicHudFactory, BasicColorFactory;


{AB:CODE}
    

constructor TNoGameGameNotificationHud.Create;
begin
        inherited Create(TBasicHudFactory.getInstance().TOPCENTER, TBasicHudFactory.getInstance().HORIZONTAL, 2, TBasicColorFactory.getInstance().RED);
        Self.updateMaxWidth := 40;
        Self.updateMaxHeight := 14;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

