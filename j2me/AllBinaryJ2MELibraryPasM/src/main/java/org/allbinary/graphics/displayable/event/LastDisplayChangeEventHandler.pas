{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable.event
unit LastDisplayChangeEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TLastDisplayChangeEventHandler = class(TBasicEventHandler)
  public
    class var SINGLETON: TLastDisplayChangeEventHandler;
        class function getInstance: TLastDisplayChangeEventHandler; static;
        constructor Create;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  DisplayChangeEventListener, DisplayChangeEvent;


{AB:CODE}
    

class function TLastDisplayChangeEventHandler.getInstance: TLastDisplayChangeEventHandler;
begin
        Exit(TLastDisplayChangeEventHandler.SINGLETON);
end;
    

constructor TLastDisplayChangeEventHandler.Create;
begin
    inherited Create;
end;
    

// throws Exception
procedure TLastDisplayChangeEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  displayChangeEventListener_: IDisplayChangeEventListener;
begin
        displayChangeEventListener_ := ((TJava.ToObject(eventListenerInterface_) as IDisplayChangeEventListener));
        displayChangeEventListener_.onDisplayChangeEvent(TDisplayChangeEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TLastDisplayChangeEventHandler.SINGLETON := TLastDisplayChangeEventHandler.Create();
  {AB:END}

end.

