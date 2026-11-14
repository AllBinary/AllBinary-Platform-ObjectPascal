// Generated Code Do Not Modify
// package org.allbinary.util
unit ArrayUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MathUtil;

type
  {AB:TYPES}
  TArrayUtil = class(TObject)
  public
    mathUtil: TMathUtil;
    class var instance: TArrayUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TArrayUtil; static;
        function copyOf(original: TArray<TObject>; newLength: Integer): TArray<TObject>; virtual;
        function copyOfType(original: TArray<TObject>; newLength: Integer; newType: TClass): TArray<TObject>; virtual;
        function copyOfbyte(original: TArray<ShortInt>; newLength: Integer): TArray<ShortInt>; virtual;
        function copyOfshort(original: TArray<SmallInt>; newLength: Integer): TArray<SmallInt>; virtual;
        function copyOfint(original: TArray<Integer>; newLength: Integer): TArray<Integer>; virtual;
        function copyOflong(original: TArray<Int64>; newLength: Integer): TArray<Int64>; virtual;
        function copyOfchar(original: TArray<WideChar>; newLength: Integer): TArray<WideChar>; virtual;
        function copyOffloat(original: TArray<Single>; newLength: Integer): TArray<Single>; virtual;
        function copyOfdouble(original: TArray<Double>; newLength: Integer): TArray<Double>; virtual;
        function copyOfboolean(original: TArray<Boolean>; newLength: Integer): TArray<Boolean>; virtual;
        procedure reverse(intArray: TArray<Integer>); virtual;
        procedure flip(intArray: TArray<Integer>; width: Integer; height: Integer); virtual;
        function toStringFromTwoDimensionaArray(twoDimensionalIntArray: TArray<TArray<Integer>>): string; virtual;
        function toStringFromObjectArray(objectArray: TArray<TObject>): string; virtual;
        function toStringFromByteArray(byteArray: TArray<ShortInt>): string; virtual;
  end;

implementation
uses
  JsType, StringMaker, StringUtil, CommonSeps, JsMethod;


{AB:CODE}

procedure TArrayUtil.InitFields;
begin
  Self.mathUtil := TMathUtil.getInstance();
end;

constructor TArrayUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TArrayUtil.getInstance: TArrayUtil;
begin
        Exit(TArrayUtil.instance);
end;
    

function TArrayUtil.copyOf(original: TArray<TObject>; newLength: Integer): TArray<TObject>;
begin
        Exit(Self.copyOfType(original, newLength, TObject));
end;
    

function TArrayUtil.copyOfType(original: TArray<TObject>; newLength: Integer; newType: TClass): TArray<TObject>;
var
  copy: TArray<TObject>;
begin
        copy := TJava.NewArray<TObject>(newLength);
        TJava.ArrayCopy<TObject>(original, 0, copy, 0, Self.mathUtil.min(System.Length(original), newLength));
        Exit(copy);
end;
    

function TArrayUtil.copyOfbyte(original: TArray<ShortInt>; newLength: Integer): TArray<ShortInt>;
var
  copy: TArray<ShortInt>;
begin
        copy := TJava.NewArray<ShortInt>(newLength);
        TJava.ArrayCopy<ShortInt>(original, 0, copy, 0, Self.mathUtil.min(System.Length(original), newLength));
        Exit(copy);
end;
    

function TArrayUtil.copyOfshort(original: TArray<SmallInt>; newLength: Integer): TArray<SmallInt>;
var
  copy: TArray<SmallInt>;
begin
        copy := TJava.NewArray<SmallInt>(newLength);
        TJava.ArrayCopy<SmallInt>(original, 0, copy, 0, Self.mathUtil.min(System.Length(original), newLength));
        Exit(copy);
end;
    

function TArrayUtil.copyOfint(original: TArray<Integer>; newLength: Integer): TArray<Integer>;
var
  copy: TArray<Integer>;
begin
        copy := TJava.NewArray<Integer>(newLength);
        TJava.ArrayCopy<Integer>(original, 0, copy, 0, Self.mathUtil.min(System.Length(original), newLength));
        Exit(copy);
end;
    

function TArrayUtil.copyOflong(original: TArray<Int64>; newLength: Integer): TArray<Int64>;
var
  copy: TArray<Int64>;
begin
        copy := TJava.NewArray<Int64>(newLength);
        TJava.ArrayCopy<Int64>(original, 0, copy, 0, Self.mathUtil.min(System.Length(original), newLength));
        Exit(copy);
end;
    

function TArrayUtil.copyOfchar(original: TArray<WideChar>; newLength: Integer): TArray<WideChar>;
var
  copy: TArray<WideChar>;
begin
        copy := TJava.NewArray<WideChar>(newLength);
        TJava.ArrayCopy<WideChar>(original, 0, copy, 0, Self.mathUtil.min(System.Length(original), newLength));
        Exit(copy);
end;
    

function TArrayUtil.copyOffloat(original: TArray<Single>; newLength: Integer): TArray<Single>;
var
  copy: TArray<Single>;
begin
        copy := TJava.NewArray<Single>(newLength);
        TJava.ArrayCopy<Single>(original, 0, copy, 0, Self.mathUtil.min(System.Length(original), newLength));
        Exit(copy);
end;
    

function TArrayUtil.copyOfdouble(original: TArray<Double>; newLength: Integer): TArray<Double>;
var
  copy: TArray<Double>;
begin
        copy := TJava.NewArray<Double>(newLength);
        TJava.ArrayCopy<Double>(original, 0, copy, 0, Self.mathUtil.min(System.Length(original), newLength));
        Exit(copy);
end;
    

function TArrayUtil.copyOfboolean(original: TArray<Boolean>; newLength: Integer): TArray<Boolean>;
var
  copy: TArray<Boolean>;
begin
        copy := TJava.NewArray<Boolean>(newLength);
        TJava.ArrayCopy<Boolean>(original, 0, copy, 0, Self.mathUtil.min(System.Length(original), newLength));
        Exit(copy);
end;
    

procedure TArrayUtil.reverse(intArray: TArray<Integer>);
var
  length: Integer;
  temp: Integer;
  size: Integer;
  index: Integer;
begin
        length := (System.Length(intArray)) - (1);
        
        size := (length) div (2);
        for index := 0 to size do begin
            temp := intArray[index];
            intArray[index] := intArray[(length) - (index)];
            intArray[(length) - (index)] := temp;
        end;
end;
    

procedure TArrayUtil.flip(intArray: TArray<Integer>; width: Integer; height: Integer);
var
  length: Integer;
  temp: Integer;
  index: Integer;
  rowIndex: Integer;
  x: Integer;
  y: Integer;
begin
        length := (height) - (1);
        
        
        
        for y := 0 to (length) div (2) do begin
            for x := 0 to width - 1 do begin
                rowIndex := ((((length) - (y))) * (width));
                index := (x) + (((y) * (width)));
                temp := intArray[index];
                intArray[index] := intArray[(rowIndex) + (x)];
                intArray[(rowIndex) + (x)] := temp;
            end;
        end;
end;
    

function TArrayUtil.toStringFromTwoDimensionaArray(twoDimensionalIntArray: TArray<TArray<Integer>>): string;
var
  stringBuffer: TStringMaker;
  commonSeps_: TCommonSeps;
  endIndex: Integer;
  endIndex2: Integer;
  index2: Integer;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        commonSeps_ := TCommonSeps.getInstance();
        endIndex := System.Length(twoDimensionalIntArray);
        endIndex2 := System.Length(twoDimensionalIntArray[0]);
        for index := 0 to endIndex - 1 do begin
            stringBuffer.append(commonSeps_.BRACE_OPEN);
            for index2 := 0 to endIndex2 - 1 do begin
                stringBuffer.appendint(Integer(Trunc(twoDimensionalIntArray[index][index2])));
                stringBuffer.append(commonSeps_.COMMA_SEP);
            end;
            stringBuffer.append(commonSeps_.BRACE_CLOSE);
            stringBuffer.append(commonSeps_.NEW_LINE);
        end;
        Exit(stringBuffer.toString());
end;
    

function TArrayUtil.toStringFromObjectArray(objectArray: TArray<TObject>): string;
var
  stringBuffer: TStringMaker;
  commonSeps_: TCommonSeps;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        commonSeps_ := TCommonSeps.getInstance();
        for index := 0 to System.Length(objectArray) - 1 do begin
            stringBuffer.append(TStringUtil.getInstance().toString(objectArray[index]));
            stringBuffer.append(commonSeps_.COMMA_SEP);
        end;
        Exit(stringBuffer.toString());
end;
    

function TArrayUtil.toStringFromByteArray(byteArray: TArray<ShortInt>): string;
var
  stringBuffer: TStringMaker;
  commonSeps_: TCommonSeps;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        commonSeps_ := TCommonSeps.getInstance();
        for index := 0 to System.Length(byteArray) - 1 do begin
            stringBuffer.appendbyte(byteArray[index]);
            stringBuffer.append(commonSeps_.COMMA_SEP);
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TArrayUtil.instance := TArrayUtil.Create();
  {AB:END}

end.

