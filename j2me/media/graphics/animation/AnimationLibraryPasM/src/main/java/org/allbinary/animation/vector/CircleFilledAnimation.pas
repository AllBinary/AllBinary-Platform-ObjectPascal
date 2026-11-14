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
unit CircleFilledAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, BasicColor, ColorCompositeInterface, BasicColorCompositeSetterInterface;

type
  {AB:TYPES}
  TCircleFilledAnimation = class(TAnimation, IColorCompositeInterface, IBasicColorCompositeSetterInterface)
  public
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

{AB:CODE}

procedure TCircleFilledAnimation.InitFields;
begin
  
  
end;

function TCircleFilledAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCircleFilledAnimation.Create(width: Integer; height: Integer; basicColor_: TBasicColor);
begin
        inherited Create();
        InitFields;
        Self.width := width;
        Self.height := height;
        Self.setBasicColorP(basicColor_);
end;
    

procedure TCircleFilledAnimation.nextFrame;
begin
end;
    

procedure TCircleFilledAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.basicSetColorUtil.setBasicColorP3(graphics_, Self.getBasicColorP(), Self.getColor());
        graphics_.fillRect(x, y, Self.width, Self.height);
end;
    

function TCircleFilledAnimation.getBasicColorP: TBasicColor;
begin
        Exit(inherited getBasicColorP());
end;
    

procedure TCircleFilledAnimation.setBasicColorP(basicColor_: TBasicColor);
begin
        inherited setBasicColorP(basicColor_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

