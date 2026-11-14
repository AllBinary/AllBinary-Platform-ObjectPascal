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
// package org.allbinary.data
unit CamelCaseUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StringMaker, CommonSeps;

type
  {AB:TYPES}
  TCamelCaseUtil = class(TObject)
  public
    commonSeps: TCommonSeps;
    class var instance: TCamelCaseUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCamelCaseUtil; static;
        function getAsCamelCase(string_: string; stringBuilder: TStringMaker): string; virtual;
  end;

implementation
uses
  StringUtil, Tokenizer, BasicArrayList, BasicArrayListD;


{AB:CODE}

procedure TCamelCaseUtil.InitFields;
begin
  Self.commonSeps := TCommonSeps.getInstance();
end;

constructor TCamelCaseUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCamelCaseUtil.getInstance: TCamelCaseUtil;
begin
        Exit(TCamelCaseUtil.instance);
end;
    

// throws Exception
function TCamelCaseUtil.getAsCamelCase(string_: string; stringBuilder: TStringMaker): string;
var
  stringValidationUtil_: TObject;
  list: TBasicArrayList;
  tokenizer_: TTokenizer;
  size: Integer;
  word: string;
  i: Integer;
begin
        stringValidationUtil_ := nil;
        stringBuilder.delete_(0, stringBuilder.length());
        list := TBasicArrayListD.Create();
        tokenizer_ := TTokenizer.Create(Self.commonSeps.UNDERSCORE);
        tokenizer_.getTokensFromString(string_, list);
        size := list.size();
        
        for i := 0 to size - 1 do begin
            word := TJava.UnboxString(TJava.ToObject(list.get(i)));
            word := TJava.IfThen<Variant>((word = ''), word, TStringMaker.Create().appendchar(UpCase(word[(0) + 1])).append(LowerCase(Copy(word, (1) + 1, MaxInt))).toString());
            stringBuilder.append(word);
        end;
        Exit(stringBuilder.toString());
end;

initialization
  {AB:INITIALIZATION}
  TCamelCaseUtil.instance := TCamelCaseUtil.Create();
  {AB:END}

end.

