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
// package org.allbinary.graphics.form
unit LockablePaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, ItemPaintable;

type
  {AB:TYPES}
  TLockablePaintable = class(TItemPaintable)
  public
    animation: TAnimation;
    lockedIndex: Integer;
    procedure InitFields;
        constructor Create(lockedIndex: Integer);
        procedure paint(graphics_: TGraphics; currentIndex: Integer; x: Integer; y: Integer); override;
        function getLockedIndex: Integer; virtual;
        function getAnimation: TAnimation; virtual;
  end;

implementation
uses
  FeaturedAnimationInterfaceFactoryInterfaceFactory, LockedResources, LockedUtil;


{AB:CODE}

procedure TLockablePaintable.InitFields;
begin
  Self.animation := TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(TLockedResources.getInstance().LOCKED_DEMO_GAME_FEATURE_RESOURCE).getInstance(0);
  
end;
    

constructor TLockablePaintable.Create(lockedIndex: Integer);
begin
    inherited Create;
    InitFields;
        Self.lockedIndex := lockedIndex;
end;
    

procedure TLockablePaintable.paint(graphics_: TGraphics; currentIndex: Integer; x: Integer; y: Integer);
begin
        if (TLockedUtil.getInstance().isLocked()) and ((currentIndex) >= (Self.getLockedIndex())) then begin
            Self.getAnimation().paintXY(graphics_, x, y);
        end;
end;
    

function TLockablePaintable.getLockedIndex: Integer;
begin
        Exit(Self.lockedIndex);
end;
    

function TLockablePaintable.getAnimation: TAnimation;
begin
        Exit(Self.animation);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

