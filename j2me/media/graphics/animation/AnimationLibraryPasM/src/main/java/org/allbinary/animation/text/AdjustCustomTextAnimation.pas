{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.animation.text
unit AdjustCustomTextAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, AnimationBehavior, CustomTextAnimation;

type
  {AB:TYPES}
  TAdjustCustomTextAnimation = class(TCustomTextAnimation)
  public
    dx: Integer;
    dy: Integer;
    procedure InitFields;
        constructor Create(text: string; fontSize: Integer; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
        function getDx: Integer; override;
        procedure setDx(dx: Integer); override;
        function getDy: Integer; override;
        procedure setDy(dy: Integer); override;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation

{AB:CODE}

procedure TAdjustCustomTextAnimation.InitFields;
begin
  
  
end;
    

constructor TAdjustCustomTextAnimation.Create(text: string; fontSize: Integer; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(text, fontSize, animationBehavior_);
        InitFields;
        Self.dx := dx;
        Self.dy := dy;
end;
    

function TAdjustCustomTextAnimation.getDx: Integer;
begin
        Exit(Self.dx);
end;
    

procedure TAdjustCustomTextAnimation.setDx(dx: Integer);
begin
        Self.dx := dx;
end;
    

function TAdjustCustomTextAnimation.getDy: Integer;
begin
        Exit(Self.dy);
end;
    

procedure TAdjustCustomTextAnimation.setDy(dy: Integer);
begin
        Self.dy := dy;
end;
    

procedure TAdjustCustomTextAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        inherited paintXY(graphics_, (x) + (Self.dx), (y) + (Self.dy));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

