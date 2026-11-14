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
// package org.allbinary.logic.java.character
unit CharacterSet;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // import java.nio.charset.Charset;
  TCharacterSet = class(TObject)
  public
        constructor Create;
        function toString: string; virtual;
  end;

implementation

{AB:CODE}
    

constructor TCharacterSet.Create;
begin
    inherited Create;
end;
    

function TCharacterSet.toString: string;
begin
        Exit('Default Character Set: Empty Implementation');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

