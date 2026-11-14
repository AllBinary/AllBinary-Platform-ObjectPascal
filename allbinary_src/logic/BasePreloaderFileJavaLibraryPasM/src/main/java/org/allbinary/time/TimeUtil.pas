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
unit TimeUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTimeUtil = class(TObject)
  public
    class var instance: TTimeUtil;
    class var calendar: TCalendar;
    constructor Create;
        class function getInstance: TTimeUtil; static;
        procedure setCalendar(calendar: TCalendar; yearString: string; monthString: string; dayString: string; hourString: string); virtual;
        procedure setCalendarWithTime(calendar: TCalendar; yearString: string; monthString: string; dayString: string; hourString: string; minuteString: string; secondString: string); virtual;
        procedure setExpirationCalendar(calendar: TCalendar; yearsString: string; monthsString: string; daysString: string; hoursString: string; minutesString: string; secondsString: string); virtual;
        function getTotalTime(yearString: string; monthString: string; dayString: string; hourString: string; minuteString: string; secondString: string): Int64; virtual;
  end;

implementation

{AB:CODE}

constructor TTimeUtil.Create;
begin
  inherited Create;
end;
    

class function TTimeUtil.getInstance: TTimeUtil;
begin
        Exit(TTimeUtil.instance);
end;
    

procedure TTimeUtil.setCalendar(calendar: TCalendar; yearString: string; monthString: string; dayString: string; hourString: string);
var
  year: Integer;
  month: Integer;
  day: Integer;
  hour: Integer;
begin
        year := StrToInt(yearString);
        month := StrToInt(monthString);
        day := StrToInt(dayString);
        hour := StrToInt(hourString);
        calendar.set_(year, month, day, hour, 0);
end;
    

procedure TTimeUtil.setCalendarWithTime(calendar: TCalendar; yearString: string; monthString: string; dayString: string; hourString: string; minuteString: string; secondString: string);
var
  year: Integer;
  month: Integer;
  day: Integer;
  hour: Integer;
  minute: Integer;
  second: Integer;
begin
        year := StrToInt(yearString);
        month := StrToInt(monthString);
        day := StrToInt(dayString);
        hour := StrToInt(hourString);
        minute := StrToInt(minuteString);
        second := StrToInt(secondString);
        calendar.set_(year, month, day, hour, minute, second);
end;
    

procedure TTimeUtil.setExpirationCalendar(calendar: TCalendar; yearsString: string; monthsString: string; daysString: string; hoursString: string; minutesString: string; secondsString: string);
var
  year: Integer;
  month: Integer;
  day: Integer;
  hour: Integer;
  minute: Integer;
  second: Integer;
begin
        year := (calendar.get(TCalendar.YEAR)) + (StrToInt(yearsString));
        month := (calendar.get(TCalendar.MONTH)) + (StrToInt(monthsString));
        day := (calendar.get(TCalendar.DAY_OF_MONTH)) + (StrToInt(daysString));
        hour := (calendar.get(TCalendar.HOUR)) + (StrToInt(hoursString));
        minute := (calendar.get(TCalendar.MINUTE)) + (StrToInt(minutesString));
        second := (calendar.get(TCalendar.SECOND)) + (StrToInt(secondsString));
        calendar.set_(year, month, day, hour, minute, second);
end;
    

function TTimeUtil.getTotalTime(yearString: string; monthString: string; dayString: string; hourString: string; minuteString: string; secondString: string): Int64;
var
  time: Int64;
  timeDelta: Int64;
begin
        time := TTimeUtil.calendar.getTimeInMillis();
        Self.setExpirationCalendar(TTimeUtil.calendar, yearString, monthString, dayString, hourString, minuteString, secondString);
        timeDelta := TTimeUtil.calendar.getTimeInMillis();
        Exit((timeDelta) - (time));
end;

initialization
  {AB:INITIALIZATION}
  TTimeUtil.instance := TTimeUtil.Create();
  TTimeUtil.calendar := TCalendar.getInstance();
  {AB:END}

end.

