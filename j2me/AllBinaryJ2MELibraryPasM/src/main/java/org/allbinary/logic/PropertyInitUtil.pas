{
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.logic
unit PropertyInitUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPropertyInitUtil = class(TObject)
  public
    class var instance: TPropertyInitUtil;
    constructor Create;
        class function getInstance(value: Integer): TPropertyInitUtil; static;
  end;

implementation
uses
  LogUtil, StringMaker, CommonStrings;


{AB:CODE}

constructor TPropertyInitUtil.Create;
begin
  inherited Create;
end;
    

class function TPropertyInitUtil.getInstance(value: Integer): TPropertyInitUtil;
var
  commonStrings_: TCommonStrings;
  logUtil_: TLogUtil;
begin
        commonStrings_ := TCommonStrings.getInstance();
        logUtil_ := TLogUtil.getInstance();
        logUtil_.putF(TStringMaker.Create().append('PropertyInitUtil: ').appendint(value).toString(), TJava.Box(logUtil_), commonStrings_.CONSTRUCTOR_);
        Exit(TPropertyInitUtil.instance);
end;

initialization
  {AB:INITIALIZATION}
  TPropertyInitUtil.instance := TPropertyInitUtil.Create();
  {AB:END}

end.

