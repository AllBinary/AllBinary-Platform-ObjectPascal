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
// package org.allbinary.game.displayable.canvas
unit GameCanvasNonBotPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Paintable, AllBinaryGameCanvas;

type
  {AB:TYPES}
  TGameCanvasNonBotPaintable = class(TPaintable)
  public
    gameCanvas: TAllBinaryGameCanvas;
    procedure InitFields;
        constructor Create(gameCanvas: TAllBinaryGameCanvas);
        procedure paint(graphics_: TGraphics); override;
  end;

implementation

{AB:CODE}

procedure TGameCanvasNonBotPaintable.InitFields;
begin
  
end;
    

constructor TGameCanvasNonBotPaintable.Create(gameCanvas: TAllBinaryGameCanvas);
begin
    inherited Create;
    InitFields;
        Self.gameCanvas := gameCanvas;
end;
    

procedure TGameCanvasNonBotPaintable.paint(graphics_: TGraphics);
begin
        Self.gameCanvas.nonBotPaint(graphics_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

