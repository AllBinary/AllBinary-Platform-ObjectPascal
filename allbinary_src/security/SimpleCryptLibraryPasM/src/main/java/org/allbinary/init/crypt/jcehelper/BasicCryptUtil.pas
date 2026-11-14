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
// package org.allbinary.init.crypt.jcehelper
unit BasicCryptUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TsUtil, LogUtil, CryptInterface;

type
  {AB:TYPES}
  TBasicCryptUtil = class(TObject)
  public
    logUtil: TLogUtil;
    tsUtil: TTsUtil;
    XML_START: string;
    class var instance: TBasicCryptUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TBasicCryptUtil; static;
        function getDecryptedInputStream(inputStream_: TInputStream; cryptInterface_: ICryptInterface): TInputStream; virtual;
  end;

implementation

{AB:CODE}

procedure TBasicCryptUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tsUtil := TTsUtil.getInstance();
  Self.XML_START := '<?xml';
end;

constructor TBasicCryptUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TBasicCryptUtil.getInstance: TBasicCryptUtil;
begin
        Exit(TBasicCryptUtil.instance);
end;
    

// throws Exception
function TBasicCryptUtil.getDecryptedInputStream(inputStream_: TInputStream; cryptInterface_: ICryptInterface): TInputStream;
var
  buffer: TByteArrayOutputStream;
  ch: Integer;
  decrypted: TArray<ShortInt>;
  decryptedString: string;
  index: Integer;
begin
        buffer := TByteArrayOutputStream.Create;
        
        while True do begin
            ch := inputStream_.read();
            if (ch) = (-1) then begin
                Break;
            end;
            buffer.write(ch);
        end;
        decrypted := cryptInterface_.decrypt(buffer.toByteArray());
        decryptedString := TJava.NewString(decrypted);
        index := (Pos(TJava.ToString(Self.XML_START), decryptedString) - 1);
        if (index) > (0) then begin
            decryptedString := Copy(decryptedString, (index) + 1, MaxInt);
        end;
        Exit(TByteArrayInputStream.Create(Self.tsUtil.getByteArray(decryptedString)));
end;

initialization
  {AB:INITIALIZATION}
  TBasicCryptUtil.instance := TBasicCryptUtil.Create();
  {AB:END}

end.

