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
// package org.allbinary.game.layer.resources
unit GameGraphicsResourceUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GraphicsFeature, LogUtil;

type
  {AB:TYPES}
  TGameGraphicsResourceUtil = class(TObject)
  public
    logUtil: TLogUtil;
    SPRITE: string;
    QUARTER: string;
    name: string;
    class var instance: TObject;
    procedure InitFields;
        class function getInstance: TGameGraphicsResourceUtil; static;
        constructor Create;
        function getString: string;
        function getStringForFeature(graphicsFeature_: TGraphicsFeature): string; virtual;
        function getName: string; virtual;
  end;

implementation
uses
  Features, GraphicsFeatureFactory, CanvasStrings, OpenGLFeatureUtil, NullUtil, StringMaker, StringUtil, CommonStrings;


{AB:CODE}

procedure TGameGraphicsResourceUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.SPRITE := '_sprite';
  Self.QUARTER := '_quarter';
  Self.name := TStringUtil.getInstance().EMPTY_STRING;
end;
    

class function TGameGraphicsResourceUtil.getInstance: TGameGraphicsResourceUtil;
begin
        if (TGameGraphicsResourceUtil.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TGameGraphicsResourceUtil.instance := TGameGraphicsResourceUtil.Create();
        end;
        Exit(TGameGraphicsResourceUtil(TJava.ToObject(TGameGraphicsResourceUtil.instance)));
end;
    

constructor TGameGraphicsResourceUtil.Create;
var
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        try
            Self.name := Self.getString();
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.CONSTRUCTOR_, TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
function TGameGraphicsResourceUtil.getString: string;
var
  graphicsFeatureFactory_: TGraphicsFeatureFactory;
  graphicsFeature_: TGraphicsFeature;
  features_: TFeatures;
begin
        graphicsFeatureFactory_ := TGraphicsFeatureFactory.getInstance();
        graphicsFeature_ := graphicsFeatureFactory_.NONE;
        features_ := TFeatures.getInstance();
        if features_.isFeature(graphicsFeatureFactory_.IMAGE_TO_ARRAY_GRAPHICS) then begin
            graphicsFeature_ := graphicsFeatureFactory_.IMAGE_TO_ARRAY_GRAPHICS;
        end else if features_.isFeature(graphicsFeatureFactory_.SPRITE_FULL_GRAPHICS) then begin
            graphicsFeature_ := graphicsFeatureFactory_.SPRITE_FULL_GRAPHICS;
        end else if features_.isFeature(graphicsFeatureFactory_.SPRITE_QUARTER_ROTATION_GRAPHICS) then begin
            graphicsFeature_ := graphicsFeatureFactory_.SPRITE_QUARTER_ROTATION_GRAPHICS;
        end else if features_.isFeature(graphicsFeatureFactory_.IMAGE_ROTATION_ON_THE_FLY) then begin
            graphicsFeature_ := graphicsFeatureFactory_.IMAGE_ROTATION_ON_THE_FLY;
        end;
        Exit(Self.getStringForFeature(graphicsFeature_));
end;
    

// throws Exception
function TGameGraphicsResourceUtil.getStringForFeature(graphicsFeature_: TGraphicsFeature): string;
var
  stringBuffer: TStringMaker;
  graphicsFeatureFactory_: TGraphicsFeatureFactory;
  features_: TFeatures;
begin
        stringBuffer := TStringMaker.Create();
        graphicsFeatureFactory_ := TGraphicsFeatureFactory.getInstance();
        stringBuffer.delete_(0, stringBuffer.length());
        features_ := TFeatures.getInstance();
        if features_.isFeature(graphicsFeatureFactory_.VECTOR_GRAPHICS) then begin
        end else if features_.isFeature(graphicsFeatureFactory_.IMAGE_GRAPHICS) then begin
            if ((graphicsFeature_) = (graphicsFeatureFactory_.IMAGE_TO_ARRAY_GRAPHICS)) or ((graphicsFeature_) = (graphicsFeatureFactory_.IMAGE_ROTATION_ON_THE_FLY)) then begin
            end else if (graphicsFeature_) = (graphicsFeatureFactory_.SPRITE_FULL_GRAPHICS) then begin
                stringBuffer.append(Self.SPRITE);
            end else if (graphicsFeature_) = (graphicsFeatureFactory_.SPRITE_QUARTER_ROTATION_GRAPHICS) then begin
                stringBuffer.append(Self.QUARTER);
                stringBuffer.append(Self.SPRITE);
            end else begin
                raise SysUtils.Exception.Create('None/Unknown Sub Image Resource Type Specified');
            end;
        end else if TOpenGLFeatureUtil.getInstance().isAnyThreed() then begin
            stringBuffer.append(TCanvasStrings.getInstance().OBJ_MODEL);
        end else begin
            raise SysUtils.Exception.Create('None/Unknown Main Image Resource Type Specified');
        end;
        Exit(stringBuffer.toString());
end;
    

function TGameGraphicsResourceUtil.getName: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  TGameGraphicsResourceUtil.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

