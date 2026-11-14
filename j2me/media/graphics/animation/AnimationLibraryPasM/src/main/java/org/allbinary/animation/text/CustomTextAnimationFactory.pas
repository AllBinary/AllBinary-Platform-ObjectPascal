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
// package org.allbinary.animation.text
unit CustomTextAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Font, Animation, AnimationBehaviorFactory, AnimationInterfaceFactoryInterface, BasicColor, LogUtil, ScaleProperties, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TCustomTextAnimationFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    logUtil: TLogUtil;
    animationBehaviorFactory: TAnimationBehaviorFactory;
    basicColor: TBasicColor;
    text: string;
    initScaleHeight: Integer;
    dx: Integer;
    dy: Integer;
    font: TFont;
    scaleProperties: TScaleProperties;
    procedure InitFields;
    function JavaObject: TObject;
        class function createDXY(text: string; fontSize: Integer; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TCustomTextAnimationFactory; static;
        constructor Create(text: string; fontSize: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
        function getWidth: Integer; virtual;
        function getHeight: Integer; virtual;
  end;

implementation
uses
  CustomTextAnimation, AdjustCustomTextAnimation, BasicColorFactory;


{AB:CODE}

procedure TCustomTextAnimationFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  Self.basicColor := TBasicColorFactory.getInstance().BLACK;
  
  
  Self.dx := 0;
  Self.dy := 0;
  
  
end;

function TCustomTextAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TCustomTextAnimationFactory.createDXY(text: string; fontSize: Integer; dx: Integer; dy: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory): TCustomTextAnimationFactory;
var
  customTextAnimationFactory_: TCustomTextAnimationFactory;
begin
        customTextAnimationFactory_ := TCustomTextAnimationFactory.Create(text, fontSize, animationBehaviorFactory_);
        customTextAnimationFactory_.dx := dx;
        customTextAnimationFactory_.dy := dy;
        Exit(customTextAnimationFactory_);
end;
    

constructor TCustomTextAnimationFactory.Create(text: string; fontSize: Integer; animationBehaviorFactory_: TAnimationBehaviorFactory);
begin
    inherited Create;
    InitFields;
        Self.scaleProperties := TScaleProperties.Create();
        Self.text := text;
        Self.scaleProperties.scaleHeight := (fontSize) - (((fontSize) div (4)));
        Self.initScaleHeight := Self.scaleProperties.scaleHeight;
        Self.animationBehaviorFactory := animationBehaviorFactory_;
        Self.font := TFont.getFont(TFont.FACE_SYSTEM, TFont.STYLE_PLAIN, Self.initScaleHeight);
end;
    

// throws Exception
function TCustomTextAnimationFactory.getInstance(instanceId: Integer): TAnimation;
var
  customTextAnimation_: TCustomTextAnimation;
begin
        
        if ((Self.dx) <> (0)) or ((Self.dy) <> (0)) then begin
            customTextAnimation_ := TAdjustCustomTextAnimation.Create(Self.text, Self.scaleProperties.scaleHeight, Self.dx, Self.dy, Self.animationBehaviorFactory.getOrCreateInstance());
        end else begin
            customTextAnimation_ := TCustomTextAnimation.Create(Self.text, Self.scaleProperties.scaleHeight, Self.animationBehaviorFactory.getOrCreateInstance());
        end;
        customTextAnimation_.setBasicColorP(Self.basicColor);
        Exit(customTextAnimation_);
end;
    

procedure TCustomTextAnimationFactory.setInitialScale(scaleProperties_: TScaleProperties);
begin
end;
    

function TCustomTextAnimationFactory.getWidth: Integer;
begin
        Exit(Self.font.stringWidth(Self.text));
end;
    

function TCustomTextAnimationFactory.getHeight: Integer;
begin
        Exit(Self.font.getHeight());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

