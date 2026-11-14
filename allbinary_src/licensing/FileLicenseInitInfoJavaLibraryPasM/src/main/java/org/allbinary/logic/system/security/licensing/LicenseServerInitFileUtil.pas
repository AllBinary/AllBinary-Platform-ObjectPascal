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
unit LicenseServerInitFileUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TLicenseServerInitFileUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    NULL_OUTPUT_STREAM: TOutputStream;
    procedure InitFields;
    constructor Create;
        procedure init;
        procedure write;
  end;

implementation
uses
  LicenseInitInfoUtil, ResourceUtil, FileStreamFactory, StreamUtil, FileFactory, SimpleFileUtil, StringUtil;


{AB:CODE}

procedure TLicenseServerInitFileUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.NULL_OUTPUT_STREAM := TSimpleFileUtil.nullOutputStream();
end;

constructor TLicenseServerInitFileUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TLicenseServerInitFileUtil.init;
var
  filePath: string;
begin
        try
            filePath := TLicenseInitInfoUtil.getInstance().INITFILENAME;
            TLicenseInitInfoUtil.getInstance().setFilePath(TStringUtil.getInstance().EMPTY_STRING);
            if TFileFactory.getInstance().isFile(filePath) then begin
                Self.logUtil.putF('Using Existing License File', TJava.Box(Self), Self.commonStrings.INIT);
            end else begin
                Self.write();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.INIT, TJava.Box(e));
            end;
        end;
end;
    

procedure TLicenseServerInitFileUtil.write;
var
  fileOutputStream: TOutputStream;
  resourceUtil_: TResourceUtil;
  filePath: string;
  inputStream_: TInputStream;
  fileStreamFactory_: TFileStreamFactory;
  b: Integer;
  index: Integer;
begin
        fileOutputStream := Self.NULL_OUTPUT_STREAM;
        try
        try
            resourceUtil_ := TResourceUtil.getInstance();
            filePath := TLicenseInitInfoUtil.getInstance().INITFILENAME;
            inputStream_ := resourceUtil_.getResourceAsStream(filePath);
            Self.logUtil.putF('Writing Default License File', TJava.Box(Self), Self.commonStrings.INIT);
            fileStreamFactory_ := TFileStreamFactory.getInstance();
            fileOutputStream := fileStreamFactory_.getFileOutputStreamInstance(TStringUtil.getInstance().EMPTY_STRING, filePath);
            
            index := 0;
            while True do begin
                b := inputStream_.read();
                if (b) = (-1) then begin
                    Break;
                end;
                fileOutputStream.write(b);
                Inc(index);
            end;
            Self.logUtil.putF('Wrote Bytes: ' + IntToStr(index), TJava.Box(Self), Self.commonStrings.INIT);
            fileOutputStream.flush();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.INIT, TJava.Box(e));
            end;
        end;
        finally
            TStreamUtil.getInstance().close(fileOutputStream);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

