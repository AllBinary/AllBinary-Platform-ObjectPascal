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
// package org.allbinary.game.input
unit GameKeyUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGameKeyUtil = class(TObject)
  public
    class var instance: TGameKeyUtil;
    constructor Create;
        function isDirectionKey(key: Integer): Boolean; virtual;
        class function getInstance: TGameKeyUtil; static;
  end;

implementation
uses
  Canvas;


{AB:CODE}

constructor TGameKeyUtil.Create;
begin
  inherited Create;
end;
    

function TGameKeyUtil.isDirectionKey(key: Integer): Boolean;
begin
        if ((((key) = (TCanvas.UP)) or ((key) = (TCanvas.DOWN))) or ((key) = (TCanvas.LEFT))) or ((key) = (TCanvas.RIGHT)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

class function TGameKeyUtil.getInstance: TGameKeyUtil;
begin
        Exit(TGameKeyUtil.instance);
end;

initialization
  {AB:INITIALIZATION}
  TGameKeyUtil.instance := TGameKeyUtil.Create();
  {AB:END}

end.

