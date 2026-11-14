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
unit LogFormatUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, NullUtil, ExceptionUtil, StringMaker, StringUtil, CommonSeps, TimeStampUtil;

type
  {AB:TYPES}
  // ActualPlatform
  TLogFormatUtil = class(TObject)
  public
    timeStampUtil: TTimeStampUtil;
    commonSeps: TCommonSeps;
    NONE: string;
    LOG_ERROR: string;
    EMPTY: string;
    STACK_TRACE: string;
    TIME: string;
    CLASS_NAME: string;
    FUNCTION_CALL: string;
    SPECIAL_MESSAGE: string;
    stringUtil: TStringUtil;
    exceptionUtil: TExceptionUtil;
    nullUtil: TNullUtil;
    class var instance: TLogFormatUtil;
    procedure InitFields;
        class function getInstance: TLogFormatUtil; static;
        constructor Create;
        function get(className: string; functionName: string; specialMessage: string; exception: TObject): string; virtual;
        function getS(className: string; functionName: string; specialMessage: string): string; virtual;
        function getF(className: string; functionName: string): TStringMaker;
        function getO(exception: TObject): string; virtual;
  end;

implementation
uses
  CommonLabels;


{AB:CODE}

procedure TLogFormatUtil.InitFields;
begin
  Self.timeStampUtil := TTimeStampUtil.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.NONE := 'None';
  Self.LOG_ERROR := ''#10'Log-Error: ';
  Self.EMPTY := 'Empty';
  Self.STACK_TRACE := ''#10'Stack Trace: ';
  Self.TIME := 'Time: ';
  Self.CLASS_NAME := Self.commonSeps.SPACE;
  Self.FUNCTION_CALL := TCommonLabels.getInstance().COLON_SEP;
  Self.SPECIAL_MESSAGE := '> ';
  Self.stringUtil := TStringUtil.getInstance();
  Self.exceptionUtil := TExceptionUtil.getInstance();
  Self.nullUtil := TNullUtil.getInstance();
end;
    

class function TLogFormatUtil.getInstance: TLogFormatUtil;
begin
        Exit(TLogFormatUtil.instance);
end;
    

constructor TLogFormatUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TLogFormatUtil.get(className: string; functionName: string; specialMessage: string; exception: TObject): string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := Self.getF(className, functionName);
        stringBuffer.append(Self.getO(exception));
        stringBuffer.append(Self.SPECIAL_MESSAGE);
        stringBuffer.append(specialMessage);
        stringBuffer.append(Self.commonSeps.NEW_LINE);
        Exit(stringBuffer.toString());
end;
    

function TLogFormatUtil.getS(className: string; functionName: string; specialMessage: string): string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := Self.getF(className, functionName);
        stringBuffer.append(Self.SPECIAL_MESSAGE);
        stringBuffer.append(specialMessage);
        stringBuffer.append(Self.commonSeps.NEW_LINE);
        Exit(stringBuffer.toString());
end;
    

function TLogFormatUtil.getF(className: string; functionName: string): TStringMaker;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.TIME);
        stringBuffer.append(Self.timeStampUtil.getAsString());
        stringBuffer.append(Self.CLASS_NAME);
        stringBuffer.append(className);
        stringBuffer.append(Self.FUNCTION_CALL);
        stringBuffer.append(functionName);
        Exit(stringBuffer);
end;
    

function TLogFormatUtil.getO(exception: TObject): string;
var
  stringBuffer: TStringMaker;
  exceptionAsString: string;
begin
        if (exception) <> (Self.nullUtil.NULL_OBJECT) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.LOG_ERROR);
            exceptionAsString := exception.toString();
            stringBuffer.append(exceptionAsString);
            stringBuffer.append(Self.STACK_TRACE);
            if (exception) <> (Self.nullUtil.NULL_OBJECT) then begin
                stringBuffer.append(Self.exceptionUtil.getStackTrace(SysUtils.Exception(exception)));
            end else begin
                stringBuffer.append(Self.stringUtil.NULL_STRING);
            end;
            Exit(stringBuffer.toString());
        end else begin
            Exit(TStringUtil.getInstance().EMPTY_STRING);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TLogFormatUtil.instance := TLogFormatUtil.Create();
  {AB:END}

end.

