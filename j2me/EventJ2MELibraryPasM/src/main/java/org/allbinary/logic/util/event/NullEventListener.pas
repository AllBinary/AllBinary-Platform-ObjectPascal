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
// package org.allbinary.logic.util.event
unit NullEventListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface;

type
  {AB:TYPES}
  TNullEventListener = class(TInterfacedObject, IEventListenerInterface)
  public
    class var NULL_EVENT_LISTENER: TNullEventListener;
    function JavaObject: TObject;
    constructor Create;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
  end;

implementation

{AB:CODE}

function TNullEventListener.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullEventListener.Create;
begin
  inherited Create;
end;
    

procedure TNullEventListener.onEvent(eventObject: TAllBinaryEventObject);
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullEventListener.NULL_EVENT_LISTENER := TNullEventListener.Create();
  {AB:END}

end.

