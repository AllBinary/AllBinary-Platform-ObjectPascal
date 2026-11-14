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
// package org.allbinary.graphics.color
unit ColorChangeEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicEventHandler;

type
  {AB:TYPES}
  TColorChangeEventHandler = class(TBasicEventHandler)
  public
    class var eventHandler: TColorChangeEventHandler;
        constructor Create;
        class function getInstance: TColorChangeEventHandler; static;
  end;

implementation

{AB:CODE}
    

constructor TColorChangeEventHandler.Create;
begin
    inherited Create;
end;
    

class function TColorChangeEventHandler.getInstance: TColorChangeEventHandler;
begin
    TJava.MonitorEnter(nil);
    try
        Exit(TColorChangeEventHandler.eventHandler);
    finally
    TJava.MonitorExit(nil);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TColorChangeEventHandler.eventHandler := TColorChangeEventHandler.Create();
  {AB:END}

end.

