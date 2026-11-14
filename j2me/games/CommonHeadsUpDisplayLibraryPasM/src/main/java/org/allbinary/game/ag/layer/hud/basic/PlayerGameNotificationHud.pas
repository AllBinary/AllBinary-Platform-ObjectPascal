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
// package org.allbinary.game.ag.layer.hud.basic
unit PlayerGameNotificationHud;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Processor, GameNotification, GameNotificationHud, CustomGPoint, GPoint, BasicColor, DisplayInfoSingleton, UpdateMyFontInterface, GameTickTimeDelayHelper, TimeDelayHelper, CircularIndexUtil;

type
  {AB:TYPES}
  TPlayerGameNotificationHud = class(TGameNotificationHud, IUpdateMyFontInterface)
  public
    gameTickTimeDelayHelper: TGameTickTimeDelayHelper;
    EMPTY_STRING: string;
    displayInfo: TDisplayInfoSingleton;
    timeDelayHelper: TTimeDelayHelper;
    circularIndexUtil: TCircularIndexUtil;
    gameNotification: TGameNotification;
    permanentGameNotification: TGameNotification;
    setAndRemoveProcessor: TProcessor;
    nextUnremoveableProcessor: TProcessor;
    processor: TProcessor;
    PERMANENT_GAME_NOTIFICATION: string;
    lastString: string;
    string_: string;
    point: TCustomGPoint;
    width: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(location: Integer; direction: Integer; bufferZone: Integer; basicColor_: TBasicColor);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        function getPoint(x: Integer; y: Integer): TGPoint; virtual;
        procedure add(string_: string; seconds: Integer; basicColor_: TBasicColor; permanent: Boolean); virtual;
        procedure processTick; virtual;
        procedure setAndRemove;
        procedure setAndRemoveProcess; virtual;
        procedure setNextUnremoveable;
        procedure setNextUnremoveableProcess; virtual;
        procedure clear; virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  SetAndRemoveProcessor, NextUnremoveableProcessor, Font, GameAdStateFactory, GameAdState, GameNotificationEventHandler, LogUtil, StringMaker, StringUtil, CommonStrings, GameTickTimeDelayHelperFactory;


{AB:CODE}

procedure TPlayerGameNotificationHud.InitFields;
begin
  Self.gameTickTimeDelayHelper := TGameTickTimeDelayHelperFactory.getInstance();
  Self.EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
  Self.displayInfo := TDisplayInfoSingleton.getInstance();
  Self.timeDelayHelper := TTimeDelayHelper.Create(0);
  
  Self.gameNotification := TGameNotification.Create();
  Self.permanentGameNotification := TGameNotification.Create();
  Self.setAndRemoveProcessor := TSetAndRemoveProcessor.Create(Self);
  Self.nextUnremoveableProcessor := TNextUnremoveableProcessor.Create(Self);
  Self.processor := TProcessor.getInstance();
  Self.PERMANENT_GAME_NOTIFICATION := 'Permanent Game Notification: ';
  Self.lastString := TStringUtil.getInstance().EMPTY_STRING;
  Self.string_ := Self.EMPTY_STRING;
  Self.point := TCustomGPoint.NULL_CUSTOM_POINT;
  
end;

function TPlayerGameNotificationHud.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPlayerGameNotificationHud.Create(location: Integer; direction: Integer; bufferZone: Integer; basicColor_: TBasicColor);
var
  gameNotificationEventHandler_: TGameNotificationEventHandler;
begin
        inherited Create(location, direction, bufferZone, basicColor_);
        InitFields;
        Self.circularIndexUtil := TCircularIndexUtil.createInstance(0);
        gameNotificationEventHandler_ := TGameNotificationEventHandler.getInstance();
        gameNotificationEventHandler_.removeAllListeners();
        gameNotificationEventHandler_.addListenerInterface(Self);
end;
    

procedure TPlayerGameNotificationHud.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
        try
            inherited updateMeasurement(graphics_);
            font_ := graphics_.getFont();
            Self.width := font_.stringWidth(Self.string_);
            Self.processor.process();
            Self.processor := TProcessor.getInstance();
        except
            on e: SysUtils.Exception do begin
            logUtil_ := TLogUtil.getInstance();
            commonStrings_ := TCommonStrings.getInstance();
            logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.UPDATE, TJava.Box(e));
            end;
        end;
end;
    

function TPlayerGameNotificationHud.getPoint(x: Integer; y: Integer): TGPoint;
begin
        Self.point := TCustomGPoint.getInstance3(0, 0);
        Self.point.setX(x);
        Self.point.setY(y);
        Exit(Self.point);
end;
    

procedure TPlayerGameNotificationHud.add(string_: string; seconds: Integer; basicColor_: TBasicColor; permanent: Boolean);
begin
        if (permanent) then begin
            if (Self.lastString) <> (string_) then begin
                Self.lastString := string_;
                Self.logUtil.putF(TStringMaker.Create().append(Self.PERMANENT_GAME_NOTIFICATION).append(string_).toString(), TJava.Box(Self), Self.commonStrings.ADD);
            end;
            Self.permanentGameNotification.add(string_, seconds, basicColor_);
            Self.circularIndexUtil.setSize(Self.permanentGameNotification.getSize());
        end else begin
            Self.gameNotification.add(string_, seconds, basicColor_);
        end;
end;
    

// throws Exception
procedure TPlayerGameNotificationHud.processTick;
var
  gameAdState_: TGameAdState;
begin
        if Self.timeDelayHelper.isTime(Self.gameTickTimeDelayHelper.startTime) then begin
            gameAdState_ := TGameAdStateFactory.getInstance().getCurrentInstance();
            if gameAdState_.isShowingAtLocation(Self.getLocation()) then begin
                Self.offsetY := -54;
            end else begin
                Self.offsetY := 0;
            end;
            if (Self.gameNotification.getSize()) > (0) then begin
                Self.setAndRemove();
            end else if (Self.permanentGameNotification.getSize()) > (0) then begin
                Self.setNextUnremoveable();
            end else begin
                Self.string_ := Self.EMPTY_STRING;
            end;
        end;
end;
    

// throws Exception
procedure TPlayerGameNotificationHud.setAndRemove;
begin
        Self.string_ := TJava.UnboxString(TJava.ToObject(Self.gameNotification.stringList.removeAt(0)));
        Self.processor := Self.setAndRemoveProcessor;
end;
    

// throws Exception
procedure TPlayerGameNotificationHud.setAndRemoveProcess;
var
  time: Integer;
  iTime: Integer;
begin
        Self.setX(TJava.SignedRightShift(((Self.displayInfo.getLastWidth()) - (Self.width)), 1));
        Self.point.setX(Self.getX());
        Self.point.setY(Self.getY());
        time := Integer(Self.gameNotification.timeList.removeAt(0));
        iTime := ((time)) * (1000);
        if (iTime) = (0) then begin
            iTime := 500;
        end;
        Self.timeDelayHelper.delay := iTime;
        Self.setBasicColorP(TBasicColor(TJava.ToObject(Self.gameNotification.colorList.removeAt(0))));
end;
    

// throws Exception
procedure TPlayerGameNotificationHud.setNextUnremoveable;
var
  index: Integer;
begin
        index := Self.circularIndexUtil.getIndex();
        Self.string_ := TJava.UnboxString(TJava.ToObject(Self.permanentGameNotification.stringList.objectArray[index]));
        Self.processor := Self.nextUnremoveableProcessor;
end;
    

// throws Exception
procedure TPlayerGameNotificationHud.setNextUnremoveableProcess;
var
  index: Integer;
  time: Integer;
begin
        index := Self.circularIndexUtil.getIndex();
        Self.setX(TJava.SignedRightShift(((Self.displayInfo.getLastWidth()) - (Self.width)), 1));
        Self.point.setX(Self.getX());
        Self.point.setY(Self.getY());
        time := Integer(Self.permanentGameNotification.timeList.objectArray[index]);
        Self.timeDelayHelper.delay := ((time)) * (1000);
        Self.setBasicColorP(TBasicColor(TJava.ToObject(Self.permanentGameNotification.colorList.objectArray[index])));
        Self.circularIndexUtil.next();
end;
    

procedure TPlayerGameNotificationHud.clear;
begin
        Self.gameNotification.clear();
        Self.permanentGameNotification.clear();
end;
    

procedure TPlayerGameNotificationHud.paint(graphics_: TGraphics);
begin
        Self.myFontProcessor.process(graphics_);
        inherited paintString(graphics_, Self.string_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

