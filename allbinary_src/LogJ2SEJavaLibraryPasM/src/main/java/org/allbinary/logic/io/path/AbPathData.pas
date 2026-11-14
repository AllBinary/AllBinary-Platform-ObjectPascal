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
// package org.allbinary.logic.io.path
unit AbPathData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAbPathData = class(TObject)
  public
    EXTENSION_SEP: string;
    SEPARATORCHAR: WideChar;
    SEPARATOR: string;
    class var instance: TAbPathData;
    procedure InitFields;
        class function getInstance: TAbPathData; static;
        constructor Create;
        function getExtensionIndex(filePath: string): Integer; virtual;
        function getExtensionWithDot(filePath: string): string; virtual;
        function getExtension(filePath: string): string; virtual;
        function getNameFromPath(path: string): string; virtual;
        function removeNameFromPath(path: string): string; virtual;
  end;

implementation
uses
  FilePathData, StringUtil, CommonSeps;


{AB:CODE}

procedure TAbPathData.InitFields;
begin
  Self.EXTENSION_SEP := TCommonSeps.getInstance().PERIOD;
  Self.SEPARATORCHAR := '/';
  Self.SEPARATOR := TCommonSeps.getInstance().FORWARD_SLASH;
end;
    

class function TAbPathData.getInstance: TAbPathData;
begin
        Exit(TAbPathData.instance);
end;
    

constructor TAbPathData.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TAbPathData.getExtensionIndex(filePath: string): Integer;
var
  indexOfFileExtensionDelmiter: Integer;
  indexOfLatDelimiter: Integer;
begin
        indexOfFileExtensionDelmiter := (RPos(TJava.ToString(Self.EXTENSION_SEP), filePath) - 1);
        indexOfLatDelimiter := (RPos(TJava.ToString(Self.SEPARATORCHAR), filePath) - 1);
        if (indexOfFileExtensionDelmiter) < (0) then begin
            Exit(-1);
        end;
        if (indexOfFileExtensionDelmiter) < (indexOfLatDelimiter) then begin
            Exit(-1);
        end;
        Exit(indexOfFileExtensionDelmiter);
end;
    

function TAbPathData.getExtensionWithDot(filePath: string): string;
var
  indexOfFileExtensionDelmiter: Integer;
  extension: string;
begin
        indexOfFileExtensionDelmiter := Self.getExtensionIndex(filePath);
        extension := TStringUtil.getInstance().EMPTY_STRING;
        if (indexOfFileExtensionDelmiter) >= (0) then begin
            extension := Copy(filePath, (indexOfFileExtensionDelmiter) + 1, MaxInt);
        end;
        Exit(extension);
end;
    

function TAbPathData.getExtension(filePath: string): string;
var
  indexOfFileExtensionDelmiter: Integer;
  extension: string;
begin
        indexOfFileExtensionDelmiter := Self.getExtensionIndex(filePath);
        extension := TStringUtil.getInstance().EMPTY_STRING;
        if (indexOfFileExtensionDelmiter) >= (0) then begin
            extension := Copy(filePath, ((indexOfFileExtensionDelmiter) + (1)) + 1, MaxInt);
        end;
        Exit(extension);
end;
    

function TAbPathData.getNameFromPath(path: string): string;
var
  endIndex: Integer;
  categoryName: string;
begin
        endIndex := (RPos(TJava.ToString(Self.SEPARATORCHAR), path) - 1);
        if (endIndex) < (0) then begin
            endIndex := (RPos(TJava.ToString(TFilePathData.getInstance().SEPARATORCHAR), path) - 1);
        end;
        if (endIndex) < (0) then begin
            Exit(path);
        end;
        if (System.Length(path)) = ((endIndex) + (1)) then begin
            categoryName := Copy(path, (0) + 1, (endIndex) - (0));
            Exit(Self.getNameFromPath(categoryName));
        end else begin
            categoryName := Copy(path, ((endIndex) + (1)) + 1, MaxInt);
            Exit(categoryName);
        end;
end;
    

function TAbPathData.removeNameFromPath(path: string): string;
var
  endIndex: Integer;
  pathWithoutName: string;
begin
        endIndex := (RPos(TJava.ToString(Self.SEPARATORCHAR), path) - 1);
        if (endIndex) < (0) then begin
            endIndex := (RPos(TJava.ToString(TFilePathData.getInstance().SEPARATORCHAR), path) - 1);
        end;
        if (endIndex) < (0) then begin
            Exit(TStringUtil.getInstance().EMPTY_STRING);
        end;
        if (System.Length(path)) = ((endIndex) + (1)) then begin
            Exit(Self.removeNameFromPath(Copy(path, (0) + 1, ((endIndex) - (1)) - (0))));
        end else begin
            pathWithoutName := Copy(path, (0) + 1, (endIndex) - (0));
            Exit(pathWithoutName);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TAbPathData.instance := TAbPathData.Create();
  {AB:END}

end.

