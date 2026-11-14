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
// package org.allbinary.layer.event
unit ScrollMapEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TScrollMapEventHandler = class(TBasicEventHandler)
  public
    class var SINGLETON: TScrollMapEventHandler;
        constructor Create;
        class function getInstance: TScrollMapEventHandler; static;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  ScrollMapEventListenerInterface, ScrollMapEvent;


{AB:CODE}
    

constructor TScrollMapEventHandler.Create;
begin
    inherited Create;
end;
    

class function TScrollMapEventHandler.getInstance: TScrollMapEventHandler;
begin
        Exit(TScrollMapEventHandler.SINGLETON);
end;
    

// throws Exception
procedure TScrollMapEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  scrollMapEventListenerInterface_: IScrollMapEventListenerInterface;
begin
        scrollMapEventListenerInterface_ := ((TJava.ToObject(eventListenerInterface_) as IScrollMapEventListenerInterface));
        scrollMapEventListenerInterface_.onMoveEvent(TScrollMapEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TScrollMapEventHandler.SINGLETON := TScrollMapEventHandler.Create();
  {AB:END}

end.

