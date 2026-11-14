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
// package org.allbinary.logic.math
unit SmallIntegerSingletonFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TSmallIntegerSingletonFactory = class(TObject)
  public
    NEGATIVE_MAX: Integer;
    POSITIVE_MAX: Integer;
    INTEGER_ARRAY: TArray<Integer>;
    STRING_ARRAY: TArray<string>;
    MIN: Integer;
    lastMin: Integer;
    lastNegativeMin: Integer;
    class var instance: TSmallIntegerSingletonFactory;
    procedure InitFields;
        class function getInstance: TSmallIntegerSingletonFactory; static;
        function getMin: Integer; virtual;
        function getMinAllowed: Integer;
        procedure initWithRange(value: Integer; negativeValue: Integer); virtual;
        procedure init; virtual;
        constructor Create;
        function getAt(index: Integer): Integer; virtual;
        function getAtNoThrow(index: Integer): Integer; virtual;
        function createInstance(index: Integer): Integer; virtual;
        function getString(index: Integer): string; virtual;
  end;

implementation
uses
  AndroidUtil, J2MEUtil, LogUtil, StringMaker;


{AB:CODE}

procedure TSmallIntegerSingletonFactory.InitFields;
begin
  Self.NEGATIVE_MAX := 500;
  Self.POSITIVE_MAX := $2D1;
  Self.INTEGER_ARRAY := TJava.NewArray<Integer>((Self.NEGATIVE_MAX) + (Self.POSITIVE_MAX));
  Self.STRING_ARRAY := TJava.NewArray<string>((Self.NEGATIVE_MAX) + (Self.POSITIVE_MAX));
  Self.MIN := 0;
  Self.lastMin := 0;
  Self.lastNegativeMin := 0;
end;
    

class function TSmallIntegerSingletonFactory.getInstance: TSmallIntegerSingletonFactory;
begin
        Exit(TSmallIntegerSingletonFactory.instance);
end;
    

function TSmallIntegerSingletonFactory.getMin: Integer;
var
  minAllowed: Integer;
  logUtil_: TLogUtil;
begin
        minAllowed := Self.getMinAllowed();
        if (Self.MIN) <= (minAllowed) then begin
            if TJ2MEUtil.isJ2ME() then begin
            end else if TAndroidUtil.isAndroid() then begin
                logUtil_ := TLogUtil.getInstance();
                logUtil_.putF(TStringMaker.Create().append('Android InputFactory was initialized before GameMidlet: ').appendint(Self.MIN).toString(), TJava.Box(Self), 'getMin');
                Self.initWithRange($291, 6);
            end else begin
                logUtil_ := TLogUtil.getInstance();
                logUtil_.putF(TStringMaker.Create().append('InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: ').appendint(Self.MIN).toString(), TJava.Box(Self), 'getMin');
                Self.initWithRange($2D0, 6);
            end;
        end;
        if (Self.MIN) <= (minAllowed) then begin
            logUtil_ := TLogUtil.getInstance();
            logUtil_.put('This means you loaded the InputFactory before determining the platform input size requirements.', TJava.Box(Self), 'getMin', TJava.Box(SysUtils.Exception.Create('')));
        end;
        Exit(Self.MIN);
end;
    

function TSmallIntegerSingletonFactory.getMinAllowed: Integer;
begin
        if TJ2MEUtil.isJ2ME() then begin
            Exit(0);
        end else begin
            if TAndroidUtil.isAndroid() then begin
                Exit($101);
            end else begin
                Exit(23);
            end;
        end;
end;
    

procedure TSmallIntegerSingletonFactory.initWithRange(value: Integer; negativeValue: Integer);
var
  index: Integer;
begin
        for index := (value) - (1) downto Self.lastMin do begin
            Self.INTEGER_ARRAY[(index) + (Self.NEGATIVE_MAX)] := index;
        end;
        for index := (negativeValue) - (1) downto Self.lastNegativeMin do begin
            Self.INTEGER_ARRAY[index] := -index;
        end;
        if (Self.lastMin) < (value) then begin
            Self.lastMin := value;
            Self.MIN := value;
        end;
        if (Self.lastNegativeMin) < (negativeValue) then begin
            Self.lastNegativeMin := negativeValue;
        end;
end;
    

procedure TSmallIntegerSingletonFactory.init;
var
  index: Integer;
begin
        if ((Self.lastMin) < (Self.POSITIVE_MAX)) or ((Self.lastNegativeMin) < (Self.NEGATIVE_MAX)) then begin
            for index := (Self.POSITIVE_MAX) - (1) downto Self.lastMin do begin
                Self.INTEGER_ARRAY[(index) + (Self.NEGATIVE_MAX)] := index;
            end;
            for index := (Self.NEGATIVE_MAX) - (1) downto Self.lastNegativeMin do begin
                Self.INTEGER_ARRAY[index] := -index;
            end;
            Self.lastMin := Self.POSITIVE_MAX;
            Self.MIN := Self.lastMin;
            Self.lastNegativeMin := Self.NEGATIVE_MAX;
        end;
end;
    

constructor TSmallIntegerSingletonFactory.Create;
begin
    inherited Create;
    InitFields;
        Self.initWithRange(23, 0);
end;
    

function TSmallIntegerSingletonFactory.getAt(index: Integer): Integer;
begin
        Exit(Self.INTEGER_ARRAY[(index) + (Self.NEGATIVE_MAX)]);
end;
    

function TSmallIntegerSingletonFactory.getAtNoThrow(index: Integer): Integer;
begin
        if ((index) + (Self.NEGATIVE_MAX)) > ((System.Length(Self.INTEGER_ARRAY)) - (1)) then begin
            Exit(Self.INTEGER_ARRAY[(-1) + (Self.NEGATIVE_MAX)]);
        end;
        Exit(Self.INTEGER_ARRAY[(index) + (Self.NEGATIVE_MAX)]);
end;
    

function TSmallIntegerSingletonFactory.createInstance(index: Integer): Integer;
var
  integer_: Integer;
begin
        integer_ := Self.getAt(index);
        if (integer_) = (0) then begin
            integer_ := index;
        end;
        Exit(integer_);
end;
    

function TSmallIntegerSingletonFactory.getString(index: Integer): string;
var
  i: Integer;
begin
        i := (index) + (Self.NEGATIVE_MAX);
        if (Self.STRING_ARRAY[i]) = ('') then begin
            Self.STRING_ARRAY[i] := Self.INTEGER_ARRAY[i].toString();
        end;
        Exit(Self.STRING_ARRAY[i]);
end;

initialization
  {AB:INITIALIZATION}
  TSmallIntegerSingletonFactory.instance := TSmallIntegerSingletonFactory.Create();
  {AB:END}

end.

