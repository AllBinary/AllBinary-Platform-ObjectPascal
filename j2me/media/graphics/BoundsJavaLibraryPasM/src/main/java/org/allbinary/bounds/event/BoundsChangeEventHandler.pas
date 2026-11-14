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
// package org.allbinary.bounds.event
unit BoundsChangeEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TBoundsChangeEventHandler = class(TBasicEventHandler)
  public
    class var SINGLETON: TBasicEventHandler;
        constructor Create;
        class function getInstance: TBasicEventHandler; static;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  BoundsChangeEventListener, BoundsChangeEvent;


{AB:CODE}
    

constructor TBoundsChangeEventHandler.Create;
begin
    inherited Create;
end;
    

class function TBoundsChangeEventHandler.getInstance: TBasicEventHandler;
begin
        Exit(TBoundsChangeEventHandler.SINGLETON);
end;
    

// throws Exception
procedure TBoundsChangeEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  boundsChangeEventListener_: IBoundsChangeEventListener;
begin
        boundsChangeEventListener_ := (TJava.ToObject(eventListenerInterface_) as IBoundsChangeEventListener);
        boundsChangeEventListener_.onBoundsChangeEvent(TBoundsChangeEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TBoundsChangeEventHandler.SINGLETON := TBoundsChangeEventHandler.Create();
  {AB:END}

end.

