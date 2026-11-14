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
// package org.allbinary.time
unit TimeDelayHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTimeDelayHelper = class(TObject)
  public
    startTime: Int64;
    elapsedTimeAtPause: Int64;
    delay: Integer;
    procedure InitFields;
        constructor Create(delay: Integer);
        function isTimeTNT: Boolean; virtual;
        function isTimeSinceTNT(delay: Integer): Boolean; virtual;
        function isTime(currentTime: Int64): Boolean; virtual;
        function isTimeWithoutReset(currentTime: Int64): Boolean; virtual;
        function isTimeSince(delay: Integer; currentTime: Int64): Boolean; virtual;
        function getElapsedTNT: Int64; virtual;
        function getElapsed(currentTime: Int64): Int64; virtual;
        function isElapsed(currentTime: Int64; time: Int64): Boolean; virtual;
        function isElapsedTNT(time: Int64): Boolean; virtual;
        procedure setStartTime(startTime: Int64); virtual;
        function getStartTime: Int64; virtual;
        procedure setStartTimeTNT; virtual;
        procedure pause; virtual;
        function resume: Boolean; virtual;
        function toStringAt(currentTime: Int64): string; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker, StringUtil, CommonLabels;


{AB:CODE}

procedure TTimeDelayHelper.InitFields;
begin
  Self.startTime := Int64(-1);
  Self.elapsedTimeAtPause := Low(Int64);
  
end;
    

constructor TTimeDelayHelper.Create(delay: Integer);
begin
    inherited Create;
    InitFields;
        Self.delay := delay;
        Self.setStartTimeTNT();
end;
    

function TTimeDelayHelper.isTimeTNT: Boolean;
var
  currentTime: Int64;
begin
        currentTime := DateTimeToUnix(Now) * 1000;
        if ((currentTime) - (Self.startTime)) > (Int64(Self.delay)) then begin
            Self.startTime := currentTime;
            Exit(True);
        end;
        Exit(False);
end;
    

function TTimeDelayHelper.isTimeSinceTNT(delay: Integer): Boolean;
var
  currentTime: Int64;
begin
        currentTime := DateTimeToUnix(Now) * 1000;
        if ((currentTime) - (Self.startTime)) > (Int64(delay)) then begin
            Self.startTime := currentTime;
            Exit(True);
        end;
        Exit(False);
end;
    

function TTimeDelayHelper.isTime(currentTime: Int64): Boolean;
begin
        if ((currentTime) - (Self.startTime)) > (Int64(Self.delay)) then begin
            Self.startTime := currentTime;
            Exit(True);
        end;
        Exit(False);
end;
    

function TTimeDelayHelper.isTimeWithoutReset(currentTime: Int64): Boolean;
begin
        if ((currentTime) - (Self.startTime)) > (Int64(Self.delay)) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TTimeDelayHelper.isTimeSince(delay: Integer; currentTime: Int64): Boolean;
begin
        if ((currentTime) - (Self.startTime)) > (Int64(Self.delay)) then begin
            Self.startTime := currentTime;
            Exit(True);
        end;
        Exit(False);
end;
    

function TTimeDelayHelper.getElapsedTNT: Int64;
begin
        Exit((DateTimeToUnix(Now) * 1000) - (Self.startTime));
end;
    

function TTimeDelayHelper.getElapsed(currentTime: Int64): Int64;
begin
        Exit((currentTime) - (Self.startTime));
end;
    

function TTimeDelayHelper.isElapsed(currentTime: Int64; time: Int64): Boolean;
begin
        if (Self.getElapsed(currentTime)) > (time) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TTimeDelayHelper.isElapsedTNT(time: Int64): Boolean;
begin
        if (Self.getElapsedTNT()) > (time) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

procedure TTimeDelayHelper.setStartTime(startTime: Int64);
begin
        Self.startTime := startTime;
end;
    

function TTimeDelayHelper.getStartTime: Int64;
begin
        Exit(Self.startTime);
end;
    

procedure TTimeDelayHelper.setStartTimeTNT;
begin
        Self.startTime := DateTimeToUnix(Now) * 1000;
end;
    

procedure TTimeDelayHelper.pause;
begin
        Self.elapsedTimeAtPause := Self.getElapsedTNT();
        Self.startTime := High(Int64);
end;
    

function TTimeDelayHelper.resume: Boolean;
begin
        if (Self.elapsedTimeAtPause) <> (Low(Int64)) then begin
            Self.startTime := (DateTimeToUnix(Now) * 1000) + (Self.elapsedTimeAtPause);
            Self.elapsedTimeAtPause := Low(Int64);
            Self.setStartTimeTNT();
            Exit(True);
        end;
        Exit(False);
end;
    

function TTimeDelayHelper.toStringAt(currentTime: Int64): string;
var
  elapsed: Int64;
  commonLabels_: TCommonLabels;
  elapsedAsString: string;
begin
        elapsed := Self.getElapsed(currentTime);
        if (elapsed) > (0) then begin
            commonLabels_ := TCommonLabels.getInstance();
            elapsedAsString := IntToStr(elapsed);
            Exit(TStringMaker.Create().append(commonLabels_.START).appendlong(Self.startTime).append(commonLabels_.CURRENT).appendlong(currentTime).append(commonLabels_.ELAPSED).append(elapsedAsString).toString());
        end else begin
            Exit(TStringUtil.getInstance().EMPTY_STRING);
        end;
end;
    

function TTimeDelayHelper.toString: string;
var
  currentTime: Int64;
  elapsed: Int64;
  commonLabels_: TCommonLabels;
  elapsedAsString: string;
begin
        currentTime := DateTimeToUnix(Now) * 1000;
        elapsed := Self.getElapsed(currentTime);
        if (elapsed) > (0) then begin
            commonLabels_ := TCommonLabels.getInstance();
            elapsedAsString := IntToStr(elapsed);
            Exit(TStringMaker.Create().append(commonLabels_.START).appendlong(Self.startTime).append(commonLabels_.CURRENT).appendlong(currentTime).append(commonLabels_.ELAPSED).append(elapsedAsString).toString());
        end else begin
            Exit(TStringUtil.getInstance().EMPTY_STRING);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

