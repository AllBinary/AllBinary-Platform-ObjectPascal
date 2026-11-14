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
// package org.allbinary.globals
unit PATH_GLOBALS;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPATH_GLOBALS = class(TObject)
  public
    DATA_PATH: string;
    INIT_PATH: string;
    VIEWS_PATH: string;
    LOG_PATH: string;
    BACKUP_PATH: string;
    class var instance: TPATH_GLOBALS;
    procedure InitFields;
        class function getInstance: TPATH_GLOBALS; static;
        constructor Create;
  end;

implementation
uses
  AbPathData, StringMaker, CommonStrings;


{AB:CODE}

procedure TPATH_GLOBALS.InitFields;
begin
  
  
  
  
  
end;
    

class function TPATH_GLOBALS.getInstance: TPATH_GLOBALS;
begin
        Exit(TPATH_GLOBALS.instance);
end;
    

constructor TPATH_GLOBALS.Create;
var
  stringBuffer: TStringMaker;
  abPathData_: TAbPathData;
begin
    inherited Create;
    InitFields;
        stringBuffer := TStringMaker.Create();
        abPathData_ := TAbPathData.getInstance();
        stringBuffer.append('data');
        stringBuffer.append(abPathData_.SEPARATOR);
        Self.DATA_PATH := stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(Self.DATA_PATH);
        stringBuffer.append(TCommonStrings.getInstance().INIT);
        stringBuffer.append(abPathData_.SEPARATOR);
        Self.INIT_PATH := stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(Self.DATA_PATH);
        stringBuffer.append('log');
        stringBuffer.append(abPathData_.SEPARATOR);
        Self.LOG_PATH := stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(Self.DATA_PATH);
        stringBuffer.append('backup');
        stringBuffer.append(abPathData_.SEPARATOR);
        Self.BACKUP_PATH := stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(Self.INIT_PATH);
        stringBuffer.append('views');
        stringBuffer.append(abPathData_.SEPARATOR);
        Self.VIEWS_PATH := stringBuffer.toString();
end;

initialization
  {AB:INITIALIZATION}
  TPATH_GLOBALS.instance := TPATH_GLOBALS.Create();
  {AB:END}

end.

