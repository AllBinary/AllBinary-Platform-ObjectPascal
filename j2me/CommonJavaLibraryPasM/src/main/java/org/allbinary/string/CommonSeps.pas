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
// package org.allbinary.string
unit CommonSeps;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TCommonSeps = class(TObject)
  public
    NEW_LINE: string;
    SEMICOLON: string;
    EQUALS: string;
    SPACE: string;
    COMMA: string;
    COLON: string;
    PERIOD: string;
    UNDERSCORE: string;
    COLON_SEP: string;
    COMMA_SEP: string;
    PARENTHESIS_OPEN: string;
    PARENTHESIS_CLOSE: string;
    BRACE_OPEN: string;
    BRACE_CLOSE: string;
    BRACKET_OPEN: string;
    BRACKET_CLOSE: string;
    DASH: string;
    PERCENT: string;
    AMPERSAND: string;
    FORWARD_SLASH: string;
    BACK_SLASH: string;
    QUESTION: string;
    QUOTE: string;
    QUOTE_END: string;
    COMMENT: string;
    INDENT: string;
    class var instance: TCommonSeps;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCommonSeps; static;
  end;

implementation
uses
  JsType, StringMaker, JsMethod, JsProperty;


{AB:CODE}

procedure TCommonSeps.InitFields;
begin
  Self.NEW_LINE := ''#10'';
  Self.SEMICOLON := ';';
  Self.EQUALS := '=';
  Self.SPACE := ' ';
  Self.COMMA := ',';
  Self.COLON := ':';
  Self.PERIOD := '.';
  Self.UNDERSCORE := '_';
  Self.COLON_SEP := TStringMaker.Create().append(Self.COLON).append(Self.SPACE).toString();
  Self.COMMA_SEP := TStringMaker.Create().append(Self.COMMA).append(Self.SPACE).toString();
  Self.PARENTHESIS_OPEN := '(';
  Self.PARENTHESIS_CLOSE := ')';
  Self.BRACE_OPEN := '{';
  Self.BRACE_CLOSE := '}';
  Self.BRACKET_OPEN := '[';
  Self.BRACKET_CLOSE := ']';
  Self.DASH := '-';
  Self.PERCENT := '%';
  Self.AMPERSAND := '&';
  Self.FORWARD_SLASH := '/';
  Self.BACK_SLASH := '\';
  Self.QUESTION := '?';
  Self.QUOTE := '"';
  Self.QUOTE_END := '",';
  Self.COMMENT := '//';
  Self.INDENT := '    ';
end;

constructor TCommonSeps.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCommonSeps.getInstance: TCommonSeps;
begin
        Exit(TCommonSeps.instance);
end;

initialization
  {AB:INITIALIZATION}
  TCommonSeps.instance := TCommonSeps.Create();
  {AB:END}

end.

