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
// package org.allbinary.game.displayable.canvas
unit GameEventHandlerUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGameEventHandlerUtil = class(TObject)
  public
    constructor Create;
        class procedure removeAllListeners; static;
  end;

implementation
uses
  DownGameKeyEventHandler, UpGameKeyEventHandler;


{AB:CODE}

constructor TGameEventHandlerUtil.Create;
begin
  inherited Create;
end;
    

class procedure TGameEventHandlerUtil.removeAllListeners;
begin
        TUpGameKeyEventHandler.getInstance().removeAllListeners();
        TDownGameKeyEventHandler.getInstance().removeAllListeners();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

