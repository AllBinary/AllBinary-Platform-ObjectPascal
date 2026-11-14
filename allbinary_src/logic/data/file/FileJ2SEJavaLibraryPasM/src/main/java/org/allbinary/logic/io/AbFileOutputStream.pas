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
unit AbFileOutputStream;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile;

type
  {AB:TYPES}
  TAbFileOutputStream = class(TFileOutputStream)
  public
        class function createFromAbFile(file_: TAbFile): TAbFileOutputStream; static;
        class function createFromAbFileAppend(file_: TAbFile; append: Boolean): TAbFileOutputStream; static;
        class function createFromFilePath(name: string): TAbFileOutputStream; static;
        class function createFromFilePathAppend(name: string; append: Boolean): TAbFileOutputStream; static;
        constructor Create(name: string; append: Boolean);
  end;

implementation
uses
  AbFileNativeUtil;


{AB:CODE}
    

// throws FileNotFoundException
class function TAbFileOutputStream.createFromAbFile(file_: TAbFile): TAbFileOutputStream;
begin
        Exit(TAbFileOutputStream.Create(file_.getPath(), False));
end;
    

// throws FileNotFoundException
class function TAbFileOutputStream.createFromAbFileAppend(file_: TAbFile; append: Boolean): TAbFileOutputStream;
begin
        Exit(TAbFileOutputStream.Create(file_.getPath(), append));
end;
    

// throws FileNotFoundException
class function TAbFileOutputStream.createFromFilePath(name: string): TAbFileOutputStream;
begin
        Exit(TAbFileOutputStream.Create(name, False));
end;
    

// throws FileNotFoundException
class function TAbFileOutputStream.createFromFilePathAppend(name: string; append: Boolean): TAbFileOutputStream;
begin
        Exit(TAbFileOutputStream.Create(name, append));
end;
    

constructor TAbFileOutputStream.Create(name: string; append: Boolean);
begin
        inherited Create(name, append);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

