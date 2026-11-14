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
// package org.allbinary.game.layer
unit SWTBlackPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, BasicColorSetUtil, Paintable;

type
  {AB:TYPES}
  TSWTBlackPaintable = class(TPaintable)
  public
    basicSetColorUtil: TBasicColorSetUtil;
    BLACK: TBasicColor;
    procedure InitFields;
    constructor Create;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  BasicColorFactory;


{AB:CODE}

procedure TSWTBlackPaintable.InitFields;
begin
  Self.basicSetColorUtil := TBasicColorSetUtil.getInstance();
  Self.BLACK := TBasicColorFactory.getInstance().BLACK;
end;

constructor TSWTBlackPaintable.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TSWTBlackPaintable.paint(graphics_: TGraphics);
begin
        Self.basicSetColorUtil.setBasicColorP(graphics_, Self.BLACK);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

