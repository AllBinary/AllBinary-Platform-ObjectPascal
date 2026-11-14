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
// package org.allbinary.game.part
unit CountedLayersHudPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, DisplayInfoSingleton, MyFontProcessor, UpdateMyFontInterface, PaintableInterface, PartInterface;

type
  {AB:TYPES}
  TCountedLayersHudPaintable = class(TInterfacedObject, IPaintableInterface, IUpdateMyFontInterface)
  public
    displayInfoSingleton: TDisplayInfoSingleton;
    partInterfaceArray: TArray<IPartInterface>;
    countedTotalStringColor: Integer;
    countedPartsBorder: Integer;
    startIndex: Integer;
    dropSize: Integer;
    myFontProcessor: TMyFontProcessor;
    height: Integer;
    class var XXStringWidth: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(partInterfaceArray: TArray<IPartInterface>; dropSize: Integer; startIndex: Integer; countedTotalStringColor: Integer; countedPartsBorder: Integer);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
  end;

implementation
uses
  CountedLayerInterfaceFactoryPart, Font, PickedUpLayerInterfaceFactoryInterface, UpdateMyFontProcessor, AllBinaryLayer;


{AB:CODE}

procedure TCountedLayersHudPaintable.InitFields;
begin
  Self.displayInfoSingleton := TDisplayInfoSingleton.getInstance();
  
  
  
  
  
  Self.myFontProcessor := TUpdateMyFontProcessor.Create(Self);
  
end;

function TCountedLayersHudPaintable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCountedLayersHudPaintable.Create(partInterfaceArray: TArray<IPartInterface>; dropSize: Integer; startIndex: Integer; countedTotalStringColor: Integer; countedPartsBorder: Integer);
begin
    inherited Create;
    InitFields;
        Self.partInterfaceArray := partInterfaceArray;
        Self.startIndex := startIndex;
        Self.countedTotalStringColor := countedTotalStringColor;
        Self.countedPartsBorder := countedPartsBorder;
        Self.dropSize := dropSize;
end;
    

procedure TCountedLayersHudPaintable.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
  XXString: string;
begin
        font_ := graphics_.getFont();
        Self.height := font_.getHeight();
        if (Self.dropSize) > (font_.getHeight()) then begin
            Self.height := Self.dropSize;
        end;
        if (TCountedLayersHudPaintable.XXStringWidth) = (0) then begin
            XXString := 'XX';
            TCountedLayersHudPaintable.XXStringWidth := font_.stringWidth(XXString);
        end;
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TCountedLayersHudPaintable.paint(graphics_: TGraphics);
var
  lastWidth: Integer;
  widthEdge: Integer;
  size: Integer;
  count: Integer;
  y: Integer;
  countedLayerInterfaceFactory: TCountedLayerInterfaceFactoryPart;
  pickedUpLayerInterfaceFactoryInterface_: IPickedUpLayerInterfaceFactoryInterface;
  layerInterface: TAllBinaryLayer;
  charArray: TArray<WideChar>;
  index: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        lastWidth := Self.displayInfoSingleton.getLastWidth();
        widthEdge := (lastWidth) - (Self.dropSize);
        size := System.Length(Self.partInterfaceArray);
        count := 0;
        
        
        
        
        
        for index := Self.startIndex to size - 1 do begin
            countedLayerInterfaceFactory := TCountedLayerInterfaceFactoryPart(TJava.ToObject(Self.partInterfaceArray[index]));
            if (countedLayerInterfaceFactory.getTotal()) > (0) then begin
                pickedUpLayerInterfaceFactoryInterface_ := countedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory();
                layerInterface := pickedUpLayerInterfaceFactoryInterface_.getIconLayer();
                y := (40) + (((count) * (Self.height)));
                layerInterface.setPosition(widthEdge, y, layerInterface.getZP());
                layerInterface.paint(graphics_);
                graphics_.setColor(Self.countedTotalStringColor);
                countedLayerInterfaceFactory.paint(graphics_);
                charArray := countedLayerInterfaceFactory.getTotalString();
                graphics_.drawChars(charArray, 0, System.Length(charArray), (widthEdge) - (countedLayerInterfaceFactory.getXOffset()), y, 0);
                Inc(count);
            end;
        end;
        if (count) > (0) then begin
            graphics_.setColor(Self.countedPartsBorder);
            graphics_.drawRect((lastWidth) - (((TCountedLayersHudPaintable.XXStringWidth) + (Self.dropSize))), 40, (TCountedLayersHudPaintable.XXStringWidth) + (Self.dropSize), (((count) * (Self.height))) + (3));
        end;
end;
    

procedure TCountedLayersHudPaintable.paintThreed(graphics_: TGraphics);
begin
end;

initialization
  {AB:INITIALIZATION}
  TCountedLayersHudPaintable.XXStringWidth := 0;
  {AB:END}

end.

