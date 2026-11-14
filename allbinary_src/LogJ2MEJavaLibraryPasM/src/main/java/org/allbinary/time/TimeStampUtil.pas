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
unit TimeStampUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // ActualPlatform
  TTimeStampUtil = class(TObject)
  public
    class var instance: TTimeStampUtil;
        class function getInstance: TTimeStampUtil; static;
        constructor Create;
        function getAsString: string; virtual;
  end;

implementation

{AB:CODE}
    

class function TTimeStampUtil.getInstance: TTimeStampUtil;
begin
        Exit(TTimeStampUtil.instance);
end;
    

constructor TTimeStampUtil.Create;
begin
    inherited Create;
end;
    

function TTimeStampUtil.getAsString: string;
var
  calendar: TCalendar;
  date: TDateTime;
begin
        calendar := TCalendar.getInstance();
        date := calendar.getTime();
        Exit(DateTimeToStr(date));
end;

initialization
  {AB:INITIALIZATION}
  TTimeStampUtil.instance := TTimeStampUtil.Create();
  {AB:END}

end.

