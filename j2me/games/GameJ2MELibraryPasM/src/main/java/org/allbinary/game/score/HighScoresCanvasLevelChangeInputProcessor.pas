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
// package org.allbinary.game.score
unit HighScoresCanvasLevelChangeInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, HighScoresCanvas, DisplayInfoSingleton, MyFontProcessor, UpdateMyFontInterface, HighScoresCanvasInputProcessor;

type
  {AB:TYPES}
  THighScoresCanvasLevelChangeInputProcessor = class(THighScoresCanvasInputProcessor, IUpdateMyFontInterface)
  public
    displayInfoSingleton: TDisplayInfoSingleton;
    INSTRUCTIONS: string;
    myFontProcessor: TMyFontProcessor;
    anchor: Integer;
    fontHeight: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(highScoresCanvas_: THighScoresCanvas);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure open; virtual;
        procedure close; virtual;
        procedure update; virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  Canvas, Font, GameKeyEventHandler, GameKeyEventUtil, Anchor, UpdateMyFontProcessor, BasicArrayList;


{AB:CODE}

procedure THighScoresCanvasLevelChangeInputProcessor.InitFields;
begin
  Self.displayInfoSingleton := TDisplayInfoSingleton.getInstance();
  Self.INSTRUCTIONS := '(Right = Next Track, Left = Previous Track)';
  Self.myFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.anchor := TAnchor.TOP_LEFT;
  Self.fontHeight := 0;
end;

function THighScoresCanvasLevelChangeInputProcessor.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor THighScoresCanvasLevelChangeInputProcessor.Create(highScoresCanvas_: THighScoresCanvas);
begin
        inherited Create(highScoresCanvas_);
        InitFields;
end;
    

procedure THighScoresCanvasLevelChangeInputProcessor.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.fontHeight := font_.getHeight();
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure THighScoresCanvasLevelChangeInputProcessor.open;
begin
        TGameKeyEventHandler.getInstance().addListener(Self);
end;
    

procedure THighScoresCanvasLevelChangeInputProcessor.close;
begin
        TGameKeyEventHandler.getInstance().removeListener(Self);
end;
    

procedure THighScoresCanvasLevelChangeInputProcessor.update;
var
  list: TBasicArrayList;
  size: Integer;
  anyType: TObject;
  key: Integer;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        list := Self.getGameKeyEventList();
        size := list.size();
        for index := 0 to size - 1 do begin
            anyType := TJava.Box(list.objectArray[index]);
            key := TGameKeyEventUtil.getKey(TJava.Box(anyType));
            if (key) = (TCanvas.RIGHT) then begin
                Self.getHighScoresCanvas().getGameInfo().nextGameLevel();
            end else if (key) = (TCanvas.LEFT) then begin
                Self.getHighScoresCanvas().getGameInfo().previousGameLevel();
            end;
            Self.getHighScoresCanvas().executeUpdate();
        end;
        list.clear();
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure THighScoresCanvasLevelChangeInputProcessor.paint(graphics_: TGraphics);
var
  width: Integer;
  topScoresWidth: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        width := Self.displayInfoSingleton.getLastWidth();
        topScoresWidth := (TJava.SignedRightShift(graphics_.getFont().stringWidth(Self.INSTRUCTIONS), 1));
        graphics_.drawString(Self.INSTRUCTIONS, ((TJava.SignedRightShift(width, 1))) - (topScoresWidth), (Self.fontHeight) * (2), Self.anchor);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

