{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.crypt.jcehelper
unit NoCrypt;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CryptInterface;

type
  {AB:TYPES}
  TNoCrypt = class(TInterfacedObject, ICryptInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function encrypt(array_: TArray<ShortInt>): TArray<ShortInt>; virtual;
        function decrypt(array_: TArray<ShortInt>): TArray<ShortInt>; virtual;
  end;

implementation

{AB:CODE}

function TNoCrypt.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNoCrypt.Create;
begin
  inherited Create;
end;
    

function TNoCrypt.encrypt(array_: TArray<ShortInt>): TArray<ShortInt>;
begin
        Exit(array_);
end;
    

function TNoCrypt.decrypt(array_: TArray<ShortInt>): TArray<ShortInt>;
begin
        Exit(array_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

