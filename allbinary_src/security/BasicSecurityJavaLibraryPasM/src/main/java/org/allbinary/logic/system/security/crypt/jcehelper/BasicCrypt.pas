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
unit BasicCrypt;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CryptInterface, ByteUtil;

type
  {AB:TYPES}
  TBasicCrypt = class(TInterfacedObject, ICryptInterface)
  public
    byteUtil: TByteUtil;
    key: TArray<ShortInt>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(keyAsString: string);
        function encrypt(array_: TArray<ShortInt>): TArray<ShortInt>; virtual;
        function decrypt(array_: TArray<ShortInt>): TArray<ShortInt>; virtual;
        function mutilate(array_: TArray<ShortInt>): TArray<ShortInt>; virtual;
  end;

implementation
uses
  TsUtil, NullUtil, PreLogUtil, CommonStrings;


{AB:CODE}

procedure TBasicCrypt.InitFields;
begin
  Self.byteUtil := TByteUtil.getInstance();
  
end;

function TBasicCrypt.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicCrypt.Create(keyAsString: string);
var
  key: TArray<ShortInt>;
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        key := TNullUtil.getInstance().NULL_BYTE_ARRAY;
        try
            key := TTsUtil.getInstance().getByteArray(keyAsString);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            TPreLogUtil.putOE(commonStrings_.EXCEPTION, TJava.Box(Self), 'AbCrypt(alg,key)', TJava.Box(e));
            end;
        end;
        Self.key := key;
end;
    

function TBasicCrypt.encrypt(array_: TArray<ShortInt>): TArray<ShortInt>;
begin
        try
            Exit(Self.mutilate(array_));
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putOE('Encrypt Failed', TJava.Box(Self), 'encrypt', TJava.Box(e));
            Exit(TNullUtil.getInstance().NULL_BYTE_ARRAY);
            end;
        end;
end;
    

function TBasicCrypt.decrypt(array_: TArray<ShortInt>): TArray<ShortInt>;
begin
        try
            Exit(Self.mutilate(array_));
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putOE('decrypt Failed', TJava.Box(Self), 'decrypt', TJava.Box(e));
            Exit(TNullUtil.getInstance().NULL_BYTE_ARRAY);
            end;
        end;
end;
    

function TBasicCrypt.mutilate(array_: TArray<ShortInt>): TArray<ShortInt>;
var
  value: ShortInt;
  index: Integer;
begin
        
        for index := 0 to System.Length(Self.key) - 1 do begin
            value := Self.key[index];
            array_ := Self.byteUtil.xor_(array_, value);
        end;
        Exit(array_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

