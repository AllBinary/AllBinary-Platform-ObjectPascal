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
unit ImageArrayRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, AnimationBehavior, AngleInfo, ImageArrayBaseRotationAnimation;

type
  {AB:TYPES}
  TImageArrayRotationAnimation = class(TImageArrayBaseRotationAnimation)
  public
    expectedTotalFrames: Integer;
    procedure InitFields;
        class function createAnimation(anyType: TObject; animationBehavior_: TAnimationBehavior): TImageArrayRotationAnimation; static;
        constructor Create(imageArray: TArray<TImage>; angleInfo_: TAngleInfo; totalAngle: Integer; animationBehavior_: TAnimationBehavior);
        procedure init(imageArray: TArray<TImage>; angleInfo_: TAngleInfo; totalAngle: Integer);
        procedure setImageArray(imageArray: TArray<TImage>); override;
  end;

implementation
uses
  ImageArrayRotationAnimationInfo;


{AB:CODE}

procedure TImageArrayRotationAnimation.InitFields;
begin
  
end;
    

// throws Exception
class function TImageArrayRotationAnimation.createAnimation(anyType: TObject; animationBehavior_: TAnimationBehavior): TImageArrayRotationAnimation;
var
  imageRotationAnimationInfo: TImageArrayRotationAnimationInfo;
begin
        imageRotationAnimationInfo := TImageArrayRotationAnimationInfo(TJava.ToObject(anyType));
        Exit(TImageArrayRotationAnimation.Create(imageRotationAnimationInfo.getImageArray(), imageRotationAnimationInfo.getAngleInfoP(), imageRotationAnimationInfo.getTotalAngle(), animationBehavior_));
end;
    

constructor TImageArrayRotationAnimation.Create(imageArray: TArray<TImage>; angleInfo_: TAngleInfo; totalAngle: Integer; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(imageArray, angleInfo_, animationBehavior_);
        InitFields;
        Self.init(imageArray, angleInfo_, totalAngle);
end;
    

// throws Exception
procedure TImageArrayRotationAnimation.init(imageArray: TArray<TImage>; angleInfo_: TAngleInfo; totalAngle: Integer);
begin
        Self.expectedTotalFrames := TJava.Divide(totalAngle, Self.angleInfo.getAngleIncrementInfo().getAngleIncrement());
        Self.angleInfo.adjustAngle(0);
        if (Self.expectedTotalFrames) <> (Self.getSize()) then begin
            raise SysUtils.Exception.Create('Wrong Number of Frames');
        end;
end;
    

procedure TImageArrayRotationAnimation.setImageArray(imageArray: TArray<TImage>);
begin
        inherited setImageArray(imageArray);
        Self.angleInfo.adjustAngle(0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

