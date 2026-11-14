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
// package org.allbinary.game.collision.layer
unit CollidableInterfaceLayerProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, AllBinaryLayerManager, LayerProcessor;

type
  {AB:TYPES}
  TCollidableInterfaceLayerProcessor = class(TLayerProcessor)
  public
        constructor Create;
        procedure processAt(allBinaryLayerManager_: TAllBinaryLayerManager; layerInterface: TAllBinaryLayer; index: Integer); override;
        function isProcessorLayer(layerInterface: TAllBinaryLayer): Boolean; override;
  end;

implementation
uses
  CollidableInterfaceLayerManager, AllBinaryCollisionManager, CollidableInterfaceCompositeInterface, CollidableCompositeLayer;


{AB:CODE}
    

constructor TCollidableInterfaceLayerProcessor.Create;
begin
        inherited Create(TCollidableInterfaceLayerManager.Create());
end;
    

// throws Exception
procedure TCollidableInterfaceLayerProcessor.processAt(allBinaryLayerManager_: TAllBinaryLayerManager; layerInterface: TAllBinaryLayer; index: Integer);
var
  collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface;
begin
        collidableInterfaceCompositeInterface_ := (TJava.ToObject(layerInterface) as ICollidableInterfaceCompositeInterface);
        if collidableInterfaceCompositeInterface_.getCollidableInferface().isCollidable(TCollidableCompositeLayer(TJava.ToObject(collidableInterfaceCompositeInterface_))) then begin
            TAllBinaryCollisionManager.getInstance().process(Self.getLayerManager(), collidableInterfaceCompositeInterface_, index);
        end;
end;
    

function TCollidableInterfaceLayerProcessor.isProcessorLayer(layerInterface: TAllBinaryLayer): Boolean;
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

