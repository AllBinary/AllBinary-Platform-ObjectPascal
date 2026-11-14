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
// package org.allbinary.logic.system.security.licensing
unit StoreAppClientInformation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LongArrayIdentifierInterface, AbeClientInformation;

type
  {AB:TYPES}
  TStoreAppClientInformation = class(TAbeClientInformation, ILongArrayIdentifierInterface)
  public
    longArrayIdentifier: TArray<Int64>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(name: string; version: string; specialName: string; shortName: string; longArrayIdentifier: TArray<Int64>);
        function getLongArrayIdentifier: TArray<Int64>; virtual;
  end;

implementation

{AB:CODE}

procedure TStoreAppClientInformation.InitFields;
begin
  
end;

function TStoreAppClientInformation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStoreAppClientInformation.Create(name: string; version: string; specialName: string; shortName: string; longArrayIdentifier: TArray<Int64>);
begin
        inherited Create(name, version, specialName, shortName);
        InitFields;
        Self.longArrayIdentifier := longArrayIdentifier;
end;
    

function TStoreAppClientInformation.getLongArrayIdentifier: TArray<Int64>;
begin
        Exit(Self.longArrayIdentifier);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

