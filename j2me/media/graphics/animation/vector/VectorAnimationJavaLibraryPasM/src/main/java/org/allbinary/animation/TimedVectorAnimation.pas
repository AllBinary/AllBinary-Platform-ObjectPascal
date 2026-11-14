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
unit TimedVectorAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicColor, TimeDelayHelper, AnimationBehavior, VectorAnimation;

type
  {AB:TYPES}
  TTimedVectorAnimation = class(TVectorAnimation)
  public
    timeElapsedHelper: TTimeDelayHelper;
    procedure InitFields;
        constructor Create(currentPoints: TArray<TArray<TArray<Integer>>>; basicColor_: TBasicColor; animationBehavior_: TAnimationBehavior);
        procedure nextFrame; override;
  end;

implementation
uses
  GameTickTimeDelayHelperFactory;


{AB:CODE}

procedure TTimedVectorAnimation.InitFields;
begin
  Self.timeElapsedHelper := TTimeDelayHelper.Create(200);
end;
    

constructor TTimedVectorAnimation.Create(currentPoints: TArray<TArray<TArray<Integer>>>; basicColor_: TBasicColor; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(currentPoints, basicColor_, animationBehavior_);
        InitFields;
end;
    

procedure TTimedVectorAnimation.nextFrame;
begin
        if Self.timeElapsedHelper.isTime(TGameTickTimeDelayHelperFactory.getInstance().startTime) then begin
            inherited nextFrame();
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

