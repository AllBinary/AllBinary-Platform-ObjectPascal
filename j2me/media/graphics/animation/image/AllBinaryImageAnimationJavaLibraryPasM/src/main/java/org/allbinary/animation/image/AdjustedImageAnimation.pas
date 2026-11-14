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
// package org.allbinary.animation.image
unit AdjustedImageAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, ImageAnimation;

type
  {AB:TYPES}
  TAdjustedImageAnimation = class(TImageAnimation)
  public
    dx: Integer;
    dy: Integer;
    procedure InitFields;
        constructor Create(image_: TImage; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
        procedure init(dx: Integer; dy: Integer); virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
        procedure setDx(dx: Integer); override;
        function getDx: Integer; override;
        procedure setDy(dy: Integer); override;
        function getDy: Integer; override;
  end;

implementation

{AB:CODE}

procedure TAdjustedImageAnimation.InitFields;
begin
  
  
end;
    

constructor TAdjustedImageAnimation.Create(image_: TImage; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(image_, animationBehavior_);
        InitFields;
        Self.init(dx, dy);
end;
    

// throws Exception
procedure TAdjustedImageAnimation.init(dx: Integer; dy: Integer);
begin
        Self.setDx(dx);
        Self.setDy(dy);
end;
    

procedure TAdjustedImageAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        inherited paintXY(graphics_, (x) + (Self.dx), (y) + (Self.dy));
end;
    

procedure TAdjustedImageAnimation.setDx(dx: Integer);
begin
        Self.dx := dx;
end;
    

function TAdjustedImageAnimation.getDx: Integer;
begin
        Exit(Self.dx);
end;
    

procedure TAdjustedImageAnimation.setDy(dy: Integer);
begin
        Self.dy := dy;
end;
    

function TAdjustedImageAnimation.getDy: Integer;
begin
        Exit(Self.dy);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

