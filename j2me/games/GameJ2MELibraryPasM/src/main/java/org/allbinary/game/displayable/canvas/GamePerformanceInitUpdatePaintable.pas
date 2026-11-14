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
unit GamePerformanceInitUpdatePaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, MyFontProcessor, UpdateMyFontInterface, InitUpdatePaintable;

type
  {AB:TYPES}
  TGamePerformanceInitUpdatePaintable = class(TInitUpdatePaintable, IUpdateMyFontInterface)
  public
    halfHeight: Integer;
    yArray: TArray<Integer>;
    myFontProcessor: TMyFontProcessor;
    baseRefreshHelperCharArray: TArray<TArray<WideChar>>;
    defaultStringWidth: Integer;
    RED: Integer;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure init; virtual;
        procedure update; virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  Font, GameStatisticsFactory, BasicColorFactory, DisplayInfoSingleton, UpdateMyFontProcessor;


{AB:CODE}

procedure TGamePerformanceInitUpdatePaintable.InitFields;
begin
  Self.halfHeight := TDisplayInfoSingleton.getInstance().getLastHalfHeight();
  Self.yArray := TArray<Integer>.Create((Self.halfHeight) + (30), (Self.halfHeight) + (30), ((Self.halfHeight) + (30)) + (15), ((Self.halfHeight) + (30)) + (15), ((Self.halfHeight) + (30)) + (30), ((Self.halfHeight) + (30)) + (30), ((Self.halfHeight) + (30)) + (45), ((Self.halfHeight) + (30)) + (45));
  Self.myFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.baseRefreshHelperCharArray := TJava.NewArray2<WideChar>(0, 0);
  
  Self.RED := TBasicColorFactory.getInstance().RED.intValue();
end;

function TGamePerformanceInitUpdatePaintable.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TGamePerformanceInitUpdatePaintable.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TGamePerformanceInitUpdatePaintable.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.defaultStringWidth := TMyFontProcessor.defaultStringWidth(font_, 2);
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TGamePerformanceInitUpdatePaintable.init;
begin
end;
    

procedure TGamePerformanceInitUpdatePaintable.update;
begin
        Self.baseRefreshHelperCharArray := TGameStatisticsFactory.getInstance().to2DCharArray();
end;
    

procedure TGamePerformanceInitUpdatePaintable.paint(graphics_: TGraphics);
var
  charArray: TArray<WideChar>;
  charArray2: TArray<WideChar>;
  size2: Integer;
  size3: Integer;
  size: Integer;
  index: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        graphics_.setColor(Self.RED);
        
        
        
        
        size := (System.Length(Self.baseRefreshHelperCharArray)) - (2);
        index := size;
        while (index) >= (0) do begin
            charArray := Self.baseRefreshHelperCharArray[index];
            charArray2 := Self.baseRefreshHelperCharArray[(index) + (1)];
            size2 := System.Length(charArray);
            size3 := System.Length(charArray2);
            graphics_.drawChars(charArray, 0, size2, 0, Self.yArray[index], 0);
            graphics_.drawChars(charArray2, 0, size3, (size2) * (Self.defaultStringWidth), Self.yArray[(index) + (1)], 0);
            index := (index) - (2);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

