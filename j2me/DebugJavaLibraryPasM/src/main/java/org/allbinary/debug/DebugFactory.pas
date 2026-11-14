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
// package org.allbinary.debug
unit DebugFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DebugInterface;

type
  {AB:TYPES}
  TDebugFactory = class(TObject)
  public
    constructor Create;
        class function getInstance: IDebugInterface; static;
  end;

implementation
uses
  NoDebug;


{AB:CODE}

constructor TDebugFactory.Create;
begin
  inherited Create;
end;
    

class function TDebugFactory.getInstance: IDebugInterface;
begin
        Exit(TNoDebug.getInstance());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

