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
unit AdjustedImageArrayRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, AngleInfo, ImageArrayRotationAnimation;

type
  {AB:TYPES}
  // TWB - Adjustments should be done in the resource creation and not at the animation level
  TAdjustedImageArrayRotationAnimation = class(TImageArrayRotationAnimation)
  public
    dx: Integer;
    dy: Integer;
    procedure InitFields;
        class function createAdjustedImageArrayRotationAnimationInfo(anyType: TObject; animationBehavior_: TAnimationBehavior): TAdjustedImageArrayRotationAnimation; static;
        class function createAnimation(imageArray: TArray<TImage>; angleInfo_: TAngleInfo; totalAngle: Integer; animationBehavior_: TAnimationBehavior): TAdjustedImageArrayRotationAnimation; static;
        constructor Create(imageArray: TArray<TImage>; angleInfo_: TAngleInfo; totalAngle: Integer; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
        procedure init(dx: Integer; dy: Integer); virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
        procedure setDx(dx: Integer); override;
        function getDx: Integer; override;
        procedure setDy(dy: Integer); override;
        function getDy: Integer; override;
  end;

implementation
uses
  ImageArrayRotationAnimationInfo;


{AB:CODE}

procedure TAdjustedImageArrayRotationAnimation.InitFields;
begin
  
  
end;
    

// throws Exception
class function TAdjustedImageArrayRotationAnimation.createAdjustedImageArrayRotationAnimationInfo(anyType: TObject; animationBehavior_: TAnimationBehavior): TAdjustedImageArrayRotationAnimation;
var
  imageRotationAnimationInfo: TImageArrayRotationAnimationInfo;
begin
        imageRotationAnimationInfo := TImageArrayRotationAnimationInfo(TJava.ToObject(anyType));
        Exit(TAdjustedImageArrayRotationAnimation.Create(imageRotationAnimationInfo.getImageArray(), imageRotationAnimationInfo.getAngleInfoP(), imageRotationAnimationInfo.getTotalAngle(), imageRotationAnimationInfo.getDx(), imageRotationAnimationInfo.getDy(), animationBehavior_));
end;
    

// throws Exception
class function TAdjustedImageArrayRotationAnimation.createAnimation(imageArray: TArray<TImage>; angleInfo_: TAngleInfo; totalAngle: Integer; animationBehavior_: TAnimationBehavior): TAdjustedImageArrayRotationAnimation;
begin
        Exit(TAdjustedImageArrayRotationAnimation.Create(imageArray, angleInfo_, totalAngle, -(TJava.SignedRightShift(imageArray[0].getWidth(), 2)), -(TJava.SignedRightShift(imageArray[0].getHeight(), 2)), animationBehavior_));
end;
    

constructor TAdjustedImageArrayRotationAnimation.Create(imageArray: TArray<TImage>; angleInfo_: TAngleInfo; totalAngle: Integer; dx: Integer; dy: Integer; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(imageArray, angleInfo_, totalAngle, animationBehavior_);
        InitFields;
        Self.init(dx, dy);
end;
    

// throws Exception
procedure TAdjustedImageArrayRotationAnimation.init(dx: Integer; dy: Integer);
begin
        Self.setDx(dx);
        Self.setDy(dy);
end;
    

procedure TAdjustedImageArrayRotationAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        inherited paintXY(graphics_, (x) + (Self.dx), (y) + (Self.dy));
end;
    

procedure TAdjustedImageArrayRotationAnimation.setDx(dx: Integer);
begin
        Self.dx := dx;
end;
    

function TAdjustedImageArrayRotationAnimation.getDx: Integer;
begin
        Exit(Self.dx);
end;
    

procedure TAdjustedImageArrayRotationAnimation.setDy(dy: Integer);
begin
        Self.dy := dy;
end;
    

function TAdjustedImageArrayRotationAnimation.getDy: Integer;
begin
        Exit(Self.dy);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

