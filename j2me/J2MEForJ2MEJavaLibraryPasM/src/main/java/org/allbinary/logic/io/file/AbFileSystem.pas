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
  // J2MEForJ2ME
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
begin
        Exit(False);
end;
    

function TAbFileSystem.isDirectory(path: string): Boolean;
begin
        Exit(False);
end;
    

function TAbFileSystem.getFilesAsStringArrayForPath(currentDirPath: string): TArray<string>;
begin
        Exit(TStringUtil.getInstance().getArrayInstance());
end;
    

function TAbFileSystem.readAsString(fileName: string): string;
var
  bytes: TArray<ShortInt>;
begin
        bytes := TJava.NewArray<ShortInt>(1000000);
        Exit(Self.readAsString(fileName, bytes));
end;
    

function TAbFileSystem.readAsString(fileName: string; bytes: TArray<ShortInt>): string;
begin
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

