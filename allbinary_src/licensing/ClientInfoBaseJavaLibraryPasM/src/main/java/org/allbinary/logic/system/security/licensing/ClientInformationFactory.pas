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
// package org.allbinary.logic.system.security.licensing
unit ClientInformationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ClientInformation;

type
  {AB:TYPES}
  TClientInformationFactory = class(TObject)
  public
    constructor Create;
        function getInstance: TClientInformation; virtual;
  end;

implementation
uses
  LogUtil, StringUtil, CommonStrings;


{AB:CODE}

constructor TClientInformationFactory.Create;
begin
  inherited Create;
end;
    

function TClientInformationFactory.getInstance: TClientInformation;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
  stringUtil_: TStringUtil;
begin
        logUtil_ := TLogUtil.getInstance();
        commonStrings_ := TCommonStrings.getInstance();
        logUtil_.putF(commonStrings_.NOT_IMPLEMENTED, TJava.Box(Self), commonStrings_.GET_INSTANCE);
        stringUtil_ := TStringUtil.getInstance();
        Exit(TClientInformation.Create(stringUtil_.NULL_STRING, stringUtil_.NULL_STRING, stringUtil_.NULL_STRING, stringUtil_.NULL_STRING));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

