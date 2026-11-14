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
// package org.allbinary.logic.java.characters
unit CharacterSetData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TCharacterSetData = class(TObject)
  public
    US_ASCII: string;
    ISO_8859_1: string;
    UTF_8: string;
    UTF_16: string;
    UTF_16BE: string;
    UTF_16LE: string;
    class var instance: TCharacterSetData;
    procedure InitFields;
        class function getInstance: TCharacterSetData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TCharacterSetData.InitFields;
begin
  Self.US_ASCII := 'US-ASCII';
  Self.ISO_8859_1 := 'ISO-8859-1';
  Self.UTF_8 := 'UTF-8';
  Self.UTF_16 := 'UTF-16';
  Self.UTF_16BE := 'UTF-16BE';
  Self.UTF_16LE := 'UTF-16LE';
end;
    

class function TCharacterSetData.getInstance: TCharacterSetData;
begin
        Exit(TCharacterSetData.instance);
end;
    

constructor TCharacterSetData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TCharacterSetData.instance := TCharacterSetData.Create();
  {AB:END}

end.

