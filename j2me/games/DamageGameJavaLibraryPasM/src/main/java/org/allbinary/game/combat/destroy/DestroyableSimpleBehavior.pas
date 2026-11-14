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
unit DestroyableSimpleBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollidableCompositeLayer, DestroyableBaseBehavior;

type
  {AB:TYPES}
  TDestroyableSimpleBehavior = class(TDestroyableBaseBehavior)
  public
    ownerLayer: TCollidableCompositeLayer;
    destroyed: Boolean;
    procedure InitFields;
        constructor Create(ownerLayer: TCollidableCompositeLayer);
        function isDestroyed: Boolean; override;
        procedure setDestroyed(destroyed: Boolean); override;
  end;

implementation
uses
  DestroyedLayerProcessor;


{AB:CODE}

procedure TDestroyableSimpleBehavior.InitFields;
begin
  
  Self.destroyed := False;
end;
    

constructor TDestroyableSimpleBehavior.Create(ownerLayer: TCollidableCompositeLayer);
begin
    inherited Create;
    InitFields;
        Self.ownerLayer := ownerLayer;
end;
    

function TDestroyableSimpleBehavior.isDestroyed: Boolean;
begin
        Exit(Self.destroyed);
end;
    

procedure TDestroyableSimpleBehavior.setDestroyed(destroyed: Boolean);
begin
        Self.destroyed := destroyed;
        if Self.isDestroyed() then begin
            TDestroyedLayerProcessor.getInstance().add(Self.ownerLayer);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

