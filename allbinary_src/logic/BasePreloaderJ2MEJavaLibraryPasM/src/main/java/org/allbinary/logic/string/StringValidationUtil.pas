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
// package org.allbinary.logic.string
unit StringValidationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TsUtil, StringUtil;

type
  {AB:TYPES}
  TStringValidationUtil = class(TObject)
  public
    stringUtil: TStringUtil;
    tsUtil: TTsUtil;
    class var instance: TStringValidationUtil;
    procedure InitFields;
        class function getInstance: TStringValidationUtil; static;
        constructor Create;
        function containsSpaces(value: string): Boolean; virtual;
        function isNumber(value: string): Boolean; virtual;
        function isNumberFromChar(digit: WideChar): Boolean; virtual;
        function isValidRequired(value: string; min: Integer; max: Integer): Boolean; virtual;
        function isValidRequiredNumber(value: string; min: Integer; max: Integer): Boolean; virtual;
        function isValidNotRequired(value: string; min: Integer; max: Integer): Boolean; virtual;
        function isValidNotRequiredNumber(value: string; min: Integer; max: Integer): Boolean; virtual;
        function isEmpty(string_: string): Boolean; virtual;
  end;

implementation

{AB:CODE}

procedure TStringValidationUtil.InitFields;
begin
  Self.stringUtil := TStringUtil.getInstance();
  Self.tsUtil := TTsUtil.getInstance();
end;
    

class function TStringValidationUtil.getInstance: TStringValidationUtil;
begin
        Exit(TStringValidationUtil.instance);
end;
    

constructor TStringValidationUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TStringValidationUtil.containsSpaces(value: string): Boolean;
begin
        if ((Pos(TJava.ToString(' '), value) - 1)) >= (0) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TStringValidationUtil.isNumber(value: string): Boolean;
var
  numberOfDecimalPoints: Integer;
  digit: WideChar;
  index: Integer;
begin
        numberOfDecimalPoints := 0;
        for index := 0 to System.Length(value) - 1 do begin
            digit := value[(index) + 1];
            if (not (Self.isNumberFromChar(digit))) and ((digit) <> ('.')) then begin
                Exit(False);
            end;
            if (digit) = ('.') then begin
                Inc(numberOfDecimalPoints);
                if (numberOfDecimalPoints) > (1) then begin
                    Exit(False);
                end;
            end;
        end;
        Exit(True);
end;
    

function TStringValidationUtil.isNumberFromChar(digit: WideChar): Boolean;
begin
        if ((((((((((digit) <> ('0')) and ((digit) <> ('1'))) and ((digit) <> ('2'))) and ((digit) <> ('3'))) and ((digit) <> ('4'))) and ((digit) <> ('5'))) and ((digit) <> ('6'))) and ((digit) <> ('7'))) and ((digit) <> ('8'))) and ((digit) <> ('9')) then begin
            Exit(False);
        end;
        Exit(True);
end;
    

function TStringValidationUtil.isValidRequired(value: string; min: Integer; max: Integer): Boolean;
begin
        if ((System.Length(value)) < (min)) or ((System.Length(value)) > (max)) then begin
            Exit(False);
        end;
        Exit(True);
end;
    

function TStringValidationUtil.isValidRequiredNumber(value: string; min: Integer; max: Integer): Boolean;
begin
        if ((Self.isEmpty(value)) or ((System.Length(value)) < (min))) or ((System.Length(value)) > (max)) then begin
            Exit(False);
        end;
        if not (Self.isNumber(value)) then begin
            Exit(False);
        end;
        Exit(True);
end;
    

function TStringValidationUtil.isValidNotRequired(value: string; min: Integer; max: Integer): Boolean;
begin
        if (System.Length(value)) > (0) then begin
            if ((System.Length(value)) < (min)) or ((System.Length(value)) > (max)) then begin
                Exit(False);
            end;
        end;
        Exit(True);
end;
    

function TStringValidationUtil.isValidNotRequiredNumber(value: string; min: Integer; max: Integer): Boolean;
begin
        if (System.Length(value)) > (0) then begin
            if (((Self.tsUtil.compareTo(value, Self.stringUtil.NULL_STRING)) = (0)) or ((System.Length(value)) < (min))) or ((System.Length(value)) > (max)) then begin
                Exit(False);
            end;
            if not (Self.isNumber(value)) then begin
                Exit(False);
            end;
        end;
        Exit(True);
end;
    

function TStringValidationUtil.isEmpty(string_: string): Boolean;
begin
        if ((Self.tsUtil.compareTo(string_, Self.stringUtil.NULL_STRING)) <> (0)) and ((Self.tsUtil.compareTo(string_, Self.stringUtil.EMPTY_STRING)) <> (0)) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TStringValidationUtil.instance := TStringValidationUtil.Create();
  {AB:END}

end.

