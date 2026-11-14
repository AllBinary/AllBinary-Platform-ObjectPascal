{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary
unit TsUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // TempBase
  TTsUtil = class(TObject)
  public
    class var instance: TTsUtil;
    constructor Create;
        class function getInstance: TTsUtil; static;
        function longBitsToDouble(bits: Int64): Double; virtual;
        function intBitsToFloat(bits: Integer): Single; virtual;
        function hashCode(anyType: TObject): Integer; virtual;
        procedure waitFor(any: TObject; timeoutMillis: Int64); virtual;
        function compareTo(a: string; b: string): Integer; virtual;
  end;

implementation

{AB:CODE}

constructor TTsUtil.Create;
begin
  inherited Create;
end;
    

class function TTsUtil.getInstance: TTsUtil;
begin
        Exit(TTsUtil.instance);
end;
    

function TTsUtil.longBitsToDouble(bits: Int64): Double;
begin
        Exit(TJava.LongBitsToDouble(bits));
end;
    

function TTsUtil.intBitsToFloat(bits: Integer): Single;
begin
        Exit(TJava.IntBitsToFloat(bits));
end;
    

function TTsUtil.hashCode(anyType: TObject): Integer;
begin
        Exit(TJava.HashCode(anyType));
end;
    

// throws InterruptedException
procedure TTsUtil.waitFor(any: TObject; timeoutMillis: Int64);
var
  anyType: TObject;
begin
        anyType := TJava.Box(TJava.Box(any));
        TJava.Wait(anyType, timeoutMillis);
end;
    

function TTsUtil.compareTo(a: string; b: string): Integer;
begin
        Exit(CompareStr(a, b));
end;

initialization
  {AB:INITIALIZATION}
  TTsUtil.instance := TTsUtil.Create();
  {AB:END}

end.

