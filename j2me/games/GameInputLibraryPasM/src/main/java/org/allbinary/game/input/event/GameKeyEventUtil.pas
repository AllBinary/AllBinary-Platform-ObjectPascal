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
// package org.allbinary.game.input.event
unit GameKeyEventUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGameKeyEventUtil = class(TObject)
  public
        constructor Create;
        class function getKey(anyType: TObject): Integer; static;
  end;

implementation
uses
  GameKeyEvent;


{AB:CODE}
    

constructor TGameKeyEventUtil.Create;
begin
    inherited Create;
end;
    

class function TGameKeyEventUtil.getKey(anyType: TObject): Integer;
var
  gameKeyEvent_: TGameKeyEvent;
begin
        gameKeyEvent_ := TGameKeyEvent(TJava.ToObject(anyType));
        Exit(gameKeyEvent_.getKey());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

