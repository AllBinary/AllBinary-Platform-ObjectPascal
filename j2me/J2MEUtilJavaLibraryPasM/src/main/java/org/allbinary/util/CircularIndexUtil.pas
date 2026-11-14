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
// package org.allbinary.util
unit CircularIndexUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TCircularIndexUtil = class(TObject)
  public
    index: Integer;
    lastIndex: Integer;
    size: Integer;
    class var NULL_CIRCULAR_INDEX_UTIL: TCircularIndexUtil;
    procedure InitFields;
        constructor Create(index: Integer; size: Integer);
        function next: Integer; virtual;
        function previous: Integer; virtual;
        procedure setIndex(index: Integer); virtual;
        function getIndex: Integer; virtual;
        class function createInstance(max: Integer): TCircularIndexUtil; static;
        class function createInstanceAt(index: Integer; max: Integer): TCircularIndexUtil; static;
        procedure setSize(size: Integer); virtual;
        function getSize: Integer; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  JsType, StringMaker, CommonLabels, JsMethod, JsConstructor, JsProperty;


{AB:CODE}

procedure TCircularIndexUtil.InitFields;
begin
  Self.index := 0;
  Self.lastIndex := 0;
  Self.size := 0;
end;
    

constructor TCircularIndexUtil.Create(index: Integer; size: Integer);
begin
    inherited Create;
    InitFields;
        Self.setSize(size);
        Self.setIndex(index);
end;
    

function TCircularIndexUtil.next: Integer;
begin
        if (Self.index) >= (Self.lastIndex) then begin
            Self.index := 0;
        end else begin
            Inc(Self.index);
        end;
        Exit(Self.index);
end;
    

function TCircularIndexUtil.previous: Integer;
begin
        if (Self.index) < (1) then begin
            Self.index := Self.lastIndex;
        end else begin
            Dec(Self.index);
        end;
        Exit(Self.index);
end;
    

procedure TCircularIndexUtil.setIndex(index: Integer);
begin
        if (index) > (Self.lastIndex) then begin
            Exit;
        end;
        Self.index := index;
end;
    

function TCircularIndexUtil.getIndex: Integer;
begin
        Exit(Self.index);
end;
    

class function TCircularIndexUtil.createInstance(max: Integer): TCircularIndexUtil;
begin
        Exit(TCircularIndexUtil.Create(0, max));
end;
    

class function TCircularIndexUtil.createInstanceAt(index: Integer; max: Integer): TCircularIndexUtil;
begin
        Exit(TCircularIndexUtil.Create(index, max));
end;
    

procedure TCircularIndexUtil.setSize(size: Integer);
begin
        Self.size := size;
        Self.lastIndex := (size) - (1);
        Self.index := 0;
end;
    

function TCircularIndexUtil.getSize: Integer;
begin
        Exit(Self.size);
end;
    

function TCircularIndexUtil.toString: string;
begin
        Exit(TStringMaker.Create().append(TCommonLabels.getInstance().INDEX_LABEL).appendint(Self.index).append('lastIndex: ').appendint(Self.lastIndex).append('size: ').appendint(Self.size).toString());
end;

initialization
  {AB:INITIALIZATION}
  TCircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL := TCircularIndexUtil.Create(0, 0);
  {AB:END}

end.

