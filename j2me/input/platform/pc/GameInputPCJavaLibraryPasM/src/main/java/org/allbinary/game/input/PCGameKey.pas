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
unit PCGameKey;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Input;

type
  {AB:TYPES}
  TPCGameKey = class(TInput)
  public
        constructor Create(keyCode: Integer; name: string);
        function toString: string; override;
        class function getString(keyCode: Integer): string; static;
  end;

implementation
uses
  InputFactory, StringUtil;


{AB:CODE}
    

constructor TPCGameKey.Create(keyCode: Integer; name: string);
var
  id: Integer;
begin
        inherited Create(keyCode, name);
        id := Self.getId();
        if (id) >= (0) then begin
            TInputFactory.getInstance().add(id, Self);
        end;
end;
    

function TPCGameKey.toString: string;
begin
        Exit('PCGameKey: ' + inherited toString());
end;
    

class function TPCGameKey.getString(keyCode: Integer): string;
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

