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
// package org.allbinary.game.collision
unit OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, AllBinaryLayerManager, LayerProcessor;

type
  {AB:TYPES}
  TOptimizedAllBinaryCollisionLayerProcessorForCollidableLayer = class(TLayerProcessor)
  public
        constructor Create;
        procedure processAt(allBinaryLayerManager_: TAllBinaryLayerManager; layerInterface: TAllBinaryLayer; startIndex: Integer); override;
        function isProcessorLayer(layerInterface: TAllBinaryLayer): Boolean; override;
  end;

implementation
uses
  OptimizedAllBinaryCollisionLayerManager, CollidableBaseBehavior, CollidableCompositeLayer, ABLayerManager;


{AB:CODE}
    

constructor TOptimizedAllBinaryCollisionLayerProcessorForCollidableLayer.Create;
begin
        inherited Create(TOptimizedAllBinaryCollisionLayerManager.Create());
end;
    

// throws Exception
procedure TOptimizedAllBinaryCollisionLayerProcessorForCollidableLayer.processAt(allBinaryLayerManager_: TAllBinaryLayerManager; layerInterface: TAllBinaryLayer; startIndex: Integer);
var
  collidableInterfaceCompositeInterface: TCollidableCompositeLayer;
  collidableBase: TCollidableBaseBehavior;
  layerManager: TABLayerManager;
  size: Integer;
  collidableInterfaceCompositeInterface2: TCollidableCompositeLayer;
  collidableBase2: TCollidableBaseBehavior;
  index: Integer;
begin
        collidableInterfaceCompositeInterface := TCollidableCompositeLayer(TJava.ToObject(layerInterface));
        collidableBase := collidableInterfaceCompositeInterface.getCollidableInferface();
        if collidableBase.isCollidable(collidableInterfaceCompositeInterface) then begin
            layerManager := Self.getLayerManager();
            size := layerManager.getSize();
            
            
            for index := (startIndex) + (1) to size - 1 do begin
                collidableInterfaceCompositeInterface2 := TCollidableCompositeLayer(TJava.ToObject(layerManager.getLayerAt(index)));
                collidableBase2 := collidableInterfaceCompositeInterface2.getCollidableInferface();
                if (collidableBase2.isCollidable(collidableInterfaceCompositeInterface)) and (collidableBase.isCollision(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)) then begin
                    collidableBase.collide(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2);
                    collidableBase2.collide(collidableInterfaceCompositeInterface2, collidableInterfaceCompositeInterface);
                end;
            end;
        end;
end;
    

function TOptimizedAllBinaryCollisionLayerProcessorForCollidableLayer.isProcessorLayer(layerInterface: TAllBinaryLayer): Boolean;
begin
        if layerInterface.implmentsCollidableInterface() then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

