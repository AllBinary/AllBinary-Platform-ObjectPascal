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
unit FileStreamFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFileInputStream, AbFileOutputStream;

type
  {AB:TYPES}
  TFileStreamFactory = class(TObject)
  public
    class var SINGLETON: TObject;
        class function getInstance: TFileStreamFactory; static;
        constructor Create;
        function getFileInputStreamInstance(path: string; fileName: string): TAbFileInputStream; virtual;
        function getFileOutputStreamInstance(path: string; fileName: string): TAbFileOutputStream; virtual;
        procedure delete_(path: string; fileName: string); virtual;
  end;

implementation
uses
  NullUtil, AbFile, AbPath;


{AB:CODE}
    

class function TFileStreamFactory.getInstance: TFileStreamFactory;
begin
        if (TFileStreamFactory.SINGLETON) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TFileStreamFactory.SINGLETON := TFileStreamFactory.Create();
        end;
        Exit(TFileStreamFactory(TJava.ToObject(TFileStreamFactory.SINGLETON)));
end;
    

constructor TFileStreamFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
function TFileStreamFactory.getFileInputStreamInstance(path: string; fileName: string): TAbFileInputStream;
var
  FILEABPATH: TAbPath;
  file_: TAbFile;
begin
        FILEABPATH := TAbPath.Create(path, fileName);
        file_ := TAbFile.createAbFileFromAbPath(FILEABPATH);
        Exit(TAbFileInputStream.createFromAbFile(file_));
end;
    

// throws Exception
function TFileStreamFactory.getFileOutputStreamInstance(path: string; fileName: string): TAbFileOutputStream;
var
  FILEABPATH: TAbPath;
  file_: TAbFile;
begin
        FILEABPATH := TAbPath.Create(path, fileName);
        file_ := TAbFile.createAbFileFromAbPath(FILEABPATH);
        if file_.exists() then begin
            file_.delete_();
            file_.createNewFile();
        end;
        Exit(TAbFileOutputStream.createFromAbFile(file_));
end;
    

// throws Exception
procedure TFileStreamFactory.delete_(path: string; fileName: string);
var
  FILEABPATH: TAbPath;
  file_: TAbFile;
begin
        FILEABPATH := TAbPath.Create(path, fileName);
        file_ := TAbFile.createAbFileFromAbPath(FILEABPATH);
        file_.delete_();
end;

initialization
  {AB:INITIALIZATION}
  TFileStreamFactory.SINGLETON := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

