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
// package org.allbinary.game.paint
unit OverScanColorFillPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, ColorFillPaintable;

type
  {AB:TYPES}
  TOverScanColorFillPaintable = class(TColorFillPaintable)
  public
        constructor Create(basicColor_: TBasicColor);
        procedure paint(graphics_: TGraphics); override;
  end;

implementation

{AB:CODE}
    

constructor TOverScanColorFillPaintable.Create(basicColor_: TBasicColor);
begin
        inherited Create(basicColor_);
end;
    

procedure TOverScanColorFillPaintable.paint(graphics_: TGraphics);
begin
        graphics_.setColor(Self.colorP);
        graphics_.fillRect(-graphics_.getClipX(), -graphics_.getClipY(), (Self.displayInfoSingleton.getLastWidth()) + (((graphics_.getClipX()) * (2))), (Self.displayInfoSingleton.getLastHeight()) + (((graphics_.getClipY()) * (2))));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

