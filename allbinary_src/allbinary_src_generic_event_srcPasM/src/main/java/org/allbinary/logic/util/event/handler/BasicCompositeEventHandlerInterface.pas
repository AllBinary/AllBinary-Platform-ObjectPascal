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
unit BasicCompositeEventHandlerInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicEventHandlerInterface;

type
  {AB:TYPES}
  IBasicCompositeEventHandlerInterface = interface(IJavaObject) ['IBasicCompositeEventHandlerInterface']
        function getEventHandler: IBasicEventHandlerInterface;
        procedure setEventHandler(basicEventHandlerInterface_: IBasicEventHandlerInterface);
  end;
  TBasicCompositeEventHandlerInterface = IBasicCompositeEventHandlerInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

