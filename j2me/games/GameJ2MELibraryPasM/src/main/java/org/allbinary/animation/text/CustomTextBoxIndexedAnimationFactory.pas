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
unit CustomTextBoxIndexedAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, AnimationInterfaceFactoryInterface, LogUtil, ScaleProperties, BasicAnimationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TCustomTextBoxIndexedAnimationFactory = class(TInterfacedObject, IAnimationInterfaceFactoryInterface, IBasicAnimationInterfaceFactoryInterface)
  public
    logUtil: TLogUtil;
    scaleProperties: TScaleProperties;
    maxLength: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(fontSize: Integer; maxLength: Integer);
        function getInstance(instanceId: Integer): TAnimation; virtual;
        procedure setInitialScale(scaleProperties_: TScaleProperties); virtual;
  end;

implementation
uses
  CustomTextBox2, CustomTextBoxIndexedAnimation, Font, TextField, CustomTextBox, ABToGBUtil, AllBinaryGameCanvas, CommonStrings, StringUtil;


{AB:CODE}

procedure TCustomTextBoxIndexedAnimationFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;

function TCustomTextBoxIndexedAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCustomTextBoxIndexedAnimationFactory.Create(fontSize: Integer; maxLength: Integer);
begin
    inherited Create;
    InitFields;
        Self.scaleProperties := TScaleProperties.Create();
        Self.scaleProperties.scaleHeight := fontSize;
        Self.maxLength := maxLength;
end;
    

// throws Exception
function TCustomTextBoxIndexedAnimationFactory.getInstance(instanceId: Integer): TAnimation;
var
  abToGBUtil_: TABToGBUtil;
  abCanvas: TAllBinaryGameCanvas;
  font_: TFont;
  customTextBox_: TCustomTextBox;
begin
        abToGBUtil_ := TABToGBUtil.getInstance();
        abCanvas := TAllBinaryGameCanvas(TJava.ToObject(abToGBUtil_.abCanvas));
        font_ := TFont.getFont(TFont.FACE_SYSTEM, TFont.STYLE_PLAIN, Self.scaleProperties.scaleHeight);
        customTextBox_ := TCustomTextBox2.Create(abCanvas.getCustomCommandListener(), TStringUtil.getInstance().EMPTY_STRING, TStringUtil.getInstance().EMPTY_STRING, Self.maxLength, TTextField.ANY, font_, abCanvas.getLayerManager().getBackgroundBasicColor(), abCanvas.getLayerManager().getForegroundBasicColor());
        Exit(TCustomTextBoxIndexedAnimation.Create(customTextBox_));
end;
    

procedure TCustomTextBoxIndexedAnimationFactory.setInitialScale(scaleProperties_: TScaleProperties);
var
  fontSize: Integer;
begin
        fontSize := Self.scaleProperties.scaleHeight;
        Self.scaleProperties := scaleProperties_;
        if (Self.scaleProperties.scaleHeight) < (6) then begin
            Self.scaleProperties.scaleHeight := fontSize;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

