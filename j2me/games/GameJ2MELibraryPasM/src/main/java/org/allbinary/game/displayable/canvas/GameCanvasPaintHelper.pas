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
unit GameCanvasPaintHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, ProcessPaintable, AllBinaryGameCanvas;

type
  {AB:TYPES}
  TGameCanvasPaintHelper = class(TProcessPaintable)
  public
    gameCanvas: TAllBinaryGameCanvas;
    procedure InitFields;
        constructor Create(gameCanvas: TAllBinaryGameCanvas);
        procedure process; override;
        procedure paint(graphics_: TGraphics); override;
  end;

implementation

{AB:CODE}

procedure TGameCanvasPaintHelper.InitFields;
begin
  
end;
    

constructor TGameCanvasPaintHelper.Create(gameCanvas: TAllBinaryGameCanvas);
begin
    inherited Create;
    InitFields;
        Self.gameCanvas := gameCanvas;
end;
    

procedure TGameCanvasPaintHelper.process;
begin
end;
    

procedure TGameCanvasPaintHelper.paint(graphics_: TGraphics);
begin
        Self.gameCanvas.draw(graphics_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

