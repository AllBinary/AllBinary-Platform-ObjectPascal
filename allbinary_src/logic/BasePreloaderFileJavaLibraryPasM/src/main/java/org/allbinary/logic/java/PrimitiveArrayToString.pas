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
// package org.allbinary.logic.java
unit PrimitiveArrayToString;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPrimitiveArrayToString = class(TObject)
  public
    constructor Create;
        class function toString(floats: TArray<Single>): string; static;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

constructor TPrimitiveArrayToString.Create;
begin
  inherited Create;
end;
    

class function TPrimitiveArrayToString.toString(floats: TArray<Single>): string;
var
  stringBuffer: TStringMaker;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        for index := 0 to System.Length(floats) - 1 do begin
            stringBuffer.appendfloat(floats[index]);
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

