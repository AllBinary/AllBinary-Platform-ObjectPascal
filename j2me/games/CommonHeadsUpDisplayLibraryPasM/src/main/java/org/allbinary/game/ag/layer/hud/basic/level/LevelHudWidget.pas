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
// package org.allbinary.game.ag.layer.hud.basic.level
unit LevelHudWidget;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicHud, PaintableInterface, PrimitiveLongUtil;

type
  {AB:TYPES}
  TLevelHudWidget = class(TBasicHud, IPaintableInterface)
  public
    level: Integer;
    maxlevel: Integer;
    levelString: TArray<WideChar>;
    levelNumberCharArray: TArray<WideChar>;
    levelNumberTotalDigits: Integer;
    offset: Integer;
    primitiveLongUtil: TPrimitiveLongUtil;
    procedure InitFields;
    function JavaObject: TObject;
        class function createHud(maxlevel: Integer; location: Integer; direction: Integer): TLevelHudWidget; static;
        constructor Create(maxlevel: Integer; location: Integer; direction: Integer);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure update;
        procedure setLevel(level_: Integer); virtual;
        procedure nextLevel; virtual;
        procedure previousLevel; virtual;
        function isComplete: Boolean; virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
  end;

implementation
uses
  Font, BasicColorFactory, NullUtil;


{AB:CODE}

procedure TLevelHudWidget.InitFields;
begin
  
  
  
  Self.levelNumberCharArray := TNullUtil.getInstance().NULL_CHAR_ARRAY;
  
  
  
end;

function TLevelHudWidget.JavaObject: TObject;
begin
  Result := Self;
end;
    

// throws Exception
class function TLevelHudWidget.createHud(maxlevel: Integer; location: Integer; direction: Integer): TLevelHudWidget;
begin
        Exit(TLevelHudWidget.Create(maxlevel, location, direction));
end;
    

constructor TLevelHudWidget.Create(maxlevel: Integer; location: Integer; direction: Integer);
var
  LEVEL: string;
begin
        inherited Create(location, direction, 2, TBasicColorFactory.getInstance().GREY);
        InitFields;
        Self.primitiveLongUtil := TPrimitiveLongUtil.createPowerOfTen(1000);
        LEVEL := 'Lv ';
        Self.levelString := TJava.ToCharArray(LEVEL);
        Self.maxlevel := maxlevel;
        Self.level := maxlevel;
        Self.update();
        Self.updateMaxHeight := 14;
end;
    

procedure TLevelHudWidget.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.updateMaxWidth := (font_.getSize()) * (4);
        Self.offset := (font_.charsWidth(Self.levelString, 0, System.Length(Self.levelString))) + (font_.getSize());
        inherited updateMeasurement(graphics_);
end;
    

procedure TLevelHudWidget.update;
begin
        Self.levelNumberCharArray := Self.primitiveLongUtil.getCharArray(Self.level);
        Self.levelNumberTotalDigits := Self.primitiveLongUtil.getCurrentTotalDigits();
end;
    

procedure TLevelHudWidget.setLevel(level_: Integer);
begin
        Self.level := level_;
        Self.update();
end;
    

procedure TLevelHudWidget.nextLevel;
begin
        Inc(Self.level);
        Self.update();
end;
    

procedure TLevelHudWidget.previousLevel;
begin
        Dec(Self.level);
        if (Self.level) < (0) then begin
            Self.level := 0;
        end;
        Self.update();
end;
    

function TLevelHudWidget.isComplete: Boolean;
begin
        if (Self.level) <= (Self.maxlevel) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;
    

procedure TLevelHudWidget.paint(graphics_: TGraphics);
begin
        inherited paintDX(graphics_, Self.levelString, 0, System.Length(Self.levelString), Self.levelNumberCharArray, 0, Self.levelNumberTotalDigits, Self.offset);
end;
    

procedure TLevelHudWidget.paintThreed(graphics_: TGraphics);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

