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
// package org.allbinary.system
unit Memory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // ActualPlatform
  TMemory = class(TObject)
  public
    constructor Create;
        class function getInfo: string; static;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

constructor TMemory.Create;
begin
  inherited Create;
end;
    

class function TMemory.getInfo: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

