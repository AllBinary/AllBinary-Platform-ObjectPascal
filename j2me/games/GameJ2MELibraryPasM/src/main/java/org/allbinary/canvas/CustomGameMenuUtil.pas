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
// package org.allbinary.canvas
unit CustomGameMenuUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MyCanvas;

type
  {AB:TYPES}
  TCustomGameMenuUtil = class(TObject)
  public
    constructor Create;
        class procedure add(canvas: TMyCanvas); static;
  end;

implementation
uses
  AppletUtil, J2MEUtil, GameCommandsFactory;


{AB:CODE}

constructor TCustomGameMenuUtil.Create;
begin
  inherited Create;
end;
    

class procedure TCustomGameMenuUtil.add(canvas: TMyCanvas);
var
  gameCommandsFactory_: TGameCommandsFactory;
begin
        gameCommandsFactory_ := TGameCommandsFactory.getInstance();
        if TAppletUtil.isAppletLoader(TJava.Box(canvas)) then begin
        end else if TJ2MEUtil.isHTML() then begin
        end else begin
            canvas.addCommand(gameCommandsFactory_.EXIT_COMMAND);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

