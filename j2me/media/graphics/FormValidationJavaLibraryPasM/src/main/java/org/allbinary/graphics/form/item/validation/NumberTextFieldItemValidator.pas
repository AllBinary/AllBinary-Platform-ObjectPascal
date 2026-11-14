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
// package org.allbinary.graphics.form.item.validation
unit NumberTextFieldItemValidator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABTextFieldItem, ValidatorBase, BasicArrayList;

type
  {AB:TYPES}
  TNumberTextFieldItemValidator = class(TValidatorBase)
  public
    textFieldItem: TABTextFieldItem;
    min: Integer;
    max: Integer;
    maxChars: Integer;
    procedure InitFields;
        constructor Create(textFieldItem: TABTextFieldItem; maxChars: Integer; min: Integer; max: Integer);
        function isNumberValid(value: Integer): Boolean; virtual;
        function toNumberVector(value: Integer): TBasicArrayList; virtual;
        function isValid: Boolean; override;
        function toList: TBasicArrayList; override;
  end;

implementation
uses
  BooleanFactory, SmallIntegerSingletonFactory, StringMaker, BasicArrayListD;


{AB:CODE}

procedure TNumberTextFieldItemValidator.InitFields;
begin
  
  
  
  
end;
    

constructor TNumberTextFieldItemValidator.Create(textFieldItem: TABTextFieldItem; maxChars: Integer; min: Integer; max: Integer);
begin
    inherited Create;
    InitFields;
        Self.textFieldItem := textFieldItem;
        Self.min := min;
        Self.max := max;
        Self.maxChars := maxChars;
end;
    

function TNumberTextFieldItemValidator.isNumberValid(value: Integer): Boolean;
begin
        Exit(TBooleanFactory.getInstance().TRUE_);
end;
    

function TNumberTextFieldItemValidator.toNumberVector(value: Integer): TBasicArrayList;
begin
        Exit(TBasicArrayListD.Create());
end;
    

function TNumberTextFieldItemValidator.isValid: Boolean;
var
  result_: Boolean;
  string_: string;
  textLength: Integer;
begin
        result_ := TBooleanFactory.getInstance().TRUE_;
        string_ := Self.textFieldItem.getString();
        textLength := System.Length(string_);
        if ((textLength) > (0)) and ((textLength) < (Self.maxChars)) then begin
            try
                StrToInt(Self.textFieldItem.getString());
            except
                on e: SysUtils.Exception do begin
                result_ := TBooleanFactory.getInstance().FALSE_;
                end;
            end;
        end else begin
            if (textLength) < (1) then begin
                result_ := TBooleanFactory.getInstance().FALSE_;
            end else if (textLength) > (Self.maxChars) then begin
                result_ := TBooleanFactory.getInstance().FALSE_;
            end;
        end;
        Exit(result_);
end;
    

function TNumberTextFieldItemValidator.toList: TBasicArrayList;
var
  list: TBasicArrayList;
  string_: string;
  textLength: Integer;
  label_: string;
  name: string;
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
  stringMaker_: TStringMaker;
  number: Integer;
begin
        list := TBasicArrayListD.Create();
        string_ := Self.textFieldItem.getString();
        textLength := System.Length(string_);
        label_ := Self.textFieldItem.getLabel();
        name := Copy(label_, (0) + 1, ((System.Length(label_)) - (2)) - (0));
        smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
        stringMaker_ := TStringMaker.Create();
        if ((textLength) > (0)) and ((textLength) < (Self.maxChars)) then begin
            try
                number := smallIntegerSingletonFactory_.createInstance(StrToInt(Self.textFieldItem.getString()));
                if ((number)) > (Self.min) then begin
                    stringMaker_.delete_(0, stringMaker_.length());
                    list.add(TJava.Box(stringMaker_.append(name).append(' is to small').toString()));
                end else if ((number)) > (Self.max) then begin
                    stringMaker_.delete_(0, stringMaker_.length());
                    list.add(TJava.Box(stringMaker_.append(name).append(' is to large').toString()));
                end;
            except
                on e: SysUtils.Exception do begin
                stringMaker_.delete_(0, stringMaker_.length());
                list.add(TJava.Box(stringMaker_.append(name).append(' is not a number').toString()));
                end;
            end;
        end else begin
            if (textLength) < (1) then begin
                stringMaker_.delete_(0, stringMaker_.length());
                list.add(TJava.Box(stringMaker_.append(name).append(' is to short').toString()));
            end else if (textLength) > (Self.maxChars) then begin
                stringMaker_.delete_(0, stringMaker_.length());
                list.add(TJava.Box(stringMaker_.append(name).append(' is to long').toString()));
            end;
        end;
        Exit(list);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

