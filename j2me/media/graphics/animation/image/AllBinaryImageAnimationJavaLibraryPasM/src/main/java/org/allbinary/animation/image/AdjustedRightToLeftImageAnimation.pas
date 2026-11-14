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
// package org.allbinary.animation.image
unit AdjustedRightToLeftImageAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, RightToLeftImageAnimation;

type
  {AB:TYPES}
  TAdjustedRightToLeftImageAnimation = class(TRightToLeftImageAnimation)
  public
    dx: Integer;
    dy: Integer;
    procedure InitFields;
        constructor Create(image_: TImage; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
        procedure init(dx: Integer; dy: Integer); virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation

{AB:CODE}

procedure TAdjustedRightToLeftImageAnimation.InitFields;
begin
  
  
end;
    

constructor TAdjustedRightToLeftImageAnimation.Create(image_: TImage; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(image_, animationBehavior_);
        InitFields;
        Self.init(dx, dy);
end;
    

// throws Exception
procedure TAdjustedRightToLeftImageAnimation.init(dx: Integer; dy: Integer);
begin
        Self.dx := dx;
        Self.dy := dy;
end;
    

procedure TAdjustedRightToLeftImageAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        inherited paintXY(graphics_, (x) + (Self.dx), (y) + (Self.dy));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

