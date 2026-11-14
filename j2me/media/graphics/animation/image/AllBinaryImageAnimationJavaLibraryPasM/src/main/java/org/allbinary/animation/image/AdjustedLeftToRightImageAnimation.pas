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
unit AdjustedLeftToRightImageAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, LeftToRightImageAnimation;

type
  {AB:TYPES}
  TAdjustedLeftToRightImageAnimation = class(TLeftToRightImageAnimation)
  public
    dx: Integer;
    dy: Integer;
    procedure InitFields;
        constructor Create(image_: TImage; sequenceArray: TArray<Integer>; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
        procedure init(dx: Integer; dy: Integer); virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation

{AB:CODE}

procedure TAdjustedLeftToRightImageAnimation.InitFields;
begin
  
  
end;
    

constructor TAdjustedLeftToRightImageAnimation.Create(image_: TImage; sequenceArray: TArray<Integer>; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(image_, sequenceArray, animationBehavior_);
        InitFields;
        Self.init(dx, dy);
end;
    

// throws Exception
procedure TAdjustedLeftToRightImageAnimation.init(dx: Integer; dy: Integer);
begin
        Self.dx := dx;
        Self.dy := dy;
end;
    

procedure TAdjustedLeftToRightImageAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        inherited paintXY(graphics_, (x) + (Self.dx), (y) + (Self.dy));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

