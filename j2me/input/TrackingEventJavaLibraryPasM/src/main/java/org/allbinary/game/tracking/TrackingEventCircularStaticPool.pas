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
unit TrackingEventCircularStaticPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, AllBinaryEventCircularPool, TrackingEvent;

type
  {AB:TYPES}
  TTrackingEventCircularStaticPool = class(TObject)
  public
    EVENT_POOL: TAllBinaryEventCircularPool;
    class var instance: TTrackingEventCircularStaticPool;
    procedure InitFields;
    constructor Create;
        class function getInstance: TTrackingEventCircularStaticPool; static;
        procedure init; virtual;
        function getNextInstance(layerInterface: TAllBinaryLayer): TTrackingEvent; virtual;
  end;

implementation
uses
  TrackingEventFactory;


{AB:CODE}

procedure TTrackingEventCircularStaticPool.InitFields;
begin
  Self.EVENT_POOL := TAllBinaryEventCircularPool.Create(20);
end;

constructor TTrackingEventCircularStaticPool.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TTrackingEventCircularStaticPool.getInstance: TTrackingEventCircularStaticPool;
begin
        Exit(TTrackingEventCircularStaticPool.instance);
end;
    

procedure TTrackingEventCircularStaticPool.init;
begin
        Self.EVENT_POOL.initAllBinaryEventCircularPool(TTrackingEventFactory.Create());
end;
    

// throws Exception
function TTrackingEventCircularStaticPool.getNextInstance(layerInterface: TAllBinaryLayer): TTrackingEvent;
var
  trackingEvent_: TTrackingEvent;
begin
    TJava.MonitorEnter(Self);
    try
        trackingEvent_ := TTrackingEvent(TJava.ToObject(Self.EVENT_POOL.getNextInstance()));
        trackingEvent_.setLayerInterfaceForCircularStaticPool(layerInterface);
        Exit(trackingEvent_);
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TTrackingEventCircularStaticPool.instance := TTrackingEventCircularStaticPool.Create();
  {AB:END}

end.

