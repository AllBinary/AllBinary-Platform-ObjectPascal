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
unit StringValidationJSEUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TStringValidationJSEUtil = class(TObject)
  public
        constructor Create;
        class function isBlank(string_: string): Boolean; static;
  end;

implementation

{AB:CODE}
    

constructor TStringValidationJSEUtil.Create;
begin
    inherited Create;
end;
    

class function TStringValidationJSEUtil.isBlank(string_: string): Boolean;
var
  len: Integer;
  c: WideChar;
  i: Integer;
begin
        len := System.Length(string_);
        for i := 0 to len - 1 do begin
            c := string_[(i) + 1];
            if (IsWhiteSpace(c)) = (False) then begin
                Exit(False);
            end;
        end;
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

