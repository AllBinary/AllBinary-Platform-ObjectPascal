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
unit ColorLessVectorAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, AnimationBehavior, VectorAnimation;

type
  {AB:TYPES}
  TColorLessVectorAnimation = class(TVectorAnimation)
  public
        constructor Create(currentPoints: TArray<TArray<TArray<Integer>>>; animationBehavior_: TAnimationBehavior);
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation
uses
  BasicColorFactory;


{AB:CODE}
    

constructor TColorLessVectorAnimation.Create(currentPoints: TArray<TArray<TArray<Integer>>>; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(currentPoints, TBasicColorFactory.getInstance().WHITE, animationBehavior_);
end;
    

procedure TColorLessVectorAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.paintVectors(graphics_, x, y);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

