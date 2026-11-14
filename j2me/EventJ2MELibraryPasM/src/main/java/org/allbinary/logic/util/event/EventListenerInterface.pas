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
// package org.allbinary.logic.util.event
unit EventListenerInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject;

type
  {AB:TYPES}
  IEventListenerInterface = interface(IJavaObject) ['IEventListenerInterface']
        procedure onEvent(eventObject: TAllBinaryEventObject);
  end;
  TEventListenerInterface = IEventListenerInterface;

implementation
uses
  JsType, JsMethod;


{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

