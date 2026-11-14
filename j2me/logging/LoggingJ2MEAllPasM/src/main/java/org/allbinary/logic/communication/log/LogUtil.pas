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
  TsUtil, StringMaker, CommonSeps, CommonStrings;


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
  specialMessage: string;
  anyType: TObject;
  functionName: string;
  exception: TObject;
begin
        specialMessage := log_.getSpecialMessage();
        anyType := TJava.Box(log_.getObject());
        functionName := log_.getFunctionName();
        exception := TJava.Box(log_.getThrowable());
        Self.put(specialMessage, anyType, functionName, exception);
end;
    

procedure TLogUtil.putF(specialMessage: string; anyType: TObject; functionName: string);
var
  className: string;
  message: string;
begin
        className := TCommonStrings.getInstance().EMPTY;
        if (TJava.ToObject(anyType).ClassType.ClassName) <> ('') then begin
            className := TJava.NewString(TStringMaker.Create().append(TJava.ToObject(anyType).ClassType.ClassName).append(TCommonSeps.getInstance().COLON).append(IntToHex(TTsUtil.getInstance().hashCode(anyType))).toString());
        end;
        message := Self.logFormatUtil.getS(className, functionName, specialMessage);
        Write(Self.LOG_SUCCESS);
        WriteLn(message);
end;
    

procedure TLogUtil.putFS(specialMessage: string; className: string; functionName: string);
var
  message: string;
begin
        message := Self.logFormatUtil.getS(className, functionName, specialMessage);
        Write(Self.LOG_SUCCESS);
        WriteLn(message);
end;
    

procedure TLogUtil.put(specialMessage: string; anyType: TObject; functionName: string; exception: TObject);
var
  className: string;
  hashCodeValue: Integer;
  hexString: string;
  message: string;
begin
        className := TCommonStrings.getInstance().EMPTY;
        if (TJava.ToObject(anyType).ClassType.ClassName) <> ('') then begin
            hashCodeValue := TTsUtil.getInstance().hashCode(anyType);
            hexString := IntToHex(hashCodeValue);
            className := TJava.NewString(TStringMaker.Create().append(TJava.ToObject(anyType).ClassType.ClassName).append(TCommonSeps.getInstance().COLON).append(hexString).toString());
        end;
        message := Self.logFormatUtil.get(className, functionName, specialMessage, exception);
        Write(Self.LOG_SUCCESS);
        WriteLn(message);
end;

initialization
  {AB:INITIALIZATION}
  TLogUtil.instance := TLogUtil.Create();
  {AB:END}

end.

