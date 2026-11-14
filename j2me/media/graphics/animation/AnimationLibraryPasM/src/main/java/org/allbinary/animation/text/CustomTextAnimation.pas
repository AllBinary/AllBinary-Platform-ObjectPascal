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
// package org.allbinary.animation.text
unit CustomTextAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Font, Graphics, AnimationBehavior, FontDebugFactory, TextChangeListener, TextAnimation, TextInterface;

type
  {AB:TYPES}
  TCustomTextAnimation = class(TTextAnimation, ITextInterface)
  public
    fontDebugFactory: TFontDebugFactory;
    fontSize: Integer;
    font: TFont;
    lastText: string;
    hasChanged: Boolean;
    textWidth: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(text: string; fontSize: Integer; animationBehavior_: TAnimationBehavior);
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        procedure setScale(scaleX: Single; scaleY: Single); virtual;
        procedure setTextWithOnMeasure(text: string; textChangeListener_: TTextChangeListener); virtual;
        procedure setText(text: string); virtual;
        function getText: string; virtual;
        function getWidth: Integer; virtual;
        function getFontHeight: Integer; virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure TCustomTextAnimation.InitFields;
begin
  Self.fontDebugFactory := TFontDebugFactory.getInstance();
  
  
  Self.lastText := TStringUtil.getInstance().INIT_STRING;
  Self.hasChanged := True;
  
end;

function TCustomTextAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCustomTextAnimation.Create(text: string; fontSize: Integer; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(text, animationBehavior_);
        InitFields;
        Self.fontSize := fontSize;
        Self.font := TFont.getFont(TFont.FACE_SYSTEM, TFont.STYLE_PLAIN, fontSize);
end;
    

procedure TCustomTextAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
var
  existingFont: TFont;
begin
        Self.myFontProcessor.process(graphics_);
        existingFont := graphics_.getFont();
        Self.fontDebugFactory.setFont(Self.font, graphics_);
        inherited paintXYNoUpdate(graphics_, x, y);
        Self.fontDebugFactory.setFont(existingFont, graphics_);
end;
    

procedure TCustomTextAnimation.setScale(scaleX: Single; scaleY: Single);
begin
        if (scaleX) <> (scaleY) then begin
            raise SysUtils.Exception.Create('');
        end;
        Self.hasChanged := True;
        Self.font := TFont.getFont(TFont.FACE_SYSTEM, TFont.STYLE_PLAIN, Integer(Trunc(((Self.fontSize) * (scaleX)))));
end;
    

procedure TCustomTextAnimation.setTextWithOnMeasure(text: string; textChangeListener_: TTextChangeListener);
begin
        inherited setTextWithOnMeasure(text, textChangeListener_);
end;
    

procedure TCustomTextAnimation.setText(text: string);
begin
        if (Self.lastText) <> (text) then begin
            Self.hasChanged := True;
            Self.lastText := text;
            inherited setText(text);
        end;
end;
    

function TCustomTextAnimation.getText: string;
begin
        Exit(Self.lastText);
end;
    

function TCustomTextAnimation.getWidth: Integer;
begin
        if Self.hasChanged then begin
            Self.textWidth := Self.font.stringWidth(Self.textArrayP[0]);
            Self.hasChanged := False;
        end;
        Exit(Self.textWidth);
end;
    

function TCustomTextAnimation.getFontHeight: Integer;
begin
        Exit(Self.font.getHeight());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

