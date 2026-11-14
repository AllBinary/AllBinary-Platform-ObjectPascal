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
// package org.allbinary.graphics.canvas.transition.progress
unit ProgressPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Paintable, ProgressCanvas;

type
  {AB:TYPES}
  TProgressPaintable = class(TPaintable)
  public
    progressCanvas: TProgressCanvas;
    procedure InitFields;
        constructor Create(progressCanvas_: TProgressCanvas);
        procedure paint(graphics_: TGraphics); override;
  end;

implementation

{AB:CODE}

procedure TProgressPaintable.InitFields;
begin
  
end;
    

constructor TProgressPaintable.Create(progressCanvas_: TProgressCanvas);
begin
    inherited Create;
    InitFields;
        Self.progressCanvas := progressCanvas_;
end;
    

procedure TProgressPaintable.paint(graphics_: TGraphics);
begin
        Self.progressCanvas.paint2(graphics_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

