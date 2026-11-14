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
unit DemoGameMidletEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TDemoGameMidletEventHandler = class(TBasicEventHandler)
  public
    class var gameKeyEventHandler: TDemoGameMidletEventHandler;
        constructor Create;
        class function getInstance: TDemoGameMidletEventHandler; static;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  DemoGameMidletEventListener, DemoGameMidletEvent;


{AB:CODE}
    

constructor TDemoGameMidletEventHandler.Create;
begin
    inherited Create;
end;
    

class function TDemoGameMidletEventHandler.getInstance: TDemoGameMidletEventHandler;
begin
        Exit(TDemoGameMidletEventHandler.gameKeyEventHandler);
end;
    

// throws Exception
procedure TDemoGameMidletEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  demoGameMidletEventListener_: IDemoGameMidletEventListener;
begin
        demoGameMidletEventListener_ := (TJava.ToObject(eventListenerInterface_) as IDemoGameMidletEventListener);
        demoGameMidletEventListener_.onDemoGameMidletEvent(TDemoGameMidletEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TDemoGameMidletEventHandler.gameKeyEventHandler := TDemoGameMidletEventHandler.Create();
  {AB:END}

end.

