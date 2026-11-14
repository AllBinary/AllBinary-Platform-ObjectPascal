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
unit CustomTextBoxIndexedAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, IndexedAnimation, RawKeyEventListener, BasicColor, UpdateMyFontInterface, CustomTextBox, TextChangeListener, TextInterface;

type
  {AB:TYPES}
  TCustomTextBoxIndexedAnimation = class(TIndexedAnimation, IRawKeyEventListener, IUpdateMyFontInterface, ITextInterface)
  public
    customTextBox: TCustomTextBox;
    lastText: string;
    hasChanged: Boolean;
    textChangeListener: TTextChangeListener;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(customTextBox_: TCustomTextBox);
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
        procedure setBackgroundBasicColorP(basicColor_: TBasicColor); virtual;
        procedure setTextWithOnMeasure(text: string; textChangeListener_: TTextChangeListener); virtual;
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure setText(text: string); virtual;
        function getText: string; virtual;
        procedure onEventRaw(keyCode: Integer; deviceId: Integer; repeated: Boolean); virtual;
        function getFontHeight: Integer; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        procedure paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer); virtual;
        function getWidth: Integer; virtual;
  end;

implementation
uses
  Font, AnimationBehavior, StringUtil;


{AB:CODE}

procedure TCustomTextBoxIndexedAnimation.InitFields;
begin
  
  Self.lastText := TStringUtil.getInstance().INIT_STRING;
  Self.hasChanged := True;
  Self.textChangeListener := TTextChangeListener.getInstance();
end;

function TCustomTextBoxIndexedAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCustomTextBoxIndexedAnimation.Create(customTextBox_: TCustomTextBox);
begin
        inherited Create(TAnimationBehavior.getInstance());
        InitFields;
        Self.customTextBox := customTextBox_;
end;
    

procedure TCustomTextBoxIndexedAnimation.setBasicColorP(basicColor_: TBasicColor);
begin
        Self.customTextBox.getTextFieldItem().setForegroundBasicColorP(basicColor_);
end;
    

procedure TCustomTextBoxIndexedAnimation.setBackgroundBasicColorP(basicColor_: TBasicColor);
begin
        Self.customTextBox.getTextFieldItem().setBackgroundBasicColorP(basicColor_);
end;
    

procedure TCustomTextBoxIndexedAnimation.setTextWithOnMeasure(text: string; textChangeListener_: TTextChangeListener);
begin
        Self.setText(text);
        Self.textChangeListener := textChangeListener_;
end;
    

procedure TCustomTextBoxIndexedAnimation.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.textChangeListener.onMeasure();
        Self.textChangeListener := TTextChangeListener.getInstance();
end;
    

procedure TCustomTextBoxIndexedAnimation.setText(text: string);
begin
        if (Self.lastText) <> (text) then begin
            Self.hasChanged := True;
            Self.lastText := text;
            Self.customTextBox.getTextFieldItem().setString(text);
        end;
end;
    

function TCustomTextBoxIndexedAnimation.getText: string;
begin
        Exit(Self.customTextBox.getTextFieldItem().getString());
end;
    

procedure TCustomTextBoxIndexedAnimation.onEventRaw(keyCode: Integer; deviceId: Integer; repeated: Boolean);
begin
        Self.customTextBox.onEventRaw(keyCode, deviceId, repeated);
end;
    

function TCustomTextBoxIndexedAnimation.getFontHeight: Integer;
begin
        Exit(Self.customTextBox.getTextFieldItem().getFontHeight());
end;
    

procedure TCustomTextBoxIndexedAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.customTextBox.paintXY(graphics_, x, y);
end;
    

procedure TCustomTextBoxIndexedAnimation.paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer);
begin
end;
    

function TCustomTextBoxIndexedAnimation.getWidth: Integer;
begin
        Exit(inherited getWidth());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

