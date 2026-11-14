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
// package org.allbinary.animation
unit AdjustedVectorAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, AnimationBehavior, VectorAnimation;

type
  {AB:TYPES}
  TAdjustedVectorAnimation = class(TVectorAnimation)
  public
    dx: Integer;
    dy: Integer;
    procedure InitFields;
        constructor Create(currentPoints: TArray<TArray<TArray<Integer>>>; basicColor_: TBasicColor; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation

{AB:CODE}

procedure TAdjustedVectorAnimation.InitFields;
begin
  
  
end;
    

constructor TAdjustedVectorAnimation.Create(currentPoints: TArray<TArray<TArray<Integer>>>; basicColor_: TBasicColor; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(currentPoints, basicColor_, animationBehavior_);
        InitFields;
        Self.dx := dx;
        Self.dy := dy;
end;
    

procedure TAdjustedVectorAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        inherited paintXY(graphics_, (x) + (Self.dx), (y) + (Self.dy));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

