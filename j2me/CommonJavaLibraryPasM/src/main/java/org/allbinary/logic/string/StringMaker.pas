// Generated Code Do Not Modify
// package org.allbinary.logic.string
unit StringMaker;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TStringMaker = class(TObject)
  public
    charArray: TArray<WideChar>;
    currentLength: Integer;
    procedure InitFields;
        constructor Create;
        function append(string_: string): TStringMaker; virtual;
        function appendchar(c: WideChar): TStringMaker; virtual;
        function appendCharArray(charArray: TArray<WideChar>; start: Integer; end_: Integer): TStringMaker; virtual;
        function appendbyte(b: ShortInt): TStringMaker; virtual;
        function appendshort(b: SmallInt): TStringMaker; virtual;
        function appendint(i: Integer): TStringMaker; virtual;
        function appendlong(l: Int64): TStringMaker; virtual;
        function appendfloat(f: Single): TStringMaker; virtual;
        function appendboolean(bool: Boolean): TStringMaker; virtual;
        procedure ensureCapacity(minSize: Integer); virtual;
        function min(value: Integer; value2: Integer): Integer; virtual;
        function delete_(start: Integer; end_: Integer): TStringMaker; virtual;
        function length: Integer; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  JsType, JsMethod, JsConstructor;


{AB:CODE}

procedure TStringMaker.InitFields;
begin
  
  
end;
    

constructor TStringMaker.Create;
begin
    inherited Create;
    InitFields;
        Self.charArray := TJava.NewArray<WideChar>(20);
end;
    

function TStringMaker.append(string_: string): TStringMaker;
var
  stringLength: Integer;
begin
        stringLength := System.Length(string_);
        Self.ensureCapacity((Self.currentLength) + (stringLength));
        TJava.GetChars(string_, 0, stringLength, Self.charArray, Self.currentLength);
        Self.currentLength := (Self.currentLength) + (stringLength);
        Exit(Self);
end;
    

function TStringMaker.appendchar(c: WideChar): TStringMaker;
begin
        Self.ensureCapacity((Self.currentLength) + (1));
        Self.charArray[TJava.PostInc(Self.currentLength)] := c;
        Exit(Self);
end;
    

function TStringMaker.appendCharArray(charArray: TArray<WideChar>; start: Integer; end_: Integer): TStringMaker;
var
  index: Integer;
begin
        Self.ensureCapacity((Self.currentLength) + (((end_) - (start))));
        for index := start to end_ - 1 do begin
            Self.charArray[TJava.PostInc(Self.currentLength)] := charArray[index];
        end;
        Exit(Self);
end;
    

function TStringMaker.appendbyte(b: ShortInt): TStringMaker;
begin
        Self.append(IntToStr(b));
        Exit(Self);
end;
    

function TStringMaker.appendshort(b: SmallInt): TStringMaker;
begin
        Self.append(IntToStr(b));
        Exit(Self);
end;
    

function TStringMaker.appendint(i: Integer): TStringMaker;
begin
        Self.append(IntToStr(i));
        Exit(Self);
end;
    

function TStringMaker.appendlong(l: Int64): TStringMaker;
begin
        Self.append(IntToStr(l));
        Exit(Self);
end;
    

function TStringMaker.appendfloat(f: Single): TStringMaker;
begin
        Self.append(FloatToStr(f));
        Exit(Self);
end;
    

function TStringMaker.appendboolean(bool: Boolean): TStringMaker;
begin
        if bool then begin
            Self.ensureCapacity((Self.currentLength) + (4));
            Self.charArray[TJava.PostInc(Self.currentLength)] := 't';
            Self.charArray[TJava.PostInc(Self.currentLength)] := 'r';
            Self.charArray[TJava.PostInc(Self.currentLength)] := 'u';
            Self.charArray[TJava.PostInc(Self.currentLength)] := 'e';
        end else begin
            Self.ensureCapacity((Self.currentLength) + (5));
            Self.charArray[TJava.PostInc(Self.currentLength)] := 'f';
            Self.charArray[TJava.PostInc(Self.currentLength)] := 'a';
            Self.charArray[TJava.PostInc(Self.currentLength)] := 'l';
            Self.charArray[TJava.PostInc(Self.currentLength)] := 's';
            Self.charArray[TJava.PostInc(Self.currentLength)] := 'e';
        end;
        Exit(Self);
end;
    

procedure TStringMaker.ensureCapacity(minSize: Integer);
var
  oldCapacity: Integer;
  newCapacity: Integer;
  copy: TArray<WideChar>;
  min: Integer;
begin
        oldCapacity := System.Length(Self.charArray);
        if (minSize) > (oldCapacity) then begin
            newCapacity := (oldCapacity) * (3);
            if (newCapacity) < (minSize) then begin
                newCapacity := minSize;
            end;
            copy := TJava.NewArray<WideChar>(newCapacity);
            min := Self.min(System.Length(Self.charArray), newCapacity);
            TJava.ArrayCopy<WideChar>(Self.charArray, 0, copy, 0, min);
            Self.charArray := copy;
        end;
end;
    

function TStringMaker.min(value: Integer; value2: Integer): Integer;
begin
        Exit(TJava.IfThen<Variant>(((value) <= (value2)), value, value2));
end;
    

function TStringMaker.delete_(start: Integer; end_: Integer): TStringMaker;
begin
        Self.currentLength := (Self.currentLength) - (((end_) - (start)));
        Exit(Self);
end;
    

function TStringMaker.length: Integer;
begin
        Exit(Self.currentLength);
end;
    

function TStringMaker.toString: string;
begin
        Exit(TJava.NewString(Self.charArray, 0, Self.currentLength));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

