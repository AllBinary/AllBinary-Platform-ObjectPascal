{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.crypt.jcehelper
unit BaseSecretComposite;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TBaseSecretComposite = class(TObject)
  public
    class var NULL_SECRET_COMPOSITE: TBaseSecretComposite;
    constructor Create;
        function encrypt(array_: TArray<ShortInt>): TArray<ShortInt>; virtual;
        function decrypt(array_: TArray<ShortInt>): TArray<ShortInt>; virtual;
  end;

implementation
uses
  NullUtil;


{AB:CODE}

constructor TBaseSecretComposite.Create;
begin
  inherited Create;
end;
    

// throws Exception
function TBaseSecretComposite.encrypt(array_: TArray<ShortInt>): TArray<ShortInt>;
begin
        Exit(TNullUtil.getInstance().NULL_BYTE_ARRAY);
end;
    

// throws Exception
function TBaseSecretComposite.decrypt(array_: TArray<ShortInt>): TArray<ShortInt>;
begin
        Exit(TNullUtil.getInstance().NULL_BYTE_ARRAY);
end;

initialization
  {AB:INITIALIZATION}
  TBaseSecretComposite.NULL_SECRET_COMPOSITE := TBaseSecretComposite.Create();
  {AB:END}

end.

