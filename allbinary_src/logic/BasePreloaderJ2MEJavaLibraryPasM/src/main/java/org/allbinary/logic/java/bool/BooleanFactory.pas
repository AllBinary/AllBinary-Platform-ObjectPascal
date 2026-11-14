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
// package org.allbinary.logic.java.bool
unit BooleanFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TBooleanFactory = class(TObject)
  public
    TRUE_: Boolean;
    FALSE_: Boolean;
    TRUE_STRING: string;
    FALSE_STRING: string;
    YES: string;
    NO: string;
    class var instance: TBooleanFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TBooleanFactory; static;
        function toStringb(bool: Boolean): string; virtual;
  end;

implementation

{AB:CODE}

procedure TBooleanFactory.InitFields;
begin
  Self.TRUE_ := True;
  Self.FALSE_ := False;
  Self.TRUE_STRING := Self.TRUE_.toString();
  Self.FALSE_STRING := Self.FALSE_.toString();
  Self.YES := 'yes';
  Self.NO := 'no';
end;

constructor TBooleanFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TBooleanFactory.getInstance: TBooleanFactory;
begin
        Exit(TBooleanFactory.instance);
end;
    

function TBooleanFactory.toStringb(bool: Boolean): string;
begin
        if bool then begin
            Exit(Self.TRUE_STRING);
        end else begin
            Exit(Self.FALSE_STRING);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TBooleanFactory.instance := TBooleanFactory.Create();
  {AB:END}

end.

