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
unit URLGLOBALS;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, UrlGlobalsInterface;

type
  {AB:TYPES}
  TURLGLOBALS = class(TObject)
  public
    class var urlGlobalsInterface: IUrlGlobalsInterface;
    constructor Create;
        class procedure init(urlGlobalsInterface_: IUrlGlobalsInterface); static;
        class function isTestingMode: Boolean; static;
        class function getWebappPath: string; static;
        class function getTestHtmlPath: string; static;
        class function getMainPath: string; static;
  end;

implementation
uses
  AppUrlGlobals;


{AB:CODE}

constructor TURLGLOBALS.Create;
begin
  inherited Create;
end;
    

class procedure TURLGLOBALS.init(urlGlobalsInterface_: IUrlGlobalsInterface);
begin
        TURLGLOBALS.urlGlobalsInterface := urlGlobalsInterface_;
end;
    

class function TURLGLOBALS.isTestingMode: Boolean;
begin
        Exit(TURLGLOBALS.urlGlobalsInterface.isTestingMode());
end;
    

class function TURLGLOBALS.getWebappPath: string;
begin
        Exit(TURLGLOBALS.urlGlobalsInterface.getWebappPath());
end;
    

class function TURLGLOBALS.getTestHtmlPath: string;
begin
        Exit(TURLGLOBALS.urlGlobalsInterface.getTestHtmlPath());
end;
    

// throws Exception
class function TURLGLOBALS.getMainPath: string;
begin
        Exit(TURLGLOBALS.urlGlobalsInterface.getMainPath());
end;

initialization
  {AB:INITIALIZATION}
  TURLGLOBALS.urlGlobalsInterface := TAppUrlGlobals.NULL_APP_URL_GLOBALS;
  {AB:END}

end.

