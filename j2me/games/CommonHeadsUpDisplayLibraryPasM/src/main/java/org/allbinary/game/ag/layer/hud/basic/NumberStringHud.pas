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
// package org.allbinary.game.ag.layer.hud.basic
unit NumberStringHud;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicHud, BasicColor, PaintableInterface, PrimitiveLongUtil;

type
  {AB:TYPES}
  TNumberStringHud = class(TBasicHud, IPaintableInterface)
  public
    primitiveLongUtil: TPrimitiveLongUtil;
    prependString: string;
    PREPEND_STRING: TArray<WideChar>;
    value: Integer;
    max: Integer;
    offset: Integer;
    valueString: TArray<WideChar>;
    valueTotalDigits: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(prependString: string; max: Integer; location: Integer; direction: Integer; bufferZone: Integer; basicColor_: TBasicColor);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        function get: Integer; virtual;
        procedure add(value: Integer); virtual;
        procedure set_(value: Integer); virtual;
        procedure reduce(value: Integer); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
  end;

implementation
uses
  Font, BasicHudFactory, MyFontProcessor, PrimitiveLongSingleton;


{AB:CODE}

procedure TNumberStringHud.InitFields;
begin
  
  
  
  
  
  
  
  
end;

function TNumberStringHud.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TNumberStringHud.Create(prependString: string; max: Integer; location: Integer; direction: Integer; bufferZone: Integer; basicColor_: TBasicColor);
begin
        inherited Create(location, direction, bufferZone, basicColor_);
        InitFields;
        Self.prependString := prependString;
        Self.PREPEND_STRING := TJava.ToCharArray(prependString);
        Self.valueString := TPrimitiveLongSingleton.getInstance().NUMBER_CHAR_ARRAYS[0];
        Self.primitiveLongUtil := TPrimitiveLongUtil.createPowerOfTen((max) + (1));
        Self.max := max;
        Self.value := 0;
        if (direction) = (0) then begin
            raise SysUtils.Exception.Create(TBasicHudFactory.getInstance().DIRECTION_EXCEPTION);
        end;
end;
    

procedure TNumberStringHud.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.offset := (font_.stringWidth(Self.prependString)) + (TMyFontProcessor.defaultCharWidth(font_));
        inherited updateMeasurement(graphics_);
end;
    

function TNumberStringHud.get: Integer;
begin
        Exit(Self.value);
end;
    

procedure TNumberStringHud.add(value: Integer);
begin
        Self.set_((Self.value) + (value));
end;
    

procedure TNumberStringHud.set_(value: Integer);
begin
        Self.value := value;
        if (Self.value) > (Self.max) then begin
            Self.value := 0;
        end;
        Self.valueString := Self.primitiveLongUtil.getCharArray(Self.value);
        Self.valueTotalDigits := Self.primitiveLongUtil.getCurrentTotalDigits();
end;
    

procedure TNumberStringHud.reduce(value: Integer);
begin
        Self.set_((Self.value) - (value));
end;
    

procedure TNumberStringHud.paint(graphics_: TGraphics);
begin
        inherited paintDX(graphics_, Self.PREPEND_STRING, 0, System.Length(Self.PREPEND_STRING), Self.valueString, 0, Self.valueTotalDigits, Self.offset);
end;
    

procedure TNumberStringHud.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
var
  charArray: TArray<WideChar>;
  len: Integer;
  charArray2: TArray<WideChar>;
  len2: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        charArray := Self.PREPEND_STRING;
        len := System.Length(Self.PREPEND_STRING);
        charArray2 := Self.valueString;
        len2 := Self.valueTotalDigits;
        Self.basicSetColorUtil.setBasicColorP(graphics_, Self.getBasicColorP());
        graphics_.drawChars(charArray, 0, len, x, y, 0);
        graphics_.drawChars(charArray2, 0, len2, (x) - (Self.offset), y, 0);
end;
    

procedure TNumberStringHud.paintThreed(graphics_: TGraphics);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

