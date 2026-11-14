// Generated Code Do Not Modify
// package org.allbinary.animation.vector
unit ARectangleFilledAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, RectangleFilledAnimation;

type
  {AB:TYPES}
  TARectangleFilledAnimation = class(TRectangleFilledAnimation)
  public
    x: Integer;
    y: Integer;
    procedure InitFields;
        constructor Create;
        procedure nextFrame; override;
        procedure paintXY(graphics_: TGraphics; unusedX: Integer; unusedY: Integer); override;
  end;

implementation
uses
  BasicColorFactory;


{AB:CODE}

procedure TARectangleFilledAnimation.InitFields;
begin
  
  
end;
    

constructor TARectangleFilledAnimation.Create;
begin
        inherited Create(0, 0, TBasicColorFactory.getInstance().BLACK);
        InitFields;
end;
    

procedure TARectangleFilledAnimation.nextFrame;
begin
end;
    

procedure TARectangleFilledAnimation.paintXY(graphics_: TGraphics; unusedX: Integer; unusedY: Integer);
begin
        inherited paintXY(graphics_, Self.x, Self.y);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

