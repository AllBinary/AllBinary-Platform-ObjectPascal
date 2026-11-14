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
unit FilePathData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TFilePathData = class(TObject)
  public
    SEPARATORCHAR: WideChar;
    PATH_START: string;
    class var instance: TFilePathData;
    procedure InitFields;
        class function getInstance: TFilePathData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TFilePathData.InitFields;
begin
  Self.SEPARATORCHAR := '\';
  Self.PATH_START := '\\';
end;
    

class function TFilePathData.getInstance: TFilePathData;
begin
        Exit(TFilePathData.instance);
end;
    

constructor TFilePathData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TFilePathData.instance := TFilePathData.Create();
  {AB:END}

end.

