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
unit AdjustedCircleAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, CircleAnimation;

type
  {AB:TYPES}
  TAdjustedCircleAnimation = class(TCircleAnimation)
  public
    xAdjustment: Integer;
    yAdjustment: Integer;
    procedure InitFields;
        class function createAnimation(width: Integer; height: Integer; xAdjustment: Integer; yAdjustment: Integer; basicColor_: TBasicColor): TAdjustedCircleAnimation; static;
        class function createW(width: Integer; height: Integer; innerWidth: Integer; basicColor_: TBasicColor): TAdjustedCircleAnimation; static;
        constructor Create(width: Integer; height: Integer; basicColor_: TBasicColor);
        procedure initXY(xAdjustment: Integer; yAdjustment: Integer);
        procedure init(innerWidth: Integer);
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation
uses
  AndroidUtil;


{AB:CODE}

procedure TAdjustedCircleAnimation.InitFields;
begin
  
  
end;
    

class function TAdjustedCircleAnimation.createAnimation(width: Integer; height: Integer; xAdjustment: Integer; yAdjustment: Integer; basicColor_: TBasicColor): TAdjustedCircleAnimation;
var
  adjustedCircleAnimation_: TAdjustedCircleAnimation;
begin
        adjustedCircleAnimation_ := TAdjustedCircleAnimation.Create(width, height, basicColor_);
        adjustedCircleAnimation_.initXY(xAdjustment, yAdjustment);
        Exit(adjustedCircleAnimation_);
end;
    

class function TAdjustedCircleAnimation.createW(width: Integer; height: Integer; innerWidth: Integer; basicColor_: TBasicColor): TAdjustedCircleAnimation;
var
  adjustedCircleAnimation_: TAdjustedCircleAnimation;
begin
        adjustedCircleAnimation_ := TAdjustedCircleAnimation.Create(width, height, basicColor_);
        adjustedCircleAnimation_.init(innerWidth);
        Exit(adjustedCircleAnimation_);
end;
    

constructor TAdjustedCircleAnimation.Create(width: Integer; height: Integer; basicColor_: TBasicColor);
begin
        inherited Create(width, height, basicColor_);
        InitFields;
end;
    

procedure TAdjustedCircleAnimation.initXY(xAdjustment: Integer; yAdjustment: Integer);
begin
        Self.xAdjustment := xAdjustment;
        Self.yAdjustment := yAdjustment;
end;
    

procedure TAdjustedCircleAnimation.init(innerWidth: Integer);
var
  widthPortion: Integer;
begin
        if TAndroidUtil.isAndroid() then begin
            widthPortion := ((((((innerWidth) div (3))) * (10))) div (7));
            Self.xAdjustment := -(((TJava.SignedRightShift(Self.width, 1))) - (widthPortion));
            Self.yAdjustment := Self.xAdjustment;
        end else begin
            Self.xAdjustment := -(((TJava.SignedRightShift(Self.width, 1))) - (innerWidth));
            Self.yAdjustment := Self.xAdjustment;
        end;
end;
    

procedure TAdjustedCircleAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.basicSetColorUtil.setBasicColorP3(graphics_, Self.getBasicColorP(), Self.getColor());
        graphics_.drawArc((x) + (Self.xAdjustment), (y) + (Self.yAdjustment), Self.width, Self.height, 0, Self.TOTAL_ANGLE);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

