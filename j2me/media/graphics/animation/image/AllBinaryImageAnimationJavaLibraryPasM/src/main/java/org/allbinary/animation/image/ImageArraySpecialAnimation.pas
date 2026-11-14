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
unit ImageArraySpecialAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, SpecialAnimationInterface, TimeDelayHelper, ImageArrayAnimation, AnimationInterface, IndexedAnimationInterface, LocationPaintableInterface, SequenceInterface, SequentialAnimationInterface;

type
  {AB:TYPES}
  TImageArraySpecialAnimation = class(TImageArrayAnimation, ISpecialAnimationInterface, IAnimationInterface, IIndexedAnimationInterface, ILocationPaintableInterface, ISequenceInterface, ISequentialAnimationInterface)
  public
    timeDelayHelper: TTimeDelayHelper;
    loopCount: Integer;
    loopCountTotal: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(imageArray: TArray<TImage>; animationBehavior_: TAnimationBehavior);
        function getLoopCount: Integer; virtual;
        procedure setLastFrame; virtual;
        procedure reset; virtual;
        procedure nextFrame; virtual;
        function isComplete: Boolean; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
  end;

implementation
uses
  DisplayInfoSingleton, GameTickTimeDelayHelperFactory;


{AB:CODE}

procedure TImageArraySpecialAnimation.InitFields;
begin
  Self.timeDelayHelper := TTimeDelayHelper.Create(270);
  Self.loopCount := 0;
  Self.loopCountTotal := 1;
end;

function TImageArraySpecialAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TImageArraySpecialAnimation.Create(imageArray: TArray<TImage>; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(imageArray, animationBehavior_);
        InitFields;
        Self.reset();
end;
    

function TImageArraySpecialAnimation.getLoopCount: Integer;
begin
        Exit(Self.loopCount);
end;
    

procedure TImageArraySpecialAnimation.setLastFrame;
begin
        Self.circularIndexUtil.setIndex((Self.circularIndexUtil.getSize()) - (1));
end;
    

procedure TImageArraySpecialAnimation.reset;
begin
        Self.setFrame((Self.getSize()) - (1));
        Self.loopCount := 0;
end;
    

procedure TImageArraySpecialAnimation.nextFrame;
begin
        if (Self.getFrame()) > (0) then begin
            if Self.timeDelayHelper.isTime(TGameTickTimeDelayHelperFactory.getInstance().startTime) then begin
                Self.previousFrame();
                if (Self.getFrame()) = (0) then begin
                    Inc(Self.loopCount);
                end;
            end;
        end;
end;
    

function TImageArraySpecialAnimation.isComplete: Boolean;
begin
        if ((Self.loopCount) < (Self.loopCountTotal)) or ((Self.getFrame()) <> (0)) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;
    

procedure TImageArraySpecialAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        x := (TDisplayInfoSingleton.getInstance().getLastHalfWidth()) - ((TJava.SignedRightShift(Self.getImage(Self.circularIndexUtil.getIndex()).getWidth(), 1)));
        y := 5;
        inherited paintXY(graphics_, x, y);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

