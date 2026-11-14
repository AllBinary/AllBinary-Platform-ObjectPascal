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
unit DataOutputStreamFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile, AbDataOutputStream;

type
  {AB:TYPES}
  TDataOutputStreamFactory = class(TObject)
  public
    class var instance: TDataOutputStreamFactory;
    constructor Create;
        class function getInstance: TDataOutputStreamFactory; overload; static;
        function getInstanceForAbFile(file_: TAbFile): TAbDataOutputStream; virtual;
        function getInstance(filePath: string; fileName: string): TAbDataOutputStream; overload; virtual;
  end;

implementation
uses
  AbFileOutputStream, FileStreamFactory;


{AB:CODE}

constructor TDataOutputStreamFactory.Create;
begin
  inherited Create;
end;
    

class function TDataOutputStreamFactory.getInstance: TDataOutputStreamFactory;
begin
        Exit(TDataOutputStreamFactory.instance);
end;
    

// throws Exception
function TDataOutputStreamFactory.getInstanceForAbFile(file_: TAbFile): TAbDataOutputStream;
var
  idFileOutputStream: TAbFileOutputStream;
  idOutData: TAbDataOutputStream;
begin
        idFileOutputStream := TAbFileOutputStream.createFromAbFile(file_);
        idOutData := TAbDataOutputStream.Create(idFileOutputStream);
        Exit(idOutData);
end;
    

// throws Exception
function TDataOutputStreamFactory.getInstance(filePath: string; fileName: string): TAbDataOutputStream;
var
  fileStreamFactory_: TFileStreamFactory;
  fileOutputStream: TAbFileOutputStream;
  idOutData: TAbDataOutputStream;
begin
        fileStreamFactory_ := TFileStreamFactory.getInstance();
        fileOutputStream := fileStreamFactory_.getFileOutputStreamInstance(filePath, fileName);
        idOutData := TAbDataOutputStream.Create(fileOutputStream);
        Exit(idOutData);
end;

initialization
  {AB:INITIALIZATION}
  TDataOutputStreamFactory.instance := TDataOutputStreamFactory.Create();
  {AB:END}

end.

