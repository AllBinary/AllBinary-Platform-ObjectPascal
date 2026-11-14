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
// package org.allbinary.midlet
unit MidletStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TMidletStrings = class(TObject)
  public
    COMMAND_ACTION: string;
    class var instance: TMidletStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TMidletStrings; static;
  end;

implementation

{AB:CODE}

procedure TMidletStrings.InitFields;
begin
  Self.COMMAND_ACTION := 'commandAction';
end;

constructor TMidletStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TMidletStrings.getInstance: TMidletStrings;
begin
        Exit(TMidletStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TMidletStrings.instance := TMidletStrings.Create();
  {AB:END}

end.

