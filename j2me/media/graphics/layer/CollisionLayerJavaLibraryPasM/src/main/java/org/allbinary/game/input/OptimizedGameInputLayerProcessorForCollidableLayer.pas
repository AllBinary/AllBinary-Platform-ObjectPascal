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
// package org.allbinary.game.input
unit OptimizedGameInputLayerProcessorForCollidableLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, AllBinaryLayerManager, LayerProcessor;

type
  {AB:TYPES}
  TOptimizedGameInputLayerProcessorForCollidableLayer = class(TLayerProcessor)
  public
        constructor Create;
        procedure processAt(allBinaryLayerManager_: TAllBinaryLayerManager; layerInterface: TAllBinaryLayer; index: Integer); override;
        function isProcessorLayer(layerInterface: TAllBinaryLayer): Boolean; override;
  end;

implementation
uses
  OptimizedGameInputLayerManager, AllBinaryGameLayer;


{AB:CODE}
    

constructor TOptimizedGameInputLayerProcessorForCollidableLayer.Create;
begin
        inherited Create(TOptimizedGameInputLayerManager.Create());
end;
    

// throws Exception
procedure TOptimizedGameInputLayerProcessorForCollidableLayer.processAt(allBinaryLayerManager_: TAllBinaryLayerManager; layerInterface: TAllBinaryLayer; index: Integer);
var
  gameInputInterface: TAllBinaryGameLayer;
begin
        gameInputInterface := TAllBinaryGameLayer(TJava.ToObject(layerInterface));
        gameInputInterface.processInput(allBinaryLayerManager_);
end;
    

function TOptimizedGameInputLayerProcessorForCollidableLayer.isProcessorLayer(layerInterface: TAllBinaryLayer): Boolean;
begin
        if layerInterface.implmentsGameInputInterface() then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

