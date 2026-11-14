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
unit PreLogUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // ActualPlatform
  TPreLogUtil = class(TObject)
  public
    class var LOG_SUCCESS: string;
        constructor Create;
        class procedure put(specialMessage: string; anyType: TObject; functionName: string); static;
        class procedure putOE(specialMessage: string; anyType: TObject; functionName: string; exception: TObject); static;
        class procedure putS(specialMessage: string; className: string; functionName: string); static;
        class procedure putSE(specialMessage: string; className: string; functionName: string; exception: TObject); static;
        class function getClassName(anyType: TObject): string; static;
  end;

implementation
uses
  LogFormatUtil, NullUtil, StringUtil, CommonStrings;


{AB:CODE}
    

constructor TPreLogUtil.Create;
begin
    inherited Create;
end;
    

class procedure TPreLogUtil.put(specialMessage: string; anyType: TObject; functionName: string);
begin
        TPreLogUtil.putOE(specialMessage, TJava.Box(anyType), functionName, TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
end;
    

class procedure TPreLogUtil.putOE(specialMessage: string; anyType: TObject; functionName: string; exception: TObject);
var
  className: string;
  message: string;
begin
        className := TCommonStrings.getInstance().EMPTY;
        if (TJava.ToObject(anyType).ClassType.ClassName) <> ('') then begin
            className := TJava.NewString(TJava.ToObject(anyType).ClassType.ClassName);
        end;
        message := TLogFormatUtil.getInstance().get(className, functionName, specialMessage, TJava.Box(exception));
        Write(TPreLogUtil.LOG_SUCCESS);
        WriteLn(message);
end;
    

class procedure TPreLogUtil.putS(specialMessage: string; className: string; functionName: string);
begin
        TPreLogUtil.putSE(specialMessage, className, functionName, TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
end;
    

class procedure TPreLogUtil.putSE(specialMessage: string; className: string; functionName: string; exception: TObject);
var
  message: string;
begin
        message := TLogFormatUtil.getInstance().get(className, functionName, specialMessage, TJava.Box(exception));
        Write(TPreLogUtil.LOG_SUCCESS);
        WriteLn(message);
end;
    

class function TPreLogUtil.getClassName(anyType: TObject): string;
begin
        Exit(TJava.ToObject(anyType).ClassType.ClassName);
end;

initialization
  {AB:INITIALIZATION}
  TPreLogUtil.LOG_SUCCESS := 'org.allbinary: ';
  {AB:END}

end.

