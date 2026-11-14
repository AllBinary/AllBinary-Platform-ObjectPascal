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
// package org.allbinary.init
unit Init;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommonStrings, InitInterface;

type
  {AB:TYPES}
  TInit = class(TInterfacedObject, IInitInterface)
  public
    commonStrings: TCommonStrings;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        procedure init; virtual;
  end;

implementation

{AB:CODE}

procedure TInit.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
end;

function TInit.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TInit.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws Exception
procedure TInit.init;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

