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
// package org.allbinary.input.motion.button
unit TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BaseResourceAnimationInterfaceFactoryInterfaceFactory, ImageCache;

type
  {AB:TYPES}
  TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory = class(TBaseResourceAnimationInterfaceFactoryInterfaceFactory)
  public
        class function createFactory: TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; static;
        constructor Create(name: string);
        procedure init(level: Integer); override;
        procedure initImageCache(imageCache_: TImageCache; level: Integer); override;
        function isLoadingLevel(level: Integer): Boolean; override;
        function isFeature: Boolean; override;
  end;

implementation
uses
  TouchButtonBlankResource, TouchButtonResource, TouchButtonGenericActionResource, TouchButtonStartResource, TouchButtonUpResource, TouchButtonDownResource, TouchButtonTurnLeftResource, TouchButtonTurnRightResource, TouchButtonStrafeLeftResource, TouchButtonStrafeRightResource, Image, AnimationBehaviorFactory, NullAnimationFactory, OneRowSpriteIndexedAnimationFactory, Features, ResourceLoadingLevelFactory, ProgressCanvas, ProgressCanvasFactory, OpenGLFeatureFactory, ImageCacheFactory, StdUtil, StringMaker, OperatingSystemFactory, ImageCompleteUtil;


{AB:CODE}
    

class function TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.createFactory: TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory;
begin
        Exit(TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.Create('TouchButton Animations'));
end;
    

constructor TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.Create(name: string);
begin
        inherited Create(name, TStdUtil.getInstance().createHashtable(), TStdUtil.getInstance().createHashtable(), TStdUtil.getInstance().createHashtable());
end;
    

// throws Exception
procedure TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.init(level: Integer);
begin
        Self.initImageCache(TImageCacheFactory.getInstance(), level);
end;
    

// throws Exception
procedure TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.initImageCache(imageCache_: TImageCache; level: Integer);
var
  portion: Integer;
  loadingString: string;
  index: Integer;
  progressCanvas_: TProgressCanvas;
  touchButtonBlankResource_: TTouchButtonResource;
  touchButtonGenericActionResource_: TTouchButtonResource;
  touchButtonStartResource_: TTouchButtonResource;
  touchButtonUpResource_: TTouchButtonResource;
  touchButtonDownResource_: TTouchButtonResource;
  touchButtonTurnLeftResource_: TTouchButtonResource;
  touchButtonTurnRightResource_: TTouchButtonResource;
  touchButtonStrafeLeftResource_: TTouchButtonResource;
  touchButtonStrafeRightResource_: TTouchButtonResource;
  touchButtonBlankResourceImage: TImage;
  touchButtonGenericActionResourceImage: TImage;
  touchButtonStartResourceImage: TImage;
  touchButtonUpResourceImage: TImage;
  touchButtonDownResourceImage: TImage;
  touchButtonTurnLeftResourceImage: TImage;
  touchButtonTurnRightResourceImage: TImage;
  touchButtonStrafeLeftResourceImage: TImage;
  touchButtonStrafeRightResourceImage: TImage;
  nullAnimationFactory_: TNullAnimationFactory;
  imageCompleteUtil_: TImageCompleteUtil;
  touchButtonStartHintResource: TImage;
begin
        if Self.isInitialized() then begin
            Exit;
        end;
        portion := 140;
        loadingString := TStringMaker.Create().append(Self.toString()).append(' Loading: ').toString();
        index := 0;
        progressCanvas_ := TProgressCanvasFactory.getInstance();
        progressCanvas_.addPortion(portion, loadingString, TJava.PostInc(index));
        touchButtonBlankResource_ := TTouchButtonBlankResource.getInstance();
        touchButtonGenericActionResource_ := TTouchButtonGenericActionResource.getInstance();
        touchButtonStartResource_ := TTouchButtonStartResource.getInstance();
        touchButtonUpResource_ := TTouchButtonUpResource.getInstance();
        touchButtonDownResource_ := TTouchButtonDownResource.getInstance();
        touchButtonTurnLeftResource_ := TTouchButtonTurnLeftResource.getInstance();
        touchButtonTurnRightResource_ := TTouchButtonTurnRightResource.getInstance();
        touchButtonStrafeLeftResource_ := TTouchButtonStrafeLeftResource.getInstance();
        touchButtonStrafeRightResource_ := TTouchButtonStrafeRightResource.getInstance();
        touchButtonBlankResourceImage := imageCache_.getWithKey(TJava.Box(touchButtonBlankResource_.RESOURCE));
        touchButtonGenericActionResourceImage := imageCache_.getWithKey(TJava.Box(touchButtonGenericActionResource_.RESOURCE));
        touchButtonStartResourceImage := imageCache_.getWithKey(TJava.Box(touchButtonStartResource_.RESOURCE));
        touchButtonUpResourceImage := imageCache_.getWithKey(TJava.Box(touchButtonUpResource_.RESOURCE));
        touchButtonDownResourceImage := imageCache_.getWithKey(TJava.Box(touchButtonDownResource_.RESOURCE));
        touchButtonTurnLeftResourceImage := imageCache_.getWithKey(TJava.Box(touchButtonTurnLeftResource_.RESOURCE));
        touchButtonTurnRightResourceImage := imageCache_.getWithKey(TJava.Box(touchButtonTurnRightResource_.RESOURCE));
        touchButtonStrafeLeftResourceImage := imageCache_.getWithKey(TJava.Box(touchButtonStrafeLeftResource_.RESOURCE));
        touchButtonStrafeRightResourceImage := imageCache_.getWithKey(TJava.Box(touchButtonStrafeRightResource_.RESOURCE));
        nullAnimationFactory_ := TNullAnimationFactory.getFactoryInstance();
        if TOperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan() then begin
            imageCache_.getWithKey(TJava.Box(TTouchButtonStartResource.getInstance().HINT));
        end;
        progressCanvas_.addPortion(portion, loadingString, TJava.PostInc(index));
        imageCompleteUtil_ := TImageCompleteUtil.getInstance();
        progressCanvas_.addPortion(portion, loadingString, TJava.PostInc(index));
        imageCompleteUtil_.waitForImage(touchButtonBlankResourceImage, touchButtonBlankResource_.RESOURCE);
        Self.add(touchButtonBlankResource_.RESOURCE, TOneRowSpriteIndexedAnimationFactory.createFactory(touchButtonBlankResourceImage, TAnimationBehaviorFactory.getInstance()));
        Self.add(touchButtonBlankResource_.HINT, nullAnimationFactory_);
        progressCanvas_.addPortion(portion, loadingString, TJava.PostInc(index));
        imageCompleteUtil_.waitForImage(touchButtonGenericActionResourceImage, touchButtonGenericActionResource_.RESOURCE);
        Self.add(touchButtonGenericActionResource_.RESOURCE, TOneRowSpriteIndexedAnimationFactory.createFactory(touchButtonGenericActionResourceImage, TAnimationBehaviorFactory.getInstance()));
        Self.add(touchButtonGenericActionResource_.HINT, nullAnimationFactory_);
        progressCanvas_.addPortion(portion, loadingString, TJava.PostInc(index));
        imageCompleteUtil_.waitForImage(touchButtonStartResourceImage, touchButtonStartResource_.RESOURCE);
        Self.add(touchButtonStartResource_.RESOURCE, TOneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartResourceImage, TAnimationBehaviorFactory.getInstance()));
        progressCanvas_.addPortion(portion, loadingString, TJava.PostInc(index));
        imageCompleteUtil_.waitForImage(touchButtonUpResourceImage, touchButtonUpResource_.RESOURCE);
        Self.add(touchButtonUpResource_.RESOURCE, TOneRowSpriteIndexedAnimationFactory.createFactory(touchButtonUpResourceImage, TAnimationBehaviorFactory.getInstance()));
        Self.add(touchButtonUpResource_.HINT, nullAnimationFactory_);
        progressCanvas_.addPortion(portion, loadingString, TJava.PostInc(index));
        imageCompleteUtil_.waitForImage(touchButtonDownResourceImage, touchButtonDownResource_.RESOURCE);
        Self.add(touchButtonDownResource_.RESOURCE, TOneRowSpriteIndexedAnimationFactory.createFactory(touchButtonDownResourceImage, TAnimationBehaviorFactory.getInstance()));
        Self.add(touchButtonDownResource_.HINT, nullAnimationFactory_);
        progressCanvas_.addPortion(portion, loadingString, TJava.PostInc(index));
        imageCompleteUtil_.waitForImage(touchButtonTurnLeftResourceImage, touchButtonTurnLeftResource_.RESOURCE);
        Self.add(touchButtonTurnLeftResource_.RESOURCE, TOneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnLeftResourceImage, TAnimationBehaviorFactory.getInstance()));
        Self.add(touchButtonTurnLeftResource_.HINT, nullAnimationFactory_);
        progressCanvas_.addPortion(portion, loadingString, TJava.PostInc(index));
        imageCompleteUtil_.waitForImage(touchButtonTurnRightResourceImage, touchButtonTurnRightResource_.RESOURCE);
        Self.add(touchButtonTurnRightResource_.RESOURCE, TOneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnRightResourceImage, TAnimationBehaviorFactory.getInstance()));
        Self.add(touchButtonTurnRightResource_.HINT, nullAnimationFactory_);
        progressCanvas_.addPortion(portion, loadingString, TJava.PostInc(index));
        imageCompleteUtil_.waitForImage(touchButtonStrafeLeftResourceImage, touchButtonStrafeLeftResource_.RESOURCE);
        Self.add(touchButtonStrafeLeftResource_.RESOURCE, TOneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeLeftResourceImage, TAnimationBehaviorFactory.getInstance()));
        Self.add(touchButtonStrafeLeftResource_.HINT, nullAnimationFactory_);
        progressCanvas_.addPortion(portion, loadingString, TJava.PostInc(index));
        imageCompleteUtil_.waitForImage(touchButtonStrafeRightResourceImage, touchButtonStrafeRightResource_.RESOURCE);
        Self.add(touchButtonStrafeRightResource_.RESOURCE, TOneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeRightResourceImage, TAnimationBehaviorFactory.getInstance()));
        Self.add(touchButtonStrafeRightResource_.HINT, nullAnimationFactory_);
        if TOperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan() then begin
            touchButtonStartHintResource := imageCache_.getWithKey(TJava.Box(TTouchButtonStartResource.getInstance().HINT));
            Self.add(touchButtonStartResource_.HINT, TOneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartHintResource, TAnimationBehaviorFactory.getInstance()));
        end else begin
            Self.add(touchButtonStartResource_.HINT, nullAnimationFactory_);
        end;
        inherited init(level);
end;
    

function TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.isLoadingLevel(level: Integer): Boolean;
var
  resourceLoadingLevelFactory_: TResourceLoadingLevelFactory;
begin
        resourceLoadingLevelFactory_ := TResourceLoadingLevelFactory.getInstance();
        if (level) = (resourceLoadingLevelFactory_.LOAD_TOUCH.getLevel()) then begin
            Exit(True);
        end else begin
            Exit(inherited isLoadingLevel(level));
        end;
end;
    

function TTouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.isFeature: Boolean;
begin
        if not (TFeatures.getInstance().isDefault(TOpenGLFeatureFactory.getInstance().OPENGL)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

