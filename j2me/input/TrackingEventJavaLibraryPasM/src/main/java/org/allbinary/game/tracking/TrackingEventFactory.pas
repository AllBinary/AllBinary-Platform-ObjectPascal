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
unit TrackingEventFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, AllBinaryEventObjectFactoryInterface;

type
  {AB:TYPES}
  TTrackingEventFactory = class(TInterfacedObject, IAllBinaryEventObjectFactoryInterface)
  public
    function JavaObject: TObject;
        constructor Create;
        function getInstance: TAllBinaryEventObject; virtual;
  end;

implementation
uses
  TrackingEvent, TrackingEventHandler;


{AB:CODE}

function TTrackingEventFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTrackingEventFactory.Create;
begin
    inherited Create;
end;
    

function TTrackingEventFactory.getInstance: TAllBinaryEventObject;
begin
        Exit(TTrackingEvent.Create(TJava.Box(TTrackingEventHandler.getInstance())));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

