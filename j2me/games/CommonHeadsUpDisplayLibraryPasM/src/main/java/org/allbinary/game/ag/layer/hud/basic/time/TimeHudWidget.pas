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
// package org.allbinary.game.ag.layer.hud.basic.time
unit TimeHudWidget;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicHud, BasicColor, HudTimer;

type
  {AB:TYPES}
  TTimeHudWidget = class(TBasicHud)
  public
    TIME_STRING: string;
    TIME_CHAR_ARRAY: TArray<WideChar>;
    offset: Integer;
    string_: TArray<WideChar>;
    totalDigits: Integer;
    timer: THudTimer;
    procedure InitFields;
        class function getInstance(location: Integer; direction: Integer; basicColor_: TBasicColor; timer: THudTimer): TTimeHudWidget; static;
        constructor Create(location: Integer; direction: Integer; bufferZone: Integer; basicColor_: TBasicColor; timer: THudTimer);
        procedure updateMeasurement(graphics_: TGraphics); override;
        procedure update; virtual;
        procedure set_;
        function getTimer: THudTimer; virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  Font, MyFontProcessor, PrimitiveLongSingleton;


{AB:CODE}

procedure TTimeHudWidget.InitFields;
begin
  Self.TIME_STRING := 'Time ';
  Self.TIME_CHAR_ARRAY := TArray<WideChar>.Create('T', 'i', 'm', 'e', ' ');
  
  Self.string_ := TPrimitiveLongSingleton.getInstance().ZERO;
  Self.totalDigits := 1;
  
end;
    

// throws Exception
class function TTimeHudWidget.getInstance(location: Integer; direction: Integer; basicColor_: TBasicColor; timer: THudTimer): TTimeHudWidget;
begin
        Exit(TTimeHudWidget.Create(location, direction, 2, basicColor_, timer));
end;
    

constructor TTimeHudWidget.Create(location: Integer; direction: Integer; bufferZone: Integer; basicColor_: TBasicColor; timer: THudTimer);
begin
        inherited Create(location, direction, bufferZone, basicColor_);
        InitFields;
        Self.timer := timer;
        Self.set_();
        Self.updateMaxHeight := 14;
end;
    

procedure TTimeHudWidget.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.updateMaxWidth := (font_.getSize()) * (5);
        Self.offset := (font_.stringWidth(Self.TIME_STRING)) + (TMyFontProcessor.defaultStringWidth(font_, 3));
        inherited updateMeasurement(graphics_);
end;
    

procedure TTimeHudWidget.update;
begin
        Self.timer.update();
        Self.set_();
end;
    

procedure TTimeHudWidget.set_;
begin
        Self.string_ := Self.timer.getTimeChars();
        Self.totalDigits := Self.timer.getCurrentTotalDigits();
end;
    

function TTimeHudWidget.getTimer: THudTimer;
begin
        Exit(Self.timer);
end;
    

procedure TTimeHudWidget.paint(graphics_: TGraphics);
begin
        inherited paintDX(graphics_, Self.TIME_CHAR_ARRAY, 0, System.Length(Self.TIME_CHAR_ARRAY), Self.string_, 0, Self.totalDigits, Self.offset);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

