{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// AB:CYCLE TYPES AnimationFactoryImageScaleUtil BaseImageAnimationFactory
// The units AnimationFactoryImageScaleUtil BaseImageAnimationFactory use each other in their interface sections, so their types are declared together here.
unit CycleTypesAnimationFactoryImageScaleUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, ImageJ2MEScaleUtil, Animation, AnimationBehaviorFactory, AnimationInterfaceFactoryInterface, ScaleProperties, AnimationFactoryInitializationVisitor, BasicAnimationInterfaceFactoryInterface;

type
  { Forward declarations like C++ so the cycle members can refer to each other }
  TAnimationFactoryImageScaleUtil = class;
  TBaseImageAnimationFactory = class;
  {AB:TYPES}
  { AnimationFactoryImageScaleUtil }
  TAnimationFactoryImageScaleUtil = class(TObject)
  public
    imageScaleUtil: TImageJ2MEScaleUtil;
    class var instance: TAnimationFactoryImageScaleUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAnimationFactoryImageScaleUtil; static;
        function createImage(image_: TImage; width: Integer; height: Integer; scaleWidth: Integer; scaleHeight: Integer): TImage; virtual;
        procedure processAdjust(baseImageAnimationFactory_: TBaseImageAnimationFactory); virtual;
  end;

  { BaseImageAnimationFactory }
  TBaseImageAnimationFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    animationFactoryImageScaleUtil: TAnimationFactoryImageScaleUtil;
    image: TImage;
    animationBehaviorFactory: TAnimationBehaviorFactory;
    sequenceArray: TArray<Integer>;
    animationFactoryInitializationVisitor: TAnimationFactoryInitializationVisitor;
    scaleProperties: TScaleProperties;
    procedure InitFields;
    function JavaObject: TObject;
        class function createFactoryBase(image_: TImage; sequenceArray: TArray<Integer>; width: Integer; height: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TBaseImageAnimationFactory; static;
        constructor Create(image_: TImage; sequenceArray: TArray<Integer>; width: Integer; height: Integer; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        function getImage: TImage; virtual;
        function getSequenceArray: TArray<Integer>; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
        function getAnimationFactoryInitializationVisitorP: TAnimationFactoryInitializationVisitor; virtual;
        function getScalePropertiesP: TScaleProperties; virtual;
        function toString: string; virtual;
  end;


implementation
uses
  LogUtil, StringMaker, CommonLabels, CommonStrings, NullAnimationFactory, ForcedLogUtil, CommonSeps;


{AB:CODE}

procedure TAnimationFactoryImageScaleUtil.InitFields;
begin
  Self.imageScaleUtil := TImageJ2MEScaleUtil.getInstance();
end;

constructor TAnimationFactoryImageScaleUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAnimationFactoryImageScaleUtil.getInstance: TAnimationFactoryImageScaleUtil;
begin
        Exit(TAnimationFactoryImageScaleUtil.instance);
end;
    

// throws Exception
function TAnimationFactoryImageScaleUtil.createImage(image_: TImage; width: Integer; height: Integer; scaleWidth: Integer; scaleHeight: Integer): TImage;
var
  scaledImage: TImage;
  scaleX: Single;
  scaleY: Single;
  scaledWidth: Integer;
  scaledHeight: Integer;
begin
        
        if ((scaleWidth) <> (0)) and ((scaleHeight) <> (0)) then begin
            scaleX := ((scaleWidth)) / ((width));
            scaleY := ((scaleHeight)) / ((height));
            if ((((scaleX) = (1.0)) and ((scaleY) = (1.0)))) or ((((scaleX) = (0.0)) or ((scaleY) = (0.0)))) then begin
                scaledImage := image_;
            end else begin
                scaledWidth := Integer(Trunc(((scaleX) * (width))));
                scaledHeight := Integer(Trunc(((scaleY) * (height))));
                scaledImage := Self.imageScaleUtil.scale(image_, scaledWidth, scaledHeight);
            end;
        end else begin
            scaledImage := image_;
        end;
        Exit(scaledImage);
end;
    

// throws Exception
procedure TAnimationFactoryImageScaleUtil.processAdjust(baseImageAnimationFactory_: TBaseImageAnimationFactory);
var
  scaleProperties_: TScaleProperties;
  animationFactoryInitializationVisitor_: TAnimationFactoryInitializationVisitor;
  scaleX: Single;
  scaleY: Single;
begin
        scaleProperties_ := baseImageAnimationFactory_.getScalePropertiesP();
        if ((scaleProperties_.scaleWidth) <> (0)) and ((scaleProperties_.scaleHeight) <> (0)) then begin
            animationFactoryInitializationVisitor_ := baseImageAnimationFactory_.getAnimationFactoryInitializationVisitorP();
            scaleX := (((1.0 * (scaleProperties_.scaleWidth)))) / (((1.0 * (animationFactoryInitializationVisitor_.width))));
            scaleY := (((1.0 * (scaleProperties_.scaleHeight)))) / (((1.0 * (animationFactoryInitializationVisitor_.height))));
            if ((((scaleX) = (1.0)) and ((scaleY) = (1.0)))) or ((((scaleX) = (0.0)) or ((scaleY) = (0.0)))) then begin
            end else begin
                animationFactoryInitializationVisitor_.dx := Integer(Trunc(((animationFactoryInitializationVisitor_.originalDx) * (scaleX))));
                animationFactoryInitializationVisitor_.dy := Integer(Trunc(((animationFactoryInitializationVisitor_.originalDy) * (scaleY))));
            end;
        end else begin
        end;
end;


procedure TBaseImageAnimationFactory.InitFields;
begin
  Self.animationFactoryImageScaleUtil := TAnimationFactoryImageScaleUtil.getInstance();
  
  
  
  
  Self.scaleProperties := TScaleProperties.instance;
end;

function TBaseImageAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

// throws Exception
class function TBaseImageAnimationFactory.createFactoryBase(image_: TImage; sequenceArray: TArray<Integer>; width: Integer; height: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TBaseImageAnimationFactory;
begin
        Exit(TBaseImageAnimationFactory.Create(image_, sequenceArray, width, height, 0, 0, animationBehaviorFactory_));
end;
    

constructor TBaseImageAnimationFactory.Create(image_: TImage; sequenceArray: TArray<Integer>; width: Integer; height: Integer; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
    inherited Create;
    InitFields;
        Self.animationFactoryInitializationVisitor := TAnimationFactoryInitializationVisitor.Create();
        Self.image := image_;
        Self.animationFactoryInitializationVisitor.width := width;
        Self.animationFactoryInitializationVisitor.height := height;
        Self.animationBehaviorFactory := animationBehaviorFactory_;
        Self.sequenceArray := sequenceArray;
        Self.animationFactoryInitializationVisitor.dx := dx;
        Self.animationFactoryInitializationVisitor.dy := dy;
end;
    

// throws Exception
function TBaseImageAnimationFactory.getInstance(instanceId: Integer): TAnimation;
begin
        Exit(TNullAnimationFactory.getFactoryInstance().getInstance(instanceId));
end;
    

function TBaseImageAnimationFactory.getImage: TImage;
begin
        Exit(Self.image);
end;
    

function TBaseImageAnimationFactory.getSequenceArray: TArray<Integer>;
begin
        Exit(Self.sequenceArray);
end;
    

procedure TBaseImageAnimationFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
        Self.scaleProperties := scaleProperties_;
        if Self.scaleProperties.shouldScale then begin
            Self.scaleProperties.scaleWidth := Integer(Trunc(((Self.animationFactoryInitializationVisitor.width) * (Self.scaleProperties.scaleX))));
            Self.scaleProperties.scaleHeight := Integer(Trunc(((Self.animationFactoryInitializationVisitor.height) * (Self.scaleProperties.scaleY))));
        end else begin
        end;
end;
    

function TBaseImageAnimationFactory.getAnimationFactoryInitializationVisitorP: TAnimationFactoryInitializationVisitor;
begin
        Exit(Self.animationFactoryInitializationVisitor);
end;
    

function TBaseImageAnimationFactory.getScalePropertiesP: TScaleProperties;
begin
        Exit(Self.scaleProperties);
end;
    

function TBaseImageAnimationFactory.toString: string;
var
  commonSeps_: TCommonSeps;
  commonLabels_: TCommonLabels;
  stringBuffer: TStringMaker;
begin
        commonSeps_ := TCommonSeps.getInstance();
        commonLabels_ := TCommonLabels.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(inherited toString());
        stringBuffer.append(commonLabels_.HEIGHT_LABEL);
        stringBuffer.appendint(Integer(Trunc(Self.image.getHeight())));
        stringBuffer.append(commonSeps_.SPACE);
        stringBuffer.append(Self.animationFactoryInitializationVisitor.toString());
        Exit(stringBuffer.toString());
end;


initialization
  {AB:INITIALIZATION}
  TAnimationFactoryImageScaleUtil.instance := TAnimationFactoryImageScaleUtil.Create();
  {AB:END}

end.
