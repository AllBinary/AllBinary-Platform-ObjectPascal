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
// package org.allbinary.game.paint
unit PressStartMenuPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, DisplayInfoSingleton, MyFontProcessor, UpdateMyFontInterface, Paintable, TimeDelayHelper;

type
  {AB:TYPES}
  TPressStartMenuPaintable = class(TPaintable, IUpdateMyFontInterface)
  public
    displayInfo: TDisplayInfoSingleton;
    PRESS_START: string;
    KEY_START: string;
    MENU_START: string;
    myFontProcessor: TMyFontProcessor;
    startString: string;
    timeDelayHelper: TTimeDelayHelper;
    flash: Boolean;
    anchor: Integer;
    beginWidth: Integer;
    line: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure setFlash(flash: Boolean);
        function isFlash: Boolean;
  end;

implementation
uses
  Font, AppletUtil, Anchor, UpdateMyFontProcessor, TouchScreenFactory, StringUtil;


{AB:CODE}

procedure TPressStartMenuPaintable.InitFields;
begin
  Self.displayInfo := TDisplayInfoSingleton.getInstance();
  Self.PRESS_START := 'Press Screen To Start';
  Self.KEY_START := 'Press or Click F2 To Begin';
  Self.MENU_START := 'Press Start From The Menu To Begin';
  Self.myFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.startString := TStringUtil.getInstance().EMPTY_STRING;
  Self.timeDelayHelper := TTimeDelayHelper.Create(1100);
  
  Self.anchor := TAnchor.TOP_LEFT;
  
  
end;

function TPressStartMenuPaintable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPressStartMenuPaintable.Create;
begin
    inherited Create;
    InitFields;
        if TTouchScreenFactory.getInstance().isTouch() then begin
            Self.startString := Self.PRESS_START;
        end else if TAppletUtil.isAppletLoader(TJava.Box(Self)) then begin
            Self.startString := Self.KEY_START;
        end else begin
            Self.startString := Self.MENU_START;
        end;
end;
    

procedure TPressStartMenuPaintable.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.beginWidth := (TJava.SignedRightShift(graphics_.getFont().stringWidth(Self.startString), 1));
        Self.line := (((4) * (TMyFontProcessor.defaultCharWidth(font_)))) + ((TJava.SignedRightShift(font_.getHeight(), 1)));
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TPressStartMenuPaintable.paint(graphics_: TGraphics);
begin
        if Self.timeDelayHelper.isTimeTNT() then begin
            if Self.isFlash() then begin
                Self.setFlash(False);
            end else begin
                Self.setFlash(True);
            end;
        end;
        if Self.isFlash() then begin
            Self.myFontProcessor.process(graphics_);
            graphics_.drawString(Self.startString, (Self.displayInfo.getLastHalfWidth()) - (Self.beginWidth), (Self.displayInfo.getLastHeight()) - (Self.line), Self.anchor);
        end;
end;
    

procedure TPressStartMenuPaintable.setFlash(flash: Boolean);
begin
        Self.flash := flash;
end;
    

function TPressStartMenuPaintable.isFlash: Boolean;
begin
        Exit(Self.flash);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

