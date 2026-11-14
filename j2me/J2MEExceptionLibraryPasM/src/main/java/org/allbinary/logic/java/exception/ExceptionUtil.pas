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
// package org.allbinary.logic.java.exception
unit ExceptionUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // ActualPlatform
  TExceptionUtil = class(TObject)
  public
    PRETEND_EXCEPTION: SysUtils.Exception;
    NONE: string;
    class var instance: TExceptionUtil;
    procedure InitFields;
        class function getInstance: TExceptionUtil; static;
        constructor Create;
        function getStackTrace(e: SysUtils.Exception): string; virtual;
  end;

implementation

{AB:CODE}

procedure TExceptionUtil.InitFields;
begin
  Self.PRETEND_EXCEPTION := SysUtils.Exception.Create('Not Really An Exception');
  Self.NONE := 'No Stack Trace';
end;
    

class function TExceptionUtil.getInstance: TExceptionUtil;
begin
        Exit(TExceptionUtil.instance);
end;
    

constructor TExceptionUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TExceptionUtil.getStackTrace(e: SysUtils.Exception): string;
var
  bs: TByteArrayOutputStream;
  output: string;
begin
        bs := TByteArrayOutputStream.Create;
        WriteLn(e.Message);
        output := bs.toString();
        Exit(TJava.NewString(output));
end;

initialization
  {AB:INITIALIZATION}
  TExceptionUtil.instance := TExceptionUtil.Create();
  {AB:END}

end.

