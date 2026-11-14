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
unit AllBinaryCollisionManager;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollidableInterfaceCompositeInterface, ABLayerManager;

type
  {AB:TYPES}
  TAllBinaryCollisionManager = class(TObject)
  public
    class var allBinaryCollisionManager: TAllBinaryCollisionManager;
        constructor Create;
        class function getInstance: TAllBinaryCollisionManager; static;
        procedure process(layerManager: TABLayerManager; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface; startIndex: Integer); virtual;
        procedure collide(layerManager: TABLayerManager; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface; collidableInterfaceCompositeInterface2: ICollidableInterfaceCompositeInterface);
  end;

implementation
uses
  CollidableBaseBehavior, CollidableCompositeLayer;


{AB:CODE}
    

constructor TAllBinaryCollisionManager.Create;
begin
    inherited Create;
end;
    

class function TAllBinaryCollisionManager.getInstance: TAllBinaryCollisionManager;
begin
        Exit(TAllBinaryCollisionManager.allBinaryCollisionManager);
end;
    

// throws Exception
procedure TAllBinaryCollisionManager.process(layerManager: TABLayerManager; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface; startIndex: Integer);
var
  size: Integer;
  collidableInterfaceCompositeInterface2: ICollidableInterfaceCompositeInterface;
  index: Integer;
begin
        size := layerManager.getSize();
        for index := (startIndex) + (1) to size - 1 do begin
            collidableInterfaceCompositeInterface2 := (TJava.ToObject(layerManager.getLayerAt(index)) as ICollidableInterfaceCompositeInterface);
            Self.collide(layerManager, collidableInterfaceCompositeInterface_, collidableInterfaceCompositeInterface2);
        end;
end;
    

// throws Exception
procedure TAllBinaryCollisionManager.collide(layerManager: TABLayerManager; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface; collidableInterfaceCompositeInterface2: ICollidableInterfaceCompositeInterface);
var
  collidableBase2: TCollidableBaseBehavior;
  collidableBase: TCollidableBaseBehavior;
begin
        collidableBase2 := collidableInterfaceCompositeInterface2.getCollidableInferface();
        collidableBase := collidableInterfaceCompositeInterface_.getCollidableInferface();
        if collidableBase2.isCollidable(TCollidableCompositeLayer(TJava.ToObject(collidableInterfaceCompositeInterface_))) then begin
            if collidableBase.isCollisionInterface(TCollidableCompositeLayer(TJava.ToObject(collidableInterfaceCompositeInterface_)), collidableInterfaceCompositeInterface2) then begin
                collidableBase.collideInterface(TCollidableCompositeLayer(TJava.ToObject(collidableInterfaceCompositeInterface_)), collidableInterfaceCompositeInterface2);
                collidableBase2.collideInterface(TCollidableCompositeLayer(TJava.ToObject(collidableInterfaceCompositeInterface_)), collidableInterfaceCompositeInterface_);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TAllBinaryCollisionManager.allBinaryCollisionManager := TAllBinaryCollisionManager.Create();
  {AB:END}

end.

