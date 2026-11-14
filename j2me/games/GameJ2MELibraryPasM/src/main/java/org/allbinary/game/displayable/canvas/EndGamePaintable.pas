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
unit EndGamePaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Paintable, AllBinaryGameCanvas;

type
  {AB:TYPES}
  TEndGamePaintable = class(TPaintable)
  public
    gameCanvas: TAllBinaryGameCanvas;
    procedure InitFields;
        constructor Create(gameCanvas: TAllBinaryGameCanvas);
        procedure paint(graphics_: TGraphics); override;
  end;

implementation

{AB:CODE}

procedure TEndGamePaintable.InitFields;
begin
  
end;
    

constructor TEndGamePaintable.Create(gameCanvas: TAllBinaryGameCanvas);
begin
    inherited Create;
    InitFields;
        Self.gameCanvas := gameCanvas;
end;
    

procedure TEndGamePaintable.paint(graphics_: TGraphics);
begin
        Self.gameCanvas.paintGameOver(graphics_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

