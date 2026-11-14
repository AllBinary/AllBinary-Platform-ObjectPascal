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
unit LayerCollisionUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, CollisionProcessor;

type
  {AB:TYPES}
  TLayerCollisionUtil = class(TObject)
  public
    collisionProcessor: TCollisionProcessor;
    class var instance: TLayerCollisionUtil;
    procedure InitFields;
        class function getInstance: TLayerCollisionUtil; static;
        constructor Create;
        function isCollision(myLayer: TAllBinaryLayer; myLayer2: TAllBinaryLayer): Boolean; virtual;
  end;

implementation
uses
  Collision2DProcessor, CollisionThreedProcessor, Features, GameFeatureFactory, OpenGLFeatureUtil;


{AB:CODE}

procedure TLayerCollisionUtil.InitFields;
begin
  
end;
    

class function TLayerCollisionUtil.getInstance: TLayerCollisionUtil;
begin
        Exit(TLayerCollisionUtil.instance);
end;
    

constructor TLayerCollisionUtil.Create;
var
  features_: TFeatures;
  gameFeatureFactory_: TGameFeatureFactory;
begin
    inherited Create;
    InitFields;
        features_ := TFeatures.getInstance();
        gameFeatureFactory_ := TGameFeatureFactory.getInstance();
        if (TOpenGLFeatureUtil.getInstance().isAnyThreed()) and (not (features_.isFeature(gameFeatureFactory_.COLLISIONS_FORCED_TWO_DIMENSIONAL))) then begin
            Self.collisionProcessor := TCollisionThreedProcessor.Create();
        end else begin
            Self.collisionProcessor := TCollision2DProcessor.Create();
        end;
end;
    

function TLayerCollisionUtil.isCollision(myLayer: TAllBinaryLayer; myLayer2: TAllBinaryLayer): Boolean;
begin
        Exit(Self.collisionProcessor.isCollision(myLayer, myLayer2));
end;

initialization
  {AB:INITIALIZATION}
  TLayerCollisionUtil.instance := TLayerCollisionUtil.Create();
  {AB:END}

end.

