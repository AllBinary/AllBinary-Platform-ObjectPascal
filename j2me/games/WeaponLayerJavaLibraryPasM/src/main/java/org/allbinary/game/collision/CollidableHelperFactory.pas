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
unit CollidableHelperFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollisionHelper;

type
  {AB:TYPES}
  TCollidableHelperFactory = class(TObject)
  public
    constructor Create;
        class function getInstance: TCollisionHelper; static;
  end;

implementation
uses
  SourceCollisionHelper, Features, GameFeatureFactory, AllBinaryLayer;


{AB:CODE}

constructor TCollidableHelperFactory.Create;
begin
  inherited Create;
end;
    

class function TCollidableHelperFactory.getInstance: TCollisionHelper;
begin
        if TFeatures.getInstance().isFeature(TGameFeatureFactory.getInstance().COLLISIONS_WITH_SOURCE) then begin
            Exit(TCollisionHelper.Create(TAllBinaryLayer.NULL_ALLBINARY_LAYER));
        end else begin
            Exit(TSourceCollisionHelper.Create(TAllBinaryLayer.NULL_ALLBINARY_LAYER));
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

