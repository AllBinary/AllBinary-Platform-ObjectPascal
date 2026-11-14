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
// package org.allbinary.game.layer.drop
unit DropLayerProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayerManager, BasicLayerProcessor;

type
  {AB:TYPES}
  TDropLayerProcessor = class(TBasicLayerProcessor)
  public
    class var LAYER_PROCESSOR: TBasicLayerProcessor;
        constructor Create;
        class function getInstance: TBasicLayerProcessor; static;
        procedure process(allBinaryLayerManager_: TAllBinaryLayerManager); override;
  end;

implementation
uses
  DropLayerInterface, AllBinaryLayer, BasicArrayList;


{AB:CODE}
    

constructor TDropLayerProcessor.Create;
begin
    inherited Create;
end;
    

class function TDropLayerProcessor.getInstance: TBasicLayerProcessor;
begin
        Exit(TDropLayerProcessor.LAYER_PROCESSOR);
end;
    

// throws Exception
procedure TDropLayerProcessor.process(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  list: TBasicArrayList;
  size: Integer;
  layerInterface: TAllBinaryLayer;
  dropLayerInterface_: IDropLayerInterface;
  index: Integer;
begin
        list := Self.getList();
        size := list.size();
        
        
        for index := 0 to size - 1 do begin
            layerInterface := TAllBinaryLayer(TJava.ToObject(list.objectArray[index]));
            dropLayerInterface_ := (TJava.ToObject(layerInterface) as IDropLayerInterface);
            layerInterface := TAllBinaryLayer(TJava.ToObject(dropLayerInterface_.getDroppedLayer()));
            allBinaryLayerManager_.append(layerInterface);
        end;
        list.clear();
end;

initialization
  {AB:INITIALIZATION}
  TDropLayerProcessor.LAYER_PROCESSOR := TDropLayerProcessor.Create();
  {AB:END}

end.

