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
unit SmallLongFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TSmallLongFactory = class(TObject)
  public
    NEGATIVE_MAX: Integer;
    POSITIVE_MAX: Integer;
    INTEGER_ARRAY: TArray<Int64>;
    STRING_ARRAY: TArray<string>;
    MIN: Integer;
    lastMin: Integer;
    lastNegativeMin: Integer;
    class var instance: TSmallLongFactory;
    procedure InitFields;
        class function getInstance: TSmallLongFactory; static;
        procedure initWithRange(value: Integer; negativeValue: Integer); virtual;
        procedure init; virtual;
        constructor Create;
        function getInstanceNoThrow(index: Int64): Int64; virtual;
        function getString(index: Integer): string; virtual;
  end;

implementation

{AB:CODE}

procedure TSmallLongFactory.InitFields;
begin
  Self.NEGATIVE_MAX := 500;
  Self.POSITIVE_MAX := $2D1;
  Self.INTEGER_ARRAY := TJava.NewArray<Int64>((Self.NEGATIVE_MAX) + (Self.POSITIVE_MAX));
  Self.STRING_ARRAY := TJava.NewArray<string>((Self.NEGATIVE_MAX) + (Self.POSITIVE_MAX));
  Self.MIN := 0;
  Self.lastMin := 0;
  Self.lastNegativeMin := 0;
end;
    

class function TSmallLongFactory.getInstance: TSmallLongFactory;
begin
        Exit(TSmallLongFactory.instance);
end;
    

procedure TSmallLongFactory.initWithRange(value: Integer; negativeValue: Integer);
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
    

procedure TSmallLongFactory.init;
var
  index: Integer;
begin
        if (Self.INTEGER_ARRAY[0]) = (0) then begin
            if ((Self.lastMin) < (Self.POSITIVE_MAX)) or ((Self.lastNegativeMin) < (Self.NEGATIVE_MAX)) then begin
                for index := (Self.POSITIVE_MAX) - (1) downto Self.lastMin do begin
                    Self.INTEGER_ARRAY[(index) + (Self.NEGATIVE_MAX)] := index;
                end;
                for index := (Self.NEGATIVE_MAX) - (1) downto Self.lastNegativeMin do begin
                    Self.INTEGER_ARRAY[index] := -index;
                end;
                Self.lastMin := Self.POSITIVE_MAX;
                Self.lastNegativeMin := Self.NEGATIVE_MAX;
            end;
        end;
end;
    

constructor TSmallLongFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TSmallLongFactory.getInstanceNoThrow(index: Int64): Int64;
begin
        if ((index) + (Int64(Self.NEGATIVE_MAX))) > (Int64((System.Length(Self.INTEGER_ARRAY)) - (1))) then begin
            Exit(Self.INTEGER_ARRAY[(-1) + (Self.NEGATIVE_MAX)]);
        end;
        Exit(Self.INTEGER_ARRAY[((Integer(index))) + (Self.NEGATIVE_MAX)]);
end;
    

function TSmallLongFactory.getString(index: Integer): string;
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
  TSmallLongFactory.instance := TSmallLongFactory.Create();
  {AB:END}

end.

