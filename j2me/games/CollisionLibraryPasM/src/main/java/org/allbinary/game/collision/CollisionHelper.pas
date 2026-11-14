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
unit CollisionHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollidableCompositeLayer, AllBinaryLayer;

type
  {AB:TYPES}
  TCollisionHelper = class(TObject)
  public
    sourceLayerInterface: TAllBinaryLayer;
    procedure InitFields;
        constructor Create(sourceLayerInterface: TAllBinaryLayer);
        function isCollidable(layerInterface: TCollidableCompositeLayer): Boolean; virtual;
        function getOwnerLayerInterface: TAllBinaryLayer; virtual;
        procedure setOwnerLayerInterface(sourceLayerInterface: TAllBinaryLayer); virtual;
  end;

implementation

{AB:CODE}

procedure TCollisionHelper.InitFields;
begin
  
end;
    

constructor TCollisionHelper.Create(sourceLayerInterface: TAllBinaryLayer);
begin
    inherited Create;
    InitFields;
        Self.sourceLayerInterface := sourceLayerInterface;
end;
    

function TCollisionHelper.isCollidable(layerInterface: TCollidableCompositeLayer): Boolean;
begin
        Exit(True);
end;
    

function TCollisionHelper.getOwnerLayerInterface: TAllBinaryLayer;
begin
        Exit(Self.sourceLayerInterface);
end;
    

procedure TCollisionHelper.setOwnerLayerInterface(sourceLayerInterface: TAllBinaryLayer);
begin
        Self.sourceLayerInterface := sourceLayerInterface;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

