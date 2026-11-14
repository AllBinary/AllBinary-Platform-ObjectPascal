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
unit CircleAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, BasicColor, ColorCompositeInterface, BasicColorCompositeSetterInterface;

type
  {AB:TYPES}
  TCircleAnimation = class(TAnimation, IColorCompositeInterface, IBasicColorCompositeSetterInterface)
  public
    TOTAL_ANGLE: Integer;
    width: Integer;
    height: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(width: Integer; height: Integer; basicColor_: TBasicColor);
        procedure nextFrame; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        function getBasicColorP: TBasicColor; virtual;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
  end;

implementation
uses
  AngleFactory;


{AB:CODE}

procedure TCircleAnimation.InitFields;
begin
  Self.TOTAL_ANGLE := Integer(Trunc(TAngleFactory.getInstance().TOTAL_ANGLE));
  
  
end;

function TCircleAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCircleAnimation.Create(width: Integer; height: Integer; basicColor_: TBasicColor);
begin
    inherited Create;
    InitFields;
        Self.width := width;
        Self.height := height;
        Self.setBasicColorP(basicColor_);
end;
    

procedure TCircleAnimation.nextFrame;
begin
end;
    

procedure TCircleAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.basicSetColorUtil.setBasicColorP3(graphics_, Self.getBasicColorP(), Self.getColor());
        graphics_.drawArc(x, y, Self.width, Self.height, 0, Self.TOTAL_ANGLE);
end;
    

function TCircleAnimation.getBasicColorP: TBasicColor;
begin
        Exit(inherited getBasicColorP());
end;
    

procedure TCircleAnimation.setBasicColorP(basicColor_: TBasicColor);
begin
        inherited setBasicColorP(basicColor_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

