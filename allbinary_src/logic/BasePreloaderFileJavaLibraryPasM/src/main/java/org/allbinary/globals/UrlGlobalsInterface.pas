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
unit UrlGlobalsInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  IUrlGlobalsInterface = class(TObject)
  public
    constructor Create;
        function getMainPath: string; virtual;
        function getTestHtmlPath: string; virtual;
        function getWebappPath: string; virtual;
        function isTestingMode: Boolean; virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

constructor IUrlGlobalsInterface.Create;
begin
  inherited Create;
end;
    

// throws Exception
function IUrlGlobalsInterface.getMainPath: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

function IUrlGlobalsInterface.getTestHtmlPath: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

function IUrlGlobalsInterface.getWebappPath: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

function IUrlGlobalsInterface.isTestingMode: Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

