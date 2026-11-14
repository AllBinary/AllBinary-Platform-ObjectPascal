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
// package org.allbinary.animation.vector
unit RectangleAdjustedAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, BasicColor, ColorCompositeInterface, BasicColorCompositeSetterInterface;

type
  {AB:TYPES}
  TRectangleAdjustedAnimation = class(TAnimation, IColorCompositeInterface, IBasicColorCompositeSetterInterface)
  public
    width: Integer;
    height: Integer;
    offsetX: Integer;
    offsetY: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(width: Integer; height: Integer; offsetX: Integer; offsetY: Integer; basicColor_: TBasicColor);
        procedure nextFrame; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        procedure setWidth(width: Integer); virtual;
        procedure setHeight(height: Integer); virtual;
        procedure setOffsetX(offsetX: Integer); virtual;
        procedure setOffsetY(offsetY: Integer); virtual;
        function getBasicColorP: TBasicColor; virtual;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
  end;

implementation

{AB:CODE}

procedure TRectangleAdjustedAnimation.InitFields;
begin
  
  
  
  
end;

function TRectangleAdjustedAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TRectangleAdjustedAnimation.Create(width: Integer; height: Integer; offsetX: Integer; offsetY: Integer; basicColor_: TBasicColor);
begin
    inherited Create;
    InitFields;
        Self.width := width;
        Self.height := height;
        Self.offsetX := offsetX;
        Self.offsetY := offsetY;
        Self.setBasicColorP(basicColor_);
end;
    

procedure TRectangleAdjustedAnimation.nextFrame;
begin
end;
    

procedure TRectangleAdjustedAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.basicSetColorUtil.setBasicColorP3(graphics_, Self.getBasicColorP(), Self.getColor());
        graphics_.drawRect((x) + (Self.offsetX), (y) + (Self.offsetY), Self.width, Self.height);
end;
    

procedure TRectangleAdjustedAnimation.setWidth(width: Integer);
begin
        Self.width := width;
end;
    

procedure TRectangleAdjustedAnimation.setHeight(height: Integer);
begin
        Self.height := height;
end;
    

procedure TRectangleAdjustedAnimation.setOffsetX(offsetX: Integer);
begin
        Self.offsetX := offsetX;
end;
    

procedure TRectangleAdjustedAnimation.setOffsetY(offsetY: Integer);
begin
        Self.offsetY := offsetY;
end;
    

function TRectangleAdjustedAnimation.getBasicColorP: TBasicColor;
begin
        Exit(inherited getBasicColorP());
end;
    

procedure TRectangleAdjustedAnimation.setBasicColorP(basicColor_: TBasicColor);
begin
        inherited setBasicColorP(basicColor_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

