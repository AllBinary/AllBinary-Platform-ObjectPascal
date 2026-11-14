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
// package org.allbinary.game.input
unit J2MEGameKey;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Input;

type
  {AB:TYPES}
  TJ2MEGameKey = class(TInput)
  public
        constructor Create(key: Integer; keyName: string);
        function toString: string; override;
        class function getString(keyCode: Integer): string; static;
  end;

implementation
uses
  InputFactory, StringMaker, StringUtil;


{AB:CODE}
    

constructor TJ2MEGameKey.Create(key: Integer; keyName: string);
var
  id: Integer;
  inputFactory_: TInputFactory;
begin
        inherited Create(key, keyName);
        id := Self.getId();
        if (id) >= (0) then begin
            inputFactory_ := TInputFactory.getInstance();
            inputFactory_.add(id, Self);
        end;
end;
    

function TJ2MEGameKey.toString: string;
begin
        Exit(TStringMaker.Create().append('J2MEGameKey: ').append(inherited toString()).toString());
end;
    

class function TJ2MEGameKey.getString(keyCode: Integer): string;
var
  input_: TInput;
begin
        input_ := TInputFactory.getInstance().getInstanceById(keyCode);
        if (input_) <> (nil) then begin
            Exit(input_.getName());
        end else begin
            Exit(TStringUtil.getInstance().EMPTY_STRING);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

