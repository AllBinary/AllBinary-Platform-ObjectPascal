{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.logic.communication.log.config.type
unit LogConfigTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogConfigType;

type
  {AB:TYPES}
  TLogConfigTypeFactory = class(TObject)
  public
    NO_DESCRIPTION: string;
    OS: TLogConfigType;
    FACTORYERROR: TLogConfigType;
    FILE_: TLogConfigType;
    FILEERROR: TLogConfigType;
    IDLOGGING: TLogConfigType;
    REPLACE: TLogConfigType;
    REPLACE_INFO: TLogConfigType;
    REPLACEERROR: TLogConfigType;
    class var instance: TLogConfigTypeFactory;
    procedure InitFields;
        class function getInstance: TLogConfigTypeFactory; static;
        constructor Create;
  end;

implementation
uses
  LogConfigTypes;


{AB:CODE}

procedure TLogConfigTypeFactory.InitFields;
begin
  Self.NO_DESCRIPTION := 'No Description';
  Self.OS := TLogConfigType.Create('Operating System', Self.NO_DESCRIPTION);
  Self.FACTORYERROR := TLogConfigType.Create('Factory Error', Self.NO_DESCRIPTION);
  Self.FILE_ := TLogConfigType.Create('File', Self.NO_DESCRIPTION);
  Self.FILEERROR := TLogConfigType.Create('File Error', Self.NO_DESCRIPTION);
  Self.IDLOGGING := TLogConfigType.Create('ID Logging', Self.NO_DESCRIPTION);
  Self.REPLACE := TLogConfigType.Create('Replace', Self.NO_DESCRIPTION);
  Self.REPLACE_INFO := TLogConfigType.Create('Replace Info', Self.NO_DESCRIPTION);
  Self.REPLACEERROR := TLogConfigType.Create('Replace Error', Self.NO_DESCRIPTION);
end;
    

class function TLogConfigTypeFactory.getInstance: TLogConfigTypeFactory;
begin
        Exit(TLogConfigTypeFactory.instance);
end;
    

constructor TLogConfigTypeFactory.Create;
begin
    inherited Create;
    InitFields;
        TLogConfigTypes.LOGGING.add(Self.OS);
        TLogConfigTypes.LOGGING.add(Self.FACTORYERROR);
end;

initialization
  {AB:INITIALIZATION}
  TLogConfigTypeFactory.instance := TLogConfigTypeFactory.Create();
  {AB:END}

end.

