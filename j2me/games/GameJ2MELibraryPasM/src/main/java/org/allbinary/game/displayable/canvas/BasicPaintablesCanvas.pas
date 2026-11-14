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
unit BasicPaintablesCanvas;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, Graphics, AllBinaryGameLayerManager, ColorFillBasePaintable, Paintable, GameCommandCanvas;

type
  {AB:TYPES}
  TBasicPaintablesCanvas = class(TGameCommandCanvas)
  public
    paintableArray: TArray<TPaintable>;
    colorFillPaintable: TColorFillBasePaintable;
    procedure InitFields;
        constructor Create(cmdListener: ICommandListener; name: string; allBinaryGameLayerManager_: TAllBinaryGameLayerManager; paintableArray: TArray<TPaintable>);
        procedure paint(graphics_: TGraphics); override;
  end;

implementation
uses
  ColorFillPaintableFactory;


{AB:CODE}

procedure TBasicPaintablesCanvas.InitFields;
begin
  
  
end;
    

constructor TBasicPaintablesCanvas.Create(cmdListener: ICommandListener; name: string; allBinaryGameLayerManager_: TAllBinaryGameLayerManager; paintableArray: TArray<TPaintable>);
begin
        inherited Create(cmdListener, name, allBinaryGameLayerManager_.getBackgroundBasicColor(), allBinaryGameLayerManager_.getForegroundBasicColor());
        InitFields;
        Self.paintableArray := paintableArray;
        Self.colorFillPaintable := TColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager_.getBackgroundBasicColor(), False);
end;
    

procedure TBasicPaintablesCanvas.paint(graphics_: TGraphics);
var
  index: Integer;
begin
        Self.colorFillPaintable.paint(graphics_);
        graphics_.setColor(Self.foregroundColor);
        for index := (System.Length(Self.paintableArray)) - (1) downto 0 do begin
            Self.paintableArray[index].paint(graphics_);
        end;
        inherited paint(graphics_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

