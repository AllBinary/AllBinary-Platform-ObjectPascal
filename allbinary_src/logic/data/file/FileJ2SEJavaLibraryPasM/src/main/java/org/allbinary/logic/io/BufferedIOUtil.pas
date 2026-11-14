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
unit BufferedIOUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile;

type
  {AB:TYPES}
  TBufferedIOUtil = class(TObject)
  public
    constructor Create;
        class procedure copy(backupFile: TAbFile; backupFileBak: TAbFile); static;
  end;

implementation
uses
  AbFileNativeUtil, StringUtil;


{AB:CODE}

constructor TBufferedIOUtil.Create;
begin
  inherited Create;
end;
    

// throws Exception
class procedure TBufferedIOUtil.copy(backupFile: TAbFile; backupFileBak: TAbFile);
var
  line: string;
  tmpOut: TBufferedWriter;
  tmpIn: TBufferedReader;
begin
        line := TStringUtil.getInstance().EMPTY_STRING;
        tmpOut := TBufferedWriter.Create(TFileWriter.Create(TAbFileNativeUtil.get(backupFileBak)));
        tmpIn := TBufferedReader.Create(TFileReader.Create(TAbFileNativeUtil.get(backupFile)));
        while tmpIn.ready() do begin
            line := tmpIn.readLine();
            tmpOut.write(line, 0, System.Length(line));
            tmpOut.newLine();
        end;
        tmpOut.flush();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

