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
unit ColorFillPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, DisplayInfoSingleton, ColorFillBasePaintable;

type
  {AB:TYPES}
  TColorFillPaintable = class(TColorFillBasePaintable)
  public
    displayInfoSingleton: TDisplayInfoSingleton;
    procedure InitFields;
        constructor Create(basicColor_: TBasicColor);
        procedure paint(graphics_: TGraphics); override;
  end;

implementation

{AB:CODE}

procedure TColorFillPaintable.InitFields;
begin
  Self.displayInfoSingleton := TDisplayInfoSingleton.getInstance();
end;
    

constructor TColorFillPaintable.Create(basicColor_: TBasicColor);
begin
        inherited Create(basicColor_);
        InitFields;
end;
    

procedure TColorFillPaintable.paint(graphics_: TGraphics);
begin
        graphics_.setColor(Self.colorP);
        graphics_.fillRect(0, 0, Self.displayInfoSingleton.getLastWidth(), Self.displayInfoSingleton.getLastHeight());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

