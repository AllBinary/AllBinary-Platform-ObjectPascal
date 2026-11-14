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
// package org.allbinary.game.displayable.canvas
unit BasicPopupMenuPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, Rectangle, BasicColor, BasicColorSetUtil, DrawVerticalStringUtil, MyFontProcessor, UpdateMyFontInterface, Paintable;

type
  {AB:TYPES}
  TBasicPopupMenuPaintable = class(TPaintable, IUpdateMyFontInterface)
  public
    basicSetColorUtil: TBasicColorSetUtil;
    drawStringUtil: TDrawVerticalStringUtil;
    label_: string;
    foregroundBasicColor: TBasicColor;
    myFontProcessor: TMyFontProcessor;
    rectangle: TRectangle;
    BORDER: Integer;
    heightOffset: Integer;
    offset: Integer;
    animationInterface: TAnimation;
    class var NAME: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(rectangle_: TRectangle; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure init(rectangle_: TRectangle); virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  Font, AndroidUtil, J2MEUtil, NullAnimationFactory, RectangleFilledAnimation, Features, SWTUtil, GPoint, BasicColorFactory, UpdateMyFontProcessor, OpenGLFeatureFactory, OpenGLFeatureUtil, SWTJOGLProcessor;


{AB:CODE}

procedure TBasicPopupMenuPaintable.InitFields;
begin
  Self.basicSetColorUtil := TBasicColorSetUtil.getInstance();
  Self.drawStringUtil := TDrawVerticalStringUtil.getInstance();
  
  
  Self.myFontProcessor := TUpdateMyFontProcessor.Create(Self);
  
  
  
  
  
end;

function TBasicPopupMenuPaintable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicPopupMenuPaintable.Create(rectangle_: TRectangle; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
    inherited Create;
    InitFields;
        Self.foregroundBasicColor := foregroundBasicColor;
        Self.label_ := TBasicPopupMenuPaintable.NAME;
        Self.rectangle := rectangle_;
        if (TJ2MEUtil.isJ2ME()) or (TJ2MEUtil.isHTML()) then begin
            Self.animationInterface := TNullAnimationFactory.getFactoryInstance().getInstance(0);
        end else begin
            Self.animationInterface := TRectangleFilledAnimation.Create(Self.rectangle.getWidth(), Self.rectangle.getHeight(), TBasicColorFactory.getInstance().TRANSPARENT_GREY);
        end;
        Self.init(rectangle_);
end;
    

procedure TBasicPopupMenuPaintable.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
  features_: TFeatures;
  isOpenGL: Boolean;
  BORDER: Integer;
begin
        font_ := graphics_.getFont();
        features_ := TFeatures.getInstance();
        isOpenGL := features_.isDefault(TOpenGLFeatureFactory.getInstance().OPENGL);
        Self.drawStringUtil.updateMeasurement(graphics_, Self.label_);
        BORDER := 0;
        if (TJ2MEUtil.isHTML()) or (isOpenGL) then begin
            BORDER := TJava.Divide(TMyFontProcessor.defaultCharWidth(font_), 2);
        end else if ((TAndroidUtil.isAndroid()) or (TJ2MEUtil.isJ2SE())) or (TSWTUtil.isSWT) then begin
            BORDER := TMyFontProcessor.defaultCharWidth(font_);
        end else begin
            BORDER := (TMyFontProcessor.defaultCharWidth(font_)) * (2);
        end;
        Self.BORDER := BORDER;
        Self.heightOffset := (Self.rectangle.getHeight()) - (((font_.getHeight()) * (System.Length(TBasicPopupMenuPaintable.NAME))));
        if TOpenGLFeatureUtil.getInstance().isAnyThreed() then begin
            Self.heightOffset := (Self.heightOffset) - ((font_.getHeight()) + (2));
            if TAndroidUtil.isAndroid() then begin
                Self.heightOffset := font_.getHeight();
            end else begin
                Self.heightOffset := (Self.heightOffset) - ((font_.getHeight()) + (2));
            end;
        end;
        Self.offset := ((TJava.SignedRightShift(Self.heightOffset, 1))) + ((TJava.IfThen<Variant>(TSWTJOGLProcessor.getInstance().isJOGL(), 4, 0)));
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

// throws Exception
procedure TBasicPopupMenuPaintable.init(rectangle_: TRectangle);
var
  width: Integer;
  height: Integer;
  rectangleFilledAnimation_: TRectangleFilledAnimation;
begin
        Self.rectangle := rectangle_;
        width := Self.rectangle.getWidth();
        height := Self.rectangle.getHeight();
        if (TJ2MEUtil.isJ2ME()) or (TJ2MEUtil.isHTML()) then begin
        end else begin
            rectangleFilledAnimation_ := TRectangleFilledAnimation(TJava.ToObject(Self.animationInterface));
            rectangleFilledAnimation_.setWidth(width);
            rectangleFilledAnimation_.setHeight(height);
        end;
end;
    

procedure TBasicPopupMenuPaintable.paint(graphics_: TGraphics);
var
  point: TGPoint;
  x: Integer;
  y: Integer;
  width: Integer;
  height: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        point := Self.rectangle.getPoint();
        x := point.getX();
        y := point.getY();
        width := Self.rectangle.getWidth();
        height := Self.rectangle.getHeight();
        Self.animationInterface.paintXY(graphics_, x, y);
        Self.basicSetColorUtil.setBasicColorP(graphics_, Self.foregroundBasicColor);
        Self.drawStringUtil.paintVerticle(graphics_, Self.label_, (x) + (Self.BORDER), (y) + (Self.offset), 0);
        graphics_.drawRect(x, y, width, height);
end;

initialization
  {AB:INITIALIZATION}
  TBasicPopupMenuPaintable.NAME := 'MENU';
  {AB:END}

end.

