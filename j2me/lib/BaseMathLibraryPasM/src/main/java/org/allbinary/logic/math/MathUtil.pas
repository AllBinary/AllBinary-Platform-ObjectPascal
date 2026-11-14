// Generated Code Do Not Modify
// package org.allbinary.logic.math
unit MathUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TMathUtil = class(TObject)
  public
    ACCURACY: Integer;
    class var instance: TMathUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TMathUtil; static;
        function getTotalDigits(digits: Integer): Integer; virtual;
        function sqrt(value: Integer): Integer; virtual;
        function sqrtd(x: Integer): Double; virtual;
        function abs(value: Integer): Integer; virtual;
        function abslong(value: Int64): Int64; virtual;
        function min(value: Integer; value2: Integer): Integer; virtual;
        function max(value: Integer; value2: Integer): Integer; virtual;
  end;

implementation
uses
  JsType;


{AB:CODE}

procedure TMathUtil.InitFields;
begin
  Self.ACCURACY := 100;
end;

constructor TMathUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TMathUtil.getInstance: TMathUtil;
begin
        Exit(TMathUtil.instance);
end;
    

function TMathUtil.getTotalDigits(digits: Integer): Integer;
var
  total: Integer;
begin
        total := 0;
        while (digits) > (0) do begin
            digits := (digits) div (10);
            Inc(total);
        end;
        Exit(total);
end;
    

function TMathUtil.sqrt(value: Integer): Integer;
var
  accumulated: Integer;
  result_: Integer;
begin
        if (value) <= (1) then begin
            Exit(value);
        end;
        accumulated := TJava.SignedRightShift(value, 1);
        result_ := TJava.SignedRightShift(((accumulated) + (((value) div (accumulated)))), 1);
        repeat
            accumulated := result_;
            result_ := TJava.SignedRightShift(((accumulated) + (((value) div (accumulated)))), 1);
        until not ((accumulated) > (result_));
        Exit(accumulated);
end;
    

function TMathUtil.sqrtd(x: Integer): Double;
var
  result_: Double;
  index: Integer;
begin
        if (x) = (0) then begin
            Exit(Double(0.0));
        end;
        if (x) < (0) then begin
            Exit(Double(-1.0));
        end;
        result_ := x;
        for index := 0 to Self.ACCURACY - 1 do begin
            result_ := (((result_) + (((x) / (result_))))) / (2.0);
        end;
        Exit(result_);
end;
    

function TMathUtil.abs(value: Integer): Integer;
begin
        Exit(TJava.IfThen<Variant>(((value) < (0)), -value, value));
end;
    

function TMathUtil.abslong(value: Int64): Int64;
begin
        Exit(TJava.IfThen<Variant>(((value) < (0)), -value, value));
end;
    

function TMathUtil.min(value: Integer; value2: Integer): Integer;
begin
        Exit(TJava.IfThen<Variant>(((value) <= (value2)), value, value2));
end;
    

function TMathUtil.max(value: Integer; value2: Integer): Integer;
begin
        Exit(TJava.IfThen<Variant>(((value) >= (value2)), value, value2));
end;

initialization
  {AB:INITIALIZATION}
  TMathUtil.instance := TMathUtil.Create();
  {AB:END}

end.

