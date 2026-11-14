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
// package org.allbinary.logic.string.tokens
unit Tokenizer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABHashtable, BasicArrayList;

type
  {AB:TYPES}
  TTokenizer = class(TObject)
  public
    sep: string;
    endSep: string;
    procedure InitFields;
        constructor Create(sep: string);
        procedure setSep(sep: string); virtual;
        procedure setEndSep(endSep: string); virtual;
        function getInsideSep(string_: string): TBasicArrayList; virtual;
        function getTokensFromString(string_: string; tokenVector: TBasicArrayList): TBasicArrayList; virtual;
        function getTokens(stringVector: TBasicArrayList): TABHashtable<TObject, TObject>; virtual;
  end;

implementation
uses
  TsUtil, StdUtil, StringUtil, BasicArrayListD;


{AB:CODE}

procedure TTokenizer.InitFields;
begin
  
  Self.endSep := TStringUtil.getInstance().EMPTY_STRING;
end;
    

constructor TTokenizer.Create(sep: string);
begin
    inherited Create;
    InitFields;
        if (TTsUtil.getInstance().compareTo(sep, TStringUtil.getInstance().EMPTY_STRING)) = (0) then begin
            raise SysUtils.Exception.Create('Sep provided is not valid');
        end;
        Self.sep := sep;
end;
    

procedure TTokenizer.setSep(sep: string);
begin
        Self.sep := sep;
end;
    

procedure TTokenizer.setEndSep(endSep: string);
begin
        Self.endSep := endSep;
end;
    

function TTokenizer.getInsideSep(string_: string): TBasicArrayList;
var
  tokenList: TBasicArrayList;
  index: Integer;
  size: Integer;
  end_: Integer;
begin
        tokenList := TBasicArrayListD.Create();
        index := 0;
        size := System.Length(string_);
        while (index) < (size) do begin
            index := string_.indexOf(Self.sep, index);
            if (index) <> (-1) then begin
                end_ := string_.indexOf(Self.endSep, (index) + (System.Length(Self.sep)));
                if (end_) <> (-1) then begin
                    tokenList.add(TJava.Box(Copy(string_, ((index) + (System.Length(Self.sep))) + 1, ((end_) - (((System.Length(Self.endSep)) - (1)))) - ((index) + (System.Length(Self.sep))))));
                    index := (end_) + (System.Length(Self.endSep));
                end else begin
                end;
            end else begin
                Break;
            end;
        end;
        Exit(tokenList);
end;
    

function TTokenizer.getTokensFromString(string_: string; tokenVector: TBasicArrayList): TBasicArrayList;
var
  index: Integer;
  end_: Integer;
begin
        index := 0;
        end_ := 0;
        while (index) < (System.Length(string_)) do begin
            end_ := string_.indexOf(Self.sep, index);
            if (end_) <> (-1) then begin
                tokenVector.add(TJava.Box(Copy(string_, (index) + 1, (end_) - (index))));
                index := (end_) + (System.Length(Self.sep));
            end else begin
                tokenVector.add(TJava.Box(Copy(string_, (index) + 1, (System.Length(string_)) - (index))));
                Break;
            end;
        end;
        Exit(tokenVector);
end;
    

function TTokenizer.getTokens(stringVector: TBasicArrayList): TABHashtable<TObject, TObject>;
var
  tokenHashtable: TABHashtable<TObject, TObject>;
  string_: string;
  end_: Integer;
  size: Integer;
  index: Integer;
begin
        tokenHashtable := TStdUtil.getInstance().createHashtable();
        string_ := TStringUtil.getInstance().EMPTY_STRING;
        end_ := 0;
        size := stringVector.size();
        for index := 0 to size - 1 do begin
            string_ := TJava.UnboxString(TJava.ToObject(stringVector.objectArray[index]));
            end_ := (Pos(TJava.ToString(Self.sep), string_) - 1);
            if (end_) >= (0) then begin
                tokenHashtable.put(TJava.Box(Copy(string_, (0) + 1, (end_) - (0))), TJava.Box(Copy(string_, ((end_) + (1)) + 1, (System.Length(string_)) - ((end_) + (1)))));
            end;
        end;
        Exit(tokenHashtable);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

