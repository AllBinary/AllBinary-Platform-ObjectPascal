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
unit Log;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogFormatUtil;

type
  {AB:TYPES}
  TLog = class(TObject)
  public
    logFormatUtil: TLogFormatUtil;
    specialMessage: string;
    anyType: TObject;
    functionName: string;
    exception: TObject;
    procedure InitFields;
        constructor Create(specialMessage: string; anyType: TObject; functionName: string; exception: TObject);
        function getSpecialMessage: string; virtual;
        function getObject: TObject; virtual;
        function getFunctionName: string; virtual;
        function getThrowable: TObject; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TLog.InitFields;
begin
  Self.logFormatUtil := TLogFormatUtil.getInstance();
  
  
  
  
end;
    

constructor TLog.Create(specialMessage: string; anyType: TObject; functionName: string; exception: TObject);
begin
    inherited Create;
    InitFields;
        Self.specialMessage := specialMessage;
        Self.anyType := TJava.Box(anyType);
        Self.functionName := functionName;
        Self.exception := TJava.Box(exception);
end;
    

function TLog.getSpecialMessage: string;
begin
        Exit(Self.specialMessage);
end;
    

function TLog.getObject: TObject;
begin
        Exit(TJava.Box(Self.anyType));
end;
    

function TLog.getFunctionName: string;
begin
        Exit(Self.functionName);
end;
    

function TLog.getThrowable: TObject;
begin
        Exit(TJava.Box(Self.exception));
end;
    

function TLog.toString: string;
var
  className: string;
  clazz: TClass;
begin
        className := TCommonStrings.getInstance().EMPTY;
        clazz := TJava.ToObject(Self.anyType).ClassType;
        if (clazz.ClassName) <> ('') then begin
            className := clazz.ClassName;
        end;
        Exit(Self.logFormatUtil.get(className, Self.functionName, Self.specialMessage, TJava.Box(Self.exception)));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

