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
unit FilePathUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // Used to correct user input for paths
  TFilePathUtil = class(TObject)
  public
        constructor Create;
        class function adjust(path: string): string; static;
  end;

implementation
uses
  FilePathData, AbPathData;


{AB:CODE}
    

constructor TFilePathUtil.Create;
begin
    inherited Create;
end;
    

class function TFilePathUtil.adjust(path: string): string;
var
  abPathData_: TAbPathData;
  stringValidationUtil_: TObject;
  filePathData_: TFilePathData;
begin
        abPathData_ := TAbPathData.getInstance();
        stringValidationUtil_ := nil;
        filePathData_ := TFilePathData.getInstance();
        if (path = '') then begin
            Exit(filePathData_.PATH_START);
        end;
        path := StringReplace(path, abPathData_.SEPARATORCHAR, filePathData_.SEPARATORCHAR, [rfReplaceAll]);
        Exit(path);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

