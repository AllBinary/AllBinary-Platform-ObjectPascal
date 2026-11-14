{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.input.mapping.event
unit NullInputMappingEventListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, InputMappingEvent, InputMappingEventListenerInterface, EventListenerInterface;

type
  {AB:TYPES}
  TNullInputMappingEventListener = class(TInterfacedObject, IInputMappingEventListenerInterface, IEventListenerInterface)
  public
    class var NULL_INPUT_MAPPING_EVENT_LISTENER: TNullInputMappingEventListener;
    function JavaObject: TObject;
    constructor Create;
        procedure onInputMappingEvent(inputMappingEvent_: TInputMappingEvent); virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
  end;

implementation

{AB:CODE}

function TNullInputMappingEventListener.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullInputMappingEventListener.Create;
begin
  inherited Create;
end;
    

// throws Exception
procedure TNullInputMappingEventListener.onInputMappingEvent(inputMappingEvent_: TInputMappingEvent);
begin
end;
    

procedure TNullInputMappingEventListener.onEvent(eventObject: TAllBinaryEventObject);
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullInputMappingEventListener.NULL_INPUT_MAPPING_EVENT_LISTENER := TNullInputMappingEventListener.Create();
  {AB:END}

end.

