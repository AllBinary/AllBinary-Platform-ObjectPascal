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
// package org.allbinary.logic.java.byteutil
unit ByteUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TByteUtil = class(TObject)
  public
    class var instance: TByteUtil;
        class function getInstance: TByteUtil; static;
        constructor Create;
        function xor_(array_: TArray<ShortInt>; mask: ShortInt): TArray<ShortInt>; virtual;
        function not_(array_: TArray<ShortInt>): TArray<ShortInt>; virtual;
        function xorByte(array_: TArray<ShortInt>; index: Integer): TArray<ShortInt>; virtual;
        function compare(newByteArray: TArray<ShortInt>; oldByteArray: TArray<ShortInt>): Boolean; virtual;
        function compareWithStats(newByteArray: TArray<ShortInt>; newSize: Integer; oldByteArray: TArray<ShortInt>; stats: TArray<Integer>): Boolean; virtual;
  end;

implementation

{AB:CODE}
    

class function TByteUtil.getInstance: TByteUtil;
begin
        Exit(TByteUtil.instance);
end;
    

constructor TByteUtil.Create;
begin
    inherited Create;
end;
    

function TByteUtil.xor_(array_: TArray<ShortInt>; mask: ShortInt): TArray<ShortInt>;
var
  bytes: TArray<ShortInt>;
  size: Integer;
  index: Integer;
  currentByte: ShortInt;
begin
        bytes := TJava.NewArray<ShortInt>(System.Length(array_));
        size := System.Length(array_);
        index := 0;
        
        while (index) < (size) do begin
            currentByte := array_[index];
            bytes[index] := ShortInt(((currentByte) xor (mask)));
            Inc(index);
        end;
        Exit(bytes);
end;
    

function TByteUtil.not_(array_: TArray<ShortInt>): TArray<ShortInt>;
var
  bytes: TArray<ShortInt>;
  size: Integer;
  index: Integer;
begin
        bytes := TJava.NewArray<ShortInt>(System.Length(array_));
        size := System.Length(array_);
        index := 0;
        while (index) < (size) do begin
            bytes[index] := ShortInt(not (array_[index]));
            Inc(index);
        end;
        Exit(bytes);
end;
    

function TByteUtil.xorByte(array_: TArray<ShortInt>; index: Integer): TArray<ShortInt>;
var
  mask: ShortInt;
begin
        mask := 0;
        if (index) = (0) then begin
            mask := 1;
        end;
        if (index) = (1) then begin
            mask := 2;
        end;
        if (index) = (2) then begin
            mask := 4;
        end;
        if (index) = (3) then begin
            mask := 8;
        end;
        if (index) = (4) then begin
            mask := 16;
        end;
        if (index) = (5) then begin
            mask := 32;
        end;
        if (index) = (6) then begin
            mask := 64;
        end;
        if (index) = (7) then begin
            mask := ShortInt(-127);
        end;
        Exit(Self.xor_(array_, mask));
end;
    

function TByteUtil.compare(newByteArray: TArray<ShortInt>; oldByteArray: TArray<ShortInt>): Boolean;
var
  size: Integer;
  index: Integer;
begin
        if (System.Length(newByteArray)) <> (System.Length(oldByteArray)) then begin
            Exit(False);
        end else begin
        end;
        size := System.Length(newByteArray);
        for index := 0 to size - 1 do begin
            if (newByteArray[index]) <> (oldByteArray[index]) then begin
                Exit(False);
            end;
        end;
        Exit(True);
end;
    

function TByteUtil.compareWithStats(newByteArray: TArray<ShortInt>; newSize: Integer; oldByteArray: TArray<ShortInt>; stats: TArray<Integer>): Boolean;
var
  size: Integer;
  index: Integer;
begin
        if (newSize) <> (System.Length(oldByteArray)) then begin
            stats[0] := -1;
            stats[2] := newSize;
            stats[3] := System.Length(oldByteArray);
            Exit(False);
        end else begin
            stats[0] := newSize;
        end;
        stats[1] := 0;
        size := newSize;
        for index := 0 to size - 1 do begin
            if (newByteArray[index]) <> (oldByteArray[index]) then begin
                Exit(False);
            end;
            Inc(stats[1]);
        end;
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  TByteUtil.instance := TByteUtil.Create();
  {AB:END}

end.

