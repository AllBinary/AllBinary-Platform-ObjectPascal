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
unit RectangleFilledAdjustedAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, ColorCompositeInterface, RectangleFilledAnimation, BasicColorCompositeSetterInterface;

type
  {AB:TYPES}
  TRectangleFilledAdjustedAnimation = class(TRectangleFilledAnimation, IColorCompositeInterface, IBasicColorCompositeSetterInterface)
  public
    offsetX: Integer;
    offsetY: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(width: Integer; height: Integer; offsetX: Integer; offsetY: Integer; basicColor_: TBasicColor);
        procedure nextFrame; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        procedure setOffsetX(offsetX: Integer); virtual;
        procedure setOffsetY(offsetY: Integer); virtual;
        function getBasicColorP: TBasicColor; virtual;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
  end;

implementation

{AB:CODE}

procedure TRectangleFilledAdjustedAnimation.InitFields;
begin
  
  
end;

function TRectangleFilledAdjustedAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TRectangleFilledAdjustedAnimation.Create(width: Integer; height: Integer; offsetX: Integer; offsetY: Integer; basicColor_: TBasicColor);
begin
        inherited Create(width, height, basicColor_);
        InitFields;
        Self.offsetX := offsetX;
        Self.offsetY := offsetY;
        Self.setBasicColorP(basicColor_);
end;
    

procedure TRectangleFilledAdjustedAnimation.nextFrame;
begin
end;
    

procedure TRectangleFilledAdjustedAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.basicSetColorUtil.setBasicColorP3(graphics_, Self.getBasicColorP(), Self.getColor());
        inherited paintXY(graphics_, (x) + (Self.offsetX), (y) + (Self.offsetY));
end;
    

procedure TRectangleFilledAdjustedAnimation.setOffsetX(offsetX: Integer);
begin
        Self.offsetX := offsetX;
end;
    

procedure TRectangleFilledAdjustedAnimation.setOffsetY(offsetY: Integer);
begin
        Self.offsetY := offsetY;
end;
    

function TRectangleFilledAdjustedAnimation.getBasicColorP: TBasicColor;
begin
        Exit(inherited getBasicColorP());
end;
    

procedure TRectangleFilledAdjustedAnimation.setBasicColorP(basicColor_: TBasicColor);
begin
        inherited setBasicColorP(basicColor_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

