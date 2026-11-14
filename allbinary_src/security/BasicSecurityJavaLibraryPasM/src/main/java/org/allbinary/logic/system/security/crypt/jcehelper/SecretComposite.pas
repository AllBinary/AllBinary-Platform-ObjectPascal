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
unit SecretComposite;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ByteUtil, BaseSecretComposite;

type
  {AB:TYPES}
  TSecretComposite = class(TBaseSecretComposite)
  public
    byteUtil: TByteUtil;
    cipher: TCipher;
    secretKey: TSecretKey;
    key: TArray<ShortInt>;
    procedure InitFields;
        constructor Create(secretKey_: TSecretKey; cipher_: TCipher; key: TArray<ShortInt>);
        function encrypt(array_: TArray<ShortInt>): TArray<ShortInt>; override;
        function decrypt(array_: TArray<ShortInt>): TArray<ShortInt>; override;
        function mutilate(array_: TArray<ShortInt>): TArray<ShortInt>;
  end;

implementation

{AB:CODE}

procedure TSecretComposite.InitFields;
begin
  Self.byteUtil := TByteUtil.getInstance();
  
  
  
end;
    

constructor TSecretComposite.Create(secretKey_: TSecretKey; cipher_: TCipher; key: TArray<ShortInt>);
begin
    inherited Create;
    InitFields;
        Self.secretKey := secretKey_;
        Self.cipher := cipher_;
        Self.key := key;
end;
    

// throws Exception
function TSecretComposite.encrypt(array_: TArray<ShortInt>): TArray<ShortInt>;
begin
        array_ := Self.mutilate(array_);
        Self.cipher.init(TCipher.ENCRYPT_MODE, Self.secretKey);
        Exit(Self.cipher.doFinal(array_));
end;
    

// throws Exception
function TSecretComposite.decrypt(array_: TArray<ShortInt>): TArray<ShortInt>;
begin
        Self.cipher.init(TCipher.DECRYPT_MODE, Self.secretKey);
        Exit(Self.mutilate(Self.cipher.doFinal(array_)));
end;
    

function TSecretComposite.mutilate(array_: TArray<ShortInt>): TArray<ShortInt>;
var
  value: ShortInt;
  index: Integer;
begin
        for index := 0 to System.Length(Self.key) - 1 do begin
            value := Self.key[index];
            if ((Integer(value)) < (8)) and ((Integer(value)) > (0)) then begin
                array_ := Self.byteUtil.xorByte(array_, Integer(value));
            end;
        end;
        Exit(array_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

