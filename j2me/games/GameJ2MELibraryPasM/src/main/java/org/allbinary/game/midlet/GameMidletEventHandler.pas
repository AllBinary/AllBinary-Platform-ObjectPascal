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
// package org.allbinary.game.midlet
unit GameMidletEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TGameMidletEventHandler = class(TBasicEventHandler)
  public
    class var gameKeyEventHandler: TGameMidletEventHandler;
        constructor Create;
        class function getInstance: TGameMidletEventHandler; static;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  GameMidletEventListener;


{AB:CODE}
    

constructor TGameMidletEventHandler.Create;
begin
    inherited Create;
end;
    

class function TGameMidletEventHandler.getInstance: TGameMidletEventHandler;
begin
        Exit(TGameMidletEventHandler.gameKeyEventHandler);
end;
    

// throws Exception
procedure TGameMidletEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  gameMidletEventListener_: IGameMidletEventListener;
begin
        gameMidletEventListener_ := (TJava.ToObject(eventListenerInterface_) as IGameMidletEventListener);
        gameMidletEventListener_.onGameEnd(eventObject);
end;

initialization
  {AB:INITIALIZATION}
  TGameMidletEventHandler.gameKeyEventHandler := TGameMidletEventHandler.Create();
  {AB:END}

end.

