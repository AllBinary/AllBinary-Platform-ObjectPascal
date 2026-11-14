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
// package org.allbinary.logic.io
unit AbIOSystem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAbIOSystem = class(TObject)
  public
    type_: string;
    class var instance: TAbIOSystem;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAbIOSystem; static;
        function getType: string; virtual;
        function isType(type_: string): Boolean; virtual;
  end;

implementation

{AB:CODE}

procedure TAbIOSystem.InitFields;
begin
  Self.type_ := 'java.io';
end;

constructor TAbIOSystem.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAbIOSystem.getInstance: TAbIOSystem;
begin
        Exit(TAbIOSystem.instance);
end;
    

function TAbIOSystem.getType: string;
begin
        Exit(Self.type_);
end;
    

function TAbIOSystem.isType(type_: string): Boolean;
begin
        if (CompareStr(Self.type_, type_)) = (0) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TAbIOSystem.instance := TAbIOSystem.Create();
  {AB:END}

end.

