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
unit BufferedWriterUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbFile, CommonLabels, CommonStrings;

type
  {AB:TYPES}
  TBufferedWriterUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    commonLabels: TCommonLabels;
    REMOVING_OLD: string;
    class var instance: TBufferedWriterUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TBufferedWriterUtil; static;
        procedure overwrite(path: string; data: string); overload; virtual;
        procedure overwrite(abFile_: TAbFile; data: string); overload; virtual;
        procedure write(abFile_: TAbFile; data: string); virtual;
  end;

implementation
uses
  AbFileNativeUtil, AbPathData, StringMaker;


{AB:CODE}

procedure TBufferedWriterUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.commonLabels := TCommonLabels.getInstance();
  Self.REMOVING_OLD := 'Remove old for overwriting: ';
end;

constructor TBufferedWriterUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TBufferedWriterUtil.getInstance: TBufferedWriterUtil;
begin
        Exit(TBufferedWriterUtil.instance);
end;
    

// throws Exception
procedure TBufferedWriterUtil.overwrite(path: string; data: string);
var
  abFile_: TAbFile;
  name: string;
  abFileDirectory: TAbFile;
  stringBuilder: TStringMaker;
  result_: Boolean;
begin
        abFile_ := TAbFile.createAbFile(path);
        if abFile_.exists() then begin
            Self.logUtil.putF(Self.REMOVING_OLD + path, TJava.Box(Self), Self.commonStrings.CREATE_);
            abFile_.delete_();
        end else begin
            name := TAbPathData.getInstance().removeNameFromPath(path);
            abFileDirectory := TAbFile.createAbFile(name);
            if abFileDirectory.exists() then begin
            end else begin
                stringBuilder := TStringMaker.Create();
                Self.logUtil.putF(stringBuilder.append(Self.commonStrings.CREATE_).append(Self.commonLabels.COLON_SEP).append(name).toString(), TJava.Box(Self), Self.commonStrings.CREATE_);
                result_ := abFileDirectory.mkdirs();
                stringBuilder.delete_(0, stringBuilder.length());
                Self.logUtil.putF(stringBuilder.append(Self.commonLabels.RESULT_).appendboolean(result_).toString(), TJava.Box(Self), Self.commonStrings.CREATE_);
            end;
        end;
        Self.write(abFile_, data);
end;
    

// throws Exception
procedure TBufferedWriterUtil.overwrite(abFile_: TAbFile; data: string);
var
  name: string;
  abFileDirectory: TAbFile;
  stringBuilder: TStringMaker;
  result_: Boolean;
begin
        if abFile_.exists() then begin
            Self.logUtil.putF(Self.REMOVING_OLD + TJava.ToString(abFile_.getPath()), TJava.Box(Self), Self.commonStrings.CREATE_);
            abFile_.delete_();
        end else begin
            name := TAbPathData.getInstance().removeNameFromPath(abFile_.getAbsolutePath());
            abFileDirectory := TAbFile.createAbFile(name);
            if abFileDirectory.exists() then begin
            end else begin
                stringBuilder := TStringMaker.Create();
                Self.logUtil.putF(stringBuilder.append(Self.commonStrings.CREATE_).append(Self.commonLabels.COLON_SEP).append(name).toString(), TJava.Box(Self), Self.commonStrings.CREATE_);
                result_ := abFileDirectory.mkdirs();
                stringBuilder.delete_(0, stringBuilder.length());
                Self.logUtil.putF(stringBuilder.append(Self.commonLabels.RESULT_).appendboolean(result_).toString(), TJava.Box(Self), Self.commonStrings.CREATE_);
            end;
        end;
        Self.write(abFile_, data);
end;
    

// throws Exception
procedure TBufferedWriterUtil.write(abFile_: TAbFile; data: string);
var
  fileOut: TBufferedWriter;
begin
        fileOut := TBufferedWriter.Create(TFileWriter.Create(TAbFileNativeUtil.get(abFile_)));
        fileOut.write(data, 0, System.Length(data));
        fileOut.newLine();
        fileOut.flush();
end;

initialization
  {AB:INITIALIZATION}
  TBufferedWriterUtil.instance := TBufferedWriterUtil.Create();
  {AB:END}

end.

