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
// package org.allbinary.game.combat.destroy
unit DestroyedLayerProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayerManager, BasicLayerProcessor;

type
  {AB:TYPES}
  TDestroyedLayerProcessor = class(TBasicLayerProcessor)
  public
    class var DESTROYED_LAYER_PROCESSOR: TBasicLayerProcessor;
        constructor Create;
        class procedure init; static;
        class function getInstance: TBasicLayerProcessor; static;
        procedure process(allBinaryLayerManager_: TAllBinaryLayerManager); override;
  end;

implementation
uses
  DestroyEventCircularStaticPool, DestroyedEvent, DestroyedEventHandler, AllBinaryLayer, StringMaker, StringUtil, CommonStrings, BasicArrayList;


{AB:CODE}
    

constructor TDestroyedLayerProcessor.Create;
begin
    inherited Create;
end;
    

class procedure TDestroyedLayerProcessor.init;
begin
        TDestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR := TDestroyedLayerProcessor.Create();
end;
    

class function TDestroyedLayerProcessor.getInstance: TBasicLayerProcessor;
begin
        Exit(TDestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR);
end;
    

// throws Exception
procedure TDestroyedLayerProcessor.process(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  list: TBasicArrayList;
  size: Integer;
  destroyedEventHandler_: TDestroyedEventHandler;
  destroyEventCircularStaticPool_: TDestroyEventCircularStaticPool;
  destroyedEvent_: TDestroyedEvent;
  layerInterface: TAllBinaryLayer;
  layerInterfaceCanBeNull: TObject;
  commonStrings_: TCommonStrings;
  index: Integer;
begin
        list := Self.getList();
        size := list.size();
        destroyedEventHandler_ := TDestroyedEventHandler.getInstance();
        destroyEventCircularStaticPool_ := TDestroyEventCircularStaticPool.getInstance();
        
        
        for index := 0 to size - 1 do begin
            layerInterfaceCanBeNull := TJava.Box(list.objectArray[index]);
            if (layerInterfaceCanBeNull) <> (nil) then begin
                layerInterface := TAllBinaryLayer(TJava.ToObject(layerInterfaceCanBeNull));
                allBinaryLayerManager_.remove(layerInterface);
                destroyedEvent_ := destroyEventCircularStaticPool_.getInstanceForLayer(layerInterface);
                destroyedEventHandler_.fireEvent(destroyedEvent_);
            end else begin
                commonStrings_ := TCommonStrings.getInstance();
            end;
        end;
        list.clear();
end;

initialization
  {AB:INITIALIZATION}
  TDestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR := TBasicLayerProcessor.NULL_LAYER_PROCESSOR;
  {AB:END}

end.

