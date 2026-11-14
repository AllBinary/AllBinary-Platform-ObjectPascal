{
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.logic.io.file
unit AbFileSystem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings;

type
  {AB:TYPES}
  // FileJ2SE should be the same as J2SEForJ2ME
  TAbFileSystem = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    class var instance: TAbFileSystem;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAbFileSystem; static;
        function isDirectoryOrFile(path: string): Boolean; virtual;
        function isDirectory(path: string): Boolean; virtual;
        function getFilesAsStringArrayForPath(currentDirPath: string): TArray<string>; virtual;
        function readAsString(fileName: string): string; overload; virtual;
        function readAsString(fileName: string; bytes: TArray<ShortInt>): string; overload; virtual;
        function close(closeable: TObject): Boolean; virtual;
  end;

implementation
uses
  NullUtil, StringUtil;


{AB:CODE}

procedure TAbFileSystem.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;

constructor TAbFileSystem.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAbFileSystem.getInstance: TAbFileSystem;
begin
        Exit(TAbFileSystem.instance);
end;
    

function TAbFileSystem.isDirectoryOrFile(path: string): Boolean;
var
  file_: TFile;
begin
        file_ := TFile.Create(path);
        Exit((file_.isDirectory()) or (file_.isFile()));
end;
    

function TAbFileSystem.isDirectory(path: string): Boolean;
begin
        Exit(TFile.Create(path).isDirectory());
end;
    

function TAbFileSystem.getFilesAsStringArrayForPath(currentDirPath: string): TArray<string>;
var
  file_: TFile;
begin
        file_ := TFile.Create(currentDirPath);
        if file_.exists() then begin
            Exit(file_.list());
        end else begin
            Exit(TStringUtil.getInstance().getArrayInstance());
        end;
end;
    

function TAbFileSystem.readAsString(fileName: string): string;
var
  bytes: TArray<ShortInt>;
begin
        bytes := TJava.NewArray<ShortInt>(1000000);
        Exit(Self.readAsString(fileName, bytes));
end;
    

function TAbFileSystem.readAsString(fileName: string; bytes: TArray<ShortInt>): string;
var
  closeable: TObject;
  idFile: TInputStream;
  size: Integer;
begin
        closeable := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
        try
        try
            idFile := TFileInputStream.Create(fileName);
            closeable := TJava.Box(idFile);
            size := idFile.read(bytes);
            if (size) > (0) then begin
                Exit(TJava.NewString(bytes, 0, size));
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'readAsString', TJava.Box(e));
            end;
        end;
        finally
            Self.close(closeable);
        end;
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

function TAbFileSystem.close(closeable: TObject): Boolean;
var
  inputStream_: TInputStream;
begin
        try
            if (closeable) <> (nil) then begin
                inputStream_ := (TInputStream(TJava.ToObject(closeable)));
                inputStream_.close();
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.CLOSE, TJava.Box(e));
            Exit(False);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TAbFileSystem.instance := TAbFileSystem.Create();
  {AB:END}

end.

