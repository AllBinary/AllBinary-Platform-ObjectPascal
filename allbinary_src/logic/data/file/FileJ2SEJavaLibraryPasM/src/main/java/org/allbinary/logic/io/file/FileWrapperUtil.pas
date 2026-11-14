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
unit FileWrapperUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile;

type
  {AB:TYPES}
  TFileWrapperUtil = class(TObject)
  public
    constructor Create;
        class function wrapFiles(files: TArray<TObject>): TArray<TAbFile>; static;
        class function wrapFile(file_: TFile): TAbFile; static;
  end;

implementation
uses
  PreLogUtil;


{AB:CODE}

constructor TFileWrapperUtil.Create;
begin
  inherited Create;
end;
    

class function TFileWrapperUtil.wrapFiles(files: TArray<TObject>): TArray<TAbFile>;
var
  abFileArray: TArray<TAbFile>;
  index: Integer;
begin
        try
            abFileArray := TJava.NewArray<TAbFile>(System.Length(files));
            for index := (System.Length(files)) - (1) downto 0 do begin
                abFileArray[index] := TAbFile.Create(TFile(TJava.ToObject(files[index])));
            end;
            Exit(abFileArray);
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putSE('Exception Wrapping Files', 'FileWrapperUtil', 'wrapFiles', TJava.Box(e));
            Exit(nil);
            end;
        end;
end;
    

class function TFileWrapperUtil.wrapFile(file_: TFile): TAbFile;
begin
        try
            Exit(TAbFile.Create(file_));
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putSE('Exception Wrapping File', 'FileWrapperUtil', 'wrapFile', TJava.Box(e));
            Exit(TAbFile.NULL_FILE);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

