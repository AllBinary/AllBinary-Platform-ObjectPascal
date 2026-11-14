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
// package org.allbinary.logic.io.file
unit AbFile;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbPath, AbFileInterface;

type
  {AB:TYPES}
  TAbFile = class(TInterfacedObject, IAbFileInterface)
  public
    file_: TFile;
    class var NULL_FILE: TAbFile;
    procedure InitFields;
    function JavaObject: TObject;
        class function createAbFileWithChild(file_: TAbFile; childPathName: string): TAbFile; static;
        class function createAbFile(filePath: string): TAbFile; static;
        class function createAbFilePathAndName(filePath: string; fileName: string): TAbFile; static;
        class function createAbFileFromAbPath(abPath_: TAbPath): TAbFile; static;
        class function createAbFileFromRawPath(filePath: string): TAbFile; static;
        constructor Create(file_: TFile);
        function getFile: TFile; virtual;
        function getName: string; virtual;
        function getParent: string; virtual;
        function getParentFile: TObject; virtual;
        function getPath: string; virtual;
        function isAbsolute: Boolean; virtual;
        function getAbsolutePath: string; virtual;
        function getAbsoluteFile: TObject; virtual;
        function getCanonicalPath: string; virtual;
        function getCanonicalFile: TObject; virtual;
        function toURI: TURI; virtual;
        function canRead: Boolean; virtual;
        function canWrite: Boolean; virtual;
        function exists: Boolean; virtual;
        function isDirectory: Boolean; virtual;
        function isFile: Boolean; virtual;
        function isHidden: Boolean; virtual;
        function lastModified: Int64; virtual;
        function length: Int64; virtual;
        function createNewFile: Boolean; virtual;
        function delete_: Boolean; virtual;
        procedure deleteOnExit; virtual;
        function list: TArray<string>; virtual;
        function listWithFilter(filter: IFilenameFilter): TArray<string>; virtual;
        function listFiles: TArray<TObject>; virtual;
        function listFilesFileNameFilter(filter: IFilenameFilter): TArray<TObject>; virtual;
        function listFilesFileFilter(filter: IFileFilter): TArray<TObject>; virtual;
        function mkdir: Boolean; virtual;
        function mkdirs: Boolean; virtual;
        function renameTo(dest: TAbFile): Boolean; virtual;
        function setLastModified(time: Int64): Boolean; virtual;
        function setReadOnly: Boolean; virtual;
        function setWritable(writable: Boolean; ownerOnly: Boolean): Boolean; overload; virtual;
        function setWritable(writable: Boolean): Boolean; overload; virtual;
        function setReadable(readable: Boolean; ownerOnly: Boolean): Boolean; overload; virtual;
        function setReadable(readable: Boolean): Boolean; overload; virtual;
        function setExecutable(executable: Boolean; ownerOnly: Boolean): Boolean; overload; virtual;
        function setExecutable(executable: Boolean): Boolean; overload; virtual;
        function canExecute: Boolean; virtual;
        function getTotalSpace: Int64; virtual;
        function getFreeSpace: Int64; virtual;
        function getUsableSpace: Int64; virtual;
        function compareTo(pathname: TFile): Integer; virtual;
        function equals(obj: TObject): Boolean; virtual;
        function hashCode: Integer; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  TsUtil, StringUtil;


{AB:CODE}

procedure TAbFile.InitFields;
begin
  
end;

function TAbFile.JavaObject: TObject;
begin
  Result := Self;
end;
    

// throws Exception
class function TAbFile.createAbFileWithChild(file_: TAbFile; childPathName: string): TAbFile;
begin
        Exit(TAbFile.Create(TFile.Create(file_.getFile(), childPathName)));
end;
    

// throws Exception
class function TAbFile.createAbFile(filePath: string): TAbFile;
begin
        Exit(TAbFile.Create(TFile.Create(TAbPath.Create(filePath, TStringUtil.getInstance().EMPTY_STRING).toFileSystemString())));
end;
    

// throws Exception
class function TAbFile.createAbFilePathAndName(filePath: string; fileName: string): TAbFile;
begin
        Exit(TAbFile.Create(TFile.Create(TAbPath.Create(filePath, TStringUtil.getInstance().EMPTY_STRING).toFileSystemString(), fileName)));
end;
    

class function TAbFile.createAbFileFromAbPath(abPath_: TAbPath): TAbFile;
begin
        Exit(TAbFile.Create(TFile.Create(abPath_.toFileSystemString())));
end;
    

class function TAbFile.createAbFileFromRawPath(filePath: string): TAbFile;
begin
        Exit(TAbFile.Create(TFile.Create(filePath)));
end;
    

constructor TAbFile.Create(file_: TFile);
begin
    inherited Create;
    InitFields;
        Self.file_ := file_;
end;
    

function TAbFile.getFile: TFile;
begin
        Exit(Self.file_);
end;
    

function TAbFile.getName: string;
begin
        Exit(Self.file_.getName());
end;
    

function TAbFile.getParent: string;
begin
        Exit(Self.file_.getParent());
end;
    

function TAbFile.getParentFile: TObject;
begin
        Exit(TJava.Box(Self.file_.getParentFile()));
end;
    

function TAbFile.getPath: string;
begin
        Exit(Self.file_.getPath());
end;
    

function TAbFile.isAbsolute: Boolean;
begin
        Exit(Self.file_.isAbsolute());
end;
    

function TAbFile.getAbsolutePath: string;
begin
        Exit(Self.file_.getAbsolutePath());
end;
    

function TAbFile.getAbsoluteFile: TObject;
begin
        Exit(TJava.Box(Self.file_.getAbsoluteFile()));
end;
    

// throws IOException
function TAbFile.getCanonicalPath: string;
begin
        Exit(Self.file_.getCanonicalPath());
end;
    

// throws IOException
function TAbFile.getCanonicalFile: TObject;
begin
        Exit(TJava.Box(Self.file_.getCanonicalFile()));
end;
    

function TAbFile.toURI: TURI;
begin
        Exit(Self.file_.toURI());
end;
    

function TAbFile.canRead: Boolean;
begin
        Exit(Self.file_.canRead());
end;
    

function TAbFile.canWrite: Boolean;
begin
        Exit(Self.file_.canWrite());
end;
    

function TAbFile.exists: Boolean;
begin
        Exit(Self.file_.exists());
end;
    

function TAbFile.isDirectory: Boolean;
begin
        Exit(Self.file_.isDirectory());
end;
    

function TAbFile.isFile: Boolean;
begin
        Exit(Self.file_.isFile());
end;
    

function TAbFile.isHidden: Boolean;
begin
        Exit(Self.file_.isHidden());
end;
    

function TAbFile.lastModified: Int64;
begin
        Exit(Self.file_.lastModified());
end;
    

function TAbFile.length: Int64;
begin
        Exit(Int64(Self.file_.length()));
end;
    

// throws IOException
function TAbFile.createNewFile: Boolean;
begin
        Exit(Self.file_.createNewFile());
end;
    

// throws IOException
function TAbFile.delete_: Boolean;
begin
        Exit(Self.file_.delete_());
end;
    

procedure TAbFile.deleteOnExit;
begin
        Self.file_.deleteOnExit();
end;
    

function TAbFile.list: TArray<string>;
begin
        Exit(Self.file_.list());
end;
    

function TAbFile.listWithFilter(filter: IFilenameFilter): TArray<string>;
begin
        Exit(Self.file_.list(filter));
end;
    

function TAbFile.listFiles: TArray<TObject>;
begin
        Exit(ToObjectArray(Self.file_.listFiles()));
end;
    

function TAbFile.listFilesFileNameFilter(filter: IFilenameFilter): TArray<TObject>;
begin
        Exit(ToObjectArray(Self.file_.listFiles(filter)));
end;
    

function TAbFile.listFilesFileFilter(filter: IFileFilter): TArray<TObject>;
begin
        Exit(ToObjectArray(Self.file_.listFiles(filter)));
end;
    

function TAbFile.mkdir: Boolean;
begin
        Exit(Self.file_.mkdir());
end;
    

function TAbFile.mkdirs: Boolean;
begin
        Exit(Self.file_.mkdirs());
end;
    

function TAbFile.renameTo(dest: TAbFile): Boolean;
begin
        Exit(Self.file_.renameTo(dest.getFile()));
end;
    

function TAbFile.setLastModified(time: Int64): Boolean;
begin
        Exit(Self.file_.setLastModified(time));
end;
    

function TAbFile.setReadOnly: Boolean;
begin
        Exit(Self.file_.setReadOnly());
end;
    

function TAbFile.setWritable(writable: Boolean; ownerOnly: Boolean): Boolean;
begin
        Exit(Self.file_.setExecutable(writable, ownerOnly));
end;
    

function TAbFile.setWritable(writable: Boolean): Boolean;
begin
        Exit(Self.file_.setWritable(writable));
end;
    

function TAbFile.setReadable(readable: Boolean; ownerOnly: Boolean): Boolean;
begin
        Exit(Self.file_.setReadable(readable, ownerOnly));
end;
    

function TAbFile.setReadable(readable: Boolean): Boolean;
begin
        Exit(Self.file_.setReadable(readable));
end;
    

function TAbFile.setExecutable(executable: Boolean; ownerOnly: Boolean): Boolean;
begin
        Exit(Self.file_.setExecutable(executable, ownerOnly));
end;
    

function TAbFile.setExecutable(executable: Boolean): Boolean;
begin
        Exit(Self.file_.setExecutable(executable));
end;
    

function TAbFile.canExecute: Boolean;
begin
        Exit(Self.file_.canExecute());
end;
    

function TAbFile.getTotalSpace: Int64;
begin
        Exit(Self.file_.getTotalSpace());
end;
    

function TAbFile.getFreeSpace: Int64;
begin
        Exit(Self.file_.getFreeSpace());
end;
    

function TAbFile.getUsableSpace: Int64;
begin
        Exit(Self.file_.getUsableSpace());
end;
    

function TAbFile.compareTo(pathname: TFile): Integer;
begin
        Exit(Self.file_.compareTo(pathname));
end;
    

function TAbFile.equals(obj: TObject): Boolean;
begin
        Exit(TTsUtil.getInstance().equalsNotstring(TJava.Box(Self.file_), TJava.Box(obj)));
end;
    

function TAbFile.hashCode: Integer;
begin
        Exit(TJava.HashCode(Self.file_));
end;
    

function TAbFile.toString: string;
begin
        Exit(Self.file_.toString());
end;

initialization
  {AB:INITIALIZATION}
  TAbFile.NULL_FILE := TAbFile.createAbFileFromRawPath(TStringUtil.getInstance().EMPTY_STRING);
  {AB:END}

end.

