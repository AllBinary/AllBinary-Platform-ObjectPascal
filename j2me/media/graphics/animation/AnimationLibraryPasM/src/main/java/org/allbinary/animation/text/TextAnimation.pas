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
unit TextAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, AnimationBehavior, IndexedAnimation, MyFontProcessor, UpdateMyFontInterface, TextChangeListener;

type
  {AB:TYPES}
  TTextAnimation = class(TIndexedAnimation, IUpdateMyFontInterface)
  public
    updateMyFontProcessor: TMyFontProcessor;
    myFontProcessor: TMyFontProcessor;
    textArrayP: TArray<string>;
    anchor: Integer;
    fontHeight: Integer;
    offsetY: Integer;
    textChangeListener: TTextChangeListener;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(text: string; animationBehavior_: TAnimationBehavior);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure nextFrame; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        procedure paintXYNoUpdate(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        procedure setTextWithOnMeasure(text: string; textChangeListener_: TTextChangeListener); virtual;
        procedure setText(text: string); virtual;
        function getTextArray: TArray<string>; virtual;
        function getFontHeight: Integer; virtual;
  end;

implementation
uses
  Font, Anchor, UpdateMyFontProcessor, SWTJOGLProcessor, StringMaker, StringUtil, BasicArrayList, BasicArrayListD;


{AB:CODE}

procedure TTextAnimation.InitFields;
begin
  Self.updateMyFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.myFontProcessor := Self.updateMyFontProcessor;
  Self.textArrayP := TStringUtil.getInstance().ONE_EMPTY_STRING_ARRAY;
  Self.anchor := TAnchor.TOP_LEFT;
  Self.fontHeight := 0;
  Self.offsetY := 0;
  Self.textChangeListener := TTextChangeListener.getInstance();
end;

function TTextAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTextAnimation.Create(text: string; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(animationBehavior_);
        InitFields;
        Self.setText(text);
end;
    

procedure TTextAnimation.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
  adjustedFontHeight: Integer;
begin
        font_ := graphics_.getFont();
        Self.fontHeight := font_.getHeight();
        adjustedFontHeight := Integer(Trunc(-((Self.fontHeight) * (2.00))));
        Self.offsetY := TJava.IfThen<Variant>(TSWTJOGLProcessor.getInstance().isJOGL(), adjustedFontHeight, 0);
        Self.textChangeListener.onMeasure();
        Self.textChangeListener := TTextChangeListener.getInstance();
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

// throws Exception
procedure TTextAnimation.nextFrame;
begin
end;
    

procedure TTextAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.myFontProcessor.process(graphics_);
        Self.paintXYNoUpdate(graphics_, x, y);
end;
    

procedure TTextAnimation.paintXYNoUpdate(graphics_: TGraphics; x: Integer; y: Integer);
var
  size: Integer;
  index: Integer;
begin
        Self.basicSetColorUtil.setBasicColorP3(graphics_, Self.getBasicColorP(), Self.getColor());
        size := System.Length(Self.textArrayP);
        for index := 0 to size - 1 do begin
            graphics_.drawString(Self.textArrayP[index], x, ((y) + (Self.offsetY)) + (((index) * (Self.fontHeight))), Self.anchor);
        end;
end;
    

procedure TTextAnimation.setTextWithOnMeasure(text: string; textChangeListener_: TTextChangeListener);
begin
        Self.setText(text);
        Self.textChangeListener := textChangeListener_;
end;
    

procedure TTextAnimation.setText(text: string);
var
  list: TBasicArrayList;
  index: Integer;
  startIndex: Integer;
  endIndex: Integer;
  textArray: TArray<string>;
  size: Integer;
begin
        list := TBasicArrayListD.Create();
        if (System.Length(text)) > (0) then begin
            index := 0;
            startIndex := 0;
            endIndex := 0;
            while (index) >= (0) do begin
                startIndex := index;
                index := text.indexOf(#10, startIndex);
                endIndex := index;
                if (index) < (0) then begin
                    endIndex := System.Length(text);
                end;
                list.add(TJava.Box(Copy(text, (startIndex) + 1, (endIndex) - (startIndex))));
                if (index) < (0) then begin
                    Break;
                end;
                Inc(index);
            end;
        end;
        if (list.size()) > (0) then begin
            textArray := TJava.NewArray<string>(list.size());
            size := list.size();
            for index := 0 to size - 1 do begin
                textArray[index] := TJava.UnboxString(TJava.ToObject(list.get(index)));
            end;
            Self.textArrayP := textArray;
        end else begin
            Self.textArrayP := TStringUtil.getInstance().ONE_EMPTY_STRING_ARRAY;
        end;
        Self.myFontProcessor := Self.updateMyFontProcessor;
end;
    

function TTextAnimation.getTextArray: TArray<string>;
begin
        Exit(Self.textArrayP);
end;
    

function TTextAnimation.getFontHeight: Integer;
begin
        Exit(Self.fontHeight);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

