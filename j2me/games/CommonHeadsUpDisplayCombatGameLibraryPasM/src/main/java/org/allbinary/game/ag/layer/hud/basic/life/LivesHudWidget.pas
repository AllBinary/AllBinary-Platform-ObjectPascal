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
// package org.allbinary.game.ag.layer.hud.basic.life
unit LivesHudWidget;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, Life, BasicHud, DisplayChangeEvent, PaintableInterface;

type
  {AB:TYPES}
  TLivesHudWidget = class(TBasicHud, IPaintableInterface)
  public
    lifeInterface: TLife;
    xArray: TArray<Integer>;
    animationInterface: TAnimation;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(animationInterface: TAnimation; lifeInterface: TLife; location: Integer; direction: Integer);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure onDisplayChangeEvent(displayChangeEvent_: TDisplayChangeEvent); virtual;
        procedure setX(x: Integer); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
        function getLifeInterface: TLife; virtual;
  end;

implementation
uses
  BasicColorFactory;


{AB:CODE}

procedure TLivesHudWidget.InitFields;
begin
  
  
  
end;

function TLivesHudWidget.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TLivesHudWidget.Create(animationInterface: TAnimation; lifeInterface: TLife; location: Integer; direction: Integer);
var
  size: Integer;
begin
        inherited Create(location, direction, 2, TBasicColorFactory.getInstance().WHITE);
        InitFields;
        Self.lifeInterface := lifeInterface;
        size := Integer(Trunc(Self.getLifeInterface().getMaxlives()));
        Self.xArray := TJava.NewArray<Integer>(size);
        Self.animationInterface := animationInterface;
        Self.updateMaxWidth := (Self.lifeInterface.getMaxlives()) * (16);
        Self.updateMaxHeight := 16;
end;
    

procedure TLivesHudWidget.updateMeasurement(graphics_: TGraphics);
var
  maxLives: Integer;
  index: Integer;
begin
        inherited updateMeasurement(graphics_);
        maxLives := Integer(Trunc(Self.getLifeInterface().getMaxlives()));
        for index := 0 to maxLives - 1 do begin
            Self.xArray[index] := (Self.getX()) + (((index) * (16)));
        end;
end;
    

procedure TLivesHudWidget.onDisplayChangeEvent(displayChangeEvent_: TDisplayChangeEvent);
begin
        inherited onDisplayChangeEvent(displayChangeEvent_);
        Self.myFontProcessor := Self.updateMyFontProcessor;
end;
    

procedure TLivesHudWidget.setX(x: Integer);
begin
        inherited setX(x);
        Self.myFontProcessor := Self.updateMyFontProcessor;
end;
    

procedure TLivesHudWidget.paint(graphics_: TGraphics);
var
  index: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        index := Integer(Trunc(Self.getLifeInterface().get()));
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterface.paintXY(graphics_, Self.xArray[index], Self.getY());
        end;
end;
    

procedure TLivesHudWidget.paintThreed(graphics_: TGraphics);
begin
end;
    

function TLivesHudWidget.getLifeInterface: TLife;
begin
        Exit(Self.lifeInterface);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

