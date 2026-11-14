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
unit AppUrlGlobals;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, UrlGlobalsInterface;

type
  {AB:TYPES}
  // implements
  TAppUrlGlobals = class(IUrlGlobalsInterface)
  public
    path: string;
    class var NULL_APP_URL_GLOBALS: TAppUrlGlobals;
    procedure InitFields;
    constructor Create;
        function isTestingMode: Boolean; override;
        function getWebappPath: string; override;
        procedure setWebappPath(path: string); virtual;
        function getTestHtmlPath: string; override;
        function getMainPath: string; override;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure TAppUrlGlobals.InitFields;
begin
  Self.path := TStringUtil.getInstance().EMPTY_STRING;
end;

constructor TAppUrlGlobals.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TAppUrlGlobals.isTestingMode: Boolean;
begin
        Exit(False);
end;
    

function TAppUrlGlobals.getWebappPath: string;
begin
        Exit(Self.path);
end;
    

procedure TAppUrlGlobals.setWebappPath(path: string);
begin
    TJava.MonitorEnter(Self);
    try
        Self.path := path;
        if not (((Self.path.EndsWith('\')) or (Self.path.EndsWith('/')))) then begin
            Self.path := Self.path + '\';
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TAppUrlGlobals.getTestHtmlPath: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

// throws Exception
function TAppUrlGlobals.getMainPath: string;
begin
        Exit(Self.path);
end;

initialization
  {AB:INITIALIZATION}
  TAppUrlGlobals.NULL_APP_URL_GLOBALS := TAppUrlGlobals.Create();
  {AB:END}

end.

