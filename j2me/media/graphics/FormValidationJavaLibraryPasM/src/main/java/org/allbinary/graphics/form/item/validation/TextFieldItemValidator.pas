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
unit TextFieldItemValidator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABTextFieldItem, ValidatorBase, BasicArrayList;

type
  {AB:TYPES}
  TTextFieldItemValidator = class(TValidatorBase)
  public
    textFieldItem: TABTextFieldItem;
    min: Integer;
    max: Integer;
    allowOnEmpty: Boolean;
    procedure InitFields;
        constructor Create(textFieldItem: TABTextFieldItem; min: Integer; max: Integer; allowOnEmpty: Boolean);
        function isValid: Boolean; override;
        function toList: TBasicArrayList; override;
  end;

implementation
uses
  BooleanFactory, StringMaker, BasicArrayListD;


{AB:CODE}

procedure TTextFieldItemValidator.InitFields;
begin
  
  
  
  
end;
    

constructor TTextFieldItemValidator.Create(textFieldItem: TABTextFieldItem; min: Integer; max: Integer; allowOnEmpty: Boolean);
begin
    inherited Create;
    InitFields;
        Self.textFieldItem := textFieldItem;
        Self.min := min;
        Self.max := max;
        Self.allowOnEmpty := allowOnEmpty;
end;
    

function TTextFieldItemValidator.isValid: Boolean;
var
  booleanFactory_: TBooleanFactory;
  result_: Boolean;
  string_: string;
  textLength: Integer;
begin
        booleanFactory_ := TBooleanFactory.getInstance();
        result_ := booleanFactory_.TRUE_;
        string_ := Self.textFieldItem.getString();
        textLength := System.Length(string_);
        if ((((textLength) = (0)) and (Self.allowOnEmpty))) or (((textLength) > (Self.min)) and ((textLength) < (Self.max))) then begin
        end else begin
            if (textLength) < (Self.min) then begin
                result_ := booleanFactory_.FALSE_;
            end else if (textLength) > (Self.max) then begin
                result_ := booleanFactory_.FALSE_;
            end;
        end;
        Exit(result_);
end;
    

function TTextFieldItemValidator.toList: TBasicArrayList;
var
  list: TBasicArrayList;
  string_: string;
  textLength: Integer;
  label_: string;
  name: string;
begin
        list := TBasicArrayListD.Create();
        string_ := Self.textFieldItem.getString();
        textLength := System.Length(string_);
        if ((textLength) > (Self.min)) and ((textLength) < (Self.max)) then begin
        end else begin
            label_ := Self.textFieldItem.getLabel();
            name := Copy(label_, (0) + 1, ((System.Length(label_)) - (2)) - (0));
            if (textLength) < (Self.min) then begin
                list.add(TJava.Box(TStringMaker.Create().append(name).append(' is to short').toString()));
            end else if (textLength) > (Self.max) then begin
                list.add(TJava.Box(TStringMaker.Create().append(name).append(' is to long').toString()));
            end;
        end;
        Exit(list);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

