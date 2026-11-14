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
unit CaptionAnimationHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, TextAnimation, BasicColor, TimeDelayHelper, CaptionAnimationHelperBase;

type
  {AB:TYPES}
  TCaptionAnimationHelper = class(TCaptionAnimationHelperBase)
  public
    timeHelper: TTimeDelayHelper;
    textAnimation: TTextAnimation;
    captionAnimation: TAnimation;
    animation: TAnimation;
    procedure InitFields;
        constructor Create(captionAnimation_: TAnimation; captionDx: Integer; captionDy: Integer; dx: Integer; dy: Integer);
        function isShowing: Boolean; override;
        procedure tick; override;
        procedure update(message: string; basicColor_: TBasicColor); override;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation
uses
  CaptionAnimation, AnimationBehavior, NullAnimationFactory, StringUtil, GameTickTimeDelayHelperFactory;


{AB:CODE}

procedure TCaptionAnimationHelper.InitFields;
begin
  Self.timeHelper := TTimeDelayHelper.Create(620);
  Self.textAnimation := TTextAnimation.Create(TStringUtil.getInstance().EMPTY_STRING, TAnimationBehavior.getInstance());
  
  Self.animation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
end;
    

constructor TCaptionAnimationHelper.Create(captionAnimation_: TAnimation; captionDx: Integer; captionDy: Integer; dx: Integer; dy: Integer);
begin
    inherited Create;
    InitFields;
        Self.captionAnimation := TCaptionAnimation.Create(captionAnimation_, Self.textAnimation, captionDx, captionDy, dx, dy);
end;
    

function TCaptionAnimationHelper.isShowing: Boolean;
begin
        if (Self.animation) = (Self.captionAnimation) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

procedure TCaptionAnimationHelper.tick;
begin
        if Self.timeHelper.isTime(TGameTickTimeDelayHelperFactory.getInstance().startTime) then begin
            Self.animation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
        end;
end;
    

procedure TCaptionAnimationHelper.update(message: string; basicColor_: TBasicColor);
begin
        Self.textAnimation.setBasicColorP(basicColor_);
        Self.textAnimation.setText(message);
        Self.animation := Self.captionAnimation;
        Self.timeHelper.setStartTimeTNT();
end;
    

procedure TCaptionAnimationHelper.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.animation.paintXY(graphics_, x, y);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

