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
// package org.allbinary.graphics.displayable
unit DisplayInfoSingleton;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Displayable, DisplayChangeEvent, LogUtil, StringMaker, CommonLabels, CommonSeps, CommonStrings, BasicArrayList, BaseScalable, ScalableListener;

type
  {AB:TYPES}
  TDisplayInfoSingleton = class(TObject)
  public
    logUtil: TLogUtil;
    commonLabels: TCommonLabels;
    commonSeps: TCommonSeps;
    commonStrings: TCommonStrings;
    ORIENTATION: string;
    ADJUSTING_FOR_SCALING_IN_PORTRAIT: string;
    ADJUSTING_FOR_SCALING_IN_LANDSCAPE: string;
    last: TArray<Integer>;
    lastHalf: TArray<Integer>;
    full: TArray<Integer>;
    top: Integer;
    left: Integer;
    xOffset: Integer;
    yOffset: Integer;
    scaleLargestTo: Single;
    WIDTH: Integer;
    HEIGHT: Integer;
    CUSTOM_WIDTH: Integer;
    CUSTOM_HEIGHT: Integer;
    scalableListener: TBaseScalable;
    displayRatio: Single;
    ratio: Single;
    SET_LAST_SIZE_METHOD_NAME: string;
    FULL_WIDTH: string;
    FULL_HEIGHT: string;
    LAST_WIDTH: string;
    LAST_HEIGHT: string;
    PORTRAIT: string;
    LANDSCAPE: string;
    displayChangeEvent: TDisplayChangeEvent;
    FIRE_METHOD_NAME: string;
    REASON: string;
    UPDATE_FROM_ORIENTATION_CHANGE: string;
    list: TBasicArrayList;
    DISPLAY_INFO: string;
    FULL_: string;
    LAST_: string;
    LAST_HALF: string;
    class var SINGLETON: TDisplayInfoSingleton;
    procedure InitFields;
        class function getInstance: TDisplayInfoSingleton; static;
        constructor Create;
        function getLastHalf: TArray<Integer>; virtual;
        function getLast: TArray<Integer>; virtual;
        function getFull: TArray<Integer>; virtual;
        function getScaleLargestTo: Single; virtual;
        procedure setScaleLargestTo(scaleLargestTo: Integer); virtual;
        procedure setLastSize(aLastWidth: Integer; aLastHeight: Integer; reason: string); virtual;
        procedure setLastSizeForce(aLastWidth: Integer; aLastHeight: Integer; reason: string);
        function isPortraitWH(lastWidth: Integer; lastHeight: Integer): Boolean; virtual;
        function isPortrait: Boolean; virtual;
        procedure add(reason: string); virtual;
        procedure process; virtual;
        procedure processForced; virtual;
        procedure update(displayable_: TDisplayable; reason: string); virtual;
        function toString: string; virtual;
        function toStringAppend(stringBuffer: TStringMaker): string; virtual;
        function getTop: Integer; virtual;
        function getLeft: Integer; virtual;
        function getLastWidth: Integer; virtual;
        function getLastHeight: Integer; virtual;
        function getLastHalfWidth: Integer; virtual;
        function getLastHalfHeight: Integer; virtual;
        function getCustomLastWidth: Integer; virtual;
        function getCustomLastHeight: Integer; virtual;
        function getRawLastWidth: Integer; virtual;
        function getRawLastHeight: Integer; virtual;
        procedure setCustom(width: Integer; height: Integer); virtual;
        procedure setScalableListener(scalableListener_: TBaseScalable); virtual;
        function getScalableListener: IScalableListener; virtual;
        function getRatio: Single; virtual;
        function getDisplayRatio: Single; virtual;
        procedure setOffset(left: Integer; top: Integer); virtual;
        function getxOffset: Integer; virtual;
        function getyOffset: Integer; virtual;
  end;

implementation
uses
  AndroidUtil, Features, DisplayChangeEventHandler, LastDisplayChangeEventHandler, OpenGLFeatureFactory, SWTJOGLProcessor, PreLogUtil, GenericOperatingSystem, OperatingSystemFactory, BasicArrayListD;


{AB:CODE}

procedure TDisplayInfoSingleton.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonLabels := TCommonLabels.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.ORIENTATION := 'ORIENTATION';
  Self.ADJUSTING_FOR_SCALING_IN_PORTRAIT := 'Adjusting for Scaling in portrait display ratio: ';
  Self.ADJUSTING_FOR_SCALING_IN_LANDSCAPE := 'Adjusting for Scaling in landscape display ratio: ';
  Self.last := TJava.NewArray<Integer>(4);
  Self.lastHalf := TJava.NewArray<Integer>(4);
  Self.full := TJava.NewArray<Integer>(4);
  
  
  
  
  
  Self.WIDTH := 0;
  Self.HEIGHT := 1;
  Self.CUSTOM_WIDTH := 2;
  Self.CUSTOM_HEIGHT := 3;
  Self.scalableListener := TBaseScalable.Create();
  
  Self.ratio := 1.0;
  Self.SET_LAST_SIZE_METHOD_NAME := 'setLastSize';
  Self.FULL_WIDTH := ' FullWidth: ';
  Self.FULL_HEIGHT := ' FullHeight: ';
  Self.LAST_WIDTH := 'LastWidth: ';
  Self.LAST_HEIGHT := ' LastHeight: ';
  Self.PORTRAIT := 'Portrait';
  Self.LANDSCAPE := 'Landscape';
  Self.displayChangeEvent := TDisplayChangeEvent.Create(TJava.Box(Self));
  Self.FIRE_METHOD_NAME := 'fire';
  Self.REASON := 'reason: ';
  Self.UPDATE_FROM_ORIENTATION_CHANGE := 'Updating from Orientation Change ';
  Self.list := TBasicArrayListD.Create();
  Self.DISPLAY_INFO := 'Display Info: ';
  Self.FULL_ := 'full';
  Self.LAST_ := 'last';
  Self.LAST_HALF := 'lastHalf';
end;
    

class function TDisplayInfoSingleton.getInstance: TDisplayInfoSingleton;
begin
        Exit(TDisplayInfoSingleton.SINGLETON);
end;
    

constructor TDisplayInfoSingleton.Create;
var
  size: Integer;
  index: Integer;
begin
    inherited Create;
    InitFields;
        size := System.Length(Self.last);
        for index := 0 to size - 1 do begin
            Self.last[index] := 0;
            Self.lastHalf[index] := 0;
            Self.full[index] := 0;
        end;
        if TAndroidUtil.isAndroid() then begin
            Self.scaleLargestTo := 640.0;
        end else begin
            Self.scaleLargestTo := 1080.0;
        end;
end;
    

function TDisplayInfoSingleton.getLastHalf: TArray<Integer>;
begin
        Exit(Self.lastHalf);
end;
    

function TDisplayInfoSingleton.getLast: TArray<Integer>;
begin
        Exit(Self.last);
end;
    

function TDisplayInfoSingleton.getFull: TArray<Integer>;
begin
        Exit(Self.full);
end;
    

function TDisplayInfoSingleton.getScaleLargestTo: Single;
begin
        Exit(Self.scaleLargestTo);
end;
    

procedure TDisplayInfoSingleton.setScaleLargestTo(scaleLargestTo: Integer);
begin
        Self.scaleLargestTo := scaleLargestTo;
end;
    

procedure TDisplayInfoSingleton.setLastSize(aLastWidth: Integer; aLastHeight: Integer; reason: string);
begin
        if ((Self.full[Self.WIDTH]) <> (aLastWidth)) or ((Self.full[Self.HEIGHT]) <> (aLastHeight)) then begin
            Self.setLastSizeForce(aLastWidth, aLastHeight, reason);
        end;
end;
    

procedure TDisplayInfoSingleton.setLastSizeForce(aLastWidth: Integer; aLastHeight: Integer; reason: string);
var
  stringMaker_: TStringMaker;
  aFullWidth: Integer;
  aFullHeight: Integer;
  operatingSystemInterface: TGenericOperatingSystem;
begin
        stringMaker_ := TStringMaker.Create();
        Self.logUtil.putF(stringMaker_.append(TCommonLabels.getInstance().START_LABEL).append(reason).toString(), TJava.Box(Self), Self.SET_LAST_SIZE_METHOD_NAME);
        aFullWidth := aLastWidth;
        aFullHeight := aLastHeight;
        stringMaker_.delete_(0, stringMaker_.length());
        Self.logUtil.putF(stringMaker_.append(Self.FULL_WIDTH).appendint(aFullWidth).append(Self.FULL_HEIGHT).appendint(aFullHeight).append(Self.toString()).toString(), TJava.Box(Self), Self.SET_LAST_SIZE_METHOD_NAME);
        operatingSystemInterface := TOperatingSystemFactory.getInstance().getOperatingSystemInstance();
        if operatingSystemInterface.isOverScan() then begin
            aLastWidth := TJava.Divide((aLastWidth) * (operatingSystemInterface.getOverScanXPercent()), 100);
            aLastHeight := TJava.Divide((aLastHeight) * (operatingSystemInterface.getOverScanYPercent()), 100);
        end;
        if operatingSystemInterface.isScalable() then begin
            if Self.isPortraitWH(aLastWidth, aLastHeight) then begin
                if (aLastHeight) > (Self.scaleLargestTo) then begin
                    Self.displayRatio := (Self.scaleLargestTo) / (aLastHeight);
                    Self.ratio := (aLastHeight) / (Self.scaleLargestTo);
                    stringMaker_.delete_(0, stringMaker_.length());
                    Self.logUtil.putF(stringMaker_.append(Self.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(Self.displayRatio).toString(), TJava.Box(Self), Self.SET_LAST_SIZE_METHOD_NAME);
                    aLastWidth := Integer(Trunc(((aLastWidth) * (Self.displayRatio))));
                    aLastHeight := Integer(Trunc(((aLastHeight) * (Self.displayRatio))));
                    Self.scalableListener.scale(Self.ratio);
                end else begin
                    Self.ratio := 1.0;
                    Self.scalableListener.scale(Self.ratio);
                end;
            end else begin
                if (aLastWidth) > (Self.scaleLargestTo) then begin
                    Self.displayRatio := (Self.scaleLargestTo) / (aLastWidth);
                    Self.ratio := (aLastWidth) / (Self.scaleLargestTo);
                    stringMaker_.delete_(0, stringMaker_.length());
                    Self.logUtil.putF(stringMaker_.append(Self.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(Self.displayRatio).toString(), TJava.Box(Self), Self.SET_LAST_SIZE_METHOD_NAME);
                    aLastWidth := Integer(Trunc(((aLastWidth) * (Self.displayRatio))));
                    aLastHeight := Integer(Trunc(((aLastHeight) * (Self.displayRatio))));
                    Self.scalableListener.scale(Self.ratio);
                end else begin
                    Self.ratio := 1.0;
                    Self.scalableListener.scale(Self.ratio);
                end;
            end;
        end;
        stringMaker_.delete_(0, stringMaker_.length());
        Self.logUtil.putF(stringMaker_.append(Self.LAST_WIDTH).appendint(aLastWidth).append(Self.LAST_HEIGHT).appendint(aLastHeight).toString(), TJava.Box(Self), Self.SET_LAST_SIZE_METHOD_NAME);
        Self.xOffset := (aFullWidth) - (aLastWidth);
        Self.yOffset := (aFullHeight) - (aLastHeight);
        Self.left := Self.scalableListener.getLeft(Self.xOffset);
        Self.top := Self.scalableListener.getTop(Self.yOffset);
        Self.full[Self.WIDTH] := aFullWidth;
        Self.full[Self.HEIGHT] := aFullHeight;
        Self.last[Self.WIDTH] := aLastWidth;
        Self.lastHalf[Self.WIDTH] := (TJava.SignedRightShift(Self.last[Self.WIDTH], 1));
        Self.last[Self.HEIGHT] := aLastHeight;
        Self.lastHalf[Self.HEIGHT] := (TJava.SignedRightShift(Self.last[Self.HEIGHT], 1));
        TSWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, Self.ratio);
        Self.add(Self.SET_LAST_SIZE_METHOD_NAME);
end;
    

function TDisplayInfoSingleton.isPortraitWH(lastWidth: Integer; lastHeight: Integer): Boolean;
begin
        if (lastHeight) > (lastWidth) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TDisplayInfoSingleton.isPortrait: Boolean;
begin
        Exit(Self.isPortraitWH(Self.last[Self.WIDTH], Self.last[Self.HEIGHT]));
end;
    

procedure TDisplayInfoSingleton.add(reason: string);
var
  stringMaker_: TStringMaker;
begin
        stringMaker_ := TStringMaker.Create();
        Self.logUtil.putF(stringMaker_.append(Self.REASON).append(reason).toString(), TJava.Box(Self), Self.FIRE_METHOD_NAME);
        stringMaker_.delete_(0, stringMaker_.length());
        Self.logUtil.putF(Self.toStringAppend(stringMaker_), TJava.Box(Self), Self.FIRE_METHOD_NAME);
        Self.list.add(TJava.Box(reason));
end;
    

procedure TDisplayInfoSingleton.process;
begin
        try
            if (Self.list.size()) > (0) then begin
                Self.processForced();
            end;
            Self.list.clear();
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.FIRE_METHOD_NAME, TJava.Box(e));
            end;
        end;
end;
    

procedure TDisplayInfoSingleton.processForced;
var
  swtJOGLProcessor_: TSWTJOGLProcessor;
begin
        try
            swtJOGLProcessor_ := TSWTJOGLProcessor.getInstance();
            swtJOGLProcessor_.clear();
            TDisplayChangeEventHandler.getInstance().fireEvent(Self.displayChangeEvent);
            TLastDisplayChangeEventHandler.getInstance().fireEvent(Self.displayChangeEvent);
            swtJOGLProcessor_.onSurfaceChanged();
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.FIRE_METHOD_NAME, TJava.Box(e));
            end;
        end;
end;
    

procedure TDisplayInfoSingleton.update(displayable_: TDisplayable; reason: string);
var
  aLastWidth: Integer;
  aLastHeight: Integer;
  aFullWidth: Integer;
  aFullHeight: Integer;
  stringMaker_: TStringMaker;
  features_: TFeatures;
  openGLFeatureFactory_: TOpenGLFeatureFactory;
  operatingSystemInterface: TGenericOperatingSystem;
begin
        aLastWidth := displayable_.getWidth();
        aLastHeight := displayable_.getHeight();
        aFullWidth := aLastWidth;
        aFullHeight := aLastHeight;
        stringMaker_ := TStringMaker.Create();
        Self.logUtil.putF(stringMaker_.append(TCommonLabels.getInstance().START_LABEL).append(reason).append(Self.LAST_WIDTH).appendint(aLastWidth).append(Self.LAST_HEIGHT).appendint(aLastHeight).append(Self.commonSeps.SPACE).append(Self.toString()).toString(), TJava.Box(Self), Self.commonStrings.UPDATE);
        if ((aLastWidth) > (0)) and ((aLastHeight) > (0)) then begin
            features_ := TFeatures.getInstance();
            openGLFeatureFactory_ := TOpenGLFeatureFactory.getInstance();
            if ((not (features_.isDefault(openGLFeatureFactory_.OPENGL))) or ((Self.last[Self.WIDTH]) <> (aLastWidth))) or ((Self.last[Self.HEIGHT]) <> (aLastHeight)) then begin
                stringMaker_.delete_(0, stringMaker_.length());
                Self.logUtil.putF(stringMaker_.append(Self.UPDATE_FROM_ORIENTATION_CHANGE).toString(), TJava.Box(Self), Self.commonStrings.UPDATE);
                operatingSystemInterface := TOperatingSystemFactory.getInstance().getOperatingSystemInstance();
                if operatingSystemInterface.isOverScan() then begin
                    aLastWidth := TJava.Divide((aLastWidth) * (operatingSystemInterface.getOverScanXPercent()), 100);
                    aLastHeight := TJava.Divide((aLastHeight) * (operatingSystemInterface.getOverScanYPercent()), 100);
                end;
                if operatingSystemInterface.isScalable() then begin
                    if Self.isPortraitWH(aLastWidth, aLastHeight) then begin
                        if (aLastHeight) > (Self.scaleLargestTo) then begin
                            Self.displayRatio := (Self.scaleLargestTo) / (aLastHeight);
                            Self.ratio := (aLastHeight) / (Self.scaleLargestTo);
                            stringMaker_.delete_(0, stringMaker_.length());
                            Self.logUtil.putF(stringMaker_.append(Self.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(Self.displayRatio).toString(), TJava.Box(Self), Self.commonStrings.UPDATE);
                            aLastWidth := Integer(Trunc(((aLastWidth) * (Self.displayRatio))));
                            aLastHeight := Integer(Trunc(((aLastHeight) * (Self.displayRatio))));
                            Self.scalableListener.scale(Self.ratio);
                        end else begin
                            Self.ratio := 1.0;
                            Self.scalableListener.scale(Self.ratio);
                        end;
                    end else begin
                        if (aLastWidth) > (Self.scaleLargestTo) then begin
                            Self.displayRatio := (Self.scaleLargestTo) / (aLastWidth);
                            Self.ratio := (aLastWidth) / (Self.scaleLargestTo);
                            stringMaker_.delete_(0, stringMaker_.length());
                            Self.logUtil.putF(stringMaker_.append(Self.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(Self.displayRatio).toString(), TJava.Box(Self), Self.commonStrings.UPDATE);
                            aLastWidth := Integer(Trunc(((aLastWidth) * (Self.displayRatio))));
                            aLastHeight := Integer(Trunc(((aLastHeight) * (Self.displayRatio))));
                            Self.scalableListener.scale(Self.ratio);
                        end else begin
                            Self.ratio := 1.0;
                            Self.scalableListener.scale(Self.ratio);
                        end;
                    end;
                end;
                stringMaker_.delete_(0, stringMaker_.length());
                Self.logUtil.putF(stringMaker_.append(Self.UPDATE_FROM_ORIENTATION_CHANGE).append(Self.LAST_WIDTH).appendint(aLastWidth).append(Self.LAST_HEIGHT).appendint(aLastHeight).toString(), TJava.Box(Self), Self.commonStrings.UPDATE);
                Self.xOffset := (aFullWidth) - (aLastWidth);
                Self.yOffset := (aFullHeight) - (aLastHeight);
                Self.left := Self.scalableListener.getLeft(Self.xOffset);
                Self.top := Self.scalableListener.getTop(Self.yOffset);
                Self.full[Self.WIDTH] := aFullWidth;
                Self.full[Self.HEIGHT] := aFullHeight;
                Self.last[Self.WIDTH] := aLastWidth;
                Self.lastHalf[Self.WIDTH] := (TJava.SignedRightShift(Self.last[Self.WIDTH], 1));
                Self.last[Self.HEIGHT] := aLastHeight;
                Self.lastHalf[Self.HEIGHT] := (TJava.SignedRightShift(Self.last[Self.HEIGHT], 1));
                TSWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, Self.ratio);
                Self.add(Self.commonStrings.UPDATE);
            end;
        end;
end;
    

function TDisplayInfoSingleton.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        Exit(Self.toStringAppend(stringBuffer));
end;
    

function TDisplayInfoSingleton.toStringAppend(stringBuffer: TStringMaker): string;
begin
        stringBuffer.append(Self.DISPLAY_INFO);
        stringBuffer.append(Self.FULL_);
        stringBuffer.append(Self.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(Self.full[Self.WIDTH]);
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(Self.FULL_);
        stringBuffer.append(Self.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(Self.full[Self.HEIGHT]);
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(Self.LAST_);
        stringBuffer.append(Self.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(Self.last[Self.WIDTH]);
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(Self.LAST_);
        stringBuffer.append(Self.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(Self.last[Self.HEIGHT]);
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(Self.LAST_HALF);
        stringBuffer.append(Self.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(Self.lastHalf[Self.WIDTH]);
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(Self.LAST_HALF);
        stringBuffer.append(Self.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(Self.lastHalf[Self.HEIGHT]);
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(TJava.IfThen<Variant>(Self.isPortrait(), Self.PORTRAIT, Self.LANDSCAPE));
        Exit(stringBuffer.toString());
end;
    

function TDisplayInfoSingleton.getTop: Integer;
begin
        Exit(Self.top);
end;
    

function TDisplayInfoSingleton.getLeft: Integer;
begin
        Exit(Self.left);
end;
    

function TDisplayInfoSingleton.getLastWidth: Integer;
begin
        Exit(Self.last[Self.WIDTH]);
end;
    

function TDisplayInfoSingleton.getLastHeight: Integer;
begin
        Exit(Self.last[Self.HEIGHT]);
end;
    

function TDisplayInfoSingleton.getLastHalfWidth: Integer;
begin
        Exit(Self.lastHalf[Self.WIDTH]);
end;
    

function TDisplayInfoSingleton.getLastHalfHeight: Integer;
begin
        Exit(Self.lastHalf[Self.HEIGHT]);
end;
    

function TDisplayInfoSingleton.getCustomLastWidth: Integer;
begin
        Exit(Self.last[Self.CUSTOM_WIDTH]);
end;
    

function TDisplayInfoSingleton.getCustomLastHeight: Integer;
begin
        Exit(Self.last[Self.CUSTOM_HEIGHT]);
end;
    

function TDisplayInfoSingleton.getRawLastWidth: Integer;
begin
        Exit(Self.last[Self.WIDTH]);
end;
    

function TDisplayInfoSingleton.getRawLastHeight: Integer;
begin
        Exit(Self.last[Self.HEIGHT]);
end;
    

procedure TDisplayInfoSingleton.setCustom(width: Integer; height: Integer);
begin
        Self.last[Self.CUSTOM_WIDTH] := width;
        Self.lastHalf[Self.CUSTOM_WIDTH] := (TJava.SignedRightShift(Self.last[Self.CUSTOM_WIDTH], 1));
        Self.last[Self.CUSTOM_HEIGHT] := height;
        Self.lastHalf[Self.CUSTOM_HEIGHT] := (TJava.SignedRightShift(Self.last[Self.CUSTOM_HEIGHT], 1));
end;
    

procedure TDisplayInfoSingleton.setScalableListener(scalableListener_: TBaseScalable);
begin
        Self.scalableListener := scalableListener_;
end;
    

function TDisplayInfoSingleton.getScalableListener: IScalableListener;
begin
        Exit(Self.scalableListener);
end;
    

function TDisplayInfoSingleton.getRatio: Single;
begin
        Exit(Self.ratio);
end;
    

function TDisplayInfoSingleton.getDisplayRatio: Single;
begin
        Exit(Self.displayRatio);
end;
    

procedure TDisplayInfoSingleton.setOffset(left: Integer; top: Integer);
begin
        Self.left := left;
end;
    

function TDisplayInfoSingleton.getxOffset: Integer;
begin
        Exit(Self.xOffset);
end;
    

function TDisplayInfoSingleton.getyOffset: Integer;
begin
        Exit(Self.yOffset);
end;

initialization
  {AB:INITIALIZATION}
  TDisplayInfoSingleton.SINGLETON := TDisplayInfoSingleton.Create();
  {AB:END}

end.

