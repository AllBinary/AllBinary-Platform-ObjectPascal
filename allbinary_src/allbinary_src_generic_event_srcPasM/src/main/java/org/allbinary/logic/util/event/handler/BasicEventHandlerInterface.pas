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
// package org.allbinary.logic.util.event.handler
unit BasicEventHandlerInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface;

type
  {AB:TYPES}
  IBasicEventHandlerInterface = interface(IJavaObject) ['IBasicEventHandlerInterface']
        procedure addListenerInterface(eventListenerInterface_: IEventListenerInterface);
        procedure fireEvent(eventObject: TAllBinaryEventObject);
        procedure removeAllListeners;
        procedure removeListener(eventListenerInterface_: IEventListenerInterface);
  end;
  TBasicEventHandlerInterface = IBasicEventHandlerInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

