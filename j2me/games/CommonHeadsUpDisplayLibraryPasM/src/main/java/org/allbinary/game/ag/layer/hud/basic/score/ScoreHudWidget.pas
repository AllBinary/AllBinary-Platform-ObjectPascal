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
// package org.allbinary.game.ag.layer.hud.basic.score
unit ScoreHudWidget;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, NumberStringHud, BasicColor;

type
  {AB:TYPES}
  TScoreHudWidget = class(TNumberStringHud)
  public
        class function getInstance(maxscore: Integer; location: Integer; direction: Integer): TScoreHudWidget; static;
        constructor Create(maxscore: Integer; location: Integer; direction: Integer; bufferZone: Integer; basicColor_: TBasicColor);
        procedure updateMeasurement(graphics_: TGraphics); override;
  end;

implementation
uses
  Font, BasicColorFactory;


{AB:CODE}
    

// throws Exception
class function TScoreHudWidget.getInstance(maxscore: Integer; location: Integer; direction: Integer): TScoreHudWidget;
begin
        Exit(TScoreHudWidget.Create(maxscore, location, direction, 2, TBasicColorFactory.getInstance().GREY));
end;
    

constructor TScoreHudWidget.Create(maxscore: Integer; location: Integer; direction: Integer; bufferZone: Integer; basicColor_: TBasicColor);
begin
        inherited Create('Pts ', maxscore, location, direction, bufferZone, basicColor_);
        Self.updateMaxHeight := 14;
end;
    

procedure TScoreHudWidget.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.updateMaxWidth := (font_.getSize()) * (5);
        inherited updateMeasurement(graphics_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

