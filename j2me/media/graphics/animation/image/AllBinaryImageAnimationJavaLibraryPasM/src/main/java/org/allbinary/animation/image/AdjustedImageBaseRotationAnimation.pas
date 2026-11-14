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
unit AdjustedImageBaseRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, AngleInfo, ImageBaseRotationAnimation;

type
  {AB:TYPES}
  TAdjustedImageBaseRotationAnimation = class(TImageBaseRotationAnimation)
  public
    dx: Integer;
    dy: Integer;
    procedure InitFields;
        constructor Create(image_: TImage; angleInfo_: TAngleInfo; totalAngle: SmallInt; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
        procedure init(dx: Integer; dy: Integer); virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation

{AB:CODE}

procedure TAdjustedImageBaseRotationAnimation.InitFields;
begin
  
  
end;
    

constructor TAdjustedImageBaseRotationAnimation.Create(image_: TImage; angleInfo_: TAngleInfo; totalAngle: SmallInt; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(image_, angleInfo_, totalAngle, animationBehavior_);
        InitFields;
        Self.init(dx, dy);
end;
    

// throws Exception
procedure TAdjustedImageBaseRotationAnimation.init(dx: Integer; dy: Integer);
begin
        Self.dx := dx;
        Self.dy := dy;
end;
    

procedure TAdjustedImageBaseRotationAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        inherited paintXY(graphics_, (x) + (Self.dx), (y) + (Self.dy));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

