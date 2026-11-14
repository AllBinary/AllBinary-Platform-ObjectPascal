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
// package org.allbinary.logic.system.security.crypt.jcehelper
unit AbCrypt;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TsUtil, CryptInterface, BaseSecretComposite;

type
  {AB:TYPES}
  TAbCrypt = class(TInterfacedObject, ICryptInterface)
  public
    tsUtil: TTsUtil;
    secretComposite: TBaseSecretComposite;
    algorithm: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(algorithm: string);
        procedure init(keyAsString: string); virtual;
        function encrypt(array_: TArray<ShortInt>): TArray<ShortInt>; virtual;
        function decrypt(array_: TArray<ShortInt>): TArray<ShortInt>; virtual;
  end;

implementation
uses
  KeySpecFactory, SecretComposite, NullUtil, PreLogUtil, CommonStrings, BouncyCastleProvider;


{AB:CODE}

procedure TAbCrypt.InitFields;
begin
  Self.tsUtil := TTsUtil.getInstance();
  Self.secretComposite := TBaseSecretComposite.NULL_SECRET_COMPOSITE;
  
end;

function TAbCrypt.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAbCrypt.Create(algorithm: string);
begin
    inherited Create;
    InitFields;
        Self.algorithm := algorithm;
end;
    

procedure TAbCrypt.init(keyAsString: string);
var
  commonStrings_: TCommonStrings;
  key: TArray<ShortInt>;
  keySpec_: TKeySpec;
  keyFactory: TSecretKeyFactory;
  secretKey_: TSecretKey;
  cipher_: TCipher;
begin
        commonStrings_ := TCommonStrings.getInstance();
        try
            try
                TSecurity.addProvider(TBouncyCastleProvider.Create());
            except
                on e: SysUtils.Exception do begin
                TPreLogUtil.putOE(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.INIT, TJava.Box(e));
                end;
            end;
            key := Self.tsUtil.getByteArray(keyAsString);
            keySpec_ := TKeySpecFactory.getInstance().getInstance(Self.algorithm, key);
            keyFactory := TSecretKeyFactory.getInstance(Self.algorithm);
            secretKey_ := keyFactory.generateSecret(keySpec_);
            cipher_ := TCipher.getInstance(Self.algorithm);
            Self.secretComposite := TSecretComposite.Create(secretKey_, cipher_, key);
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putOE('init Failed', TJava.Box(Self), commonStrings_.INIT, TJava.Box(e));
            end;
        end;
end;
    

function TAbCrypt.encrypt(array_: TArray<ShortInt>): TArray<ShortInt>;
begin
        try
            Exit(Self.secretComposite.encrypt(array_));
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putOE('Encrypt Failed', TJava.Box(Self), 'encrypt', TJava.Box(e));
            Exit(TNullUtil.getInstance().NULL_BYTE_ARRAY);
            end;
        end;
end;
    

function TAbCrypt.decrypt(array_: TArray<ShortInt>): TArray<ShortInt>;
begin
        try
            Exit(Self.secretComposite.decrypt(array_));
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putOE('decrypt Failed', TJava.Box(Self), 'decrypt', TJava.Box(e));
            Exit(TNullUtil.getInstance().NULL_BYTE_ARRAY);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

