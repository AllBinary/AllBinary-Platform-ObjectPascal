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
// package org.allbinary.business.init
unit LicenseInitInfoUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, StringUtil, LicenseInitInfo;

type
  {AB:TYPES}
  TLicenseInitInfoUtil = class(TObject)
  public
    logUtil: TLogUtil;
    stringUtil: TStringUtil;
    INITFILENAME: string;
    ABOUT: string;
    PRIVACY_POLICY: string;
    filePath: string;
    class var instance: TLicenseInitInfoUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TLicenseInitInfoUtil; static;
        procedure setFilePath(filePath: string); virtual;
        procedure write(initData: TLicenseInitInfo); virtual;
        function read: TLicenseInitInfo; virtual;
        function readAgain(initializeCounter: Integer): TLicenseInitInfo; virtual;
        function getFilePath: string; virtual;
  end;

implementation
uses
  TsUtil, PATH_GLOBALS, URLGLOBALS, AbDataInputStream, AbDataOutputStream, AbFileInputStream, DataOutputStreamFactory, FileStreamFactory, StringMaker, DatabaseEncoder, WeakCrypt, CommonLabels;


{AB:CODE}

procedure TLicenseInitInfoUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.stringUtil := TStringUtil.getInstance();
  Self.INITFILENAME := 'licenseinitdata.dat';
  Self.ABOUT := 'about';
  Self.PRIVACY_POLICY := 'privacy_policy';
  Self.filePath := Self.stringUtil.EMPTY_STRING;
end;

constructor TLicenseInitInfoUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TLicenseInitInfoUtil.getInstance: TLicenseInitInfoUtil;
begin
        Exit(TLicenseInitInfoUtil.instance);
end;
    

procedure TLicenseInitInfoUtil.setFilePath(filePath: string);
begin
    TJava.MonitorEnter(Self);
    try
        Self.filePath := filePath;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TLicenseInitInfoUtil.write(initData: TLicenseInitInfo);
var
  tsUtil_: TTsUtil;
  dataOutputStream: TAbDataOutputStream;
  licenseIdCrypted: TArray<ShortInt>;
  numberOfLicenseServers: Integer;
  licenseServerCrypted: TArray<ShortInt>;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        if TJava.Equals(Self.filePath, Self.stringUtil.EMPTY_STRING) then begin
            Self.filePath := (TURLGLOBALS.getMainPath()) + (TPATH_GLOBALS.getInstance().INIT_PATH);
        end;
        try
            tsUtil_ := TTsUtil.getInstance();
            dataOutputStream := TDataOutputStreamFactory.getInstance().getInstance(Self.filePath, Self.INITFILENAME);
            licenseIdCrypted := tsUtil_.getByteArray(TWeakCrypt.Create(1).encrypt(initData.getLicenseId()));
            dataOutputStream.writeUTF(TDatabaseEncoder.encode(licenseIdCrypted));
            numberOfLicenseServers := initData.getNumberOfServers();
            dataOutputStream.writeInt(numberOfLicenseServers);
            
            for index := 0 to numberOfLicenseServers - 1 do begin
                licenseServerCrypted := tsUtil_.getByteArray(TWeakCrypt.Create(3).encrypt(initData.getServer(index)));
                dataOutputStream.writeUTF(TDatabaseEncoder.encode(licenseServerCrypted));
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Command Failed: ' + Self.INITFILENAME, TJava.Box(Self), 'write', TJava.Box(e));
            TFileStreamFactory.getInstance().delete_(Self.filePath, Self.INITFILENAME);
            raise e;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
function TLicenseInitInfoUtil.read: TLicenseInitInfo;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.readAgain(0));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
function TLicenseInitInfoUtil.readAgain(initializeCounter: Integer): TLicenseInitInfo;
var
  METHOD_NAME: string;
  fileStreamFactory_: TFileStreamFactory;
  iFile: TAbFileInputStream;
  iData: TAbDataInputStream;
  initInfo: TLicenseInitInfo;
  decodedByteArray: TArray<ShortInt>;
  licenseIdDecoded: string;
  numberOfLicenseServers: Integer;
  NEXT_FILE: string;
  licenseServerDecoded: string;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        METHOD_NAME := 'readAgain';
        if TJava.Equals(Self.filePath, Self.stringUtil.EMPTY_STRING) then begin
            Self.filePath := (TURLGLOBALS.getMainPath()) + (TPATH_GLOBALS.getInstance().INIT_PATH);
        end;
        try
            Self.logUtil.putF('LicenseInitInfo File: ' + Self.INITFILENAME, TJava.Box(Self), METHOD_NAME);
            fileStreamFactory_ := TFileStreamFactory.getInstance();
            iFile := fileStreamFactory_.getFileInputStreamInstance(Self.filePath, Self.INITFILENAME);
            if (iFile) <> (nil) then begin
                iData := TAbDataInputStream.Create(iFile);
                initInfo := TLicenseInitInfo.Create();
                decodedByteArray := TDatabaseEncoder.decode(iData.readUTF());
                licenseIdDecoded := TJava.NewString(decodedByteArray);
                initInfo.setLicenseId(TWeakCrypt.Create(1).decrypt(licenseIdDecoded));
                numberOfLicenseServers := iData.readInt();
                NEXT_FILE := TStringMaker.Create().append(TCommonLabels.getInstance().NEXT).append(' License Server From File: ').toString();
                
                for index := 0 to numberOfLicenseServers - 1 do begin
                    decodedByteArray := TDatabaseEncoder.decode(iData.readUTF());
                    licenseServerDecoded := TJava.NewString(decodedByteArray);
                    initInfo.setServer(TWeakCrypt.Create(3).decrypt(licenseServerDecoded), index);
                    Self.logUtil.putF(NEXT_FILE + TJava.ToString(initInfo.getServer(index)), TJava.Box(Self), METHOD_NAME);
                end;
                Exit(initInfo);
            end else begin
                raise SysUtils.Exception.Create('Could Not Load License InitInfo: ' + Self.INITFILENAME);
            end;
        except
            on e: SysUtils.Exception do begin
            try
                Self.logUtil.put('Command Failed: ' + Self.INITFILENAME, TJava.Box(Self), METHOD_NAME, TJava.Box(e));
            except
                on e2: SysUtils.Exception do begin
                Self.logUtil.put('LicenseInitInfo Read Retry: ' + Self.INITFILENAME, TJava.Box(Self), 'readAgain()', TJava.Box(e2));
                end;
            end;
            raise SysUtils.Exception.Create('LicenseInitInfo Read Error: ' + Self.INITFILENAME);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TLicenseInitInfoUtil.getFilePath: string;
begin
        Exit(Self.filePath);
end;

initialization
  {AB:INITIALIZATION}
  TLicenseInitInfoUtil.instance := TLicenseInitInfoUtil.Create();
  {AB:END}

end.

