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
// package org.allbinary.graphics.displayable.event
unit DisplayChangeEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TDisplayChangeEventHandler = class(TBasicEventHandler)
  public
    class var SINGLETON: TDisplayChangeEventHandler;
        class function getInstance: TDisplayChangeEventHandler; static;
        constructor Create;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  DisplayChangeEventListener, DisplayChangeEvent;


{AB:CODE}
    

class function TDisplayChangeEventHandler.getInstance: TDisplayChangeEventHandler;
begin
        Exit(TDisplayChangeEventHandler.SINGLETON);
end;
    

constructor TDisplayChangeEventHandler.Create;
begin
    inherited Create;
end;
    

// throws Exception
procedure TDisplayChangeEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  displayChangeEventListener_: IDisplayChangeEventListener;
begin
        displayChangeEventListener_ := ((TJava.ToObject(eventListenerInterface_) as IDisplayChangeEventListener));
        displayChangeEventListener_.onDisplayChangeEvent(TDisplayChangeEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TDisplayChangeEventHandler.SINGLETON := TDisplayChangeEventHandler.Create();
  {AB:END}

end.

