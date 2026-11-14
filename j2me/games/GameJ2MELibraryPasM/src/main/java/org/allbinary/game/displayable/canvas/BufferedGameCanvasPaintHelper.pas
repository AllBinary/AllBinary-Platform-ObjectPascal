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
unit BufferedGameCanvasPaintHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas, Graphics, Image, ProcessPaintable, CircularIndexUtil, AllBinaryGameCanvas;

type
  {AB:TYPES}
  TBufferedGameCanvasPaintHelper = class(TProcessPaintable)
  public
    gameCanvas: TCanvas;
    offScreenImage: TArray<TImage>;
    previousImage: TImage;
    circularIndexUtil: TCircularIndexUtil;
    drawCircularIndexUtil: TCircularIndexUtil;
    anchor: Integer;
    class var MAX_IMAGES: Integer;
    procedure InitFields;
        constructor Create(gameCanvas: TAllBinaryGameCanvas);
        procedure process; override;
        procedure paint(graphics_: TGraphics); override;
  end;

implementation
uses
  NullCanvas, NullImage, Anchor, MyCanvas;


{AB:CODE}

procedure TBufferedGameCanvasPaintHelper.InitFields;
begin
  Self.gameCanvas := TNullCanvas.NULL_CANVAS;
  Self.offScreenImage := TJava.NewArray<TImage>(TBufferedGameCanvasPaintHelper.MAX_IMAGES);
  Self.previousImage := TNullImage.NULL_IMAGE;
  Self.circularIndexUtil := TCircularIndexUtil.createInstance(TBufferedGameCanvasPaintHelper.MAX_IMAGES);
  Self.drawCircularIndexUtil := TCircularIndexUtil.createInstanceAt((TBufferedGameCanvasPaintHelper.MAX_IMAGES) - (1), TBufferedGameCanvasPaintHelper.MAX_IMAGES);
  Self.anchor := TAnchor.TOP_LEFT;
end;
    

constructor TBufferedGameCanvasPaintHelper.Create(gameCanvas: TAllBinaryGameCanvas);
begin
    inherited Create;
    InitFields;
        raise SysUtils.Exception.Create('No Longer Used');
end;
    

procedure TBufferedGameCanvasPaintHelper.process;
var
  myCanvas_: TMyCanvas;
begin
        myCanvas_ := (TMyCanvas(TJava.ToObject(Self.gameCanvas)));
        myCanvas_.draw(Self.offScreenImage[Self.circularIndexUtil.getIndex()].getGraphics());
        Self.circularIndexUtil.next();
        Self.drawCircularIndexUtil.next();
end;
    

procedure TBufferedGameCanvasPaintHelper.paint(graphics_: TGraphics);
begin
        Self.previousImage := Self.offScreenImage[Self.drawCircularIndexUtil.getIndex()];
        graphics_.drawImage(Self.previousImage, 0, 0, Self.anchor);
end;

initialization
  {AB:INITIALIZATION}
  TBufferedGameCanvasPaintHelper.MAX_IMAGES := 4;
  {AB:END}

end.

