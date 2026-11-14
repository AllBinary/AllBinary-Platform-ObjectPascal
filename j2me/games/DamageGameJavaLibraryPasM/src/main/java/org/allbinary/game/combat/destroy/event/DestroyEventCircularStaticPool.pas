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
// package org.allbinary.game.combat.destroy.event
unit DestroyEventCircularStaticPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameCanvas, AllBinaryLayer, AllBinaryEventCircularPool, DestroyedEvent;

type
  {AB:TYPES}
  TDestroyEventCircularStaticPool = class(TObject)
  public
    EVENT_POOL: TAllBinaryEventCircularPool;
    class var instance: TDestroyEventCircularStaticPool;
    procedure InitFields;
        class function getInstance: TDestroyEventCircularStaticPool; static;
        constructor Create;
        procedure init(combatGameCanvas: TAllBinaryGameCanvas); virtual;
        function getInstanceForLayer(layerInterface: TAllBinaryLayer): TDestroyedEvent; virtual;
  end;

implementation
uses
  DestroyEventFactory;


{AB:CODE}

procedure TDestroyEventCircularStaticPool.InitFields;
begin
  Self.EVENT_POOL := TAllBinaryEventCircularPool.Create(20);
end;
    

class function TDestroyEventCircularStaticPool.getInstance: TDestroyEventCircularStaticPool;
begin
        Exit(TDestroyEventCircularStaticPool.instance);
end;
    

constructor TDestroyEventCircularStaticPool.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TDestroyEventCircularStaticPool.init(combatGameCanvas: TAllBinaryGameCanvas);
begin
        Self.EVENT_POOL.initAllBinaryEventCircularPool(TDestroyEventFactory.Create(combatGameCanvas));
end;
    

// throws Exception
function TDestroyEventCircularStaticPool.getInstanceForLayer(layerInterface: TAllBinaryLayer): TDestroyedEvent;
var
  destroyedEvent_: TDestroyedEvent;
begin
        destroyedEvent_ := TDestroyedEvent(TJava.ToObject(Self.EVENT_POOL.getNextInstance()));
        destroyedEvent_.setLayerInterfaceForCircularStaticPool(layerInterface);
        Exit(destroyedEvent_);
end;

initialization
  {AB:INITIALIZATION}
  TDestroyEventCircularStaticPool.instance := TDestroyEventCircularStaticPool.Create();
  {AB:END}

end.

