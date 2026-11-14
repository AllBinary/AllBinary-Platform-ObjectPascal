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
// package org.allbinary.graphics.draw
unit DrawVerticalStringUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics;

type
  {AB:TYPES}
  TDrawVerticalStringUtil = class(TObject)
  public
    EMPTY_STRING: string;
    anchor: Integer;
    charHeight: Integer;
    offsetY: Integer;
    offsetXArray: TArray<Integer>;
    class var instance: TDrawVerticalStringUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TDrawVerticalStringUtil; static;
        procedure updateMeasurement(graphics_: TGraphics; string_: string); virtual;
        procedure paintVerticle(graphics_: TGraphics; string_: string; x: Integer; y: Integer; anchor_: Integer); virtual;
        procedure drawCenterString(graphics_: TGraphics; string_: string; offset: Integer; length: Integer; x: Integer; y: Integer); virtual;
        procedure drawCenterStrings(graphics_: TGraphics; stringArray: TArray<string>; maxWidth: Integer; x: Integer; y: Integer); virtual;
  end;

implementation
uses
  Font, AndroidUtil, J2MEUtil, Anchor, OpenGLFeatureUtil, NullUtil, PreLogUtil, StringMaker, StringUtil;


{AB:CODE}

procedure TDrawVerticalStringUtil.InitFields;
begin
  Self.EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
  Self.anchor := TAnchor.TOP_LEFT;
  
  
  Self.offsetXArray := TNullUtil.getInstance().NULL_INT_ARRAY;
end;

constructor TDrawVerticalStringUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TDrawVerticalStringUtil.getInstance: TDrawVerticalStringUtil;
begin
        Exit(TDrawVerticalStringUtil.instance);
end;
    

procedure TDrawVerticalStringUtil.updateMeasurement(graphics_: TGraphics; string_: string);
var
  openGLFeatureUtil_: TOpenGLFeatureUtil;
  font_: TFont;
  size: Integer;
  aChar: WideChar;
  offsetXArray: TArray<Integer>;
  index: Integer;
begin
        openGLFeatureUtil_ := TOpenGLFeatureUtil.getInstance();
        font_ := graphics_.getFont();
        Self.charHeight := font_.getHeight();
        Self.offsetY := 0;
        if TJ2MEUtil.isHTML() then begin
            Self.charHeight := (Self.charHeight) + (1);
        end else if openGLFeatureUtil_.isAnyThreed() then begin
            Self.charHeight := (Self.charHeight) + (2);
            if TAndroidUtil.isAndroid() then begin
            end else begin
                Self.offsetY := (2) + ((((Self.charHeight) * (2)) div (3)));
            end;
        end;
        size := System.Length(string_);
        
        offsetXArray := TJava.NewArray<Integer>(size);
        for index := (size) - (1) downto 0 do begin
            aChar := string_[(index) + 1];
            if openGLFeatureUtil_.isAnyThreed() then begin
                offsetXArray[index] := TJava.Divide(font_.charWidth(aChar), 2);
            end;
        end;
        Self.offsetXArray := offsetXArray;
end;
    

procedure TDrawVerticalStringUtil.paintVerticle(graphics_: TGraphics; string_: string; x: Integer; y: Integer; anchor_: Integer);
var
  size: Integer;
  aChar: WideChar;
  index: Integer;
begin
        size := System.Length(string_);
        
        for index := (size) - (1) downto 0 do begin
            aChar := string_[(index) + 1];
            graphics_.drawChar(aChar, (x) + (Self.offsetXArray[index]), ((y) + (((Self.charHeight) * (index)))) + (Self.offsetY), anchor_);
        end;
end;
    

procedure TDrawVerticalStringUtil.drawCenterString(graphics_: TGraphics; string_: string; offset: Integer; length: Integer; x: Integer; y: Integer);
var
  width: Integer;
begin
        width := (TJava.SignedRightShift(graphics_.getFont().substringWidth(string_, offset, length), 1));
        try
            graphics_.drawSubstring(string_, offset, length, (x) - (width), y, Self.anchor);
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.put(TStringMaker.Create().append('Exception: stringLength: ').appendint(System.Length(string_)).append(' offset: ').appendint(offset).append(' currentLength: ').appendint(length).toString(), TJava.Box(Self), 'drawCenterString');
            end;
        end;
end;
    

procedure TDrawVerticalStringUtil.drawCenterStrings(graphics_: TGraphics; stringArray: TArray<string>; maxWidth: Integer; x: Integer; y: Integer);
var
  extraLines: Integer;
  string_: string;
  width: Integer;
  minTotalLines: Integer;
  linePortion: Integer;
  offset: Integer;
  currentLength: Integer;
  size: Integer;
  index: Integer;
begin
        extraLines := 0;
        for index := 0 to System.Length(stringArray) - 1 do begin
            string_ := stringArray[index];
            if (string_) <> (Self.EMPTY_STRING) then begin
                width := graphics_.getFont().stringWidth(string_);
                minTotalLines := 1;
                if (width) > (maxWidth) then begin
                    minTotalLines := (((width) div (maxWidth))) + (1);
                end;
                linePortion := (System.Length(string_)) div (minTotalLines);
                offset := 0;
                currentLength := linePortion;
                size := System.Length(string_);
                while (offset) < (size) do begin
                    if ((offset) + (currentLength)) > (size) then begin
                        currentLength := (size) - (offset);
                    end;
                    if ((offset) + (currentLength)) <> (size) then begin
                        while ((currentLength) > (0)) and ((stringArray[index][((offset) + (currentLength)) + 1]) <> (' ')) do begin
                            Dec(currentLength);
                        end;
                        if (currentLength) <= (4) then begin
                            currentLength := linePortion;
                        end;
                    end;
                    Self.drawCenterString(graphics_, string_, offset, currentLength, x, (y) + (((((index) + (TJava.PostInc(extraLines)))) * (Self.charHeight))));
                    offset := (offset) + (currentLength);
                    currentLength := linePortion;
                end;
                Dec(extraLines);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TDrawVerticalStringUtil.instance := TDrawVerticalStringUtil.Create();
  {AB:END}

end.

