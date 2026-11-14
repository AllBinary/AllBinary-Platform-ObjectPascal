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
// AB:CYCLE TYPES AbPath AbFilePath PathUtil
// The units AbPath AbFilePath PathUtil use each other in their interface sections, so their types are declared together here.
unit CycleTypesAbFilePath;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommonSeps, AbPathData, FilePathData;

type
  { Forward declarations like C++ so the cycle members can refer to each other }
  TAbPath = class;
  TAbFilePath = class;
  TPathUtil = class;
  {AB:TYPES}
  { AbPath }
  TAbPath = class(TObject)
  public
    commonSeps: TCommonSeps;
    abPathData: TAbPathData;
    abPathUtil: TPathUtil;
    EMPTY_STRING: string;
    schema: string;
    path: string;
    nameP: string;
    hasSchemaP: Boolean;
    numberOfSeps: Integer;
    class var NETWORK_SEP: string;
    procedure InitFields;
        class function createAbPath: TAbPath; static;
        constructor Create(aPath: string; name: string);
        procedure init;
        function getSchema(aPath: string): string; virtual;
        function hasSchema: Boolean; virtual;
        function getPathFromPath(aPath: string): string; virtual;
        procedure setName(name: string); virtual;
        function getName: string; virtual;
        function toString: string; virtual;
        function toFileSystemString: string; virtual;
        function getPath: string; virtual;
        procedure setPath(path: string); virtual;
  end;

  { AbFilePath }
  TAbFilePath = class(TAbPath)
  public
        constructor Create(aPath: string);
  end;

  { PathUtil }
  // Used to correct user input for paths
  TPathUtil = class(TObject)
  public
    abPathData: TAbPathData;
    filePathData: TFilePathData;
    class var instance: TPathUtil;
    procedure InitFields;
        class function getInstance: TPathUtil; static;
        constructor Create;
        function getExtensionWithAbFilePath(abFilePath_: TAbFilePath): string; virtual;
        function getExtensionWithAbPath(abPath_: TAbPath): string; virtual;
        function getWithoutExtensionWithAbFilePath(abFilePath_: TAbFilePath): string; virtual;
        function getWithoutExtensionWithAbPath(abPath_: TAbPath): string; virtual;
        function getWithoutExtension(filePath: string): string; virtual;
        function isValid(path: string): Boolean; virtual;
        function isValidStart(path: string): Boolean;
        function isValidEnd(path: string): Boolean;
        function adjustStart(path: string): string; virtual;
        function adjustEnd(path: string): string; virtual;
        function adjust(path: string): string; virtual;
        function removeNameFromPath(path: string): TAbPath; virtual;
  end;


implementation
uses
  FilePathUtil, StringMaker, StringUtil;


{AB:CODE}

procedure TAbPath.InitFields;
begin
  Self.commonSeps := TCommonSeps.getInstance();
  Self.abPathData := TAbPathData.getInstance();
  Self.abPathUtil := TPathUtil.getInstance();
  Self.EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
  Self.schema := Self.EMPTY_STRING;
  Self.path := Self.EMPTY_STRING;
  Self.nameP := Self.EMPTY_STRING;
  Self.hasSchemaP := False;
  Self.numberOfSeps := 0;
end;
    

class function TAbPath.createAbPath: TAbPath;
var
  EMPTY_STRING: string;
begin
        try
            EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
            Exit(TAbPath.Create(EMPTY_STRING, EMPTY_STRING));
        except
            on ex: SysUtils.Exception do begin
            raise SysUtils.Exception.Create('');
            end;
        end;
end;
    

constructor TAbPath.Create(aPath: string; name: string);
var
  stringValidationUtil_: TObject;
begin
    inherited Create;
    InitFields;
        stringValidationUtil_ := nil;
        if not ((aPath = '')) then begin
            Self.schema := Self.getSchema(aPath);
            Self.nameP := name;
            Self.path := Self.abPathUtil.adjustEnd(Self.abPathUtil.adjust(Self.getPathFromPath(aPath)));
        end else begin
            Self.init();
            if not ((name = '')) then begin
                Self.nameP := name;
            end;
        end;
end;
    

procedure TAbPath.init;
begin
        Self.schema := Self.EMPTY_STRING;
        Self.setPath(Self.abPathData.SEPARATOR);
        Self.nameP := Self.EMPTY_STRING;
end;
    

function TAbPath.getSchema(aPath: string): string;
var
  beginIndex: Integer;
begin
        beginIndex := (Pos(TJava.ToString(Self.commonSeps.COLON), aPath) - 1);
        if (beginIndex) >= (0) then begin
            Self.hasSchemaP := True;
            Exit(Copy(aPath, (0) + 1, (beginIndex) - (0)));
        end;
        Self.hasSchemaP := False;
        Exit(Self.EMPTY_STRING);
end;
    

function TAbPath.hasSchema: Boolean;
begin
        Exit(Self.hasSchemaP);
end;
    

// throws Exception
function TAbPath.getPathFromPath(aPath: string): string;
var
  filePathData_: TFilePathData;
  tempPath: string;
  beginIndex: Integer;
begin
        filePathData_ := TFilePathData.getInstance();
        tempPath := aPath;
        if not (Self.hasSchema()) then begin
            tempPath := Self.abPathUtil.adjustStart(tempPath);
        end else begin
            beginIndex := (Pos(TJava.ToString(Self.commonSeps.COLON), tempPath) - 1);
            if (beginIndex) >= (0) then begin
                Inc(beginIndex);
                while ((tempPath[(beginIndex) + 1]) = (Self.abPathData.SEPARATORCHAR)) or ((tempPath[(beginIndex) + 1]) = (filePathData_.SEPARATORCHAR)) do begin
                    Inc(beginIndex);
                    Inc(Self.numberOfSeps);
                    if (Self.numberOfSeps) > (2) then begin
                        raise SysUtils.Exception.Create('Should Not Have More Than Two Seps');
                    end;
                end;
                tempPath := Copy(tempPath, (beginIndex) + 1, (System.Length(tempPath)) - (beginIndex));
            end;
        end;
        Exit(tempPath);
end;
    

procedure TAbPath.setName(name: string);
begin
        Self.nameP := name;
end;
    

function TAbPath.getName: string;
begin
        Exit(Self.nameP);
end;
    

function TAbPath.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        if Self.hasSchema() then begin
            stringBuffer.append(Self.schema);
            stringBuffer.append(TAbPath.NETWORK_SEP);
        end;
        stringBuffer.append(Self.getPath());
        stringBuffer.append(Self.nameP);
        Exit(stringBuffer.toString());
end;
    

function TAbPath.toFileSystemString: string;
var
  filePathData_: TFilePathData;
  stringBuffer: TStringMaker;
begin
        if Self.hasSchema() then begin
            filePathData_ := TFilePathData.getInstance();
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.schema);
            stringBuffer.append(Self.commonSeps.COLON);
            stringBuffer.append(filePathData_.PATH_START);
            stringBuffer.append(TFilePathUtil.adjust(Self.getPath()));
            stringBuffer.append(Self.nameP);
            Exit(stringBuffer.toString());
        end else begin
            Exit(TJava.ToString(TFilePathUtil.adjust(Self.getPath())) + Self.nameP);
        end;
end;
    

function TAbPath.getPath: string;
begin
        Exit(Self.path);
end;
    

procedure TAbPath.setPath(path: string);
begin
        Self.path := path;
end;

    

constructor TAbFilePath.Create(aPath: string);
var
  pathData: TAbPathData;
  abPathUtil: TPathUtil;
begin
        inherited Create(TStringUtil.getInstance().EMPTY_STRING, TStringUtil.getInstance().EMPTY_STRING);
        pathData := TAbPathData.getInstance();
        abPathUtil := TPathUtil.getInstance();
        Self.schema := Self.getSchema(aPath);
        Self.setName(pathData.getNameFromPath(aPath));
        Self.setPath(abPathUtil.adjust(Self.getPathFromPath(abPathUtil.removeNameFromPath(aPath).toString())));
end;


procedure TPathUtil.InitFields;
begin
  Self.abPathData := TAbPathData.getInstance();
  Self.filePathData := TFilePathData.getInstance();
end;
    

class function TPathUtil.getInstance: TPathUtil;
begin
        Exit(TPathUtil.instance);
end;
    

constructor TPathUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TPathUtil.getExtensionWithAbFilePath(abFilePath_: TAbFilePath): string;
begin
        Exit(Self.abPathData.getExtension(abFilePath_.toString()));
end;
    

function TPathUtil.getExtensionWithAbPath(abPath_: TAbPath): string;
begin
        Exit(Self.abPathData.getExtension(abPath_.toString()));
end;
    

// throws Exception
function TPathUtil.getWithoutExtensionWithAbFilePath(abFilePath_: TAbFilePath): string;
begin
        Exit(Self.getWithoutExtension(abFilePath_.toString()));
end;
    

// throws Exception
function TPathUtil.getWithoutExtensionWithAbPath(abPath_: TAbPath): string;
begin
        Exit(Self.getWithoutExtension(abPath_.toString()));
end;
    

// throws Exception
function TPathUtil.getWithoutExtension(filePath: string): string;
var
  indexOfFileExtensionDelmiter: Integer;
  pathWithoutExtension: string;
begin
        indexOfFileExtensionDelmiter := Self.abPathData.getExtensionIndex(filePath);
        pathWithoutExtension := filePath;
        if (indexOfFileExtensionDelmiter) >= (0) then begin
            pathWithoutExtension := Copy(filePath, (0) + 1, (indexOfFileExtensionDelmiter) - (0));
        end;
        Exit(pathWithoutExtension);
end;
    

function TPathUtil.isValid(path: string): Boolean;
begin
        if Self.isValidStart(path) then begin
            if Self.isValidEnd(path) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

function TPathUtil.isValidStart(path: string): Boolean;
begin
        if ((path[(0) + 1]) = (Self.abPathData.SEPARATORCHAR)) or ((path[(0) + 1]) = ('.')) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TPathUtil.isValidEnd(path: string): Boolean;
var
  stringValidationUtil_: TObject;
begin
        stringValidationUtil_ := nil;
        if (path = '') then begin
            Exit(False);
        end;
        if (path[((System.Length(path)) - (1)) + 1]) = (Self.abPathData.SEPARATORCHAR) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TPathUtil.adjustStart(path: string): string;
begin
        if not (Self.isValidStart(path)) then begin
            path := TJava.ToString(Self.abPathData.SEPARATOR) + path;
        end;
        Exit(path);
end;
    

function TPathUtil.adjustEnd(path: string): string;
begin
        if not (Self.isValidEnd(path)) then begin
            path := path + TJava.ToString(Self.abPathData.SEPARATOR);
        end;
        Exit(path);
end;
    

function TPathUtil.adjust(path: string): string;
var
  stringValidationUtil_: TObject;
begin
        stringValidationUtil_ := nil;
        if (path = '') then begin
            Exit(Self.abPathData.SEPARATOR);
        end;
        if ((Pos(TJava.ToString('\'), path) - 1)) >= (0) then begin
            path := StringReplace(path, '\', Self.abPathData.SEPARATORCHAR, [rfReplaceAll]);
        end;
        Exit(path);
end;
    

// throws Exception
function TPathUtil.removeNameFromPath(path: string): TAbPath;
var
  endIndex: Integer;
  pathWithoutName: string;
begin
        endIndex := (RPos(TJava.ToString(Self.abPathData.SEPARATOR), path) - 1);
        if (endIndex) < (0) then begin
            endIndex := (RPos(TJava.ToString(Self.filePathData.SEPARATORCHAR), path) - 1);
        end;
        if (endIndex) < (0) then begin
            Exit(TAbPath.createAbPath());
        end;
        if (System.Length(path)) = ((endIndex) + (1)) then begin
            Exit(Self.removeNameFromPath(Copy(path, (0) + 1, ((endIndex) - (1)) - (0))));
        end else begin
            pathWithoutName := Copy(path, (0) + 1, (endIndex) - (0));
            Exit(TAbPath.Create(pathWithoutName, TStringUtil.getInstance().EMPTY_STRING));
        end;
end;


initialization
  {AB:INITIALIZATION}
  TAbPath.NETWORK_SEP := ':/';
  TPathUtil.instance := TPathUtil.Create();
  {AB:END}

end.
