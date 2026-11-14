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
// package org.allbinary.game.configuration.feature
unit GameFeatureFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameFeature, Feature;

type
  {AB:TYPES}
  TGameFeatureFactory = class(TObject)
  public
    SOUND: TGameFeature;
    MUSIC: TGameFeature;
    SCREEN_SHAKE: TFeature;
    POST_IMAGE_LOADING_MODIFICATION: TFeature;
    HEALTH_BARS: TGameFeature;
    DAMAGE_FLOATERS: TGameFeature;
    GAME_INPUT_LAYER_PROCESSOR: TGameFeature;
    ARTIFICIAL_INTELLEGENCE_PROCESSOR: TGameFeature;
    COLLIDABLE_INTERFACE_LAYER_PROCESSOR: TGameFeature;
    TICKABLE_LAYER_PROCESSOR: TGameFeature;
    CHEATING: TGameFeature;
    DROPPED_ITEMS: TGameFeature;
    DROPPED_ITEMS_FROM_DEATH: TGameFeature;
    TEST_DESTROYED_LAYER_PROCESSOR: TGameFeature;
    COLLISIONS_WITH_SOURCE: TGameFeature;
    COLLISIONS_FORCED_TWO_DIMENSIONAL: TGameFeature;
    class var instance: TGameFeatureFactory;
    procedure InitFields;
        class function getInstance: TGameFeatureFactory; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TGameFeatureFactory.InitFields;
begin
  Self.SOUND := TGameFeature.Create('Sound');
  Self.MUSIC := TGameFeature.Create('Music');
  Self.SCREEN_SHAKE := TFeature.Create('Screen Shake');
  Self.POST_IMAGE_LOADING_MODIFICATION := TFeature.Create('Post Image Loading Modification (Scaling, Rotation, or Other)');
  Self.HEALTH_BARS := TGameFeature.Create('Health Bars');
  Self.DAMAGE_FLOATERS := TGameFeature.Create('Damage Floaters');
  Self.GAME_INPUT_LAYER_PROCESSOR := TGameFeature.Create('Game Input Layer Processor');
  Self.ARTIFICIAL_INTELLEGENCE_PROCESSOR := TGameFeature.Create('Artificial Intelligence Layer Processor');
  Self.COLLIDABLE_INTERFACE_LAYER_PROCESSOR := TGameFeature.Create('Collidable Interface Layer Processor');
  Self.TICKABLE_LAYER_PROCESSOR := TGameFeature.Create('Tickable Layer Processor');
  Self.CHEATING := TGameFeature.Create('Cheating');
  Self.DROPPED_ITEMS := TGameFeature.Create('Drops');
  Self.DROPPED_ITEMS_FROM_DEATH := TGameFeature.Create('Drops from Dead');
  Self.TEST_DESTROYED_LAYER_PROCESSOR := TGameFeature.Create('Destroyed Layer Processor');
  Self.COLLISIONS_WITH_SOURCE := TGameFeature.Create('Allow Collisions With Source');
  Self.COLLISIONS_FORCED_TWO_DIMENSIONAL := TGameFeature.Create('Collisions Forced Two Dimensional');
end;
    

class function TGameFeatureFactory.getInstance: TGameFeatureFactory;
begin
        Exit(TGameFeatureFactory.instance);
end;
    

constructor TGameFeatureFactory.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TGameFeatureFactory.instance := TGameFeatureFactory.Create();
  {AB:END}

end.

