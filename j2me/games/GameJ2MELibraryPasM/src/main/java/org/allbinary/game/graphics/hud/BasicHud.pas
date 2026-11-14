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
// package org.allbinary.game.graphics.hud
unit BasicHud;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, GPoint, BasicColor, BasicColorSetUtil, CanvasStrings, DisplayInfoSingleton, DisplayChangeEvent, MyFontProcessor, UpdateMyFontInterface, LogUtil, AllBinaryEventObject, CommonStrings, HudGraphicsPosition;

type
  {AB:TYPES}
  TBasicHud = class(TInterfacedObject, IUpdateMyFontInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    canvasStrings: TCanvasStrings;
    basicSetColorUtil: TBasicColorSetUtil;
    displayInfo: TDisplayInfoSingleton;
    updateMyFontProcessor: TMyFontProcessor;
    myFontProcessor: TMyFontProcessor;
    location: Integer;
    direction: Integer;
    bufferZone: Integer;
    bufferZoneY: Integer;
    hudGraphicsPosition: THudGraphicsPosition;
    x: Integer;
    y: Integer;
    basicColor: TBasicColor;
    color: Integer;
    updateMaxWidth: Integer;
    updateMaxHeight: Integer;
    offsetY: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(location: Integer; direction: Integer; bufferZone: Integer; basicColor_: TBasicColor);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        function getLocation: Integer; virtual;
        function getDirection: Integer; virtual;
        function getHudGraphicsPositionWH(width: Integer; height: Integer; maxWidth: Integer; maxHeight: Integer): THudGraphicsPosition; virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onDisplayChangeEvent(displayChangeEvent_: TDisplayChangeEvent); virtual;
        function getPoint(x: Integer; y: Integer): TGPoint; virtual;
        function getBufferZone: Integer; virtual;
        procedure setBufferZone(bufferZone: Integer); virtual;
        procedure setLocation(location: Integer); virtual;
        procedure setDirection(direction: Integer); virtual;
        function getHudGraphicsPosition: THudGraphicsPosition; virtual;
        function getColor: Integer; virtual;
        function getX: Integer; virtual;
        procedure setX(x: Integer); virtual;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
        function getBasicColorP: TBasicColor; virtual;
        procedure setY(y: Integer); virtual;
        function getY: Integer; virtual;
        procedure paintSSO(graphics_: TGraphics; string_: string; string2: string; offset: Integer); virtual;
        procedure paintSSOO(graphics_: TGraphics; string_: string; string2: string; offset: Integer; offset2: Integer); virtual;
        procedure paintDXY(graphics_: TGraphics; charArray: TArray<WideChar>; offset: Integer; len: Integer; charArray2: TArray<WideChar>; offset2: Integer; len2: Integer; xOffset: Integer; xOffset2: Integer); virtual;
        procedure paintDX(graphics_: TGraphics; charArray: TArray<WideChar>; offset: Integer; len: Integer; charArray2: TArray<WideChar>; offset2: Integer; len2: Integer; xOffset: Integer); virtual;
        procedure paintOffsetAndLength(graphics_: TGraphics; charArray: TArray<WideChar>; offset: Integer; len: Integer); virtual;
        procedure paintString(graphics_: TGraphics; string_: string); virtual;
  end;

implementation
uses
  BasicHudFactory, J2MEUtil, Anchor, PointFactory, BasicColorFactory, UpdateMyFontProcessor, ForcedLogUtil, EventStrings;


{AB:CODE}

procedure TBasicHud.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.canvasStrings := TCanvasStrings.getInstance();
  Self.basicSetColorUtil := TBasicColorSetUtil.getInstance();
  Self.displayInfo := TDisplayInfoSingleton.getInstance();
  Self.updateMyFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.myFontProcessor := Self.updateMyFontProcessor;
  
  
  
  
  Self.hudGraphicsPosition := THudGraphicsPosition.NULL_HUD_GRAPHICS_POSITION;
  
  
  Self.basicColor := TBasicColorFactory.getInstance().BLACK;
  
  
  
  
end;

function TBasicHud.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicHud.Create(location: Integer; direction: Integer; bufferZone: Integer; basicColor_: TBasicColor);
begin
    inherited Create;
    InitFields;
        Self.setLocation(location);
        Self.setDirection(direction);
        Self.setBufferZone(bufferZone);
        Self.onDisplayChangeEvent(TDisplayInfoSingleton.getInstance().displayChangeEvent);
        Self.setBasicColorP(basicColor_);
        Self.color := basicColor_.intValue();
end;
    

procedure TBasicHud.updateMeasurement(graphics_: TGraphics);
var
  commonStrings_: TCommonStrings;
begin
        try
            Self.hudGraphicsPosition := Self.getHudGraphicsPositionWH(Self.displayInfo.getLastWidth(), Self.displayInfo.getLastHeight(), Self.updateMaxWidth, Self.updateMaxHeight);
            Self.x := Self.hudGraphicsPosition.getPoint().getX();
            Self.setY(Self.hudGraphicsPosition.getPoint().getY());
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), Self.canvasStrings.ON_DISPLAY_CHANGE_EVENT, TJava.Box(e));
            end;
        end;
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

function TBasicHud.getLocation: Integer;
begin
        Exit(Self.location);
end;
    

function TBasicHud.getDirection: Integer;
begin
        Exit(Self.direction);
end;
    

// throws Exception
function TBasicHud.getHudGraphicsPositionWH(width: Integer; height: Integer; maxWidth: Integer; maxHeight: Integer): THudGraphicsPosition;
var
  x: Integer;
  y: Integer;
  anchor_: Integer;
  basicHudFactory_: TBasicHudFactory;
begin
        x := 0;
        y := 0;
        anchor_ := 0;
        basicHudFactory_ := TBasicHudFactory.getInstance();
        if (basicHudFactory_.BOTTOMLEFT) = (Self.getLocation()) then begin
            x := (Self.bufferZone) + (2);
            y := ((height) - (maxHeight)) - (Self.bufferZone);
            anchor_ := (TGraphics.BOTTOM) and (TGraphics.LEFT);
        end else if (basicHudFactory_.BOTTOMRIGHT) = (Self.getLocation()) then begin
            x := (width) - (maxWidth);
            y := ((height) - (maxHeight)) - (Self.bufferZone);
            anchor_ := (TGraphics.BOTTOM) and (TGraphics.RIGHT);
        end else if (basicHudFactory_.TOPLEFT) = (Self.getLocation()) then begin
            x := (Self.bufferZone) + (2);
            y := Self.bufferZoneY;
            anchor_ := TAnchor.TOP_LEFT;
        end else if (basicHudFactory_.TOPRIGHT) = (Self.getLocation()) then begin
            x := (width) - (maxWidth);
            y := Self.bufferZoneY;
            anchor_ := (TGraphics.TOP) and (TGraphics.RIGHT);
        end else if (basicHudFactory_.TOPCENTER) = (Self.getLocation()) then begin
            x := ((((width) - (maxWidth))) div (2));
            y := Self.bufferZoneY;
            anchor_ := (TGraphics.TOP) and (TGraphics.HCENTER);
        end else if (basicHudFactory_.BOTTOMCENTER) = (Self.getLocation()) then begin
            x := ((((width) - (maxWidth))) div (2));
            y := ((height) - (maxHeight)) - (Self.bufferZone);
            anchor_ := (TGraphics.BOTTOM) and (TGraphics.HCENTER);
        end else if (basicHudFactory_.ABSOLUTE_) = (Self.getLocation()) then begin
            x := maxHeight;
            y := maxWidth;
            anchor_ := 0;
        end;
        Exit(THudGraphicsPosition.Create(Self.getPoint(x, y), anchor_));
end;
    

procedure TBasicHud.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

procedure TBasicHud.onDisplayChangeEvent(displayChangeEvent_: TDisplayChangeEvent);
begin
        Self.myFontProcessor := Self.updateMyFontProcessor;
end;
    

function TBasicHud.getPoint(x: Integer; y: Integer): TGPoint;
begin
        Exit(TPointFactory.getInstance().createXY(x, y));
end;
    

function TBasicHud.getBufferZone: Integer;
begin
        Exit(Self.bufferZone);
end;
    

procedure TBasicHud.setBufferZone(bufferZone: Integer);
begin
        Self.bufferZone := bufferZone;
        if TJ2MEUtil.isHTML() then begin
            Self.bufferZoneY := Self.bufferZone;
        end else begin
            Self.bufferZoneY := (Self.bufferZone) + (5);
        end;
end;
    

procedure TBasicHud.setLocation(location: Integer);
begin
        Self.location := location;
end;
    

procedure TBasicHud.setDirection(direction: Integer);
begin
        Self.direction := direction;
end;
    

function TBasicHud.getHudGraphicsPosition: THudGraphicsPosition;
begin
        Exit(Self.hudGraphicsPosition);
end;
    

function TBasicHud.getColor: Integer;
begin
        Exit(Self.color);
end;
    

function TBasicHud.getX: Integer;
begin
        Exit(Self.x);
end;
    

procedure TBasicHud.setX(x: Integer);
begin
        Self.x := x;
end;
    

procedure TBasicHud.setBasicColorP(basicColor_: TBasicColor);
begin
        Self.basicColor := basicColor_;
end;
    

function TBasicHud.getBasicColorP: TBasicColor;
begin
        Exit(Self.basicColor);
end;
    

procedure TBasicHud.setY(y: Integer);
begin
        Self.y := y;
end;
    

function TBasicHud.getY: Integer;
begin
        Exit(Self.y);
end;
    

procedure TBasicHud.paintSSO(graphics_: TGraphics; string_: string; string2: string; offset: Integer);
begin
        Self.myFontProcessor.process(graphics_);
        Self.basicSetColorUtil.setBasicColorP(graphics_, Self.getBasicColorP());
        graphics_.drawString(string_, Self.x, Self.getY(), Self.hudGraphicsPosition.getAnchor());
        graphics_.drawString(string2, (Self.x) + (offset), Self.getY(), Self.hudGraphicsPosition.getAnchor());
end;
    

procedure TBasicHud.paintSSOO(graphics_: TGraphics; string_: string; string2: string; offset: Integer; offset2: Integer);
begin
        Self.myFontProcessor.process(graphics_);
        graphics_.setColor(Self.getColor());
        graphics_.drawString(string_, (Self.x) + (offset), Self.getY(), Self.hudGraphicsPosition.getAnchor());
        graphics_.drawString(string2, (Self.x) + (offset2), Self.getY(), Self.hudGraphicsPosition.getAnchor());
end;
    

procedure TBasicHud.paintDXY(graphics_: TGraphics; charArray: TArray<WideChar>; offset: Integer; len: Integer; charArray2: TArray<WideChar>; offset2: Integer; len2: Integer; xOffset: Integer; xOffset2: Integer);
var
  y: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        Self.basicSetColorUtil.setBasicColorP(graphics_, Self.getBasicColorP());
        y := Self.getY();
        graphics_.drawChars(charArray, offset, len, (Self.x) + (xOffset), y, Self.hudGraphicsPosition.getAnchor());
        graphics_.drawChars(charArray2, offset2, len2, (Self.x) + (xOffset2), y, Self.hudGraphicsPosition.getAnchor());
end;
    

procedure TBasicHud.paintDX(graphics_: TGraphics; charArray: TArray<WideChar>; offset: Integer; len: Integer; charArray2: TArray<WideChar>; offset2: Integer; len2: Integer; xOffset: Integer);
var
  y: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        Self.basicSetColorUtil.setBasicColorP(graphics_, Self.getBasicColorP());
        y := Self.getY();
        graphics_.drawChars(charArray, offset, len, Self.x, y, Self.hudGraphicsPosition.getAnchor());
        graphics_.drawChars(charArray2, offset2, len2, (Self.x) + (xOffset), y, Self.hudGraphicsPosition.getAnchor());
end;
    

procedure TBasicHud.paintOffsetAndLength(graphics_: TGraphics; charArray: TArray<WideChar>; offset: Integer; len: Integer);
var
  y: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        Self.basicSetColorUtil.setBasicColorP(graphics_, Self.getBasicColorP());
        y := Self.getY();
        graphics_.drawChars(charArray, offset, len, Self.x, y, Self.hudGraphicsPosition.getAnchor());
end;
    

procedure TBasicHud.paintString(graphics_: TGraphics; string_: string);
var
  y: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        Self.basicSetColorUtil.setBasicColorP(graphics_, Self.getBasicColorP());
        y := (Self.getY()) + (Self.offsetY);
        graphics_.drawString(string_, Self.x, y, Self.hudGraphicsPosition.getAnchor());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

