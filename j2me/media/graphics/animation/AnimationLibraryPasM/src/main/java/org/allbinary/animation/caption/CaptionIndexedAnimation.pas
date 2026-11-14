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
// package org.allbinary.animation.caption
unit CaptionIndexedAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Player, Animation, AnimationBehavior, IndexedAnimation, AllBinaryEventObject, TimeDelayHelper;

type
  {AB:TYPES}
  TCaptionIndexedAnimation = class(TIndexedAnimation)
  public
    animationInterface: TAnimation;
    movieIndexedAnimationInterface: TIndexedAnimation;
    captionDx: Integer;
    captionDy: Integer;
    dx: Integer;
    dy: Integer;
    time: Integer;
    END_EVENT: TAllBinaryEventObject;
    timeDelayHelper: TTimeDelayHelper;
    player: IPlayer;
    procedure InitFields;
        constructor Create(animationInterface: TAnimation; movieIndexedAnimationInterface: TIndexedAnimation; player_: IPlayer; captionDx: Integer; captionDy: Integer; dx: Integer; dy: Integer; time: Integer; animationBehavior_: TAnimationBehavior);
        procedure nextFrame; override;
        function isLastFrame: Boolean; override;
        procedure previousFrame; override;
        procedure setFrame(index: Integer); override;
        function getFrame: Integer; override;
        function getSize: Integer; override;
        procedure setSequence(sequence: TArray<Integer>); override;
        function getSequence: TArray<Integer>; override;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
        procedure paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer); override;
  end;

implementation
uses
  AnimationEventHandler, PrimitiveIntUtil, GameTickTimeDelayHelperFactory;


{AB:CODE}

procedure TCaptionIndexedAnimation.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TCaptionIndexedAnimation.Create(animationInterface: TAnimation; movieIndexedAnimationInterface: TIndexedAnimation; player_: IPlayer; captionDx: Integer; captionDy: Integer; dx: Integer; dy: Integer; time: Integer; animationBehavior_: TAnimationBehavior);
var
  timePerFrame: Integer;
begin
        inherited Create(animationBehavior_);
        InitFields;
        Self.animationInterface := animationInterface;
        Self.movieIndexedAnimationInterface := movieIndexedAnimationInterface;
        Self.captionDx := captionDx;
        Self.captionDy := captionDy;
        Self.dx := dx;
        Self.dy := dy;
        Self.time := time;
        Self.END_EVENT := TAllBinaryEventObject.Create(TJava.Box(Self));
        timePerFrame := (Self.time) div (Self.getSize());
        Self.timeDelayHelper := TTimeDelayHelper.Create(timePerFrame);
        Self.player := player_;
        Self.player.start();
end;
    

// throws Exception
procedure TCaptionIndexedAnimation.nextFrame;
begin
        if Self.timeDelayHelper.isTime(TGameTickTimeDelayHelperFactory.getInstance().startTime) then begin
            Self.movieIndexedAnimationInterface.nextFrame();
        end;
        if Self.isLastFrame() then begin
            TAnimationEventHandler.getInstance().fireEvent(Self.END_EVENT);
        end;
end;
    

function TCaptionIndexedAnimation.isLastFrame: Boolean;
begin
        if (Self.movieIndexedAnimationInterface.getFrame()) = ((Self.getSize()) - (1)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

procedure TCaptionIndexedAnimation.previousFrame;
begin
        Self.movieIndexedAnimationInterface.previousFrame();
end;
    

procedure TCaptionIndexedAnimation.setFrame(index: Integer);
begin
        Self.movieIndexedAnimationInterface.setFrame(index);
end;
    

function TCaptionIndexedAnimation.getFrame: Integer;
begin
        Exit(Self.movieIndexedAnimationInterface.getFrame());
end;
    

function TCaptionIndexedAnimation.getSize: Integer;
begin
        Exit(Self.movieIndexedAnimationInterface.getSize());
end;
    

procedure TCaptionIndexedAnimation.setSequence(sequence: TArray<Integer>);
begin
end;
    

function TCaptionIndexedAnimation.getSequence: TArray<Integer>;
begin
        Exit(TPrimitiveIntUtil.getArrayInstance());
end;
    

procedure TCaptionIndexedAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.animationInterface.paintXY(graphics_, (x) + (Self.captionDx), (y) + (Self.captionDy));
        Self.movieIndexedAnimationInterface.paintXY(graphics_, ((x) + (Self.captionDx)) + (Self.dx), ((y) + (Self.captionDy)) + (Self.dy));
end;
    

procedure TCaptionIndexedAnimation.paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer);
begin
        Self.animationInterface.paintThreedXYZ(graphics_, (x) + (Self.captionDx), (y) + (Self.captionDy), z);
        Self.movieIndexedAnimationInterface.paintThreedXYZ(graphics_, ((x) + (Self.captionDx)) + (Self.dx), ((y) + (Self.captionDy)) + (Self.dy), z);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

