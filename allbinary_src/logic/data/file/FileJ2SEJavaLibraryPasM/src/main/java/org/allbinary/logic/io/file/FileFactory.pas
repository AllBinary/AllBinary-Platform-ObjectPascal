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
unit FileFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile;

type
  {AB:TYPES}
  TFileFactory = class(TObject)
  public
    class var instance: TFileFactory;
    constructor Create;
        class function getInstance: TFileFactory; overload; static;
        function getInstance(filePath: string): TAbFile; overload; virtual;
        function getInstance(file_: TAbFile; childFilePath: string): TAbFile; overload; virtual;
        function isFile(path: string): Boolean; virtual;
  end;

implementation

{AB:CODE}

constructor TFileFactory.Create;
begin
  inherited Create;
end;
    

class function TFileFactory.getInstance: TFileFactory;
begin
        Exit(TFileFactory.instance);
end;
    

// throws Exception
function TFileFactory.getInstance(filePath: string): TAbFile;
begin
        Exit(TAbFile.createAbFileFromRawPath(filePath));
end;
    

// throws Exception
function TFileFactory.getInstance(file_: TAbFile; childFilePath: string): TAbFile;
begin
        Exit(TAbFile.createAbFileWithChild(file_, childFilePath));
end;
    

// throws Exception
function TFileFactory.isFile(path: string): Boolean;
var
  file_: TAbFile;
begin
        file_ := TAbFile.createAbFile(path);
        if file_.exists() then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TFileFactory.instance := TFileFactory.Create();
  {AB:END}

end.

