// Generated Code Do Not Modify
// package org.allbinary.animation
unit NullRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AngleInfo, CircularIndexUtil, AnimationBehavior, RotationAnimation;

type
  {AB:TYPES}
  TNullRotationAnimation = class(TRotationAnimation)
  public
        class function createTotalAngle(angleInfo_: TAngleInfo; totalAngle: SmallInt; animationBehavior_: TAnimationBehavior): TNullRotationAnimation; static;
        class function createQuarter(animationBehavior_: TAnimationBehavior): TNullRotationAnimation; static;
        constructor Create(angleInfo_: TAngleInfo; circularIndexUtil_: TCircularIndexUtil; animationBehavior_: TAnimationBehavior);
        function getAnimationSize: Integer; override;
  end;

implementation
uses
  AngleFactory;


{AB:CODE}
    

class function TNullRotationAnimation.createTotalAngle(angleInfo_: TAngleInfo; totalAngle: SmallInt; animationBehavior_: TAnimationBehavior): TNullRotationAnimation;
begin
        Exit(TNullRotationAnimation.Create(angleInfo_, TCircularIndexUtil.createInstance(TJava.Divide(totalAngle, angleInfo_.getAngleIncrementInfo().getAngleIncrement())), animationBehavior_));
end;
    

class function TNullRotationAnimation.createQuarter(animationBehavior_: TAnimationBehavior): TNullRotationAnimation;
begin
        Exit(TNullRotationAnimation.Create(TAngleInfo.getInstance(TAngleFactory.getInstance().QUARTER_TOTAL_ANGLE), TCircularIndexUtil.createInstance(4), animationBehavior_));
end;
    

constructor TNullRotationAnimation.Create(angleInfo_: TAngleInfo; circularIndexUtil_: TCircularIndexUtil; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(angleInfo_, circularIndexUtil_, animationBehavior_);
end;
    

// throws Exception
function TNullRotationAnimation.getAnimationSize: Integer;
begin
        Exit(0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

