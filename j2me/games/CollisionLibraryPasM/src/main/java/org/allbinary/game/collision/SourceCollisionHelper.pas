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
unit SourceCollisionHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollidableCompositeLayer, AllBinaryLayer, CollisionHelper;

type
  {AB:TYPES}
  TSourceCollisionHelper = class(TCollisionHelper)
  public
        constructor Create(layerInterface: TAllBinaryLayer);
        function isCollidable(layerInterface: TCollidableCompositeLayer): Boolean; override;
  end;

implementation

{AB:CODE}
    

constructor TSourceCollisionHelper.Create(layerInterface: TAllBinaryLayer);
begin
        inherited Create(layerInterface);
end;
    

function TSourceCollisionHelper.isCollidable(layerInterface: TCollidableCompositeLayer): Boolean;
begin
        if (Self.sourceLayerInterface) <> (layerInterface) then begin
            Exit(True);
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

