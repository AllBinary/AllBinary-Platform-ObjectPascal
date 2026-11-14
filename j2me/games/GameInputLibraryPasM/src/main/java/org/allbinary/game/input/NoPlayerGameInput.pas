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
unit NoPlayerGameInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyEvent, PlayerGameInput;

type
  {AB:TYPES}
  TNoPlayerGameInput = class(TPlayerGameInput)
  public
    class var SINGLETON: TNoPlayerGameInput;
        class function getInstance: TNoPlayerGameInput; static;
        constructor Create;
        procedure onDownGameKeyEvent(gameKeyEvent_: TGameKeyEvent); override;
        procedure onUpGameKeyEvent(gameKeyEvent_: TGameKeyEvent); override;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}
    

class function TNoPlayerGameInput.getInstance: TNoPlayerGameInput;
begin
        Exit(TNoPlayerGameInput.SINGLETON);
end;
    

constructor TNoPlayerGameInput.Create;
begin
        inherited Create(TBasicArrayListD.Create(), TBasicArrayListD.Create(), -1);
end;
    

procedure TNoPlayerGameInput.onDownGameKeyEvent(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TNoPlayerGameInput.onUpGameKeyEvent(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TNoPlayerGameInput.SINGLETON := TNoPlayerGameInput.Create();
  {AB:END}

end.

