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
// package org.allbinary.logic.communication.log
unit LogUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogFormatUtil, Log;

type
  {AB:TYPES}
  // ActualPlatform
  TLogUtil = class(TObject)
  public
    logFormatUtil: TLogFormatUtil;
    LOG_SUCCESS: string;
    class var instance: TLogUtil;
    procedure InitFields;
        class function getInstance: TLogUtil; static;
        constructor Create;
        procedure putL(log_: TLog); virtual;
        procedure putF(specialMessage: string; anyType: TObject; functionName: string); virtual;
        procedure putFS(specialMessage: string; className: string; functionName: string); virtual;
        procedure put(specialMessage: string; anyType: TObject; functionName: string; exception: TObject); virtual;
  end;

implementation
uses
  LogFactory, CommonStrings;


{AB:CODE}

procedure TLogUtil.InitFields;
begin
  Self.logFormatUtil := TLogFormatUtil.getInstance();
  Self.LOG_SUCCESS := 'org.allbinary: ';
end;
    

class function TLogUtil.getInstance: TLogUtil;
begin
        Exit(TLogUtil.instance);
end;
    

constructor TLogUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TLogUtil.putL(log_: TLog);
var
  exception: TObject;
  specialMessage: string;
  anyType: TObject;
  functionName: string;
begin
        if (log_) = (TLogFactory.LOG) then begin
            Exit;
        end;
        exception := TJava.Box(log_.getThrowable());
        if (exception) = (nil) then begin
            Exit;
        end;
        specialMessage := log_.getSpecialMessage();
        anyType := TJava.Box(log_.getObject());
        functionName := log_.getFunctionName();
        Self.put(specialMessage, TJava.Box(anyType), functionName, TJava.Box(exception));
end;
    

procedure TLogUtil.putF(specialMessage: string; anyType: TObject; functionName: string);
begin
end;
    

procedure TLogUtil.putFS(specialMessage: string; className: string; functionName: string);
begin
end;
    

procedure TLogUtil.put(specialMessage: string; anyType: TObject; functionName: string; exception: TObject);
var
  className: string;
  message: string;
begin
        className := TCommonStrings.getInstance().EMPTY;
        if (TJava.ToObject(anyType).ClassType.ClassName) <> ('') then begin
            className := TJava.NewString(TJava.ToObject(anyType).ClassType.ClassName);
        end;
        message := Self.logFormatUtil.get(className, functionName, specialMessage, TJava.Box(exception));
        Write(Self.LOG_SUCCESS);
        WriteLn(message);
end;

initialization
  {AB:INITIALIZATION}
  TLogUtil.instance := TLogUtil.Create();
  {AB:END}

end.

