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
// package org.allbinary.logic.communication.http
unit HttpData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  THttpData = class(TObject)
  public
    EQUALS: string;
    PARAM_SEP: string;
    URL_PARAM_SEP: string;
    URL_LABEL: string;
    class var instance: THttpData;
    procedure InitFields;
        class function getInstance: THttpData; static;
        constructor Create;
  end;

implementation
uses
  CommonSeps;


{AB:CODE}

procedure THttpData.InitFields;
begin
  
  
  
  Self.URL_LABEL := 'Url: ';
end;
    

class function THttpData.getInstance: THttpData;
begin
        Exit(THttpData.instance);
end;
    

constructor THttpData.Create;
var
  commonSeps_: TCommonSeps;
begin
    inherited Create;
    InitFields;
        commonSeps_ := TCommonSeps.getInstance();
        Self.EQUALS := commonSeps_.EQUALS;
        Self.PARAM_SEP := commonSeps_.AMPERSAND;
        Self.URL_PARAM_SEP := commonSeps_.QUESTION;
end;

initialization
  {AB:INITIALIZATION}
  THttpData.instance := THttpData.Create();
  {AB:END}

end.

