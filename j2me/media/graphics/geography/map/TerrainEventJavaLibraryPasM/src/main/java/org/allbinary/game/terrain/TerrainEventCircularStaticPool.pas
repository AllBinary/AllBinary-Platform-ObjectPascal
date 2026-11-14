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
// package org.allbinary.game.terrain
unit TerrainEventCircularStaticPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventCircularPool, TerrainEvent, BasicTerrainInfo;

type
  {AB:TYPES}
  TTerrainEventCircularStaticPool = class(TObject)
  public
    EVENT_POOL: TAllBinaryEventCircularPool;
    class var instance: TTerrainEventCircularStaticPool;
    procedure InitFields;
    constructor Create;
        class function getInstance: TTerrainEventCircularStaticPool; static;
        procedure init; virtual;
        function getNext(basicTerrainInfo_: TBasicTerrainInfo): TTerrainEvent; virtual;
  end;

implementation
uses
  TerrainEventFactory;


{AB:CODE}

procedure TTerrainEventCircularStaticPool.InitFields;
begin
  Self.EVENT_POOL := TAllBinaryEventCircularPool.Create(20);
end;

constructor TTerrainEventCircularStaticPool.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TTerrainEventCircularStaticPool.getInstance: TTerrainEventCircularStaticPool;
begin
        Exit(TTerrainEventCircularStaticPool.instance);
end;
    

procedure TTerrainEventCircularStaticPool.init;
begin
        Self.EVENT_POOL.initAllBinaryEventCircularPool(TTerrainEventFactory.Create());
end;
    

// throws Exception
function TTerrainEventCircularStaticPool.getNext(basicTerrainInfo_: TBasicTerrainInfo): TTerrainEvent;
var
  trackingEvent: TTerrainEvent;
begin
    TJava.MonitorEnter(Self);
    try
        trackingEvent := TTerrainEvent(TJava.ToObject(Self.EVENT_POOL.getNextInstance()));
        trackingEvent.setBasicTerrainInfoForCircularStaticPool(basicTerrainInfo_);
        Exit(trackingEvent);
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TTerrainEventCircularStaticPool.instance := TTerrainEventCircularStaticPool.Create();
  {AB:END}

end.

