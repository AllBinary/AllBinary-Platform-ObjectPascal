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
// package org.allbinary.media
unit AllBinaryVisualDebugVibration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, DisplayInfoSingleton, MyFontProcessor, UpdateMyFontInterface, TimeDelayHelper, AllBinaryVibrationME;

type
  {AB:TYPES}
  TAllBinaryVisualDebugVibration = class(TAllBinaryVibrationME, IUpdateMyFontInterface)
  public
    displayInfoSingleton: TDisplayInfoSingleton;
    timeDelayHelper: TTimeDelayHelper;
    VIBRATING: string;
    myFontProcessor: TMyFontProcessor;
    anchor: Integer;
    width: Integer;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure vibrate(duration: Integer; type_: Integer; volume: Integer); virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  Font, Anchor, UpdateMyFontProcessor;


{AB:CODE}

procedure TAllBinaryVisualDebugVibration.InitFields;
begin
  Self.displayInfoSingleton := TDisplayInfoSingleton.getInstance();
  Self.timeDelayHelper := TTimeDelayHelper.Create(High(Integer));
  Self.VIBRATING := 'Vibrating';
  Self.myFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.anchor := TAnchor.TOP_LEFT;
  
end;

function TAllBinaryVisualDebugVibration.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TAllBinaryVisualDebugVibration.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TAllBinaryVisualDebugVibration.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.width := font_.stringWidth(Self.VIBRATING);
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TAllBinaryVisualDebugVibration.vibrate(duration: Integer; type_: Integer; volume: Integer);
begin
        Self.timeDelayHelper.delay := duration;
end;
    

procedure TAllBinaryVisualDebugVibration.paint(graphics_: TGraphics);
begin
        if Self.timeDelayHelper.isTimeTNT() then begin
            Self.timeDelayHelper.delay := High(Integer);
            Self.myFontProcessor.process(graphics_);
            graphics_.drawString(Self.VIBRATING, (Self.displayInfoSingleton.getLastHalfWidth()) - ((TJava.SignedRightShift(Self.width, 1))), 0, Self.anchor);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

