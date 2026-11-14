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
// package org.allbinary.game.configuration.event
unit GameInitializedEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TGameInitializedEventHandler = class(TBasicEventHandler)
  public
    class var gameKeyEventHandler: TGameInitializedEventHandler;
        constructor Create;
        class function getInstance: TGameInitializedEventHandler; static;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  GameInitializedListenerInterface, GameInitializedEvent;


{AB:CODE}
    

constructor TGameInitializedEventHandler.Create;
begin
    inherited Create;
end;
    

class function TGameInitializedEventHandler.getInstance: TGameInitializedEventHandler;
begin
        Exit(TGameInitializedEventHandler.gameKeyEventHandler);
end;
    

// throws Exception
procedure TGameInitializedEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  gameInitializedListenerInterface_: IGameInitializedListenerInterface;
begin
        gameInitializedListenerInterface_ := ((TJava.ToObject(eventListenerInterface_) as IGameInitializedListenerInterface));
        gameInitializedListenerInterface_.onGameInitialized(TGameInitializedEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TGameInitializedEventHandler.gameKeyEventHandler := TGameInitializedEventHandler.Create();
  {AB:END}

end.

