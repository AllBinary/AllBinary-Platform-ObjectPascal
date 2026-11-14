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
// package org.allbinary.logic.io
unit StreamUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TStreamUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TStreamUtil;
    procedure InitFields;
        class function getInstance: TStreamUtil; static;
        constructor Create;
        function get(inputStream_: TInputStream; outputStream_: TOutputStream; buffer: TArray<ShortInt>): TOutputStream; virtual;
        function getByteArray(inputStream_: TInputStream; outputStream2: TByteArrayOutputStream; byteArray: TArray<ShortInt>): TArray<ShortInt>; virtual;
        function close(closeable_: ICloseable): Boolean; virtual;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TStreamUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TStreamUtil.getInstance: TStreamUtil;
begin
        Exit(TStreamUtil.instance);
end;
    

constructor TStreamUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TStreamUtil.get(inputStream_: TInputStream; outputStream_: TOutputStream; buffer: TArray<ShortInt>): TOutputStream;
var
  len: Integer;
begin
        len := 0;
        while True do begin
            len := inputStream_.read(buffer, 0, System.Length(buffer));
            if (len) <> (-1) then begin
            end else begin
                Break;
            end;
            outputStream_.write(buffer, 0, len);
        end;
        Exit(outputStream_);
end;
    

// throws Exception
function TStreamUtil.getByteArray(inputStream_: TInputStream; outputStream2: TByteArrayOutputStream; byteArray: TArray<ShortInt>): TArray<ShortInt>;
var
  outputStream_: TByteArrayOutputStream;
begin
        outputStream_ := outputStream2;
        try
        try
            Self.get(inputStream_, outputStream_, byteArray);
            Exit(outputStream_.toByteArray());
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
        finally
            Self.close(outputStream_);
        end;
end;
    

function TStreamUtil.close(closeable_: ICloseable): Boolean;
var
  commonStrings_: TCommonStrings;
begin
        try
            if (closeable_) <> (nil) then begin
                closeable_.close();
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.CLOSE, TJava.Box(e));
            Exit(False);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TStreamUtil.instance := TStreamUtil.Create();
  {AB:END}

end.

