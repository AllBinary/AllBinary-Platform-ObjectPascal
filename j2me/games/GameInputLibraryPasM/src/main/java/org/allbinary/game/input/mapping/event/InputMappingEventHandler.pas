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
// package org.allbinary.game.input.mapping.event
unit InputMappingEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TInputMappingEventHandler = class(TBasicEventHandler)
  public
    class var gameKeyEventHandler: TInputMappingEventHandler;
        constructor Create;
        class function getInstance: TInputMappingEventHandler; static;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  InputMappingEventListenerInterface, InputMappingEvent;


{AB:CODE}
    

constructor TInputMappingEventHandler.Create;
begin
    inherited Create;
end;
    

class function TInputMappingEventHandler.getInstance: TInputMappingEventHandler;
begin
        Exit(TInputMappingEventHandler.gameKeyEventHandler);
end;
    

// throws Exception
procedure TInputMappingEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  inputMappingEventListenerInterface_: IInputMappingEventListenerInterface;
begin
        inputMappingEventListenerInterface_ := (TJava.ToObject(eventListenerInterface_) as IInputMappingEventListenerInterface);
        inputMappingEventListenerInterface_.onInputMappingEvent(TInputMappingEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TInputMappingEventHandler.gameKeyEventHandler := TInputMappingEventHandler.Create();
  {AB:END}

end.

