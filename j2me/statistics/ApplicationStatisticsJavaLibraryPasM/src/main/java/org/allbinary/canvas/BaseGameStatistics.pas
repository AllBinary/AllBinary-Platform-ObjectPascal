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
// package org.allbinary.canvas
unit BaseGameStatistics;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PrimitiveLongSingleton, GameTickTimeDelayHelper, TimeDelayHelper;

type
  {AB:TYPES}
  TBaseGameStatistics = class(TObject)
  public
    timeDelayHelper: TTimeDelayHelper;
    updateDelayHelper: TTimeDelayHelper;
    totalRefreshes: Int64;
    totalFrames: Int64;
    gameTickTimeDelayHelper: TGameTickTimeDelayHelper;
    DEFAULT_SCALE_FACTOR: Integer;
    NOT_: string;
    EMPTY_STRING: string;
    STRING_ARRAY: TArray<string>;
    SPACE_CHAR: WideChar;
    PLUS_CHAR: WideChar;
    X_CHAR: WideChar;
    CHAR_ARRAY: TArray<TArray<WideChar>>;
    primitiveLongSingleton: TPrimitiveLongSingleton;
    procedure InitFields;
        constructor Create;
        procedure init; virtual;
        procedure add(string_: string); virtual;
        procedure process; virtual;
        procedure nextFrame; virtual;
        procedure nextRefresh; virtual;
        function getRefreshRate: SmallInt; virtual;
        function getTimeDelayHelper: TTimeDelayHelper; virtual;
        function to2DCharArray: TArray<TArray<WideChar>>; virtual;
        function toStringArray: TArray<string>; virtual;
        function toStringAt(totalTime: Int64): string; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  ScaleFactorFactory, StringMaker, StringUtil, CommonSeps, GameTickTimeDelayHelperFactory;


{AB:CODE}

procedure TBaseGameStatistics.InitFields;
begin
  Self.timeDelayHelper := TTimeDelayHelper.Create(High(Integer));
  Self.updateDelayHelper := TTimeDelayHelper.Create(2000);
  
  
  Self.gameTickTimeDelayHelper := TGameTickTimeDelayHelperFactory.getInstance();
  Self.DEFAULT_SCALE_FACTOR := TScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR;
  Self.NOT_ := 'Not enough Time to Calculate';
  Self.EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
  Self.STRING_ARRAY := [' Total Time: ', Self.EMPTY_STRING, ' Total Frames: ', Self.EMPTY_STRING, ' Frames/10 Sec: ', Self.EMPTY_STRING, ' Total Paints: ', Self.EMPTY_STRING, ' Paints/10 Sec: ', Self.EMPTY_STRING];
  Self.SPACE_CHAR := ' ';
  Self.PLUS_CHAR := '+';
  Self.X_CHAR := 'X';
  Self.CHAR_ARRAY := [['F', 'r', 'a', 'm', 'e', 's', '/', '1', '0', ' ', 'S', 'e', 'c', ':'], ['X', 'X'], ['P', 'a', 'i', 'n', 't', 's', '/', '1', '0', ' ', 'S', 'e', 'c', ':'], ['X', 'X']];
  Self.primitiveLongSingleton := TPrimitiveLongSingleton.getInstance();
end;
    

constructor TBaseGameStatistics.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TBaseGameStatistics.init;
begin
        Self.timeDelayHelper.setStartTimeTNT();
        Self.totalRefreshes := 0;
        Self.totalFrames := 0;
end;
    

procedure TBaseGameStatistics.add(string_: string);
begin
end;
    

procedure TBaseGameStatistics.process;
begin
end;
    

procedure TBaseGameStatistics.nextFrame;
begin
        Inc(Self.totalFrames);
end;
    

procedure TBaseGameStatistics.nextRefresh;
begin
        Inc(Self.totalRefreshes);
end;
    

function TBaseGameStatistics.getRefreshRate: SmallInt;
var
  elapsed: Int64;
  time: SmallInt;
begin
        elapsed := Self.timeDelayHelper.getElapsed(Self.gameTickTimeDelayHelper.startTime);
        if (elapsed) > (1) then begin
            time := SmallInt(((Self.totalRefreshes) div ((TJava.SignedRightShift(elapsed, Self.DEFAULT_SCALE_FACTOR)))));
            Exit(time);
        end else begin
            Exit(0);
        end;
end;
    

function TBaseGameStatistics.getTimeDelayHelper: TTimeDelayHelper;
begin
        Exit(Self.timeDelayHelper);
end;
    

function TBaseGameStatistics.to2DCharArray: TArray<TArray<WideChar>>;
var
  totalTime: Int64;
  framesPerSec: Integer;
  tens: Integer;
  removeTens: Integer;
  refreshesPerSec: Integer;
begin
        totalTime := Self.timeDelayHelper.getElapsed(Self.gameTickTimeDelayHelper.startTime);
        totalTime := (TJava.SignedRightShift(totalTime, Self.DEFAULT_SCALE_FACTOR));
        if ((totalTime) > (0)) and (Self.updateDelayHelper.isTime(Self.gameTickTimeDelayHelper.startTime)) then begin
            framesPerSec := Integer(((Self.totalFrames) div (totalTime)));
            if (framesPerSec) < (10) then begin
                Self.CHAR_ARRAY[1][0] := Self.SPACE_CHAR;
                Self.CHAR_ARRAY[1][1] := Self.primitiveLongSingleton.NUMBER_CHAR_ARRAY[framesPerSec];
            end else if (framesPerSec) < (100) then begin
                tens := (framesPerSec) div (10);
                removeTens := (tens) * (10);
                Self.CHAR_ARRAY[1][0] := Self.primitiveLongSingleton.NUMBER_CHAR_ARRAY[tens];
                Self.CHAR_ARRAY[1][1] := Self.primitiveLongSingleton.NUMBER_CHAR_ARRAY[(framesPerSec) - (removeTens)];
            end else begin
                Self.CHAR_ARRAY[1][0] := Self.PLUS_CHAR;
                Self.CHAR_ARRAY[1][1] := Self.PLUS_CHAR;
            end;
            refreshesPerSec := Integer(((Self.totalRefreshes) div (totalTime)));
            if (refreshesPerSec) < (10) then begin
                Self.CHAR_ARRAY[3][0] := Self.X_CHAR;
                Self.CHAR_ARRAY[3][1] := Self.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec];
            end else if (refreshesPerSec) < (100) then begin
                tens := (refreshesPerSec) div (10);
                removeTens := (tens) * (10);
                Self.CHAR_ARRAY[3][0] := Self.primitiveLongSingleton.NUMBER_CHAR_ARRAY[(refreshesPerSec) div (10)];
                Self.CHAR_ARRAY[3][1] := Self.primitiveLongSingleton.NUMBER_CHAR_ARRAY[(refreshesPerSec) - (removeTens)];
            end else begin
                Self.CHAR_ARRAY[3][0] := Self.PLUS_CHAR;
                Self.CHAR_ARRAY[3][1] := Self.PLUS_CHAR;
            end;
        end;
        Exit(Self.CHAR_ARRAY);
end;
    

function TBaseGameStatistics.toStringArray: TArray<string>;
var
  totalTime: Int64;
  string_: string;
begin
        totalTime := Self.timeDelayHelper.getElapsed(Self.gameTickTimeDelayHelper.startTime);
        totalTime := ((totalTime) div (10000));
        if (totalTime) > (0) then begin
            Self.STRING_ARRAY[1] := IntToStr(totalTime);
            Self.STRING_ARRAY[3] := IntToStr(Self.totalFrames);
            Self.STRING_ARRAY[5] := IntToStr((Self.totalFrames) div (totalTime));
            Self.STRING_ARRAY[7] := IntToStr(Self.totalRefreshes);
            Self.STRING_ARRAY[9] := IntToStr((Self.totalRefreshes) div (totalTime));
        end else begin
            string_ := Self.EMPTY_STRING;
            Self.STRING_ARRAY[1] := string_;
            Self.STRING_ARRAY[3] := string_;
            Self.STRING_ARRAY[5] := string_;
            Self.STRING_ARRAY[7] := string_;
            Self.STRING_ARRAY[9] := string_;
        end;
        Exit(Self.STRING_ARRAY);
end;
    

function TBaseGameStatistics.toStringAt(totalTime: Int64): string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.STRING_ARRAY[0]);
        stringBuffer.appendlong(totalTime);
        stringBuffer.append(Self.STRING_ARRAY[2]);
        stringBuffer.appendlong(Self.totalFrames);
        stringBuffer.append(Self.STRING_ARRAY[4]);
        stringBuffer.appendlong((Self.totalFrames) div (totalTime));
        if (Self.totalRefreshes) > (0) then begin
            stringBuffer.append(Self.STRING_ARRAY[6]);
            stringBuffer.appendlong(Self.totalRefreshes);
            stringBuffer.append(Self.STRING_ARRAY[8]);
            stringBuffer.appendlong((Self.totalRefreshes) div (totalTime));
            stringBuffer.append(TCommonSeps.getInstance().NEW_LINE);
        end;
        Exit(stringBuffer.toString());
end;
    

function TBaseGameStatistics.toString: string;
var
  totalTime: Int64;
begin
        totalTime := Self.timeDelayHelper.getElapsed(Self.gameTickTimeDelayHelper.startTime);
        totalTime := ((totalTime) div (1000));
        if (totalTime) > (0) then begin
            Exit(Self.toStringAt(totalTime));
        end else begin
            Exit(Self.NOT_);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

