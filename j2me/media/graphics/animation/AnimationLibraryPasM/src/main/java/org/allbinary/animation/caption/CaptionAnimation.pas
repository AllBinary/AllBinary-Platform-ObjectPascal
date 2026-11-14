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
unit CaptionAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation;

type
  {AB:TYPES}
  TCaptionAnimation = class(TAnimation)
  public
    animationInterface: TAnimation;
    overlayAnimationInterface: TAnimation;
    captionDx: Integer;
    captionDy: Integer;
    dx: Integer;
    dy: Integer;
    procedure InitFields;
        constructor Create(animationInterface: TAnimation; overlayAnimationInterface: TAnimation; captionDx: Integer; captionDy: Integer; dx: Integer; dy: Integer);
        procedure nextFrame; override;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
        procedure paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer); override;
  end;

implementation

{AB:CODE}

procedure TCaptionAnimation.InitFields;
begin
  
  
  
  
  
  
end;
    

constructor TCaptionAnimation.Create(animationInterface: TAnimation; overlayAnimationInterface: TAnimation; captionDx: Integer; captionDy: Integer; dx: Integer; dy: Integer);
begin
    inherited Create;
    InitFields;
        Self.animationInterface := animationInterface;
        Self.overlayAnimationInterface := overlayAnimationInterface;
        Self.captionDx := captionDx;
        Self.captionDy := captionDy;
        Self.dx := dx;
        Self.dy := dy;
end;
    

// throws Exception
procedure TCaptionAnimation.nextFrame;
begin
end;
    

procedure TCaptionAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.animationInterface.paintXY(graphics_, (x) + (Self.captionDx), (y) + (Self.captionDy));
        Self.overlayAnimationInterface.paintXY(graphics_, ((x) + (Self.captionDx)) + (Self.dx), ((y) + (Self.captionDy)) + (Self.dy));
end;
    

procedure TCaptionAnimation.paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer);
begin
        Self.animationInterface.paintThreedXYZ(graphics_, (x) + (Self.captionDx), (y) + (Self.captionDy), z);
        Self.overlayAnimationInterface.paintThreedXYZ(graphics_, ((x) + (Self.captionDx)) + (Self.dx), ((y) + (Self.captionDy)) + (Self.dy), z);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

