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
// package org.allbinary.game.ag.layer.hud.basic.health
unit HealthHudWidget;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, BasicHud, Health, HealthListenerInterface, PaintableInterface, GameTickTimeDelayHelper, TimeDelayHelper;

type
  {AB:TYPES}
  THealthHudWidget = class(TBasicHud, IPaintableInterface, IHealthListenerInterface)
  public
    healthScale: Integer;
    animationInterface: TAnimation;
    healthInterface: THealth;
    max: Integer;
    xArray: TArray<Integer>;
    gameTickTimeDelayHelper: TGameTickTimeDelayHelper;
    timeDelayHelper: TTimeDelayHelper;
    slowBeatTimeDelayHelper: TTimeDelayHelper;
    mediumBeatTimeDelayHelper: TTimeDelayHelper;
    fastBeatTimeDelayHelper: TTimeDelayHelper;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(animationInterface: TAnimation; healthInterface: THealth; location: Integer; direction: Integer);
        procedure update;
        procedure setX(x: Integer); virtual;
        procedure onHealthChange; virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
  end;

implementation
uses
  BasicColorFactory, GameTickTimeDelayHelperFactory, NoTimeDelayHelper;


{AB:CODE}

procedure THealthHudWidget.InitFields;
begin
  
  
  
  
  
  Self.gameTickTimeDelayHelper := TGameTickTimeDelayHelperFactory.getInstance();
  Self.timeDelayHelper := TNoTimeDelayHelper.SINGLETON;
  Self.slowBeatTimeDelayHelper := TTimeDelayHelper.Create(1280);
  Self.mediumBeatTimeDelayHelper := TTimeDelayHelper.Create(640);
  Self.fastBeatTimeDelayHelper := TTimeDelayHelper.Create(320);
end;

function THealthHudWidget.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor THealthHudWidget.Create(animationInterface: TAnimation; healthInterface: THealth; location: Integer; direction: Integer);
begin
        inherited Create(location, direction, 2, TBasicColorFactory.getInstance().WHITE);
        InitFields;
        Self.animationInterface := animationInterface;
        Self.healthInterface := healthInterface;
        Self.healthInterface.addListener(Self);
        Self.healthScale := ((TJava.Divide(Self.healthInterface.getMaxHealth(), 6))) + (1);
        Self.onHealthChange();
        Self.updateMaxWidth := (healthInterface.getMaxHealth()) * (16);
        Self.updateMaxHeight := 16;
        Self.xArray := TJava.NewArray<Integer>(30);
        Self.update();
end;
    

procedure THealthHudWidget.update;
var
  index: Integer;
begin
        if (Self.xArray) <> (nil) then begin
            for index := 0 to System.Length(Self.xArray) - 1 do begin
                Self.xArray[index] := (Self.getX()) + (((index) * (16)));
            end;
        end;
end;
    

procedure THealthHudWidget.setX(x: Integer);
begin
        inherited setX(x);
        Self.update();
end;
    

procedure THealthHudWidget.onHealthChange;
begin
        Self.max := (TJava.Divide(Self.healthInterface.getHealth(), Self.healthScale));
        Self.timeDelayHelper := TNoTimeDelayHelper.SINGLETON;
        if ((Self.max) <= (1)) and (Self.healthInterface.isAlive()) then begin
            Self.max := 1;
            if ((Self.healthScale) - (Self.healthInterface.getHealth())) > ((((Self.healthScale) * (2))) div (3)) then begin
                Self.timeDelayHelper := Self.slowBeatTimeDelayHelper;
            end else if ((Self.healthScale) - (Self.healthInterface.getHealth())) > ((Self.healthScale) div (3)) then begin
                Self.timeDelayHelper := Self.mediumBeatTimeDelayHelper;
            end else begin
                Self.timeDelayHelper := Self.fastBeatTimeDelayHelper;
            end;
        end;
end;
    

procedure THealthHudWidget.paint(graphics_: TGraphics);
var
  index: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        for index := 0 to Self.max - 1 do begin
            if Self.timeDelayHelper.isTime(Self.gameTickTimeDelayHelper.startTime) then begin
                Self.animationInterface.paintXY(graphics_, Self.xArray[index], Self.getY());
            end;
        end;
end;
    

procedure THealthHudWidget.paintThreed(graphics_: TGraphics);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

