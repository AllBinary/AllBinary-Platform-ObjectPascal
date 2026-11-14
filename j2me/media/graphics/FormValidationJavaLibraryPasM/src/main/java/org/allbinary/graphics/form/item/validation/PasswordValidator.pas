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
unit PasswordValidator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABTextFieldItem, TextFieldItemValidator;

type
  {AB:TYPES}
  TPasswordValidator = class(TTextFieldItemValidator)
  public
        constructor Create(textFieldItem: TABTextFieldItem; min: Integer; max: Integer; allowOnEmpty: Boolean);
  end;

implementation

{AB:CODE}
    

constructor TPasswordValidator.Create(textFieldItem: TABTextFieldItem; min: Integer; max: Integer; allowOnEmpty: Boolean);
begin
        inherited Create(textFieldItem, min, max, allowOnEmpty);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

