{
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.util
unit ABCharacter;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TABCharacter = class(TObject)
  public
    constructor Create;
        class function toString(ch: WideChar): string; static;
  end;

implementation

{AB:CODE}

constructor TABCharacter.Create;
begin
  inherited Create;
end;
    

class function TABCharacter.toString(ch: WideChar): string;
begin
        Exit(TJava.ToString(ch));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

