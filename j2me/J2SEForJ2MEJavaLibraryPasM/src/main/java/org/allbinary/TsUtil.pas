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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Displayable;

type
  {AB:TYPES}
  // J2SE
  TTsUtil = class(TObject)
  public
    class var instance: TTsUtil;
    constructor Create;
        class function getInstance: TTsUtil; static;
        function longBitsToDouble(bits: Int64): Double; virtual;
        function intBitsToFloat(bits: Integer): Single; virtual;
        function hashCode(anyType: TObject): Integer; virtual;
        procedure waitFor(any: TObject; timeoutMillis: Int64); virtual;
        function getRecord(anyType: TObject; recordId: Integer): TArray<ShortInt>; virtual;
        function compareTo(a: string; b: string): Integer; virtual;
        function equalIgnoreCase(a: string; b: string): Boolean; virtual;
        function equalsNotstring(anyType: TObject; object2: TObject): Boolean; virtual;
        function getClassClassLoader(anyType: TObject): TClassLoader; virtual;
        function toNumberFromChar(value: WideChar): Integer; virtual;
        function toNumber(value: Integer): Integer; virtual;
        function getByteArray(string_: string): TArray<ShortInt>; virtual;
        function isItemListener(owner: TDisplayable): Boolean; virtual;
        procedure gc; virtual;
  end;

implementation
uses
  Form, InvalidRecordIDException, RecordStore, RecordStoreException, RecordStoreNotOpenException, NullUtil;


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
    

// throws RecordStoreNotOpenException, InvalidRecordIDException, RecordStoreException
function TTsUtil.getRecord(anyType: TObject; recordId: Integer): TArray<ShortInt>;
var
  recordStore_: TRecordStore;
  data: TArray<ShortInt>;
begin
        recordStore_ := TRecordStore(TJava.ToObject(anyType));
        
        TJava.MonitorEnter(Self);
        try
            data := TJava.NewArray<ShortInt>(recordStore_.getRecordSize(recordId));
            recordStore_.getRecord(recordId, data, 0);
        finally
            TJava.MonitorExit(Self);
        end;
        Exit(TJava.IfThen<Variant>((System.Length(data)) < (1), TNullUtil.getInstance().NULL_BYTE_ARRAY, data));
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
    

function TTsUtil.getClassClassLoader(anyType: TObject): TClassLoader;
begin
        Exit(TClassLoader.getSystemClassLoader());
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
    

function TTsUtil.isItemListener(owner: TDisplayable): Boolean;
begin
        if (TJava.ToObject(owner) is TForm) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
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

