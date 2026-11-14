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
// package org.allbinary.game.tracking
unit TrackingEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TTrackingEventHandler = class(TBasicEventHandler)
  public
    class var instance: TTrackingEventHandler;
        class function getInstance: TTrackingEventHandler; static;
        constructor Create;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  TrackingEventListenerInterface, TrackingEvent;


{AB:CODE}
    

class function TTrackingEventHandler.getInstance: TTrackingEventHandler;
begin
        Exit(TTrackingEventHandler.instance);
end;
    

constructor TTrackingEventHandler.Create;
begin
    inherited Create;
end;
    

// throws Exception
procedure TTrackingEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  trackingEventListenerInterface_: ITrackingEventListenerInterface;
begin
        trackingEventListenerInterface_ := (TJava.ToObject(eventListenerInterface_) as ITrackingEventListenerInterface);
        trackingEventListenerInterface_.onMovement(TTrackingEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TTrackingEventHandler.instance := TTrackingEventHandler.Create();
  {AB:END}

end.

