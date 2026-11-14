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
unit CollidableNeverCollideBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollidableCompositeLayer, CollidableInterfaceCompositeInterface, CollidableBaseBehavior;

type
  {AB:TYPES}
  TCollidableNeverCollideBehavior = class(TCollidableBaseBehavior)
  public
        constructor Create(isCollidable: Boolean);
        function isCollision(ownerLayer: TCollidableCompositeLayer; allbinaryCollidableLayer: TCollidableCompositeLayer): Boolean; override;
        procedure collide(ownerLayer: TCollidableCompositeLayer; allbinaryCollidableLayer: TCollidableCompositeLayer); override;
        procedure collideInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface); override;
        function isCollisionInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface): Boolean; override;
  end;

implementation

{AB:CODE}
    

constructor TCollidableNeverCollideBehavior.Create(isCollidable: Boolean);
begin
        inherited Create(isCollidable);
end;
    

function TCollidableNeverCollideBehavior.isCollision(ownerLayer: TCollidableCompositeLayer; allbinaryCollidableLayer: TCollidableCompositeLayer): Boolean;
begin
        Exit(False);
end;
    

// throws Exception
procedure TCollidableNeverCollideBehavior.collide(ownerLayer: TCollidableCompositeLayer; allbinaryCollidableLayer: TCollidableCompositeLayer);
begin
end;
    

procedure TCollidableNeverCollideBehavior.collideInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface);
begin
end;
    

function TCollidableNeverCollideBehavior.isCollisionInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface): Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

