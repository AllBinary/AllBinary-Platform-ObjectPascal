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
unit GameFeatureEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TGameFeatureEventHandler = class(TBasicEventHandler)
  public
    class var gameKeyEventHandler: TGameFeatureEventHandler;
        constructor Create;
        class function getInstance: TGameFeatureEventHandler; static;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  GameFeatureListenerInterface, GameFeatureEvent;


{AB:CODE}
    

constructor TGameFeatureEventHandler.Create;
begin
    inherited Create;
end;
    

class function TGameFeatureEventHandler.getInstance: TGameFeatureEventHandler;
begin
        Exit(TGameFeatureEventHandler.gameKeyEventHandler);
end;
    

// throws Exception
procedure TGameFeatureEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  gameFeatureListenerInterface_: IGameFeatureListenerInterface;
begin
        gameFeatureListenerInterface_ := ((TJava.ToObject(eventListenerInterface_) as IGameFeatureListenerInterface));
        gameFeatureListenerInterface_.onGameFeatureChange(TGameFeatureEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TGameFeatureEventHandler.gameKeyEventHandler := TGameFeatureEventHandler.Create();
  {AB:END}

end.

