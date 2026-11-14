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
// package org.allbinary.game.resource
unit FeaturedResourceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameFeatureControlledInterface, LogUtil, CommonStrings, BasicArrayList;

type
  {AB:TYPES}
  TFeaturedResourceFactory = class(TObject)
  public
    logUtil: TLogUtil;
    list: TBasicArrayList;
    commonStrings: TCommonStrings;
    ANIMATION_FEATURES: string;
    IMAGE_LABEL: string;
    IMAGE_GRAPHICS_ARRAY: string;
    IMAGE_GRAPHICS_ROTATION: string;
    SPRITE_QUARTER: string;
    SPRITE_FULL: string;
    IS_LOADING_LEVEL_LABEL: string;
    IS_FEATURE: string;
    GAME_FEATURE_CONTROLLED: string;
    procedure InitFields;
        constructor Create;
        procedure init(level: Integer); virtual;
        procedure clear; virtual;
        procedure add(featureInterface: IGameFeatureControlledInterface); virtual;
        function getList: TBasicArrayList; virtual;
  end;

implementation
uses
  ResourceLoadingLevelFactory, Features, GraphicsFeatureFactory, StringMaker, StringUtil, CommonLabels, CommonSeps, BasicArrayListD;


{AB:CODE}

procedure TFeaturedResourceFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.list := TBasicArrayListD.Create();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.ANIMATION_FEATURES := 'Animation Features: Vector: ';
  Self.IMAGE_LABEL := ' Image: ';
  Self.IMAGE_GRAPHICS_ARRAY := 'Image Array: ';
  Self.IMAGE_GRAPHICS_ROTATION := 'Image Rotate: ';
  Self.SPRITE_QUARTER := ' Sprite Quarter: ';
  Self.SPRITE_FULL := ' Sprite Full: ';
  Self.IS_LOADING_LEVEL_LABEL := ' isLoadingLevel ';
  Self.IS_FEATURE := ' isFeature: ';
  Self.GAME_FEATURE_CONTROLLED := 'GameFeatureControlledInterface: ';
end;
    

constructor TFeaturedResourceFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TFeaturedResourceFactory.init(level: Integer);
var
  size: Integer;
  featureInterface: IGameFeatureControlledInterface;
  isLoadingLevel: Boolean;
  isFeature: Boolean;
  index: Integer;
  features_: TFeatures;
  graphicsFeatureFactory_: TGraphicsFeatureFactory;
  stringBuffer: TStringMaker;
begin
        size := Self.list.size();
        for index := 0 to size - 1 do begin
            featureInterface := (TJava.ToObject(Self.list.objectArray[index]) as IGameFeatureControlledInterface);
            isLoadingLevel := featureInterface.isLoadingLevel(level);
            isFeature := featureInterface.isFeature();
            Self.logUtil.putF(TStringMaker.Create().append(Self.GAME_FEATURE_CONTROLLED).append(TJava.ToString(TJava.ToObject(featureInterface))).append(Self.IS_LOADING_LEVEL_LABEL).append(TResourceLoadingLevelFactory.getInstance().getLevelString(level)).append(TCommonSeps.getInstance().COLON_SEP).appendboolean(isLoadingLevel).append(Self.IS_FEATURE).appendboolean(isFeature).toString(), TJava.Box(Self), Self.commonStrings.INIT);
            if (isLoadingLevel) and (isFeature) then begin
                featureInterface.init(level);
            end;
        end;
        features_ := TFeatures.getInstance();
        graphicsFeatureFactory_ := TGraphicsFeatureFactory.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.ANIMATION_FEATURES);
        stringBuffer.appendboolean(features_.isFeature(graphicsFeatureFactory_.VECTOR_GRAPHICS));
        stringBuffer.append(Self.IMAGE_LABEL);
        stringBuffer.appendboolean(features_.isFeature(graphicsFeatureFactory_.IMAGE_GRAPHICS));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.INIT);
        if features_.isFeature(graphicsFeatureFactory_.IMAGE_GRAPHICS) then begin
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(Self.IMAGE_GRAPHICS_ARRAY);
            stringBuffer.appendboolean(features_.isFeature(graphicsFeatureFactory_.IMAGE_TO_ARRAY_GRAPHICS));
            stringBuffer.append(Self.IMAGE_GRAPHICS_ROTATION);
            stringBuffer.appendboolean(features_.isFeature(graphicsFeatureFactory_.IMAGE_TO_ARRAY_GRAPHICS));
            stringBuffer.append(Self.SPRITE_QUARTER);
            stringBuffer.appendboolean(features_.isFeature(graphicsFeatureFactory_.SPRITE_QUARTER_ROTATION_GRAPHICS));
            stringBuffer.append(Self.SPRITE_FULL);
            stringBuffer.appendboolean(features_.isFeature(graphicsFeatureFactory_.SPRITE_FULL_GRAPHICS));
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.INIT);
        end;
end;
    

procedure TFeaturedResourceFactory.clear;
begin
        Self.list.clear();
end;
    

procedure TFeaturedResourceFactory.add(featureInterface: IGameFeatureControlledInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(TCommonLabels.getInstance().START_LABEL).append(TStringUtil.getInstance().toString(TJava.ToObject(featureInterface))).toString(), TJava.Box(Self), Self.commonStrings.ADD);
        Self.list.add(TJava.Box(featureInterface));
end;
    

function TFeaturedResourceFactory.getList: TBasicArrayList;
begin
        Exit(Self.list);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

