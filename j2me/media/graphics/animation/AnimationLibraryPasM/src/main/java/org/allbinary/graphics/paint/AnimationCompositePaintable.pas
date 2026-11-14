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
// package org.allbinary.graphics.paint
unit AnimationCompositePaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, InitUpdatePaintable;

type
  {AB:TYPES}
  TAnimationCompositePaintable = class(TInitUpdatePaintable)
  public
    animationInterface: TAnimation;
    procedure InitFields;
        constructor Create(animationInterface: TAnimation);
        procedure paint(graphics_: TGraphics); override;
        procedure paintThreed(graphics_: TGraphics); override;
  end;

implementation

{AB:CODE}

procedure TAnimationCompositePaintable.InitFields;
begin
  
end;
    

constructor TAnimationCompositePaintable.Create(animationInterface: TAnimation);
begin
    inherited Create;
    InitFields;
        Self.animationInterface := animationInterface;
end;
    

procedure TAnimationCompositePaintable.paint(graphics_: TGraphics);
begin
        Self.animationInterface.paintXY(graphics_, 0, 0);
end;
    

procedure TAnimationCompositePaintable.paintThreed(graphics_: TGraphics);
begin
        Self.animationInterface.paintThreedXYZ(graphics_, 0, 0, 0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

