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
unit StringUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TStringUtil = class(TObject)
  public
    INIT_STRING: string;
    NULL_STRING: string;
    EMPTY_STRING: string;
    ONE_EMPTY_STRING_ARRAY: TArray<string>;
    ONE_EMPTY_STRING_ARRAY_OF_ARRAYS: TArray<TArray<string>>;
    stringArray: TArray<string>;
    class var instance: TStringUtil;
    procedure InitFields;
        class function getInstance: TStringUtil; static;
        constructor Create;
        function getNonNull(string_: string): string; virtual;
        function getArrayInstance: TArray<string>; virtual;
        function count(string_: string; aChar: WideChar): Integer; virtual;
        function toString(anyType: TObject): string; virtual;
  end;

implementation
uses
  JsType, JsMethod, JsConstructor, JsProperty;


{AB:CODE}

procedure TStringUtil.InitFields;
begin
  Self.INIT_STRING := TJava.NewString('');
  Self.NULL_STRING := 'null';
  Self.EMPTY_STRING := '';
  Self.ONE_EMPTY_STRING_ARRAY := TArray<string>.Create(Self.EMPTY_STRING);
  Self.ONE_EMPTY_STRING_ARRAY_OF_ARRAYS := TJava.NewArray2<string>(0, 0);
  Self.stringArray := nil;
end;
    

class function TStringUtil.getInstance: TStringUtil;
begin
        Exit(TStringUtil.instance);
end;
    

constructor TStringUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TStringUtil.getNonNull(string_: string): string;
begin
        Exit(string_);
end;
    

function TStringUtil.getArrayInstance: TArray<string>;
begin
        Exit(Self.stringArray);
end;
    

function TStringUtil.count(string_: string; aChar: WideChar): Integer;
var
  count: Integer;
  size: Integer;
  index: Integer;
begin
        count := 0;
        size := System.Length(string_);
        for index := 0 to size - 1 do begin
            if (string_[(index) + 1]) = (aChar) then begin
                Inc(count);
            end;
        end;
        Exit(count);
end;
    

function TStringUtil.toString(anyType: TObject): string;
begin
        if (anyType) <> (nil) then begin
            Exit(anyType.toString());
        end else begin
            Exit(Self.NULL_STRING);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TStringUtil.instance := TStringUtil.Create();
  {AB:END}

end.

