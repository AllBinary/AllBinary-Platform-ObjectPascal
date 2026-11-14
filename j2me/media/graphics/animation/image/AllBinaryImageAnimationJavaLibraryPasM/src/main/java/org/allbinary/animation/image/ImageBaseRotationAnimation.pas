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
unit ImageBaseRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, RotationAnimation, AngleInfo;

type
  {AB:TYPES}
  TImageBaseRotationAnimation = class(TRotationAnimation)
  public
    image: TImage;
    anchor: Integer;
    procedure InitFields;
        constructor Create(image_: TImage; angleInfo_: TAngleInfo; totalAngle: SmallInt; animationBehavior_: TAnimationBehavior);
        function getAnimationSize: Integer; override;
        procedure setSequence(sequence: TArray<Integer>); override;
        function getSequence: TArray<Integer>; override;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
        function getImage: TImage; virtual;
        function getWidth: Integer; override;
        function getHeight: Integer; override;
        procedure close; virtual;
        procedure finalize; virtual;
  end;

implementation
uses
  DisposalUtil, Anchor, PrimitiveIntUtil, CircularIndexUtil;


{AB:CODE}

procedure TImageBaseRotationAnimation.InitFields;
begin
  
  Self.anchor := TAnchor.TOP_LEFT;
end;
    

constructor TImageBaseRotationAnimation.Create(image_: TImage; angleInfo_: TAngleInfo; totalAngle: SmallInt; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(angleInfo_, TCircularIndexUtil.createInstance(TJava.Divide(totalAngle, angleInfo_.getAngleIncrementInfo().getAngleIncrement())), animationBehavior_);
        InitFields;
        Self.image := image_;
end;
    

// throws Exception
function TImageBaseRotationAnimation.getAnimationSize: Integer;
begin
        Exit(Self.getSize());
end;
    

procedure TImageBaseRotationAnimation.setSequence(sequence: TArray<Integer>);
begin
end;
    

function TImageBaseRotationAnimation.getSequence: TArray<Integer>;
begin
        Exit(TPrimitiveIntUtil.getArrayInstance());
end;
    

procedure TImageBaseRotationAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        graphics_.drawImage(Self.image, x, y, Self.anchor);
end;
    

function TImageBaseRotationAnimation.getImage: TImage;
begin
        Exit(Self.image);
end;
    

function TImageBaseRotationAnimation.getWidth: Integer;
begin
        Exit(Self.image.getWidth());
end;
    

function TImageBaseRotationAnimation.getHeight: Integer;
begin
        Exit(Self.image.getHeight());
end;
    

// throws Exception
procedure TImageBaseRotationAnimation.close;
begin
        TDisposalUtil.getInstance().disposeImage(Self.image);
end;
    

// throws Throwable
procedure TImageBaseRotationAnimation.finalize;
begin
        TDisposalUtil.getInstance().disposeImage(Self.image);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

