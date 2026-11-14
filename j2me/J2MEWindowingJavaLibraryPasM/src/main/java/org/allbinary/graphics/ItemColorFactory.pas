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
// package org.allbinary.graphics
unit ItemColorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TItemColorFactory = class(TObject)
  public
    INVERT_PAINT: Integer;
    PAINT: Integer;
    TEXT_FIELD_NO_FOCUS: Integer;
    class var instance: TItemColorFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TItemColorFactory; static;
  end;

implementation

{AB:CODE}

procedure TItemColorFactory.InitFields;
begin
  Self.INVERT_PAINT := $FF000000;
  Self.PAINT := $FFe07718;
  Self.TEXT_FIELD_NO_FOCUS := $7F7F7F;
end;

constructor TItemColorFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TItemColorFactory.getInstance: TItemColorFactory;
begin
        Exit(TItemColorFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TItemColorFactory.instance := TItemColorFactory.Create();
  {AB:END}

end.

