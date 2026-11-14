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
// package org.allbinary.game.health
unit HealthBarTwodAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, AllBinaryLayer, HealthBarAnimation;

type
  {AB:TYPES}
  THealthBarTwodAnimation = class(THealthBarAnimation)
  public
        constructor Create(layerInterface: TAllBinaryLayer; location: Integer);
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation

{AB:CODE}
    

constructor THealthBarTwodAnimation.Create(layerInterface: TAllBinaryLayer; location: Integer);
begin
        inherited Create(layerInterface, location);
end;
    

procedure THealthBarTwodAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
var
  ax: Integer;
begin
        ax := Self.allbinaryLayer.getViewPosition().getX();
        Self.basicSetColorUtil.setBasicColorP3(graphics_, Self.basicColor, Self.colorP);
        graphics_.fillRect(ax, (Self.getY()) - (1), Self.x2, Self.thickness);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

