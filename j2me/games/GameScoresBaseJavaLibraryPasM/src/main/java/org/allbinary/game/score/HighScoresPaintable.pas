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
unit HighScoresPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, ColorChangeListener, DisplayInfoSingleton, MyFontProcessor, UpdateMyFontInterface, Paintable, AllBinaryEventObject, HighScores, EventListenerInterface;

type
  {AB:TYPES}
  THighScoresPaintable = class(TPaintable, IColorChangeListener, IUpdateMyFontInterface, IEventListenerInterface)
  public
    displayInfoSingleton: TDisplayInfoSingleton;
    myFontProcessor: TMyFontProcessor;
    basicColor: TBasicColor;
    highScores: THighScores;
    anchor: Integer;
    charHeight: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
        function getBasicColorP: TBasicColor; virtual;
        procedure setHighScores(highScores_: THighScores); virtual;
  end;

implementation
uses
  NullHighScoresSingletonFactory, HighScore, Font, Anchor, BasicColorFactory, ColorChangeEvent, UpdateMyFontProcessor, BasicArrayList;


{AB:CODE}

procedure THighScoresPaintable.InitFields;
begin
  Self.displayInfoSingleton := TDisplayInfoSingleton.getInstance();
  Self.myFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.basicColor := TBasicColorFactory.getInstance().WHITE;
  Self.highScores := TNullHighScoresSingletonFactory.getInstance();
  Self.anchor := TAnchor.TOP_LEFT;
  
end;

function THighScoresPaintable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor THighScoresPaintable.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure THighScoresPaintable.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.charHeight := font_.getHeight();
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure THighScoresPaintable.onEvent(eventObject: TAllBinaryEventObject);
var
  colorChangeEvent_: TColorChangeEvent;
begin
        colorChangeEvent_ := TColorChangeEvent(TJava.ToObject(eventObject));
        Self.basicColor := colorChangeEvent_.getBasicColorP();
end;
    

procedure THighScoresPaintable.paint(graphics_: TGraphics);
var
  width: Integer;
  height: Integer;
  heading: string;
  topScoresWidth: Integer;
  charHeight: Integer;
  columnTwoHeading: string;
  columnTwoHeadingWidth: Integer;
  index: Integer;
  largestSecondColumnWidth: Integer;
  list: TBasicArrayList;
  size: Integer;
  vectorIndex: Integer;
  highScore_: THighScore;
  nextScoreWidth: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        width := Self.displayInfoSingleton.getLastWidth();
        height := Self.displayInfoSingleton.getLastHeight();
        graphics_.setColor(Self.getBasicColorP().intValue());
        heading := Self.highScores.getHeading();
        topScoresWidth := (TJava.SignedRightShift(graphics_.getFont().stringWidth(heading), 1));
        charHeight := Self.charHeight;
        graphics_.drawString(heading, ((TJava.SignedRightShift(width, 1))) - (topScoresWidth), charHeight, Self.anchor);
        graphics_.drawString(Self.highScores.getColumnOneHeading(), 10, (charHeight) * (3), Self.anchor);
        columnTwoHeading := Self.highScores.getColumnTwoHeading();
        columnTwoHeadingWidth := graphics_.getFont().stringWidth(columnTwoHeading);
        graphics_.drawString(columnTwoHeading, ((width) - (10)) - (columnTwoHeadingWidth), (charHeight) * (3), Self.anchor);
        index := 4;
        largestSecondColumnWidth := columnTwoHeadingWidth;
        list := Self.highScores.getList();
        size := list.size();
        vectorIndex := 0;
        
        while ((vectorIndex) < (size)) and (((charHeight) * (index)) < ((height) - (((charHeight) * (2))))) do begin
            highScore_ := THighScore(TJava.ToObject(list.objectArray[vectorIndex]));
            nextScoreWidth := graphics_.getFont().stringWidth(highScore_.getScoreString());
            if (nextScoreWidth) > (largestSecondColumnWidth) then begin
                largestSecondColumnWidth := nextScoreWidth;
            end;
            Inc(vectorIndex);
        end;
        vectorIndex := 0;
        while ((vectorIndex) < (size)) and (((charHeight) * (index)) < ((height) - (((charHeight) * (2))))) do begin
            highScore_ := THighScore(TJava.ToObject(list.objectArray[vectorIndex]));
            graphics_.drawString(highScore_.getName(), 10, (charHeight) * (index), Self.anchor);
            graphics_.drawString(highScore_.getScoreString(), ((width) - (10)) - (largestSecondColumnWidth), (charHeight) * (index), Self.anchor);
            Inc(index);
            Inc(vectorIndex);
        end;
end;
    

procedure THighScoresPaintable.setBasicColorP(basicColor_: TBasicColor);
begin
        Self.basicColor := basicColor_;
end;
    

function THighScoresPaintable.getBasicColorP: TBasicColor;
begin
        Exit(Self.basicColor);
end;
    

procedure THighScoresPaintable.setHighScores(highScores_: THighScores);
begin
        Self.highScores := highScores_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

