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
// package org.allbinary.animation
unit FeaturedAnimationInterfaceFactoryInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, FeaturedResourceFactory, Rectangle, ProceduralAnimationInterfaceFactoryInterface, AnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TFeaturedAnimationInterfaceFactoryInterfaceFactory = class(TFeaturedResourceFactory)
  public
    class var INSTANCE: TFeaturedAnimationInterfaceFactoryInterfaceFactory;
        constructor Create;
        class function getInstance: TFeaturedAnimationInterfaceFactoryInterfaceFactory; static;
        function getRectangle(resource: string): TRectangle; virtual;
        function getRectangleXY(resource: string; x: Integer; y: Integer): TRectangle; virtual;
        function getProcedural(resource: string): IProceduralAnimationInterfaceFactoryInterface; virtual;
        function get(resource: string): IAnimationInterfaceFactoryInterface; virtual;
        function getBasicAnimationInterfaceFactoryInstance(resource: string): IBasicAnimationInterfaceFactoryInterface;
  end;

implementation
uses
  NullAnimationFactory, FeatureResourceAnimationInterfaceFactoryInterface, GameConfigurationCentral, PointFactory, RectangleFactory, StringMaker, StringUtil, CommonSeps, BasicArrayList, BasicArrayListD;


{AB:CODE}
    

constructor TFeaturedAnimationInterfaceFactoryInterfaceFactory.Create;
begin
    inherited Create;
end;
    

class function TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance: TFeaturedAnimationInterfaceFactoryInterfaceFactory;
begin
        Exit(TFeaturedAnimationInterfaceFactoryInterfaceFactory.INSTANCE);
end;
    

// throws Exception
function TFeaturedAnimationInterfaceFactoryInterfaceFactory.getRectangle(resource: string): TRectangle;
begin
        Exit(Self.getRectangleXY(resource, 0, 0));
end;
    

// throws Exception
function TFeaturedAnimationInterfaceFactoryInterfaceFactory.getRectangleXY(resource: string; x: Integer; y: Integer): TRectangle;
var
  pointFactory_: TPointFactory;
  list: TBasicArrayList;
  scale: Integer;
  size: Integer;
  featureInterface: IFeatureResourceAnimationInterfaceFactoryInterface;
  rectangle_: TRectangle;
  index: Integer;
begin
        pointFactory_ := TPointFactory.getInstance();
        list := Self.getList();
        scale := TGameConfigurationCentral.getInstance().SCALE.getValue().intValue();
        size := Self.getList().size();
        for index := 0 to size - 1 do begin
            featureInterface := (TJava.ToObject(list.objectArray[index]) as IFeatureResourceAnimationInterfaceFactoryInterface);
            if featureInterface.isFeature() then begin
                rectangle_ := featureInterface.getRectangle(resource);
                if (rectangle_) <> (TRectangleFactory.SINGLETON) then begin
                    Exit(TRectangle.Create(pointFactory_.createXY(x, y), (TJava.SignedRightShift(((rectangle_.getWidth()) * (scale)), 1)), (TJava.SignedRightShift(((rectangle_.getHeight()) * (scale)), 1))));
                end;
            end;
        end;
        raise SysUtils.Exception.Create(TStringMaker.Create().append('No rectangle available for current feature selection or Resource: ').append(resource).toString());
end;
    

// throws Exception
function TFeaturedAnimationInterfaceFactoryInterfaceFactory.getProcedural(resource: string): IProceduralAnimationInterfaceFactoryInterface;
begin
        Exit((TJava.ToObject(Self.getBasicAnimationInterfaceFactoryInstance(resource)) as IProceduralAnimationInterfaceFactoryInterface));
end;
    

// throws Exception
function TFeaturedAnimationInterfaceFactoryInterfaceFactory.get(resource: string): IAnimationInterfaceFactoryInterface;
begin
        Exit((TJava.ToObject(Self.getBasicAnimationInterfaceFactoryInstance(resource)) as IAnimationInterfaceFactoryInterface));
end;
    

// throws Exception
function TFeaturedAnimationInterfaceFactoryInterfaceFactory.getBasicAnimationInterfaceFactoryInstance(resource: string): IBasicAnimationInterfaceFactoryInterface;
var
  list: TBasicArrayList;
  resourceTypeAvailableList: TBasicArrayList;
  size: Integer;
  featureInterface: IFeatureResourceAnimationInterfaceFactoryInterface;
  animationInterfaceFactoryInterface_: IBasicAnimationInterfaceFactoryInterface;
  index: Integer;
  stringBuffer: TStringMaker;
  result_: string;
  NO_ANIMATION_AVAILABLE_FROM: string;
  FOR_FACTORIES: string;
  FOR_RESOURCE: string;
  HAS_KEY: string;
  RESOURCES_LABEL: string;
  size2: Integer;
begin
        list := Self.getList();
        resourceTypeAvailableList := TBasicArrayListD.Create();
        size := Self.getList().size();
        
        
        for index := 0 to size - 1 do begin
            featureInterface := (TJava.ToObject(list.objectArray[index]) as IFeatureResourceAnimationInterfaceFactoryInterface);
            if featureInterface.isFeature() then begin
                resourceTypeAvailableList.add(TJava.Box(featureInterface));
                animationInterfaceFactoryInterface_ := featureInterface.getBasicAnimationInterfaceFactoryInstance(resource);
                if TJava.ToObject(animationInterfaceFactoryInterface_) <> TJava.ToObject(TNullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY) then begin
                    Exit(animationInterfaceFactoryInterface_);
                end;
            end;
        end;
        if (resourceTypeAvailableList.size()) > (0) then begin
            NO_ANIMATION_AVAILABLE_FROM := 'No animation available from: ';
            FOR_FACTORIES := ' factories: ';
            FOR_RESOURCE := ' for Resource: ';
            HAS_KEY := ' has: ';
            RESOURCES_LABEL := ' resources ';
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(NO_ANIMATION_AVAILABLE_FROM);
            stringBuffer.appendint(resourceTypeAvailableList.size());
            stringBuffer.append(TCommonSeps.getInstance().FORWARD_SLASH);
            stringBuffer.appendint(size);
            stringBuffer.append(FOR_FACTORIES);
            size2 := resourceTypeAvailableList.size();
            for index := 0 to size2 - 1 do begin
                stringBuffer.append(resourceTypeAvailableList.get(index).toString());
                stringBuffer.append(TCommonSeps.getInstance().COMMA_SEP);
            end;
            stringBuffer.append(FOR_RESOURCE);
            stringBuffer.append(resource);
            for index := 0 to size - 1 do begin
                stringBuffer.append(TCommonSeps.getInstance().NEW_LINE);
                featureInterface := (TJava.ToObject(list.objectArray[index]) as IFeatureResourceAnimationInterfaceFactoryInterface);
                if featureInterface.isFeature() then begin
                    stringBuffer.append(TStringUtil.getInstance().toString(TJava.ToObject(featureInterface)));
                    stringBuffer.append(HAS_KEY);
                    stringBuffer.appendint(featureInterface.getHashtable().size());
                    stringBuffer.append(RESOURCES_LABEL);
                end;
            end;
            raise SysUtils.Exception.Create(stringBuffer.toString());
        end else begin
            stringBuffer := TStringMaker.Create();
            for index := 0 to size - 1 do begin
                featureInterface := (TJava.ToObject(list.objectArray[index]) as IFeatureResourceAnimationInterfaceFactoryInterface);
                stringBuffer.append(TJava.ToString(TJava.ToObject(featureInterface)));
                stringBuffer.append(TCommonSeps.getInstance().SPACE);
            end;
            result_ := stringBuffer.toString();
            stringBuffer.delete_(0, stringBuffer.length());
            raise SysUtils.Exception.Create(stringBuffer.append('No feature resource type available for Resource: ').append(resource).append(' Resource Factories Available: ').append(result_).toString());
        end;
end;

initialization
  {AB:INITIALIZATION}
  TFeaturedAnimationInterfaceFactoryInterfaceFactory.INSTANCE := TFeaturedAnimationInterfaceFactoryInterfaceFactory.Create();
  {AB:END}

end.

