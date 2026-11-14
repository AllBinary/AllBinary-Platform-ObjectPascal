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
unit RectangleFilledAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, BasicColor, ColorCompositeInterface, BasicColorCompositeSetterInterface;

type
  {AB:TYPES}
  TRectangleFilledAnimation = class(TAnimation, IColorCompositeInterface, IBasicColorCompositeSetterInterface)
  public
    widthP: Integer;
    heightP: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(width: Integer; height: Integer; basicColor_: TBasicColor);
        procedure nextFrame; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        procedure setWidth(width: Integer); virtual;
        procedure setHeight(height: Integer); virtual;
        function getBasicColorP: TBasicColor; virtual;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
  end;

implementation

{AB:CODE}

procedure TRectangleFilledAnimation.InitFields;
begin
  
  
end;

function TRectangleFilledAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TRectangleFilledAnimation.Create(width: Integer; height: Integer; basicColor_: TBasicColor);
begin
    inherited Create;
    InitFields;
        Self.widthP := width;
        Self.heightP := height;
        Self.setBasicColorP(basicColor_);
end;
    

procedure TRectangleFilledAnimation.nextFrame;
begin
end;
    

procedure TRectangleFilledAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.basicSetColorUtil.setBasicColorP3(graphics_, Self.getBasicColorP(), Self.getColor());
        graphics_.fillRect(x, y, Self.widthP, Self.heightP);
end;
    

procedure TRectangleFilledAnimation.setWidth(width: Integer);
begin
        Self.widthP := width;
end;
    

procedure TRectangleFilledAnimation.setHeight(height: Integer);
begin
        Self.heightP := height;
end;
    

function TRectangleFilledAnimation.getBasicColorP: TBasicColor;
begin
        Exit(inherited getBasicColorP());
end;
    

procedure TRectangleFilledAnimation.setBasicColorP(basicColor_: TBasicColor);
begin
        inherited setBasicColorP(basicColor_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

