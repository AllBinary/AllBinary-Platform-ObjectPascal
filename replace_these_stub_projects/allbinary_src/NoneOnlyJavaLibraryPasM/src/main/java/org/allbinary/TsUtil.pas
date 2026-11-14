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
  // None - Do not use
  TTsUtil = class(TObject)
  public
    class var instance: TTsUtil;
    constructor Create;
        class function getInstance: TTsUtil; static;
        function hashCode(anyType: TObject): Integer; virtual;
        procedure waitFor(any: TObject; timeoutMillis: Int64); virtual;
        function getRecord(anyType: TObject; recordId: Integer): TArray<ShortInt>; virtual;
        function compareTo(a: string; b: string): Integer; virtual;
        function equalIgnoreCase(a: string; b: string): Boolean; virtual;
        function equalsNotstring(anyType: TObject; object2: TObject): Boolean; virtual;
        function toNumberFromChar(value: WideChar): Integer; virtual;
        function toNumber(value: Integer): Integer; virtual;
        function getByteArray(string_: string): TArray<ShortInt>; virtual;
        function isItemListener(owner: TObject): Boolean; virtual;
        procedure printAvailableMethods(anyType: TObject); virtual;
        procedure gc; virtual;
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
    

function TTsUtil.getRecord(anyType: TObject; recordId: Integer): TArray<ShortInt>;
begin
        Exit(TJava.NewArray<ShortInt>(0));
end;
    

function TTsUtil.compareTo(a: string; b: string): Integer;
begin
        Exit(CompareStr(a, b));
end;
    

function TTsUtil.equalIgnoreCase(a: string; b: string): Boolean;
begin
        Exit(SameText(a, b));
end;
    

function TTsUtil.equalsNotstring(anyType: TObject; object2: TObject): Boolean;
begin
        Exit(anyType.equals(object2));
end;
    

function TTsUtil.toNumberFromChar(value: WideChar): Integer;
begin
        Exit(Ord(value));
end;
    

function TTsUtil.toNumber(value: Integer): Integer;
begin
        Exit(value);
end;
    

function TTsUtil.getByteArray(string_: string): TArray<ShortInt>;
begin
        Exit(TJava.GetBytes(string_));
end;
    

function TTsUtil.isItemListener(owner: TObject): Boolean;
begin
        Exit(False);
end;
    

procedure TTsUtil.printAvailableMethods(anyType: TObject);
begin
end;
    

procedure TTsUtil.gc;
begin
        TJava.Nothing;
end;

initialization
  {AB:INITIALIZATION}
  TTsUtil.instance := TTsUtil.Create();
  {AB:END}

end.

