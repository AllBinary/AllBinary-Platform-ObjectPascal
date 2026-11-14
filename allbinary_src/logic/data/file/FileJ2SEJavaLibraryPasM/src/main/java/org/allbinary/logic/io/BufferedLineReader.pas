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
unit BufferedLineReader;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile;

type
  {AB:TYPES}
  TBufferedLineReader = class(TObject)
  public
    tmpIn: TBufferedReader;
    procedure InitFields;
        constructor Create(file_: TAbFile);
        procedure readUpToLines(readAheadIndex: Int64); virtual;
        function readLine: string; virtual;
        function ready: Boolean; virtual;
        function getSize: Int64; virtual;
        function getCurrent: Integer; virtual;
  end;

implementation
uses
  AbFileNativeUtil;


{AB:CODE}

procedure TBufferedLineReader.InitFields;
begin
  
end;
    

constructor TBufferedLineReader.Create(file_: TAbFile);
begin
    inherited Create;
    InitFields;
        Self.tmpIn := TBufferedReader.Create(TFileReader.Create(TAbFileNativeUtil.get(file_)));
end;
    

procedure TBufferedLineReader.readUpToLines(readAheadIndex: Int64);
begin
end;
    

// throws Exception
function TBufferedLineReader.readLine: string;
begin
        Exit(Self.tmpIn.readLine());
end;
    

// throws Exception
function TBufferedLineReader.ready: Boolean;
begin
        Exit(Self.tmpIn.ready());
end;
    

function TBufferedLineReader.getSize: Int64;
begin
        Exit(0);
end;
    

function TBufferedLineReader.getCurrent: Integer;
begin
        Exit(0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

