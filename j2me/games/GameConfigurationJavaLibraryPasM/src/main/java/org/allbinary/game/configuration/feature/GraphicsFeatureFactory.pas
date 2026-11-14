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
unit GraphicsFeatureFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GraphicsFeature;

type
  {AB:TYPES}
  TGraphicsFeatureFactory = class(TObject)
  public
    NONE: TGraphicsFeature;
    TRANSPARENT_IMAGE_CREATION: TGraphicsFeature;
    IMAGE_GRAPHICS: TGraphicsFeature;
    IMAGE_ROTATION_ON_THE_FLY: TGraphicsFeature;
    IMAGE_TO_ARRAY_GRAPHICS: TGraphicsFeature;
    SPRITE_QUARTER_ROTATION_GRAPHICS: TGraphicsFeature;
    SPRITE_FULL_GRAPHICS: TGraphicsFeature;
    VECTOR_GRAPHICS: TGraphicsFeature;
    VECTOR_TO_IMAGE_GRAPHICS: TGraphicsFeature;
    class var instance: TGraphicsFeatureFactory;
    procedure InitFields;
        class function getInstance: TGraphicsFeatureFactory; static;
        constructor Create;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure TGraphicsFeatureFactory.InitFields;
begin
  Self.NONE := TGraphicsFeature.Create(TStringUtil.getInstance().NULL_STRING);
  Self.TRANSPARENT_IMAGE_CREATION := TGraphicsFeature.Create('Transparent Image Creation');
  Self.IMAGE_GRAPHICS := TGraphicsFeature.Create('Image Graphics');
  Self.IMAGE_ROTATION_ON_THE_FLY := TGraphicsFeature.Create('Image Rotated On The Fly');
  Self.IMAGE_TO_ARRAY_GRAPHICS := TGraphicsFeature.Create('Image To Array Graphics');
  Self.SPRITE_QUARTER_ROTATION_GRAPHICS := TGraphicsFeature.Create('Sprite Quarter Rotation Graphics');
  Self.SPRITE_FULL_GRAPHICS := TGraphicsFeature.Create('Sprite Full Rotation Graphics');
  Self.VECTOR_GRAPHICS := TGraphicsFeature.Create('BasicArrayList Graphics');
  Self.VECTOR_TO_IMAGE_GRAPHICS := TGraphicsFeature.Create('BasicArrayList To Image Graphics');
end;
    

class function TGraphicsFeatureFactory.getInstance: TGraphicsFeatureFactory;
begin
        Exit(TGraphicsFeatureFactory.instance);
end;
    

constructor TGraphicsFeatureFactory.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TGraphicsFeatureFactory.instance := TGraphicsFeatureFactory.Create();
  {AB:END}

end.

