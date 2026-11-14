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
unit VectorRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Direction, BasicColor, Angle, AnimationBehavior, VectorBaseRotationAnimation;

type
  {AB:TYPES}
  TVectorRotationAnimation = class(TVectorBaseRotationAnimation)
  public
        constructor Create(currentPoints: TArray<TArray<TArray<Integer>>>; basicColor_: TBasicColor; animationBehavior_: TAnimationBehavior);
        procedure setFrameByDirection(direction_: TDirection); override;
        procedure setFrameToAngle(angle_: TAngle); override;
        procedure setFrame(index: Integer); override;
        procedure adjustFrame(newAngle: SmallInt); override;
        procedure adjustFrameToAngle(newAngle: TAngle); override;
  end;

implementation
uses
  AngleFactory, AngleInfo;


{AB:CODE}
    

constructor TVectorRotationAnimation.Create(currentPoints: TArray<TArray<TArray<Integer>>>; basicColor_: TBasicColor; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(TAngleInfo.getInstance(SmallInt(Trunc((TJava.Divide(TAngleFactory.getInstance().TOTAL_ANGLE, System.Length(currentPoints)))))), currentPoints, basicColor_, animationBehavior_);
        Self.angleInfo.adjustAngle(Self.getFrame());
end;
    

procedure TVectorRotationAnimation.setFrameByDirection(direction_: TDirection);
var
  angle_: TAngle;
begin
        angle_ := Self.directionUtil.getFrameAngle(direction_);
        Self.adjustFrameToAngle(angle_);
end;
    

procedure TVectorRotationAnimation.setFrameToAngle(angle_: TAngle);
begin
        Self.adjustFrameToAngle(angle_);
end;
    

procedure TVectorRotationAnimation.setFrame(index: Integer);
begin
        inherited setFrame(index);
        Self.angleInfo.adjustAngle(Self.getFrame());
end;
    

procedure TVectorRotationAnimation.adjustFrame(newAngle: SmallInt);
begin
        Self.setFrame(Self.frameUtil.getFrameForAngle(newAngle, Integer(Trunc(Self.angleInfo.getAngleIncrementInfo().getAngleIncrement()))));
end;
    

procedure TVectorRotationAnimation.adjustFrameToAngle(newAngle: TAngle);
begin
        Self.adjustFrame(newAngle.getValue());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

